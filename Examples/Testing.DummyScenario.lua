--[[

 Will cycle and try a lot of nanome features through the macro system to test everything

]]

wait_small = 1000;

function step (text)

    Command_Wait(wait_small / 2);
    Command_Notification(text);
    Command_Wait(wait_small);

end;

function main ()

    startTime = Time_Now();

    step("Get ready!");

    step("Really ready?");

    step("Go");

    step("Closing all menus");

    menus = Menu_FindAll();
    for menu in List_Iterator(menus) do
        Menu_SetVisible(menu, false);
    end;

    step("Selecting everything (if there is something)");

    Selection_All();

    step("Delete everything selected");

    atoms = Selection_GetAtoms();
    Command_Delete(atoms);

    step("Open loading menu");

    loading = Menu_FindByName("load");
    Menu_SetVisible(loading, true);

    step("Lock loading menu");
    Menu_SetLocked(loading, true);

    step("Loading a new molecule (4HHB)");

    Command_Load("4HHB", "PDB", "HTTP", "https://files.rcsb.org/download/4HHB.pdb");

    step("Zoom on molecule");

    Selection_All();
    Command_Zoom();
    Selection_Clear();

    step("Remove loading menu");

    Menu_SetVisible(loading, false);

    step("Turning boxes ON");

    complexes = Workspace_GetComplexes();
    for complex in List_Iterator(complexes) do
        Complex_SetBoxed(complex, true);
    end;

    step("Turning boxes OFF");

    for complex in List_Iterator(complexes) do
        Complex_SetBoxed(complex, false);
    end;

    step("Turning lock ON");

    for complex in List_Iterator(complexes) do
        Complex_SetLocked(complex, true);
    end;

    step("Turning lock OFF");

    for complex in List_Iterator(complexes) do
        Complex_SetLocked(complex, false);
    end;

    step("Select half of the chains");

    complex = List_Get(complexes, 0);
    molecule = Complex_GetCurrentMolecule(complex);

    halfChains = List_Make();
    for idx, chain in List_Pairs(Molecule_GetChains(molecule)) do
        if idx % 2 == 0 then
            List_Add(halfChains, chain)
        end;
    end;

    Selection_Change("replace", halfChains);

    step("Color atoms to red");

    Command_ColoringAtomsBonds("mono", Color_RGB(255, 0, 0));

    step("Color ribbons to blue");

    Command_ColoringRibbons("mono", Color_RGB(0, 0, 255));

    step("Hide atoms");

    Command_ShowAtomsBonds(false);

    step("Show surfaces");

    Command_ShowSurfaces(true);

    step("Color surface to hydrophobicity");

    Command_ColoringSurfaces("hydrophobicity");

    step("Make surface opaque");

    Command_SetSurfacesTransparency(0.0);

    step("Invert selection");

    Selection_Invert();

    step("Select last residue in selection");

    residues = Selection_GetResidues();
    Selection_Change("filter", List_Get(residues, List_Length(residues) - 1));

    step("Zoom");

    Command_Zoom();

    step("Extend selection around residue by 5 angstrom");

    Selection_Extend(5.0, true);

    step("Zoom");

    Command_Zoom();

    step("Shrink selection back by 5 angstrom");

    Selection_Shrink(5.0, true);

    step("Add another random residue to selection");

    Selection_Change("add", List_Get(residues, 0));

    step("Split selection");

    Command_Split();

    step("Remove everything else");

    Selection_Invert();
    atoms = Selection_GetAtoms();
    Command_Delete(atoms);
    Selection_All();

    step("Hide ribbons");

    Command_ShowRibbons(false);

    step("Display Van Der Waals");

    Command_SetAtomsBondsRender("vdw");

    step("Display sticks");

    Command_SetAtomsBondsRender("sticks");

    step("Display wires");

    Command_SetAtomsBondsRender("wire");

    step("Duplicate");

    Command_Duplicate();

    step("Zoom on all");

    Selection_All();
    Command_Zoom();

    step("Merge all");

    Command_Merge();
    complexes = Workspace_GetComplexes();
    Command_Boxes(true, complexes);

    step("Delete all");

    complexes = Workspace_GetComplexes();
    Command_Delete(complexes);

    step("Prepare for takeoff");

    user = User_GetMain();
    userPosition = User_GetOriginPosition(user);
    userRotation = User_GetOriginRotation(user);

    step("Takeoff");

    User_SetOriginPosition(user, Vector3_Make(0.0, 0.0, -100.0));
    User_SetOriginRotation(user, Quaternion_Make(0.0, 180.0, 0.0));

    step("Lets go back!");

    User_SetOriginPosition(user, userPosition);
    User_SetOriginRotation(user, userRotation);

    step("Open macro menu");

    macro = Menu_FindByName("macro");
    Menu_SetVisible(macro, true);

    step("Elapsed time since start: " .. Time_Now() - startTime .. " seconds");

    step("Done!");
    return "DONE";

end
