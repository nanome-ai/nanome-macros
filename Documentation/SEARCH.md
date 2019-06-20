
# Available functions: Search

### Find molecular structures within the current workspace

* [Search_GetComplexes](#search_getcomplexes) (Find all complexes matching a given search pattern)
* [Search_GetMolecules](#search_getmolecules) (Find all molecules matching a given search pattern)
* [Search_GetChains](#search_getchains) (Find all chains matching a given search pattern)
* [Search_GetResidues](#search_getresidues) (Find all residues matching a given search pattern)
* [Search_GetAtoms](#search_getatoms) (Find all atoms matching a given search pattern)

### Search_GetComplexes
Definition
```csharp
Search_GetComplexes(string pattern) -> List<Complex>
```
Example:
```lua
complexes = Search_GetComplexes("4HHB");          -- All complexes "4HHB"
complexes = Search_GetComplexes("Caffeine");      -- All complexes "Caffeine"
```

### Search_GetMolecules
Definition
```csharp
Search_GetMolecules(string pattern) -> List<Molecule>
```
Example:
```lua
molecules = Search_GetMolecules("4HHB 1");        -- First molecules of complexes "4HHB"
molecules = Search_GetMolecules("Caffeine 1");    -- First molecules of complexes "Caffeine"
```

### Search_GetChains
Definition
```csharp
Search_GetChains(string pattern) -> List<Chain>
```
Example:
```lua
chains = Search_GetChains("4HHB > A");            -- All chains "A" of complexes "4HHB"
chains = Search_GetChains("4HHB > HA");           -- All chains "HA" of complexes "4HHB"
chains = Search_GetChains("4HHB > ");             -- All chains of complexes "4HHB"
```

### Search_GetResidues
Definition
```csharp
Search_GetResidues(string pattern) -> List<Residue>
```
Example:
```lua
residues = Search_GetResidues("4HHB >> HOH");     -- All residues "HOH" of complexes "4HHB"
residues = Search_GetResidues("4HHB >> HEM");     -- All residues "HEM" of complexes "4HHB"
residues = Search_GetResidues("4HHB >> #");       -- All ligands residues of complexes "4HHB"
residues = Search_GetResidues("4HHB >> ASP 101"); -- All residues "ASP" serial "101" of complexes "4HHB"
residues = Search_GetResidues("4HHB >> 101");     -- All residues serial "101" of complexes "4HHB"
residues = Search_GetResidues("4HHB > HA > #");   -- All ligands residues within chain "HA" of complexes "4HHB"
residues = Search_GetResidues("4HHB > A > CYS");  -- All residues "CYS" within chain "A" of complexes "4HHB"
residues = Search_GetResidues("4HHB > HA > HOH"); -- All residues "HOH" within chain "HA" of complexes "4HHB"
residues = Search_GetResidues("4HHB > HA > ");    -- All residues within chain "HA" of complexes "4HHB"
residues = Search_GetResidues(" >> HOH");         -- All residues "HOH"
residues = Search_GetResidues(" > A > ");         -- All residues within chains "A"
```

### Search_GetAtoms
Definition
```csharp
Search_GetAtoms(string pattern) -> List<Atom>
```
Example:
```lua
atoms = Search_GetAtoms("Caffeine > A >> ");      -- All atoms within chain "A" of complexes "Caffeine"
atoms = Search_GetAtoms("Caffeine >>> N");        -- All atoms "N" of complexes "Caffeine"
atoms = Search_GetAtoms("Caffeine >> LIG > N");   -- All atoms "N" within residue "LIG" of complexes "Caffeine"
atoms = Search_GetAtoms("Caffeine >>> ");         -- All atoms of complexes "Caffeine"
atoms = Search_GetAtoms("Caffeine >>> HET");      -- All HET atoms of complexes "Caffeine"
atoms = Search_GetAtoms("4HHB > HA > HOH > O");   -- All oxygen atoms of residues "HOH" within chain "H" of complex "4HHB"
atoms = Search_GetAtoms("4HHB >> HOH > O");       -- All oxygen atoms of residues "HOH" of complex "4HHB"
```
