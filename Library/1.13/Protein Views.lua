--[[

This macro will cycle through different views for browsing of proteins:

 - Protein Overviews
 - Protein R-Groups
 - Protein Cartoons
 - Protein Rainbow

]]

function mode_ribbon_and_surface(ribbon_coloring, ribbon_mode)

    Selection_All();
    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(true);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("wire");
    Command_SetRibbonsRender(ribbon_mode);
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds(ribbon_coloring, nil, nil, true);
    Command_ColoringRibbons(ribbon_coloring);
    Command_ColoringSurfaces(ribbon_coloring);

    Selection_Change("replace", Search_GetAtoms(">>> HET"));
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_SetRibbonsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Clear();
end;

function mode_ribbon_and_ligand(ribbon_coloring, ribbon_mode)

    Selection_All();
    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("wire");
    Command_SetRibbonsRender(ribbon_mode);
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds(ribbon_coloring, nil, nil, true);
    Command_ColoringRibbons(ribbon_coloring);
    Command_ColoringSurfaces(ribbon_coloring);

    Selection_Change("replace", Search_GetAtoms(">>> HET"));
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Clear();
end;

function mode_rgroups_and_ligand(ribbon_coloring, ribbon_mode)

    Selection_All();
    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("wire");
    Command_SetRibbonsRender(ribbon_mode);
    Command_SetSurfacesTransparency(0.5);
    Command_ColoringAtomsBonds(ribbon_coloring, nil, nil, true);
    Command_ColoringRibbons(ribbon_coloring);
    Command_ColoringSurfaces(ribbon_coloring);

    rN = Search_GetAtoms(">>> N");
    rC = Search_GetAtoms(">>> C");
    rCA = Search_GetAtoms(">>> CA");
    rO = Search_GetAtoms(">>> O");
    rOXT = Search_GetAtoms(">>> OXT");

    rOP1 = Search_GetAtoms(">>> OP1");
    rOP2 = Search_GetAtoms(">>> OP2");
    rP = Search_GetAtoms(">>> P");
    rO3 = Search_GetAtoms(">>> O3'");
    rO5 = Search_GetAtoms(">>> O5'");
    rC5 = Search_GetAtoms(">>> C5'");

    Selection_Change("remove", rN);
    Selection_Change("remove", rC);
    Selection_Change("remove", rCA);
    Selection_Change("remove", rO);
    Selection_Change("remove", rOXT);

    Selection_Change("remove", rOP1);
    Selection_Change("remove", rOP2);
    Selection_Change("remove", rP);
    Selection_Change("remove", rO3);
    Selection_Change("remove", rO5);
    Selection_Change("remove", rC5);

    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("wire");

    Selection_Change("replace", Search_GetAtoms(">>> HET"));
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_SetRibbonsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Clear();
end;

function mode_rainbow(ribbon_mode)

    Selection_All();
    Command_ShowAtomsBonds(false);
    Command_ShowRibbons(true);
    Command_ShowSurfaces(false);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("wire");
    Command_SetRibbonsRender(ribbon_mode);
    Command_SetSurfacesTransparency(0.5);

    for complex in List_Iterator(Workspace_GetComplexes()) do
        molecule = Complex_GetCurrentMolecule(complex);
        for chain in List_Iterator(Molecule_GetChains(molecule)) do
            Selection_Change("replace", chain);
            Command_ColoringAtomsBonds("rainbow", nil, nil, true);
            Command_ColoringRibbons("rainbow");
            Command_ColoringSurfaces("rainbow");
        end;
    end;

    Selection_Change("replace", Search_GetAtoms(">>> HET"));
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_SetRibbonsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Clear();
end;

function mode_vdw(atom_coloring)

    Selection_All();
    Command_ShowAtomsBonds(true);
    Command_ShowRibbons(false);
    Command_ShowSurfaces(true);
    Command_ShowWaters(false);
    Command_ShowHydrogens(false);
    Command_ShowAtomLabels(false);
    Command_ShowResidueLabels(false);
    Command_ShowHetAtomsBonds(true);
    Command_ShowHetSurfaces(false);
    Command_SetAtomsBondsRender("vdw");
    Command_SetRibbonsRender("default");
    Command_SetSurfacesTransparency(0.15);
    Command_ColoringAtomsBonds(atom_coloring, nil, nil, true);
    Command_ColoringRibbons(atom_coloring, nil, nil, true);
    Command_ColoringSurfaces(atom_coloring, nil, nil, true);

    Selection_Change("replace", Search_GetAtoms(">>> HET"));
    Selection_Change("remove", Search_GetResidues(">> HOH"));
    Command_ShowAtomsBonds(true);
    Command_SetAtomsBondsRender("sticks");
    Command_ColoringAtomsBonds("default");
    Command_ShowResidueLabels(true);

    Selection_Clear();
end;


function view_mode1_opt1()
    mode_ribbon_and_ligand("default", "secondary-structures");
    return "Overview\n(secondary structure coloring)";
end;
function view_mode1_opt2()
    mode_rgroups_and_ligand("default", "secondary-structures");
    return "R-Groups\n(default coloring)";
end;
function view_mode1_opt3()
    mode_vdw("default");
    return "Van der Walls\n(default coloring)";
end;

function view_mode2_opt1()
    mode_ribbon_and_ligand("chains", "secondary-structures");
    return "Overview\n(chain coloring)";
end;
function view_mode2_opt2()
    mode_rgroups_and_ligand("chains", "secondary-structures");
    return "R-Groups\n(chain coloring)";
end;
function view_mode2_opt3()
    mode_ribbon_and_surface("chains", "secondary-structures");
    return "Cartoons\n(chain coloring)";
end;
function view_mode2_opt4()
    mode_vdw("chains");
    return "Van der Walls\n(chain coloring)";
end;

function view_mode3_opt1()
    mode_ribbon_and_ligand("bfactor", "secondary-structures");
    return "Overview\n(bfactor coloring)";
end;
function view_mode3_opt2()
    mode_rgroups_and_ligand("bfactor", "secondary-structures");
    return "R-Groups\n(bfactor coloring)";
end;
function view_mode3_opt3()
    mode_ribbon_and_surface("bfactor", "secondary-structures");
    return "Cartoons\n(bfactor coloring)";
end;
function view_mode3_opt4()
    mode_vdw("chains");
    return "Van der Walls\n(bfactor coloring)";
end;

function view_mode4_opt1()
    mode_rainbow("tube");
    return "Rainbow\n(Putty ribbons)";
end;
function view_mode4_opt2()
    mode_rainbow("ss");
    return "Rainbow\n(Secondary Structures)";
end;

function main ()

    counter = 0
    if Store_Has("ProteinViewMacroCounter") then
        counter = Store_GetInt("ProteinViewMacroCounter");
    end;
    Store_SetInt("ProteinViewMacroCounter", counter + 1);

    result = "";

    views = List_Make();

    List_Add(views, view_mode1_opt1);
    List_Add(views, view_mode1_opt2);
    List_Add(views, view_mode1_opt3);

    List_Add(views, view_mode2_opt1);
    List_Add(views, view_mode2_opt2);
    List_Add(views, view_mode2_opt3);
    List_Add(views, view_mode2_opt4);

    List_Add(views, view_mode3_opt1);
    List_Add(views, view_mode3_opt2);
    List_Add(views, view_mode3_opt3);
    List_Add(views, view_mode3_opt4);

    List_Add(views, view_mode4_opt1);
    List_Add(views, view_mode4_opt2);

    max = List_Length(views);
    option = (counter % max) + 1;

    result = views[option - 1]();

    return "[" .. option .. " / " .. max .. "] - " .. result;

end;
