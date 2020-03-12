# Available functions: Molecular

### Animation Functions
* [Complex_GetAnimationMode](#complex_getanimationmode) (Get the animation mode that is set to a molecular complex)
* [Complex_SetAnimationMode](#complex_setanimatinmode) (Set one of three animation modes  to a molecular complex: playing back, paused, and playing forward)


# Documentation API : Molecular

### Complex_GetAnimationMode
Definition
```csharp
Complex_GetAnimationMode(Complex complex) -> int
```
Example:
```lua
-- Get Animation Mode from the first complex of the workspace
Command_Load(Workspace_GetComplexes()[0]);       -- Mode (playing back, paused, or playing forward) will be returned as 0, 1, or 2 respectively
```

### Complex_SetAnimationMode
Definition
```csharp
Complex_SetAnimationMode(Complex complex, int value) -> null
```
Example:
```lua
-- Playing back: Set Animation Mode of the first complex of the workspace to playing back
Command_Export(Workspace_GetComplexes()[0], 0);       -- Animation mode will be set to playing back
-- Paused: Set Animation Mode of the first complex of the workspace to paused
Command_Export(Workspace_GetComplexes()[0], 1);       -- Animation mode will be set to paused
-- Playing forward: Set Animation Mode of the first complex of the workspace to playing forward
Command_Export(Workspace_GetComplexes()[0], 2);       -- Animation mode will be set to playing forward
```
