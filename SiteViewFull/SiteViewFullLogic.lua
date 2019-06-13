
function main ()

    carbonAtoms = List_Make();
    ligandResidues = List_Make();

    for _, complex in pairs(Workspace_GetComplexes()) do
        molecule = Complex_GetCurrentMolecule(complex);
        for _, chain in pairs(Molecule_GetChains(molecule)) do
            for _, residue in pairs(Chain_GetResidues(chain)) do
                if Residue_GetName(residue) ~= "HOH" then
                    containsHetAtoms = false;
                    for _, atom in pairs(Residue_GetAtoms(residue)) do
                        containsHetAtoms = Atom_GetIsHet(atom);
                        if string.sub(Atom_GetName(atom), 0, 1) == "C" then
                            List_Add(carbonAtoms, atom);
                        end;
                    end;
                    if containsHetAtoms then
                        List_Add(ligandResidues, residue);
                    end;
                end;
            end;
        end;
    end;

    if List_Length(ligandResidues) <= 0 then
        return "Error: No ligand found";
    end;

    Selection_Clear();
    Selection_All();

    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(false);
    Command_ShowHetSurfaces(false);
    Command_VisualAtomsBonds("default");
    Command_VisualRibbons("default");
    Command_VisualSurfaces(0.5);
    Command_ColoringAtomsBonds("default");
    Command_ColoringRibbons("chains");
    Command_ColoringSurfaces("hydrophobicity");

    Selection_Change("replace", carbonAtoms);

    Command_ColoringAtomsBonds("chains");

    Selection_Change("replace", ligandResidues);
    Selection_Extend(5.0, true);

    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(true);
    Command_ShowWaters(true);
    Command_ShowHydrogens(true);
    Command_ShowHetAtomsBonds(true);
    Command_ShowResidueLabels(true);
    Command_VisualAtomsBonds("sticks");

    Selection_Change("filter", ligandResidues);

    Command_VisualAtomsBonds("default");

    ligandAtomsCount = List_Length(Selection_GetAtoms());

    return "Success: " .. ligandAtomsCount .. " atoms focused";

end
