if IsClient() then 
PauseMenu={}
PauseMenu.menuid = 
{
   MAP = 1000;
   INFO = 1001;
   FRIENDS = 1002;
   GALLERY = 1003;
   SOCIALCLUB = 1004;
   GAME = 1005;
   SETTINGS = 1006;
   PLAYERS = 1007;
   WEAPONS = 1008;
   MEDALS = 1009;
   STATS = 1010;
   AVAILABLE = 1011;
   VAGOS = 1012;
   COPS = 1013;
   LOST = 1014;
   HOME_MISSION = 1015;
   CORONA_SETTINGS = 1016;
   CORONA_INVITE = 1017;
   STORE = 1018;
   HOME_HELP = 1019;
   HOME_BRIEF = 1020;
   HOME_FEED = 1021;
   SETTINGS_AUDIO = 1022;
   SETTINGS_DISPLAY = 1023;
   SETTINGS_CONTROLS = 1024;
   NEW_GAME = 1025;
   LOAD_GAME = 1026;
   SAVE_GAME = 1027;
   HEADER = 1028;
   HEADER_SAVE_GAME = 1029;
   HOME = 1030;
   CREWS = 1031;
   SETTINGS_SAVEGAME = 1032;
   GALLERY_ITEM = 1033;
   FREEMODE = 1034;
   MP_CHAR_1 = 1035;
   MP_CHAR_2 = 1036;
   MP_CHAR_3 = 1037;
   MP_CHAR_4 = 1038;
   MP_CHAR_5 = 1039;
   HEADER_MULTIPLAYER = 1040;
   HEADER_MY_MP = 1041;
   MISSION_CREATOR = 1042;
   GAME_MP = 1043;
   LEAVE_GAME = 1044;
   HEADER_PRE_LOBBY = 1045;
   HEADER_LOBBY = 1046;
   PARTY = 1047;
   LOBBY = 1048;
   PLACEHOLDER = 1049;
   STATS_CATEGORY = 1050;
   SETTINGS_LIST = 1051;
   SAVE_GAME_LIST = 1052;
   MAP_LEGEND = 1053;
   CREWS_CATEGORY = 1054;
   CREWS_FILTER = 1055;
   CREWS_CARD = 1056;
   SPECTATOR = 1057;
   STATS_LISTITEM = 1058;
   CREW_MINE = 1059;
   CREW_ROCKSTAR = 1060;
   CREW_FRIENDS = 1061;
   CREW_INVITES = 1062;
   CREW_LIST = 1063;
   MISSION_CREATOR_CATEGORY = 1064;
   MISSION_CREATOR_LISTITEM = 1065;
   MISSION_CREATOR_STAT = 1066;
   FRIENDS_LIST = 1067;
   FRIENDS_OPTIONS = 1068;
   HEADER_MP_CHARACTER_SELECT = 1069;
   HEADER_MP_CHARACTER_CREATION = 1070;
   CREATION_HERITAGE = 1071;
   CREATION_LIFESTYLE = 1072;
   CREATION_YOU = 1073;
   PARTY_LIST = 1074;
   REPLAY_MISSION = 1075;
   REPLAY_MISSION_LIST = 1076;
   REPLAY_MISSION_ACTIVITY = 1077;
   CREW = 1078;
   CREATION_HERITAGE_LIST = 1079;
   CREATION_LIFESTYLE_LIST = 1080;
   PLAYERS_LIST = 1081;
   PLAYERS_OPTIONS = 1082;
   PLAYERS_OPTIONS_LIST = 1083;
   PARTY_OPTIONS = 1084;
   PARTY_OPTIONS_LIST = 1085;
   CREW_OPTIONS = 1086;
   CREW_OPTIONS_LIST = 1087;
   FRIENDS_OPTIONS_LIST = 1088;
   FRIENDS_MP = 1089;
   TEAM_SELECT = 1090;
   HOME_DIALOG = 1091;
   HEADER_EMPTY = 1092;
   SETTINGS_FEED = 1093;
   GALLERY_OPTIONS = 1094;
   GALLERY_OPTIONS_LIST = 1095;
   BRIGHTNESS_CALIBRATION = 1096;
   HEADER_TEXT_SELECTION = 1097;
   LOBBY_LIST = 1098;
   LOBBY_LIST_ITEM = 1099;
   HEADER_CORONA = 1100;
   HEADER_CORONA_LOBBY = 1101;
   HEADER_CORONA_JOINED_PLAYERS = 1102;
   HEADER_CORONA_INVITE_PLAYERS = 1103;
   HEADER_CORONA_INVITE_FRIENDS = 1104;
   HEADER_CORONA_INVITE_CREWS = 1105;
   CORONA_JOINED_PLAYERS = 1106;
   CORONA_INVITE_PLAYERS = 1107;
   CORONA_INVITE_FRIENDS = 1108;
   CORONA_INVITE_CREWS = 1109;
   SETTINGS_FACEBOOK = 1110;
   HEADER_JOINING_SCREEN = 1111;
   CORONA_SETTINGS_LIST = 1112;
   CORONA_DETAILS_LIST = 1113;
   CORONA_INVITE_LIST = 1114;
   CORONA_JOINED_LIST = 1115;
   HEADER_CORONA_INVITE_MATCHED_PLAYERS = 1116;
   HEADER_CORONA_INVITE_LAST_JOB_PLAYERS = 1117;
   CORONA_INVITE_MATCHED_PLAYERS = 1118;
   CORONA_INVITE_LAST_JOB_PLAYERS = 1119;
   CREW_LEADERBOARDS = 1120;
   HOME_OPEN_JOBS = 1121;
   CREW_REQUEST = 1122;
   HEADER_RACE = 1123;
   RACE_INFO = 1124;
   RACE_INFOLIST = 1125;
   RACE_LOBBYLIST = 1126;
   HEADER_BETTING = 1127;
   BETTING = 1128;
   BETTING_INFOLIST = 1129;
   BETTING_LOBBYLIST = 1130;
   INCEPT_TRIGGER = 1131;
   SETTINGS_SIXAXIS = 1132;
   REPLAY_RANDOM = 1133;
   CUTSCENE_EMPTY = 1134;
   HOME_NEWSWIRE = 1135;
   SETTINGS_CAMERA = 1136;
   SETTINGS_VIDEO = 1137;
   SETTINGS_GRAPHICS = 1138;
   SETTINGS_VOICE_CHAT = 1139;
   SETTINGS_MISC_CONTROLS = 1140;
   HELP = 1141;
   MOVIE_EDITOR = 1142;
   EXIT_TO_WINDOWS = 1143;
   HEADER_LANDING_PAGE = 1144;
   SHOW_ACCOUNT_PICKER = 1145;
   SETTINGS_REPLAY = 1146;
   REPLAY_EDITOR = 1147;
   MENU_UNIQUE_ID_SETTINGS_FPS = 1148;
}
PauseMenu.versionid = 
{
FE_MENU_VERSION_SP_PAUSE=`FE_MENU_VERSION_SP_PAUSE`,
FE_MENU_VERSION_MP_PAUSE=`FE_MENU_VERSION_MP_PAUSE`,
FE_MENU_VERSION_CREATOR_PAUSE=`FE_MENU_VERSION_CREATOR_PAUSE`,
FE_MENU_VERSION_CUTSCENE_PAUSE=`FE_MENU_VERSION_CUTSCENE_PAUSE`,
FE_MENU_VERSION_SAVEGAME=`FE_MENU_VERSION_SAVEGAME`,
FE_MENU_VERSION_PRE_LOBBY=`FE_MENU_VERSION_PRE_LOBBY`,
FE_MENU_VERSION_LOBBY=`FE_MENU_VERSION_LOBBY`,
FE_MENU_VERSION_MP_CHARACTER_SELECT=`FE_MENU_VERSION_MP_CHARACTER_SELECT`,
FE_MENU_VERSION_MP_CHARACTER_CREATION=`FE_MENU_VERSION_MP_CHARACTER_CREATION`,
FE_MENU_VERSION_EMPTY=`FE_MENU_VERSION_EMPTY`,
FE_MENU_VERSION_EMPTY_NO_BACKGROUND=`FE_MENU_VERSION_EMPTY_NO_BACKGROUND`,
FE_MENU_VERSION_TEXT_SELECTION=`FE_MENU_VERSION_TEXT_SELECTION`,
FE_MENU_VERSION_CORONA=`FE_MENU_VERSION_CORONA`,
FE_MENU_VERSION_CORONA_LOBBY=`FE_MENU_VERSION_CORONA_LOBBY`,
FE_MENU_VERSION_CORONA_JOINED_PLAYERS=`FE_MENU_VERSION_CORONA_JOINED_PLAYERS`,
FE_MENU_VERSION_CORONA_INVITE_PLAYERS=`FE_MENU_VERSION_CORONA_INVITE_PLAYERS`,
FE_MENU_VERSION_CORONA_INVITE_FRIENDS=`FE_MENU_VERSION_CORONA_INVITE_FRIENDS`,
FE_MENU_VERSION_CORONA_INVITE_CREWS=`FE_MENU_VERSION_CORONA_INVITE_CREWS`,
FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS=`FE_MENU_VERSION_CORONA_INVITE_MATCHED_PLAYERS`,
FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS=`FE_MENU_VERSION_CORONA_INVITE_LAST_JOB_PLAYERS`,
FE_MENU_VERSION_CORONA_RACE=`FE_MENU_VERSION_CORONA_RACE`,
FE_MENU_VERSION_CORONA_BETTING=`FE_MENU_VERSION_CORONA_BETTING`,
FE_MENU_VERSION_JOINING_SCREEN=`FE_MENU_VERSION_JOINING_SCREEN`,
FE_MENU_VERSION_LANDING_MENU=`FE_MENU_VERSION_LANDING_MENU`,
FE_MENU_VERSION_LANDING_KEYMAPPING_MENU=`FE_MENU_VERSION_LANDING_KEYMAPPING_MENU`					
}
local start = BeginScaleformMovieMethodOnFrontend
local send = function (...)
    local tb = {...}
    for i=1,#tb do
        if type(tb[i]) == "number" then 
            if math.type(tb[i]) == "integer" then
                    ScaleformMovieMethodAddParamInt(tb[i])
            else
                    ScaleformMovieMethodAddParamFloat(tb[i])
            end
        elseif type(tb[i]) == "string" then ScaleformMovieMethodAddParamTextureNameString(tb[i])
        elseif type(tb[i]) == "boolean" then ScaleformMovieMethodAddParamBool(tb[i])
        end
    end 
	EndScaleformMovieMethod()
end
function PauseMenu.StartPauseMenu(versionHash)
	if (IsPauseMenuActive()  or  IsPauseMenuRestarting()) then
		if GetCurrentFrontendMenuVersion() ~= 1399975061 then
			SetFrontendActive(false)
		end
	else
		SetFrontendActive(false);
		ActivateFrontendMenu(1399975061, false, -1);
		
	end
	Wait(333)
	if (IsPauseMenuActive()  or  IsPauseMenuRestarting()) then
		if GetCurrentFrontendMenuVersion() ~= 1399975061 then
			SetFrontendActive(false)
		end
	else
		SetFrontendActive(false);
		ActivateFrontendMenu(1399975061, false, -1);
		
	end
	Wait(333)
	PauseMenu.SetCurrentColumn(-1)
end
function PauseMenu.InitColumnScroll(Param0, Param1, Param2, Param3, Param4, Param5)
	if start("INIT_COLUMN_SCROLL") then 
		send(Param0,false,Param1,Param2,Param3,true,Param4,Param5);
	end 
end
function PauseMenu.SetColumnCanJump(Param0, Param1)
	if start("SET_COLUMN_CAN_JUMP") then
		send(Param0,not Param1);
	end
end
function PauseMenu.SetColumnHighLight(Param0, Param1, Param2)
	if start("SET_COLUMN_HIGHLIGHT") then
		send(Param0,Param1,false,Param2);
	end
end
function PauseMenu.SetDescription(columnid, desc, isflashing)
	if start("SET_DESCRIPTION") then
		send(columnid, desc, isflashing)
	end
end

function PauseMenu.SetDataSlot(columnid,rowidx,menuid,uniqueid,...)
	if start('SET_DATA_SLOT') then
		send(columnid,rowidx,menuid,uniqueid,...)
	end 
end 
function PauseMenu.SetDataSlotEmpty(columnid)
	if start("SET_DATA_SLOT_EMPTY") then
		send (columnid);
	end
end
function PauseMenu.DisplayDataSlot(slotid)
	if start('DISPLAY_DATA_SLOT') then 
		send(slotid)
	end 
end 
function PauseMenu.ShowColumn(columnid, show)
	if start("SHOW_COLUMN") then
		send(columnid,show);
	end
end
function PauseMenu.SetColumnFocus(columnid,heighlightidx,uniqueid,menustate)
	if start('SET_COLUMN_FOCUS') then 
		send(columnid,heighlightidx,uniqueid,menustate)
	end 
end 
function PauseMenu.SetMenuHeaderTextByIndex(columnid,columntext,columnwidth,uppercase)
	if start('SET_MENU_HEADER_TEXT_BY_INDEX') then 
		send(columnid,columntext,columnwidth,uppercase)
	end 
end 
function PauseMenu.SetColumnTitle(columnid, title, desc1, desc2)
	if start("SET_COLUMN_TITLE") then
		send(columnid, title, desc1, desc2)
	end
end
function PauseMenu.SetColumnTitle2(...)
	if start("SET_COLUMN_TITLE") then
		send(...)
	end
end
function PauseMenu.SetCurrentColumn(columnid)
	for i=0,7 do
		PauseMenu.ShowColumn(i, false);
	end
	if columnid >= 0 then
		PauseMenu.ShowColumn(columnid, true);
	end
	
end
function PauseMenu.SetOrUpdateNormalDataSlot(columnid, rowidx, menuid, uniqueid, labeltext, option, optionstyle, selectablestyle, update)
	local method = update and "UPDATE_SLOT" or "SET_DATA_SLOT";
	if start(method) then
		send(columnid,rowidx,menuid,uniqueid,optionstyle,-1,selectablestyle,labeltext,0,0,option,optionstyle==2 and 116 or "")
	end
end
function PauseMenu.SetXYData(columnid, rowidx, menuid, uniqueid, labeltextY, labeltextX, labeltextNY, labeltextNX, inputX, inputY, isXY, update, unk)
	local method = update and "UPDATE_SLOT" or "SET_DATA_SLOT";
	
	if start(method) then
		send(columnid,rowidx, menuid, uniqueid, 0,0,1,labeltextY, labeltextX, labeltextNY, labeltextNX, inputX, inputY, isXY and 0 or 1, unk);
	end
end

function PauseMenu.SetSkillPointData(columnid, rowidx, menuid, uniqueid, style, str, rstr, color, nowvalue, maxvalue, editable, update)
	
	local method = update and "UPDATE_SLOT" or "SET_DATA_SLOT";
	if BeginScaleformMovieMethodOnFrontend(method) then
		ScaleformMovieMethodAddParamInt(columnid);
		ScaleformMovieMethodAddParamInt(rowidx);
		ScaleformMovieMethodAddParamInt(menuid);
		ScaleformMovieMethodAddParamInt(uniqueid);
		ScaleformMovieMethodAddParamInt(style);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(IF(editable, 1, 0));
		ScaleformMovieMethodAddParamTextureNameString(str);
		ScaleformMovieMethodAddParamTextureNameString(rstr);
		ScaleformMovieMethodAddParamInt(color);
		ScaleformMovieMethodAddParamInt(nowvalue);
		ScaleformMovieMethodAddParamInt(maxvalue);
		EndScaleformMovieMethod();
	end
end

function PauseMenu.SetColorData(Param0, Param1, Param2, Param3, Param4)

	if BeginScaleformMovieMethodOnFrontend("SET_DATA_SLOT") then
	
		ScaleformMovieMethodAddParamInt(Param0);
		ScaleformMovieMethodAddParamInt(Param1);
		ScaleformMovieMethodAddParamInt(Param2);
		ScaleformMovieMethodAddParamInt(Param3);
		ScaleformMovieMethodAddParamInt(Param4);
		EndScaleformMovieMethod();
	end
end
function PauseMenu.SetColorValue(Param0, Param1, Param2, Param3, Param4, Param5, Param6)

	if BeginScaleformMovieMethodOnFrontend("SET_COLUMN_TITLE") then
	
		ScaleformMovieMethodAddParamInt(Param0);
		ScaleformMovieMethodAddParamTextureNameString(Param1);
		BeginTextCommandScaleformString(Param2);
		if Param4 ~= -1 then
		
			AddTextComponentInteger(Param4);
		end
		if Param5 ~= -1 then
		
			AddTextComponentInteger(Param5);
		end
		EndTextCommandScaleformString();
		ScaleformMovieMethodAddParamFloat(Param3);
		ScaleformMovieMethodAddParamBool(Param6);
		EndScaleformMovieMethod();
	end
end
function PauseMenu.SetColorLevel(Param0, Param1)

	if BeginScaleformMovieMethodOnFrontend("SET_COLUMN_HIGHLIGHT") then
	
		ScaleformMovieMethodAddParamInt(Param0);
		ScaleformMovieMethodAddParamInt(Param1);
		EndScaleformMovieMethod();
	end
end

function PauseMenu.GetValueFromKeyboard(needY,hasdescription)

	local Var0;
	local fVar1;
	local fVar2;
	local fVar3;
	local fVar4;
	local fVar5;
	local fVar6;
	local fVar7;
	local fVar8;
	local fVar9;
	local fVar10;
	local fVar11;
	local function ratioX(x)
		x = (x * (1.777778 / GetAspectRatio(0)));
		return x;
	end
	Var0 = GetPauseMenuCursorPosition() ;
	width = 0.08 ;
	height = 0.14
	minX = (Var0.x + ratioX(0.073));
	width = ratioX(width);
	minY = (Var0.y + 0.54 - (hasdescription and 0.0 or 0.042 ) );
	maxX = (minX + width);
	maxY = (minY + height);
	nowX = (GetControlNormal(2, 239) + 0.005 );
	nowY = GetControlNormal(2, 240);
	
	if (((nowX >= minX  and  nowX <= maxX)  and  nowY >= minY)  and  nowY <= maxY) then
		--[=[
		SetScriptGfxDrawBehindPausemenu(true)
		DrawRect(
			minX+(maxX-minX)/2 --[[ number ]], 
			minY+(maxY-minY)/2 --[[ number ]], 
			(maxX-minX) --[[ number ]], 
			(maxY-minY) --[[ number ]], 
			255 --[[ integer ]], 
			255 --[[ integer ]], 
			255 --[[ integer ]], 
			255 --[[ integer ]]
		)
		SetScriptGfxDrawBehindPausemenu(false)
		--]=]
		Var6 = (nowX - minX);
		Var7 = (nowY - minY);
		Var8 = ((Var6 / width) * 100 );
		
		Var9 = (not needY and 50.0) or ((Var7 / 0.14 ) * 100 );
		
		SetMouseCursorSprite(5);
		if IsDisabledControlPressed(2, 237) then
			return Var8,Var9;
			
		end
	end
	return nil,nil;
end



function PauseMenu.GetValueFromMouse(x)

	local Var1;
	
	Var1 = 0;
	Var1 = func_1559(0.5,x);
	if Var1 == -1 then
	
		SetMouseCursorSprite(12);
	
	elseif Var1 == 1 then
	
		SetMouseCursorSprite(11);
	else 
		return 0
	end
	return Var1;
	
end

function func_1559(Param1,nVar)

	local Var0;
	local Var1;
	local Var2;
	local Var3;
	local Var4;
	local function ratioX(x)
		x = (x * (1.777778 / GetAspectRatio(0)));
		return x;
	end
	Var0 =  GetPauseMenuCursorPosition() ;
	Var1 = nVar or 0.225 ;

	Var1 = ratioX(Var1);
	Var2 = (Var0.x + Var1);
	Var3 = GetControlNormal(2, 239);
	Var4 = (Var2 - (Var1 * Param1));
	if not GetIsWidescreen() then
	
		Var1 = (Var1 * 1.33 );
	end
	if (Var3 >= Var0.x  and  Var3 <= Var2) then
	
		if Var3 >= Var4 then
		
			return 1;
		
		else
		
			return -1;
		end
	end
	return 0;
end
function PauseMenu.SetMomDadData(Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7, Param8, Param9, update, Param11, Param12, Param13, Param14)

	local method = update and "UPDATE_SLOT" or "SET_DATA_SLOT";
	if BeginScaleformMovieMethodOnFrontend(method) then
	
		ScaleformMovieMethodAddParamInt(Param0);
		ScaleformMovieMethodAddParamInt(Param1);
		ScaleformMovieMethodAddParamInt(Param2);
		ScaleformMovieMethodAddParamInt(Param3);
		ScaleformMovieMethodAddParamInt(Param4);
		ScaleformMovieMethodAddParamFloat(Param5);
		ScaleformMovieMethodAddParamInt(IF(Param9, 1, 0));
		ScaleformMovieMethodAddParamTextureNameString(Param6);
		if not IsStringNullOrEmpty(Param7) then
			ScaleformMovieMethodAddParamTextureNameString(Param7)
		end
		if Param4 == 1 then
		
			ScaleformMovieMethodAddParamInt(116);
		
		elseif Param4 == 0 then
		
			ScaleformMovieMethodAddParamTextureNameString("");
			if (not IsStringNullOrEmpty(Param12)  and  not IsStringNullOrEmpty(Param14)) then
			
				ScaleformMovieMethodAddParamTextureNameString(Param14);
				ScaleformMovieMethodAddParamTextureNameString(Param12);
			
			else
			
				ScaleformMovieMethodAddParamInt(0);
			end
			if (not IsStringNullOrEmpty(Param13)  and  not IsStringNullOrEmpty(Param14)) then
			
				ScaleformMovieMethodAddParamTextureNameString(Param14);
				ScaleformMovieMethodAddParamTextureNameString(Param13);
			
			else
			
				ScaleformMovieMethodAddParamInt(0);
			end
		
		else
		
			ScaleformMovieMethodAddParamBool(Param8);
		end
		EndScaleformMovieMethod();
	end
end
function PauseMenu.SetSkillData0(columnid, rowidx, menuid, uniqueid,title,desc,header,level,bool1,bool2,bool3,bool4)
	local method = "SET_DATA_SLOT"
	if BeginScaleformMovieMethodOnFrontend(method) then
		ScaleformMovieMethodAddParamInt(columnid);
		ScaleformMovieMethodAddParamInt(rowidx);
		ScaleformMovieMethodAddParamInt(menuid);
		ScaleformMovieMethodAddParamInt(uniqueid);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamBool(bool1);
		ScaleformMovieMethodAddParamBool(bool2);
		ScaleformMovieMethodAddParamBool(bool3);
		ScaleformMovieMethodAddParamBool(bool4);
		ScaleformMovieMethodAddParamInt(level);
		ScaleformMovieMethodAddParamTextureNameString(title);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(116);
		ScaleformMovieMethodAddParamTextureNameString(desc);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(116);
		ScaleformMovieMethodAddParamTextureNameString(header);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(116);
		EndScaleformMovieMethod();
	end
end

function PauseMenu.SetSkillData(Param0, Param1, Param2, Param3, Param4, Param5)

	local method = "SET_DATA_SLOT";
	if BeginScaleformMovieMethodOnFrontend(method) then
	
		ScaleformMovieMethodAddParamInt(Param0);
		ScaleformMovieMethodAddParamInt(Param1);
		ScaleformMovieMethodAddParamInt(Param2);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(0);
		ScaleformMovieMethodAddParamInt(1);
		ScaleformMovieMethodAddParamTextureNameString(Param3);
		ScaleformMovieMethodAddParamTextureNameString(Param4);
		ScaleformMovieMethodAddParamInt(Param5);
		EndScaleformMovieMethod();
	end
end



end