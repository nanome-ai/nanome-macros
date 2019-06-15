# Getting started

### The language

Nanome macros are made using the programming language Lua

See: https://www.lua.org/start.html

### Hello world!

A macro can be just a few lines of code

```lua
--[[
    You can add a small description to the macro like this way (This is optional)
]]
function main ()
    Command_Notification("Hello world, my first macro!");
end;
```

### Accessing Nanome features

A macro have access to all the Nanome capability through Lua functions

See: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/API.md
