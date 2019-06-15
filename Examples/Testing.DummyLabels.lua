--[[

    This macro will labels atoms, residues and complexes by their position in atom list

]]
function main ()
    Command_Load("Caffeine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00201.sdf");
    Command_Load("Tylenol", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00316.sdf");
    Command_Load("Morphine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00295.sdf");
    Selection_All();
    atoms = Selection_GetAtoms();
    residues = Selection_GetResidues();
    complexes = Selection_GetComplexes();
    Command_Zoom();
    Command_ShowAtomLabels(true);
    Command_ShowResidueLabels(true);
    for idx, atom in List_Pairs(atoms) do
        Atom_SetLabelContent(atom, "ATOM:" .. idx);
    end;
    for idx, residue in List_Pairs(residues) do
        Residue_SetLabelContent(residue, "RESIDUE:" .. idx);
    end;
    for idx, complex in List_Pairs(complexes) do
        Complex_SetName(complex, "COMPLEX:" .. idx);
    end;
end;
