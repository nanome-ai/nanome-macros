--[[

 This macro will highlight all the edges of your selection

]]

function main ()

    selectionResidues = Selection_GetResidues();

    waterResidues = List_Make();
    carbonAtoms = List_Make();

    for complex in List_Iterator(Workspace_GetComplexes()) do
        molecule = Complex_GetCurrentMolecule(complex);
        for chain in List_Iterator(Molecule_GetChains(molecule)) do
            for residue in List_Iterator(Chain_GetResidues(chain)) do
                if Residue_GetName(residue) ~= "HOH" then
                    for atom in List_Iterator(Residue_GetAtoms(residue)) do
                        if string.sub(Atom_GetName(atom), 0, 1) == "C" then
                            List_Add(carbonAtoms, atom);
                        end;
                    end;
                else
                    List_Add(waterResidues, residue);
                end;
            end;
        end;
    end;

    Selection_Clear();
    Selection_All();

    Command_ShowAtomsBonds(true);
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
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds("default");
    Command_ColoringRibbons("chains");
    Command_ColoringSurfaces("default");

    Selection_Change("replace", waterResidues);
    Command_ShowAtomsBonds(false);

    Selection_Change("replace", selectionResidues);
    Selection_Extend(5.0, true, true);

    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(true);
    Command_ShowHydrogens(true);
    Command_ShowHetAtomsBonds(true);
    Command_ShowResidueLabels(true);
    Command_SetAtomsBondsRender("sticks");
    Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
    Command_ColoringAtomsBonds("mono", Color_RGB(255, 255, 255), nil, true);

    Selection_Invert();
    Command_ShowAtomsBonds(false);
    Selection_Invert();

    Selection_Change("replace", selectionResidues);

    Command_ColoringRibbons("mono", Color_RGB(255, 255, 0));
    Command_ColoringAtomsBonds("mono", Color_RGB(255, 255, 0), nil, true);

    Selection_Shrink(5.0, true, true);

    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("default");
    Command_SetRibbonsRender("default");
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds("default");
    Command_ColoringRibbons("chains");
    Command_ColoringSurfaces("hydrophobicity");

    Selection_Change("replace", selectionResidues);

    ligandAtomsCount = List_Length(Selection_GetAtoms());

    return "Success: " .. ligandAtomsCount .. " atoms focused";

end
