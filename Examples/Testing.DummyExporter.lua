--[[
 This macro will load multiple drugs automatically from drugbank:
 - Caffeine
 - Tylenol
 - Morphine
 THEN it will export some file to the desktop
]]
function main ()
    Command_Load("Caffeine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00201.sdf");
    Command_Load("Tylenol", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00316.sdf");
    Command_Load("Morphine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00295.sdf");
    Selection_All();
    Command_Zoom();
    Command_Export(Workspace_GetComplexes()[0], "PDB", Path_Make("{{DESKTOP}}/MacroOutputAsPDB.pdb"));
    Command_Export(Workspace_GetComplexes()[0], "SDF", Path_Make("{{DESKTOP}}/MacroOutputAsSDF.sdf"));
end;
