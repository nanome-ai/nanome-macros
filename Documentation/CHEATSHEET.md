# Links

[API: Selection](https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/SELECTION.md)
[API: Command](https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/COMMAND.md)
[API: Store](https://github.com/nanome-ai/nanome-macros/blob/master/Documentation/STORE.md)

# Selection fonctionality

Ability to manipulate workspace selection

```csharp
Selection_All() -> null
Selection_Clear() -> null
Selection_Invert() -> null

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

Selection_Extend(float distance, bool groupResidues) -> null
Selection_Shrink(float distance, bool groupResidues) -> null

Selection_GetAtoms() -> List<Atom>
Selection_GetResidues() -> List<Residue>
Selection_GetChains() -> List<Chain>
Selection_GetMolecules() -> List<Molecule>
Selection_GetComplexes() -> List<Complex>
```

# Command fonctionality

Manipulate the workspace and the selection within the workspace

```csharp
Command_Load(string name, string type, string source, string payload) -> null

Command_Notification(string message) -> null
Command_Wait(int milliseconds) -> null

Command_Split();
Command_Duplicate() -> null
Command_Merge() -> null

Command_Center() -> null
Command_Zoom() -> null
Command_Align(List<Complex> complexes) -> null

Command_Delete(List<Complex> complexes) -> null
Command_Delete(List<Molecule> molecules) -> null
Command_Delete(List<Chain> chain) -> null
Command_Delete(List<Residue> residues) -> null
Command_Delete(List<Atom> atoms) -> null

Command_ShowAtomsBonds(bool enabled) -> null
Command_ShowRibbons(bool enabled) -> null
Command_ShowSurfaces(bool enabled) -> null

Command_ShowWaters(bool enabled) -> null
Command_ShowHydrogens(bool enabled) -> null

Command_ShowHetAtomsBonds(bool enabled) -> null
Command_ShowHetSurfaces(bool enabled) -> null

Command_ShowResidueLabels(bool enabled) -> null
Command_ShowAtomLabels(bool enabled) -> null

Command_SetAtomsBondsRender(string mode) -> null
Command_SetRibbonsRender(string mode) -> null
Command_SetSurfacesTransparency(float value) -> null

Command_ColoringAtomsBonds(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
Command_ColoringRibbons(string scheme, Color color1, Color color2) -> null
Command_ColoringSurfaces(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
```

# Store fonctionality

Ability to save values between macro runs

```csharp
Store_Set(string key, object value) -> null
Store_SetString(string key, string value) -> null
Store_SetFloat(string key, float value) -> null
Store_SetInt(string key, int value) -> null
Store_SetBool(string key, bool value) -> null

Store_Has(string key) -> bool

Store_Get(string key) -> object
Store_GetString(string key) -> string
Store_GetFloat(string key) -> float
Store_GetInt(string key) -> int
Store_GetBool(string key) -> bool
```
