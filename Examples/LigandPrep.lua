--[[
 This macro will prepare your selected ligand for changes in a ligand-bound PDB File.

]]


--  hide and deselect OG ligand, splits ligand, duplicates it, gives it a pretty name, aligns it into the pocket, change ligand to wire, color by carbonite
--  hide the selected atoms original ligand
--  duplicate the selected atoms
--  get the name of the duplicated complex (ligand)
--  change the name of the new complex (ligand)
--  align the new complex (ligand) with the original complex
--  duplicate the frame of the new complex ligand
--  change the color schema of the ligand frame to something else (carbonite)
--  switch to medchem toolkit

function prep_ligand ()
	
    -- -- save the current selected atoms
    selectedLigand = Selection_GetResidues();

    -- Save current name and complex
    ogProteinComplex = Selection_GetComplexes();
    ligandComplex = Residue_GetComplex(selectedLigand[0]);
    currentComplexName = Complex_GetName(ligandComplex);

    -- Split it out and make it OG
    Command_Split();
    Command_Wait(100);

    ogLigand = Selection_GetComplexes()[0];
    Complex_SetName(ogLigand,"L_OG-" .. currentComplexName);
    ogComplexName = Complex_GetName(ogLigand);
   
    -- Make a copy to edit
    Command_Duplicate();
    Command_Wait(100);

    Selection_Clear();
    Command_Wait(100);

    
    -- Grab the ligand we want to iterate on
    i = 0;
    for complex in List_Iterator(Workspace_GetComplexes()) do
        if Complex_GetName(complex) == ogComplexName then
            Selection_Change("add", complex);
            Command_Wait(100);

        end;
    end;

    Selection_Change("remove", ogLigand);
    Command_Wait(100);

    newLigand = Selection_GetComplexes()[0];
    Complex_SetName(newLigand, "L_Edit " .. currentComplexName);
    Command_SetAtomsBondsRender("wire");
    Command_Wait(100);

    -- Align them all
    ligandsAndProteins = List_Make();
    List_Add(ligandsAndProteins, ogLigand);
    List_Add(ligandsAndProteins, newLigand);
    List_Add(ligandsAndProteins, ligandComplex);

    Command_Align(ligandsAndProteins);
    Command_Wait(100);


    -- Hide OG ligand and color edit by carbonite
    Complex_SetVisible(ogLigand, false);
    Command_Wait(100);

    Command_ColoringAtomsBonds("mono", Color_RGB(255, 0, 0), nil, true);
end;


function main ()
    selectedComplexes = Selection_GetComplexes();
    if List_Length(selectedComplexes) <= 0 then
        return "Error: No Structure Selected";
    end;
    prep_ligand();
    return "Success: Ligand Ready AF";
end;