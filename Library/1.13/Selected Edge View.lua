--[[

This macro will highlight
all the structures
directly in contact
with your current selection

Coloring:
- White: Contact edges
- Black: Selection edges

]]

function main ()

    selectionResidues = Selection_GetResidues();

    Selection_Change("replace", selectionResidues);
    Selection_Extend(5.0, true);
    Selection_Invert();
    Selection_Change("add", Search_GetResidues(">> HOH"));

    outsideResidues = Selection_GetResidues();

    Selection_Change("replace", selectionResidues);
    Selection_Change("add", Search_GetResidues(">> HOH"));
    Selection_Shrink(5.0, true);

    insideResidues = Selection_GetResidues();

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
    Command_SetSurfacesTransparency(0.3);
    Command_ColoringAtomsBonds("default");
    Command_ColoringRibbons("chains");
    Command_ColoringSurfaces("default");

    Selection_All();
    Selection_Change("remove", outsideResidues);
    Selection_Change("remove", insideResidues);

    Command_ShowAtomsBonds(true);
    Command_ShowHetAtomsBonds(true);
    Command_ShowResidueLabels(true);
    Command_SetAtomsBondsRender("wire");
    Command_ColoringRibbons("mono", Color_RGB(255, 255, 255));
    Command_ColoringAtomsBonds("mono", Color_RGB(255, 255, 255), nil, true);

    Selection_Change("replace", selectionResidues);
    Selection_Change("remove", insideResidues);

    Command_SetAtomsBondsRender("sticks");
    Command_ColoringRibbons("mono", Color_RGB(55, 55, 55));
    Command_ColoringAtomsBonds("mono", Color_RGB(55, 55, 55), nil, true);

    Selection_Change("replace", selectionResidues);
    ligandAtomsCount = List_Length(Selection_GetAtoms());

    if ligandAtomsCount > 0 then
        return "Success: " .. ligandAtomsCount .. " atoms focused";
    else
        return "FAIL: " .. "nothing is selected";
    end;

end
