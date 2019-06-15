--[[
 This macro will load multiple drugs automatically from drugbank:
 - Caffeine
 - Tylenol
 - Morphine
]]
function main ()
    Command_Load("Caffeine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00201.sdf");
    Command_Load("Tylenol", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00316.sdf");
    Command_Load("Morphine", "SDF", "HTTP", "https://www.drugbank.ca/structures/small_molecule_drugs/DB00295.sdf");
    Selection_All();
    Command_Zoom();
end;
