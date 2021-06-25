--[[

Changes the protein representation to show the secondary structure in their default color and hides all backbone atoms.

]]


function mode_ribbon_and_ligand(ribbon_coloring, ribbon_mode)
    selectedComplexes = Selection_GetComplexes();
    hetAtomsInSelectedComplexes = List_Make();

    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowLigandSurfaces(false);
    Command_SetAtomsBondsRender("wire");
    Command_SetRibbonsRender(ribbon_mode);
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds(ribbon_coloring, nil, nil, true);
    Command_ColoringRibbons(ribbon_coloring);
    Command_ColoringSurfaces(ribbon_coloring);
    
    for complex in List_Iterator(selectedComplexes) do
        molecule = Complex_GetCurrentMolecule(complex);
        for chain in List_Iterator(Molecule_GetChains(molecule)) do
            for residue in List_Iterator(Chain_GetResidues(chain)) do
                for atom in List_Iterator(Residue_GetAtoms(residue)) do
                    if Atom_GetIsHet(atom) then
                        List_Add(hetAtomsInSelectedComplexes, atom);
                    end;
                end;
            end;
        end;
    end;

    Selection_Change("replace", hetAtomsInSelectedComplexes);
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_HbondAdd();
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Change("replace", selectedComplexes);
end;


function main ()
    selectedComplexes = Selection_GetComplexes();
    if List_Length(selectedComplexes) <= 0 then
        return "Error: No Structure Selected";
    end;
    mode_ribbon_and_ligand("default", "secondary-structures");
    return "Success: Overview\n(secondary structure coloring)";
end;