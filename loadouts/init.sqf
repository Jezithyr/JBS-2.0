
_loadouts= call preprocessfileLineNumbers "loadouts/config.sqf";

{
_folderName = _x select 0;
_scriptName = _select 1;
_filepath = format["loadouts/%1/%2.sqf",_folderName,_scriptName];
_scriptVariable = format["genLoadout%1",_scriptName];
MissionNamespace setvariable [_scriptVariable, (preprocessFileLineNumbers _filepath), false];
diag_log format["SHG_Loadouts_LOG: Loadout %1 Created",_scriptVariable];
}foreach _loadouts;
