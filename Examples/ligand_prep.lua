--[[
 This macro will copy and prepare your selected ligand for changes.

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




function main ()
	

	
		selectedLigand = Selection_GetResidues();
		if selectedLigand

		-- -- save the current selected atoms
		-- if selectedLigand = false then
        -- 	return "Error: No ligand selected";
		-- end;
		-- get the name of the current complex
		ligandComplex = Residue_GetComplex(selectedLigand[0]);
		currentComplexName = Complex_GetName(ligandComplex);

		-- change the selected atoms to wire display
		Command_Duplicate();
		Command_Split();
		Command_SetAtomsBondsRender("wire");
	
		-- get the name of the duplicated complex (ligand) and change it to show ligand
		-- splitLigandComplex = Complex_GetName(ligandComplex);
		-- complexList = Workspace_GetComplexes();
		-- Command_Notification(complexList);

		for complex in List_Iterator(Workspace_GetComplexes()) do
			if Complex_GetName(complex) == currentComplexName then
				return "Current complex name" .. Complex_GetName(complex) .. #complex;	
			
			end;
		end;

		

		Complex_SetName(splitLigandComplex, "original ligand " .. currentComplexName);
	-- duplicate the selected atoms
		Command_Duplicate();
	-- hide the selected atoms original ligand
		Command_ShowAtomsBonds(false);
		Selection_Clear();
	
		Workspace_GetComplexes();
		-- Search_GetComplexes(string pattern)
	-- align the new complex (ligand) with the original complex
	-- duplicate the frame of the new complex ligand
	-- change the color schema of the ligand frame to something else (carbonite)
	-- switch to medchem toolkit
	
		Command_Notification("Ligand Preparation Complete");
		return "SUCCESS";
	end;