
## Available functions: Command

### Utility functions

* [Command_Notification](#command_notification) (Display a message to the user)
* [Command_Wait](#command_wait) (Pause macro execution for a set time)

### Molecular complexes handling

* [Command_Load](#command_load) (Load an arbitrary molecule/map/ligand from any available source)
* [Command_Split](#command_split) (Split selected atoms into different molecular complexes)
* [Command_Duplicate](#command_duplicate) (Duplicate selected atoms into new molecular complexes)
* [Command_Merge](#command_merge) (Merge selected atoms into a single molecular complex)
* [Command_Center](#command_center) (Put selected atoms in the center of the room)
* [Command_Zoom](#command_zoom) (Bring selected atoms into arms-length distance in front of the user)
* [Command_Align](#command_align) (Align molecular complexes origins and lock them into place)
* [Command_Delete](#command_delete) (Destroy and remove molecular structures from the room)

### Rendering enable/disable (of current selection)

* [Command_ShowAtomsBonds](#command_showatomsbonds) (Enable/Disable rendering of atoms and bonds)
* [Command_ShowRibbons](#command_showribbons) (Enable/Disable rendering of ribbons)
* [Command_ShowSurfaces](#command_showsurfaces) (Enable/Disable rendering of surface)
* [Command_ShowWaters](#command_showwaters) (Enable/Disable rendering of water atoms)
* [Command_ShowHydrogens](#command_showhydrogens) (Enable/Disable rendering of hydrogen atoms)
* [Command_ShowHetAtomsBonds](#command_showhetatomsbonds) (Enable/Disable rendering of hetatoms atoms and bonds)
* [Command_ShowHetSurfaces](#command_showhetsurfaces) (Enable/Disable rendering of hetatoms surfaces)

### Rendering setup (of current selection)

* [Command_SetAtomsBondsRender](#command_setatomsbondsrender) (Set the rendering mode for selected atoms and bonds)
* [Command_SetRibbonsRender](#command_setribbonsrender) (Set the rendering mode for selected ribbons)
* [Command_SetSurfacesTransparency](#command_setsurfacestransparency) (Set the rendering surface opacity of the selected atoms)

### Rendering coloring (of current selection)

* [Command_ColoringAtomsBonds](#command_coloringatomsbonds) (Set coloring of selected atoms and bonds)
* [Command_ColoringRibbons](#command_coloringribbons) (Set coloring of selected ribbons)
* [Command_ColoringSurfaces](#command_coloringsurfaces) (Set coloring of selected atom surfaces)

### Labeling manipulation (of current selection)

* [Command_ShowAtomLabels](#command_showatomlabels) (Enable/Disable rendering of selected atoms labels)
* [Command_ShowResidueLabels](#command_showresiduelabels) (Enable/Disable rendering of selected residues labels)

### Misc functions

* [Command_HydrogenAdd](#command_hydrogenadd) (Schedule computing of hydrogens on selected atoms, SLOW)
* [Command_HydrogenDelete](#command_hydrogendelete) (Schedule removing of hydrogens on selected atoms, SLOW)

### Debug functions

* [Command_Flush](#command_flush) (Make sure all previous commands have been executed before continuing)


## Documentation API

### Command_Load
Definition
```csharp
Command_Load(string name, string type, string source, string payload) -> null
```
Example:
```lua
-- Load a PDB from RCSB (named: 4HHB)
Command_Load("4HHB", "PDB", "HTTP", "https://files.rcsb.org/download/4HHB.pdb");
-- Load a SDF from Drugbank (named: DB00316)
Command_Load("DB00316", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00316.sdf");
-- Load a PDB file from the desktop (named: 4HHB)
Command_Load("4HHB", "PDB", "FILE", Path_Make("{{DESKTOP}}/4HHB.pdb"));
-- Load a PDB file from the same folder as Nanome.exe (named: 4HHB)
Command_Load("4HHB", "PDB", "FILE", Path_Make("{{EXECUTABLE}}/4HHB.pdb"));
-- Load a DSN6 file from the downloads folder (named: 2FMA_FOFC)
Command_Load("2FMA_FOFC", "DSN6", "FILE", Path_Make("{{DOWNLOADS}}/2fma_fofc.dsn6"));
-- Load a SDF file from the documents folder (named: LIGANDS)
Command_Load("LIGANDS", "SDF", "FILE", Path_Make("{{DOCUMENTS}}/LIGANDS.sdf"));
```

### Command_Split
Definition
```csharp
Command_Split() -> null
```
Example:
```lua
-- Split selection
Command_Split();
```

### Command_Duplicate
Definition
```csharp
Command_Duplicate() -> null
```
Example:
```lua
-- Duplicate selection
Command_Duplicate();
```

### Command_Merge
Definition
```csharp
Command_Merge() -> null
```
Example:
```lua
-- Merge selection
Command_Merge();
```

### Command_Center
Definition
```csharp
Command_Center() -> null
```
Example:
```lua
-- Center selection
Command_Center();
```

### Command_Zoom
Definition
```csharp
Command_Zoom() -> null
```
Example:
```lua
-- Zoom on selection
Command_Zoom();
```

### Command_Align
Definition
```csharp
Command_Align(List<Complex> complexes) -> null
```
Example:
```lua
-- Align all the complexes of the workspace
Command_Align(Workspace_GetComplexes());
-- Align all the selected complexes
Command_Align(Selection_GetComplexes());
```

### Command_Delete
Definition
```csharp
Command_Delete(List<Complex> complexes) -> null
Command_Delete(List<Molecule> molecules) -> null
Command_Delete(List<Chain> chain) -> null
Command_Delete(List<Residue> residues) -> null
Command_Delete(List<Atom> atoms) -> null
```
Example:
```lua
-- Delete all the complexes of the workspace
Command_Delete(Workspace_GetComplexes());
-- Delete all the selected complexes
Command_Delete(Selection_GetComplexes());
-- Delete all the selected molecules
Command_Delete(Selection_GetMolecules());
-- Delete all the selected chains
Command_Delete(Selection_GetChains());
-- Delete all the selected residues
Command_Delete(Selection_GetResidues());
-- Delete all the selected atoms
Command_Delete(Selection_GetAtoms());
```

### Command_ShowAtomsBonds
Definition
```csharp
Command_ShowAtomsBonds(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for atoms and bonds of selection
Command_ShowAtomsBonds(true);
-- Disable rendering for atoms and bonds of selection
Command_ShowAtomsBonds(false);
```

### Command_ShowRibbons
Definition
```csharp
Command_ShowRibbons(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for ribbons of selection
Command_ShowRibbons(true);
-- Disable rendering for ribbons of selection
Command_ShowRibbons(false);
```

### Command_ShowSurfaces
Definition
```csharp
Command_ShowSurfaces(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for surfaces of selection
Command_ShowSurfaces(true);
-- Disable rendering for surfaces of selection
Command_ShowSurfaces(false);
```

### Command_ShowWaters
Definition
```csharp
Command_ShowWaters(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for water atoms within selection
Command_ShowWaters(true);
-- Disable rendering for water atoms within selection
Command_ShowWaters(false);
```

### Command_ShowHydrogens
Definition
```csharp
Command_ShowHydrogens(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for hydrogen atoms within selection
Command_ShowHydrogens(true);
-- Disable rendering for hydrogen atoms within selection
Command_ShowHydrogens(false);
```

### Command_ShowHetAtomsBonds
Definition
```csharp
Command_ShowHetAtomsBonds(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for hetatoms
Command_ShowHetAtomsBonds(true);
-- Disable rendering for hetatoms
Command_ShowHetAtomsBonds(false);
```

### Command_ShowHetSurfaces
Definition
```csharp
Command_ShowHetSurfaces(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for hetatoms surfaces
Command_ShowHetSurfaces(true);
-- Disable rendering for hetatoms surfaces
Command_ShowHetSurfaces(false);
```

### Command_ShowAtomLabels
Definition
```csharp
Command_ShowAtomLabels(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for selected atoms labels
Command_ShowAtomLabels(true);
-- Disable rendering for selected atoms labels
Command_ShowAtomLabels(false);
```

### Command_ShowResidueLabels
Definition
```csharp
Command_ShowResidueLabels(bool enabled) -> null
```
Example:
```lua
-- Enable rendering for selected residues labels
Command_ShowResidueLabels(true);
-- Disable rendering for selected residues labels
Command_ShowResidueLabels(false);
```

### Command_SetAtomsBondsRender
Definition
```csharp
Command_SetAtomsBondsRender(string mode) -> null
```
Example:
```lua
-- Renders selection using sticks atoms/bonds
Command_SetAtomsBondsRender("sticks");
-- Renders selection using wire atoms/bonds
Command_SetAtomsBondsRender("wire");
-- Renders selection using van der waals spheres for atoms
Command_SetAtomsBondsRender("vdw");
-- Renders selection using point spheres for atoms
Command_SetAtomsBondsRender("point");
-- Renders selection using balls&sticks atoms/bonds
Command_SetAtomsBondsRender("balls+sticks");
Command_SetAtomsBondsRender("default");
```

### Command_SetRibbonsRender
Definition
```csharp
Command_SetRibbonsRender(string mode) -> null
```
Example:
```lua
-- Renders selection using adaptive "tube" ribbons
Command_SetRibbonsRender("tube");
-- Renders selection using coil ribbons (no secondary structures)
Command_SetRibbonsRender("coil");
-- Renders selection using secondary structure ribbons
Command_SetRibbonsRender("secondary-structures");
Command_SetRibbonsRender("default");
```

### Command_SetSurfacesTransparency
Definition
```csharp
Command_SetSurfacesTransparency(float value) -> null
```
Example:
```lua
-- Renders surfaces as completely opaque
Command_SetSurfacesTransparency(0.0);
-- Renders surfaces as half transparent
Command_SetSurfacesTransparency(0.5);
-- Renders surfaces as completely transparent
Command_SetSurfacesTransparency(1.0);
```

### Command_ColoringAtomsBonds
Definition
```csharp
Command_ColoringAtomsBonds(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
```
Example:
```lua
-- Color all selected atoms as WHITE
Command_ColoringAtomsBonds("mono", Color_RGB(255, 255, 255));
-- Color all selected atoms as RED
Command_ColoringAtomsBonds("mono", Color_RGB(255, 0, 0));
-- Color all selected atoms as BLUE
Command_ColoringAtomsBonds("mono", Color_RGB(0, 0, 255));
-- Color all selected atoms as BLACK
Command_ColoringAtomsBonds("mono", Color_RGB(0, 0, 0));

-- Color all selected atoms by bfactor
Command_ColoringAtomsBonds("bfactor");
-- Color all selected atoms by occupancy
Command_ColoringAtomsBonds("occupancy");
-- Color all selected atoms by chain
Command_ColoringAtomsBonds("chain");
-- Color all selected atoms by residue type
Command_ColoringAtomsBonds("residue");
-- Color all selected atoms by hydrophobicity
Command_ColoringAtomsBonds("hydrophobicity");
-- Color all selected atoms by secondary-structure
Command_ColoringAtomsBonds("secondary-structure");

-- Color all selected carbons atoms as RED
Command_ColoringAtomsBonds("mono", Color_RGB(255, 0, 0), Nil, true);
-- Color all selected carbons by chain
Command_ColoringAtomsBonds("chain", Nil, Nil, true);

-- Color all selected atoms by rainbow from red to blue
Command_ColoringAtomsBonds("rainbow", Color_RGB(255, 0, 0), Color_RGB(0, 0, 255));

-- Color all selected atoms by element color
Command_ColoringAtomsBonds("element");
Command_ColoringAtomsBonds("default");
```


### Command_ColoringRibbons
Definition
```csharp
Command_ColoringRibbons(string scheme, Color color1, Color color2) -> null
```
Example:
```lua
-- Color all selected ribbons as WHITE
Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
-- Color all selected ribbons as RED
Command_ColoringRibbons("mono", Color_RGB(255, 0, 0));
-- Color all selected ribbons as BLUE
Command_ColoringRibbons("mono", Color_RGB(0, 0, 255));
-- Color all selected ribbons as BLACK
Command_ColoringRibbons("mono", Color_RGB(0, 0, 0));

-- Color all selected ribbons by rainbow from red to blue
Command_ColoringRibbons("rainbow", Color_RGB(255, 0, 0), Color_RGB(0, 0, 255));

-- Color all selected ribbons by bfactor
Command_ColoringRibbons("bfactor");
-- Color all selected ribbons by occupancy
Command_ColoringRibbons("occupancy");
-- Color all selected ribbons by chain
Command_ColoringRibbons("chain");
-- Color all selected ribbons by residue type
Command_ColoringRibbons("residue");
-- Color all selected ribbons by hydrophobicity
Command_ColoringRibbons("hydrophobicity");
-- Color all selected ribbons by secondary-structure
Command_ColoringRibbons("secondary-structure");
Command_ColoringRibbons("default");
```


### Command_ColoringSurfaces
Definition
```csharp
Command_ColoringSurfaces(string scheme, Color color1, Color color2, bool onlyColorCarbons) -> null
```
Example:
```lua
-- Color all selected atoms's surfaces as WHITE
Command_ColoringSurfaces("mono", Color_RGB(255, 255, 255));
-- Color all selected atoms's surfaces as RED
Command_ColoringSurfaces("mono", Color_RGB(255, 0, 0));
-- Color all selected atoms's surfaces as BLUE
Command_ColoringSurfaces("mono", Color_RGB(0, 0, 255));
-- Color all selected atoms's surfaces as BLACK
Command_ColoringSurfaces("mono", Color_RGB(0, 0, 0));

-- Color all selected atoms's surfaces by bfactor
Command_ColoringSurfaces("bfactor");
-- Color all selected atoms's surfaces by occupancy
Command_ColoringSurfaces("occupancy");
-- Color all selected atoms's surfaces by chain
Command_ColoringSurfaces("chain");
-- Color all selected atoms's surfaces by residue type
Command_ColoringSurfaces("residue");
-- Color all selected atoms's surfaces by hydrophobicity
Command_ColoringSurfaces("hydrophobicity");
-- Color all selected atoms's surfaces by secondary-structure
Command_ColoringSurfaces("secondary-structure");

-- Color all selected carbons atoms's surfaces as RED
Command_ColoringSurfaces("mono", Color_RGB(255, 0, 0), Nil, true);
-- Color all selected carbons by chain
Command_ColoringSurfaces("chain", Nil, Nil, true);

-- Color all selected atoms's surfaces by rainbow from red to blue
Command_ColoringSurfaces("rainbow", Color_RGB(255, 0, 0), Color_RGB(0, 0, 255));

-- Color all selected atoms's surfaces by element color
Command_ColoringSurfaces("element");
Command_ColoringSurfaces("default");
```

### Command_Notification
Definition
```csharp
Command_Notification(string message) -> null
```
Example:
```lua
-- Say hello to the user
Command_Notification("Hello, welcome to nanome!");
```


### Command_Wait
Definition
```csharp
Command_Wait(int milliseconds) -> null
```
Example:
```lua
-- Wait half a second
Command_Wait(500);
-- Wait 2 seconds
Command_Wait(2000);
```
