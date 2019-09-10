--[[

This macro will cycle through ligands in the workspace and highlight one at a time

]]

function main ()

    ligandResidues = List_Make();

    for complex in List_Iterator(Workspace_GetComplexes()) do
        molecule = Complex_GetCurrentMolecule(complex);
        for chain in List_Iterator(Molecule_GetChains(molecule)) do
            for residue in List_Iterator(Chain_GetResidues(chain)) do
                if Residue_GetName(residue) ~= "HOH" then
                    containsHetAtoms = false;
                    for atom in List_Iterator(Residue_GetAtoms(residue)) do
                        containsHetAtoms = Atom_GetIsHet(atom);
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

    counter = 0
    if Store_Has("SiteViewMacroCounter") then
        counter = Store_GetInt("SiteViewMacroCounter");
    end;
    Store_SetInt("SiteViewMacroCounter", counter + 1);

    index = counter % List_Length(ligandResidues);
    ligandResidue = List_Get(ligandResidues, index);

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
    Command_SetAtomsBondsRender("default");
    Command_SetRibbonsRender("default");
    Command_SetSurfacesTransparency(0.4);
    Command_ColoringAtomsBonds("chains", nil, nil, true);
    Command_ColoringRibbons("chains");
    Command_ColoringSurfaces("hydrophobicity");

    Selection_Change("replace", ligandResidue);
    Selection_Extend(5.0, true);

    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(true);
    Command_ShowWaters(true);
    Command_ShowHydrogens(true);
    Command_ShowHetAtomsBonds(true);
    Command_ShowResidueLabels(true);
    Command_SetAtomsBondsRender("wire");

    Selection_Change("filter", ligandResidue);

    Command_SetAtomsBondsRender("sticks");
    Command_ColoringAtomsBonds("default");

    ligandAtomsCount = List_Length(Selection_GetAtoms());

    return "Success: " .. ligandAtomsCount .. " atoms focused";

end
