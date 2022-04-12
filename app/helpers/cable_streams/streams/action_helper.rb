require "cable_ready"
require "turbo-rails"

module CableStreams
  module Streams
    module ActionHelper
      include CableReady::Broadcaster

      IGNORE_LIST = [:after, :append, :before, :prepend, :remove, :replace, :update]

      (CableReady.config.operation_names - IGNORE_LIST).each do |name|
        define_method(name) do |args|
          operation = cable_car.send(name, args).dispatch.to_json
          target = (args.to_h.pluck(:selector) || 'body') rescue "body"

          turbo_stream_action_tag name.to_s.camelize(:lower), target: target, template: operation
        end
      end
    end
  end
end

Turbo::Streams::TagBuilder.prepend(CableStreams::Streams::ActionHelper)
