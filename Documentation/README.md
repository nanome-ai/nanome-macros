# Getting started

### Start building right away

1) Create a new file: "MyNewMacro.lua" (or MyNewMacro.lua.txt) on your desktop
2) Edit and save the macro file
3) Start the macro "MyNewMacro" within nanome

### Hello world!

A macro can be just a few lines of code

```lua
--[[
    You can add a small description to the macro here (This is optional)
]]
function main ()
    Command_Notification("Hello world, my first macro!");
end;
```

The programming language used here is Lua.

See: https://www.lua.org/start.html

### Available Commands

A macro have access to all the Nanome capabilities through custom functions:

See: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/API.md

### Sharing macros

Macro can be shared simply by copy/pasting the ".lua" file on different machines.

You can store the macros in one of the following supported folder (configurable in the config-file):

```
C://Users/{{USERNAME}}/Desktop/
C://Users/{{USERNAME}}/Documents/
C://Users/{{USERNAME}}/Documents/Nanome/
C://Users/{{USERNAME}}/Documents/Nanome/Macros/
```

Optionally, a macro can be hosted through an HTTP server (configurable in the config-file)
