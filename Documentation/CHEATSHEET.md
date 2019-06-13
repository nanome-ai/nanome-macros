

```csharp

Command_Load(string name, string type, string source, string payload) -> null

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

Command_Notification(string message) -> null
Command_Wait(int milliseconds) -> null

```
