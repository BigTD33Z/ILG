bnkgeld = 0;

titleText ["Initialising...", "BLACK IN",120];
sleep 2;

if(isNil "45983450u34h57y5646ccvd4tjdsjncx7y3h")then{
	45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
	publicVariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
	gamerz971HDisLoveHeIsLife = 1;
	publicVariable "gamerz971HDisLoveHeIsLife";
	
};

#define ExecSQF(FILE) [] call compile preprocessFileLineNumbers FILE

if(isServer) then
{
mafiabank = 1;
Publicvariable "mafiabank";
execVM "serverscripts\tcgIsLove.sqf";
mafiamembers = [];
mafs setVariable ["mafiamembers", mafiamembers, true];
};

[] call compile preprocessFileLineNumbers "addons\proving_Ground\init.sqf";

enableSaving [false, false];
waitUntil {!(isNil "tcgIsLove")};
call tcgIsLove;
ILG_Mission_Version = 1.1;
ILG_RanInit		= false;
version        	= "3";
debug          	= false;
dedicatedServer = false;
copscount      	= 25;
civscount      	= 51;
playercount    	= 76;
debugarray     	= [];
execVM "briefing.sqf";
//waitUntil {DCV_Init};
private ["_Handler","_h","_initClient","_initServer"];
//player GlobalChat "Relog if you stats don't load in 2 minutes!";
if(!debug)then{["basicintro"] execVM "introcam.sqf";};
call compile preprocessfile "triggers.sqf";
waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };
_h = [] execVM "playerarrays.sqf";																												
waitUntil{scriptDone  _h};
_h = [76, rolenumber] execVM "initfuncs.sqf";
waitUntil{scriptDone  _h};
_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";
waituntil{scriptDone  _h};
_h = [] execVM "bankexec.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "initWPmissions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "gfx.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "animList.sqf";
waitUntil{scriptDone  _h};
_h = []	execVM "miscfunctions.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "variables.sqf";
waitUntil{scriptDone  _h};
_h = [] execVM "lottoexec.sqf";
waitUntil{scriptDone  _h};
_script = [] spawn compile preprocessFileLineNumbers "easyNameTags\ENT_unitTags.sqf";
waitUntil{scriptDone _script};
execVM "AntiHackMainCaller.sqf";
execVM "saveVars.sqf";
execVM "motd.sqf";
execVM "Init\cleaner.sqf";
execVM "jaysSODC.sqf";
execVM "Juan\init.sqf";
execVM "weather.sqf";
execVM "nodui.sqf";
execVM "9382496.sqf";
execVM "markermaker.sqf";
execVM "bg-Buildingfixer.sqf";
execVM "adminjoin.sqf";
execVM "motd.sqf";
execVM "BTK\Cargo Drop\Start.sqf";
[5,15] execVM "bodyremover.sqf";
execVM "Scripts\DRN\DynamicWeatherEffects\DynamicWeatherEffects.sqf";
execVM "R3F_ARTY_AND_LOG\init.sqf";
[5,15] execVM "bodyremover.sqf";
ExecSQF("LinLib\init-func.sqf");
setPitchBank = compile preprocessfile "setPitchBank.sqf";
BIS_Effects_Burn=compile preprocessFile "\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf";
UKF_noGripOrBipod = true;
UKF_noCQBsights = true;

if(!dedicatedserver) then
{
[] call LinLib_MoveBuildings;
_initClient = execVM "init\InitClient.sqf";
[] execVM "mafiasyn\mafiafunc.sqf";
45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;
publicvariable "gamerz971HDisLoveHeIsLife";
};

if (isServer) then 
{
_initServer = execVM "init\InitServer.sqf";
45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
gamerz971HDisLoveHeIsLife = 1;
publicvariable "gamerz971HDisLoveHeIsLife";
};

[] execVM "ui.sqf";

playercount = 1;
publicvariable "playercount";
chiefNumber = 1;
publicvariable "chiefNumber";

if (isNil "ILG_Voting_Enable") then {ILG_Voting_Enable = true;};

call ESU_Clothing;
call Verify_Unit_Class;
call SUV_Gunner_Checks;


	
if(isServer) then
{
	45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
	publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
	gamerz971HDisLoveHeIsLife = 1;
	publicvariable "gamerz971HDisLoveHeIsLife";
	call compile preProcessFile "\inidb\init.sqf";
	execVM "Scripts\statSave\serverGather.sqf";

};


if(!isDedicated) then
{	
	45983450u34h57y5646ccvd4tjdsjncx7y3h = 1;
	publicvariable "45983450u34h57y5646ccvd4tjdsjncx7y3h";
	gamerz971HDisLoveHeIsLife = 1;
	publicvariable "gamerz971HDisLoveHeIsLife";
	execVM "Scripts\statSave\saveToServer.sqf";
	waitUntil {!isNil "fn_SaveToServer"};
	execVM "Scripts\statSave\loadStats.sqf";
	waitUntil {!isNil "statFunctionsLoaded"};
	execVM "Scripts\statSave\saveLoop.sqf";
};


// JayF8514's Welcome / Introduction!
(format["server globalchat ""%1 Has Joined The Game!."";", name player]) call broadcast;
