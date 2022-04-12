## CableStreams Rails

This is a Rails helper gem for the [`cable-streams`](https://github.com/marcoroth/cable-streams) NPM package. CableStreams extends Turbo Streams with Custom Turbo Stream Actions and all CableReady operations.

### Installation

```bash
bundle add cable_streams
```

### Using the Tag Helpers

The `cable_streams` gem ships view helpers for all CableReady operations. All options are identical to [the regular CableReady operations](https://cableready.stimulusreflex.com/v/v5/reference/operations).

Here's an example of the `console_log` operation:

```html+erb
<%= turbo_stream.console_log(message: "hello world") %>
```

Which renders to:
```html
<turbo-stream action="consoleLog" target="body">
  <template>
    [
      { "message": "hello world", "operation": "consoleLog" }
    ]
  </template>
</turbo-stream>
```
