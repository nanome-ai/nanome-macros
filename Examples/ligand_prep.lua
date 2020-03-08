--[[
 This macro will copy and prepare your selected ligand for changes.
]]

function main ()
	-- hide and deselect OG ligand, splits ligand, duplicates it, gives it a pretty name, aligns it into the pocket, change ligand to wire, color by carbonite
	
	
	-- save the current selected atoms
		selectedLigand = Selection_GetResidues();
		
	-- get the name of the current complex
		ligandComplex = Residue_GetComplex(selectedLigand[0]);
		currentComplexName = Complex_GetName(ligandComplex);
		Command_Notification(currentComplexName);
	
	-- change the selected atoms to wire display
		ligandComplex
	-- hide the selected atoms original ligand
	-- duplicate the selected atoms
	-- get the name of the duplicated complex (ligand)
	-- change the name of the new complex (ligand)
	-- align the new complex (ligand) with the original complex
	-- duplicate the frame of the new complex ligand
	-- change the color schema of the ligand frame to something else (carbonite)
	-- switch to medchem toolkit
	
		-- Command_Notification("Ligand Preparation Complete");
		return "SUCCESS";
	end;