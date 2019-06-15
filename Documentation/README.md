# Getting started

### The language

Nanome macros are made using the programming language Lua

See: https://www.lua.org/start.html

### Hello world!

A macro can be just a few lines of code

```lua
function main ()
    Command_Notification("Hello world, my first macro!");
end;
```

### Documenting the macro

A macro can be described to users using comments int the macro file:

Reminder: This is optional

```lua
--[[
 This macro will load multiple drugs automatically from drugbank:
 - Caffeine
 - Tylenol
 - Morphine
]]
function main ()
    Command_Load("Caffeine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00201.sdf");
    Command_Load("Tylenol", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00316.sdf");
    Command_Load("Morphine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00295.sdf");
    Selection_All();
    Command_Zoom();
end;
```

### Accessing Nanome features

A macro have access to all the Nanome capability through Lua functions

See: https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/API.md
