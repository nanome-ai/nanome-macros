--[[
 This macro will copy and prepare your selected ligand for changes.
 -- hide and deselect OG ligand, splits ligand, duplicates it, gives it a pretty name, aligns it into the pocket, change ligand to wire, color by carbonite
 -- hide the selected atoms original ligand
 -- duplicate the selected atoms
 -- get the name of the duplicated complex (ligand)
 -- change the name of the new complex (ligand)
 -- align the new complex (ligand) with the original complex
 -- duplicate the frame of the new complex ligand
 -- change the color schema of the ligand frame to something else (carbonite)
 -- switch to medchem toolkit
]]

function main ()
	
	-- save the current selected atoms
		selectedLigand = Selection_GetResidues();
		
	-- get the name of the current complex
		ligandComplex = Residue_GetComplex(selectedLigand[0]);
		currentComplexName = Complex_GetName(ligandComplex);	
	-- change the selected atoms to wire display
		Command_SetAtomsBondsRender("wire");
		Command_Split();

	-- get the name of the duplicated complex (ligand) and change it to show ligand
		splitLigandComplex = Complex_GetName(ligandComplex);
		
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
	
		-- Command_Notification("Ligand Preparation Complete");
		return "SUCCESS";
	end;