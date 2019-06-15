
# Available functions: Selection

### Set selection

* [Selection_All](#selection_all) (Select EVERYTHING)
* [Selection_Clear](#selection_clear) (Select NOTHING)
* [Selection_Invert](#selection_invert) (Select everything that is not selected, deselect everything selected)
* [Selection_Extend](#selection_extend) (Select all atoms at a certain distance from the current selection)
* [Selection_Shrink](#selection_shrink) (Deselect all atoms that are at a certain distance from non-selected atoms)
* [Selection_Change](#selection_change) (Arbitrary change of selection)

### Read selection

* [Selection_GetAtoms](#selection_getatoms) (Get all selected atoms in a list)
* [Selection_GetResidues](#selection_getresidues) (Get all selected residues in a list)
* [Selection_GetChains](#selection_getchains) (Get all selected chains in a list)
* [Selection_GetMolecules](#selection_getmolecules) (Get all selected molecules in a list)
* [Selection_GetComplexes](#selection_getcomplexes) (Get all selected complexes in a list)

# Documentation API : Selection

### Selection_All
Definition
```csharp
Selection_All() -> null
```
Example:
```lua
-- Select all atoms within the workspace
Selection_All();
```

### Selection_Clear
Definition
```csharp
Selection_Clear() -> null
```
Example:
```lua
-- Deselect everything
Selection_Clear();
```

### Selection_Invert
Definition
```csharp
Selection_Invert() -> null
```
Example:
```lua
-- Everything selected becomes unselected
-- Everything unselected becomes selected
Selection_Invert();
```

### Selection_Extend
Definition
```csharp
Selection_Extend(float distance) -> null
Selection_Extend(float distance, bool byResidues) -> null
Selection_Extend(float distance, bool byResidues, bool ignoreInvisibles) -> null
```
Example:
```lua
-- Select all atoms that are less than 5 anstrom away from anything selected
Selection_Extend(5.0, false);
-- Select all residues that are less than 5 anstrom away from anything selected
Selection_Extend(5.0, true);
```

### Selection_Shrink
Definition
```csharp
Selection_Shrink(float distance) -> null
Selection_Shrink(float distance, bool byResidues) -> null
Selection_Shrink(float distance, bool byResidues, bool ignoreInvisibles) -> null
```
Example:
```lua
-- Deselect all atoms that are less than 5 anstrom away from anything non-selected
Selection_Shrink(5.0, false);
-- Deselect all residues that are less than 5 anstrom away from anything non-selected
Selection_Shrink(5.0, true);
```

### Selection_Change
Definition
```csharp
Selection_Change(string mode, Atom atom) -> null
Selection_Change(string mode, Residue residue) -> null
Selection_Change(string mode, Chain chain) -> null
Selection_Change(string mode, Molecule molecule) -> null
Selection_Change(string mode, Complex complex) -> null

Selection_Change(string mode, List<Atom> atoms) -> null
Selection_Change(string mode, List<Residue> residues) -> null
Selection_Change(string mode, List<Chain> chains) -> null
Selection_Change(string mode, List<Molecule> molecules) -> null
Selection_Change(string mode, List<Complex> complexes) -> null
```
Example:
```lua
-- Add all complexes within the workspace to the selection
Selection_Change("add", Workspace_GetComplexes());
-- Remove all complexes within the workspace from the selection
Selection_Change("remove", Workspace_GetComplexes());

-- LOTs of combination are possible

```

### Selection_GetAtoms
Definition
```csharp
Selection_GetAtoms() -> List<Atom>
```
Example:
```lua
-- Display the number of selected atoms
Command_Notification("Currently selected: " .. List_Length(Selection_GetAtoms()) .. " atom(s)");
```

### Selection_GetResidues
Definition
```csharp
Selection_GetResidues() -> List<Residue>
```
Example:
```lua
-- Display the number of selected residues
Command_Notification("Currently selected: " .. List_Length(Selection_GetResidues()) .. " residue(s)");
```

### Selection_GetChains
Definition
```csharp
Selection_GetChains() -> List<Chain>
```
Example:
```lua
-- Display the number of selected chains
Command_Notification("Currently selected: " .. List_Length(Selection_GetChains()) .. " chain(s)");
```

### Selection_GetMolecules
Definition
```csharp
Selection_GetMolecules() -> List<Molecule>
```
Example:
```lua
-- Display the number of selected molecules
Command_Notification("Currently selected: " .. List_Length(Selection_GetMolecules()) .. " molecule(s)");
```

### Selection_GetComplexes
Definition
```csharp
Selection_GetComplexes() -> List<Complex>
```
Example:
```lua
-- Display the number of selected complexes
Command_Notification("Currently selected: " .. List_Length(Selection_GetComplexes()) .. " complex(s)");
```
