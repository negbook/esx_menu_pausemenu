if IsClient() then 
local NB_Pause_Menu = {focus={}}
com.menu.type['PauseMenu'] = NB_Pause_Menu
NB.MenuFramework.AcceptedInput["PauseMenu"] = {}
NB_Pause_Menu.ClearPropSlotValue = function(...) return com.lua.utils.Table.ClearTableSomething(NB_Pause_Menu,...) end
NB_Pause_Menu.SetPropSlotValue = function(...) return com.lua.utils.Table.SetTableSomething(NB_Pause_Menu,...) end
NB_Pause_Menu.IsPropSlotValueExist = function(...) return com.lua.utils.Table.IsTableSomthingExist(NB_Pause_Menu,...) end 
NB_Pause_Menu.GetPropSlotValue = function(...) return com.lua.utils.Table.GetTableSomthing(NB_Pause_Menu,...) end  
NB_Pause_Menu.InsertPropSlot = function(...) return com.lua.utils.Table.InsertTableSomethingTable(NB_Pause_Menu,...) end
NB_Pause_Menu.RemovePropSlotIndex = function(...) return com.lua.utils.Table.RemoveTableSomethingTable(NB_Pause_Menu,...) end


local MenuType = 'PauseMenu'
local openMenu = function(namespace, name, data)
	NB_Pause_Menu.Open(namespace, name, data);
end
local closeMenu = function(namespace, name)
	NB_Pause_Menu.Close(namespace, name);
end
local lastpos = nil
function GetPos ()
	local a,b,c = GetPauseMenuSelectionData()
	if c ~= -1 then 
		return c+1 
	else 
		return 1
	end 
end 


				
NB.MenuFramework.RegisterType(MenuType, openMenu, closeMenu)
NB.MenuFramework.AcceptedInput["PauseMenu"].input = function(input)
	NB_Pause_Menu.GetCurrentFocusData(function(namespace,name,elementslength,menu,pos,itemdata)
		switch (input) (
			case ("MENU_MOUSE_LEFT_CLICK") ( function()
				if PauseMenu.SelectedItem then 
					if PauseMenu.CurrentColumndId == 6 then 
						if PauseMenu.SelectedItem.tunecolor then  
							local c = PauseMenu.GetValueFromMouse()
							if c then 
								PauseMenu.SelectedItem.tunecolor = PauseMenu.SelectedItem.tunecolor + c
								if PauseMenu.SelectedItem.tunecolor <= 0 then PauseMenu.SelectedItem.tunecolor = 1 end 
								if PauseMenu.SelectedItem.tunecolor > #PauseMenu.SelectedItem.options  then PauseMenu.SelectedItem.tunecolor = #PauseMenu.SelectedItem.options end 
								PauseMenu.SelectedItem.value = PauseMenu.SelectedItem.tunecolor
								
								if PauseMenu.SelectedItem.setter then 
									if PauseMenu.SelectedItem.setter == "COLOR" or PauseMenu.SelectedItem.setter == "COLOUR"  then 
										PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunecolor
									end 
								end 
								NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
								NB_Pause_Menu.Update();
							end 
							
						end 
						if PauseMenu.SelectedItem.tunebar then  
							local c = PauseMenu.GetValueFromMouse()
							if c then 
								PauseMenu.SelectedItem.tunebar = PauseMenu.SelectedItem.tunebar + c
								if PauseMenu.SelectedItem.tunebar < 0 then PauseMenu.SelectedItem.tunebar = 0.0 end 
								if PauseMenu.SelectedItem.tunebar > 100.0  then PauseMenu.SelectedItem.tunebar = 100.0 end 
								PauseMenu.SetColorValue(7,string.format("%.2f",PauseMenu.SelectedItem.tunebar).."%","",PauseMenu.SelectedItem.tunebar,-1,-1,true);
								if PauseMenu.SelectedItem.setter then 
									if PauseMenu.SelectedItem.setter == "BAR" then 
										PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunebar
									end 
								end 
								NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
								NB_Pause_Menu.Update();
							end 
						end
					end 
					if PauseMenu.CurrentColumndId == 2 then 
						if PauseMenu.SelectedItem.setter == "SEX" then 
							local c = PauseMenu.GetValueFromMouse(0.325)
							if c then 
								local item = PauseMenu.SelectedItem
								if item.tunelike then 
									PauseMenu.SelectedItem.tunelike = PauseMenu.SelectedItem.tunelike + c
									if PauseMenu.SelectedItem.tunelike < 0 then PauseMenu.SelectedItem.tunelike = 0.0 end 
									if PauseMenu.SelectedItem.tunelike > 100.0  then PauseMenu.SelectedItem.tunelike = 100.0 end 
									PauseMenu.SetMomDadData(2, PauseMenu.SelectedItem.pos-1, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, PauseMenu.SelectedItem.pos-1, 1,item.tunelike,item.label,"",true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
									if PauseMenu.SelectedItem.setter then 
										if PauseMenu.SelectedItem.setter == "SEX" then 
											PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunelike
										end 
									end 
									
									NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
									NB_Pause_Menu.Update();
								end 
								if item.tuneskin then
									PauseMenu.SelectedItem.tuneskin = PauseMenu.SelectedItem.tuneskin + c
									if PauseMenu.SelectedItem.tuneskin < 0 then PauseMenu.SelectedItem.tuneskin = 0.0 end 
									if PauseMenu.SelectedItem.tuneskin > 100.0  then PauseMenu.SelectedItem.tuneskin = 100.0 end 
									PauseMenu.SetMomDadData(2, PauseMenu.SelectedItem.pos-1, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, PauseMenu.SelectedItem.pos-1, 1,item.tuneskin,item.label,"",true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
									if PauseMenu.SelectedItem.setter then 
										if PauseMenu.SelectedItem.setter == "SEX" then 
											PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tuneskin
										end 
									end 
									NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
									NB_Pause_Menu.Update();
								end 
							end 
						end 
					end 
					if PauseMenu.CurrentColumndId == 4 then 
						if PauseMenu.SelectedItem.setter == "POINTS" then 
							local c = PauseMenu.GetValueFromMouse()
							if c then 
								local item = PauseMenu.SelectedItem
								if item.tuneskill then 
									item.tuningskill = true 
									PauseMenu.SelectedItem.tuneskill = PauseMenu.SelectedItem.tuneskill + c
									if PauseMenu.SelectedItem.tuneskill < 0 then PauseMenu.SelectedItem.tuneskill = 0.0 end 
									if PauseMenu.SelectedItem.tuneskill > 100.0  then PauseMenu.SelectedItem.tuneskill = 100.0 end 
									PauseMenu.SelectedItem.tuneskill = math.floor(PauseMenu.SelectedItem.tuneskill)
									if PauseMenu.SelectedItem.setter then 
										if PauseMenu.SelectedItem.setter == "POINTS" then 
											PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tuneskill
										end 
									end 
									
									NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
									NB_Pause_Menu.Update();
								end 

							end 
						end 
					end 
					if PauseMenu.CurrentColumndId == 1 then 
						if PauseMenu.SelectedItem.setter=="XY" or PauseMenu.SelectedItem.setter=="X" then 
							local a,b = PauseMenu.GetValueFromKeyboard(PauseMenu.SelectedItem.setter=="XY",PauseMenu.SelectedItem.description~=nil)
							if a and b then 
								PauseMenu.SelectedItem.tunedpos = vector3(a,b,0.0)
								if PauseMenu.SelectedItem.tunedpos then 
									--PauseMenu.ShowColumn(3,true);
									
									PauseMenu.SetXYData(3,0,PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,0,PauseMenu.SelectedItem.toptext,PauseMenu.SelectedItem.righttext,PauseMenu.SelectedItem.bottomtext,PauseMenu.SelectedItem.lefttext,PauseMenu.SelectedItem.tunedpos.x,PauseMenu.SelectedItem.tunedpos.y,PauseMenu.SelectedItem.setter=="XY",PauseMenu.SelectedItem.tunedpos~=nil,false)
									--PauseMenu.DisplayDataSlot(3);
									if PauseMenu.SelectedItem.setter then 
										if PauseMenu.SelectedItem.setter == "XY" or PauseMenu.SelectedItem.setter == "X" then 
											PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunedpos
											
										end 
									end 
									NB_Pause_Menu.Update();
								end 
							end 
						end
					end 
				end 
				PauseMenu.SelectedItem.HoldingTimer = GetGameTimer()
			end),
			case ("MENU_WHEEL_UP") ( function()
				
			end),
			case ("MENU_WHEEL_DOWN") ( function()
				
			end),
			case ("MENU_SELECT","MENU_ENTER") (function()
					NB_Pause_Menu.submit(namespace, name, itemdata);
			end),
			case ("MENU_BACK") (function()
					NB_Pause_Menu.cancel(namespace, name);
			end),
			case ("MENU_CANCEL") (function()
					NB_Pause_Menu.cancel(namespace, name);
			end),
			case ("MENU_LEFT") (function()
				
					if itemdata and itemdata.type and itemdata.type == "slider" then 
						local length = itemdata.options and #itemdata.options or 0 
						itemdata.value = itemdata.value - 1
						if itemdata.value == 0 then 
							itemdata.value = length
						end 
						if itemdata.description then 
							if PauseMenu.CurrentColumndId then 
							PauseMenu.SetDescription(PauseMenu.CurrentColumndId,itemdata.description,false)
							end 
						else  
							if PauseMenu.CurrentColumndId then 
							PauseMenu.SetDescription(PauseMenu.CurrentColumndId,"",false)
							end 
						end 
						NB_Pause_Menu.change(namespace, name, itemdata)
						NB_Pause_Menu.Update();

					end
			end),
			case ("MENU_RIGHT") (function()
					if itemdata and itemdata.type and itemdata.type == "slider" then 
						
						local length = itemdata.options and #itemdata.options or 0 
						itemdata.value = itemdata.value + 1
						if itemdata.value > length then 
							itemdata.value = itemdata.value % length
						end 
						
						if itemdata.description then 
							if PauseMenu.CurrentColumndId then 
							PauseMenu.SetDescription(PauseMenu.CurrentColumndId,itemdata.description,false)
							end 
						else 
							if PauseMenu.CurrentColumndId then 
							PauseMenu.SetDescription(PauseMenu.CurrentColumndId,"",false)
							end 
						end
						NB_Pause_Menu.change(namespace, name, itemdata)
						NB_Pause_Menu.Update();
						
					end
			end),
			default (function()
			end)
		)
	end)
end 

local OpenLoop = function(Break)
	if IsUsingKeyboard(2) then 
		if N_0x3d9acb1eb139e702() then
			SetMouseCursorSprite(1);
		elseif N_0xde03620f8703a9df() > -1 then
		else
			SetMouseCursorSprite(1);
		end
		
		if PauseMenu.SelectedItem then 
			if PauseMenu.CurrentColumndId == 6 then 
				if PauseMenu.SelectedItem.setter == "COLOR" or PauseMenu.SelectedItem.setter == "COLOUR" or PauseMenu.SelectedItem.setter == "BAR" then 
					local c = PauseMenu.GetValueFromMouse()
					if PauseMenu.SelectedItem.HoldingTimer and (GetGameTimer() - PauseMenu.SelectedItem.HoldingTimer > 150) and c then 
						if IsControlPressed(0,237) then 
							
							if PauseMenu.SelectedItem.tunebar then  
								
									PauseMenu.SelectedItem.tunebar = PauseMenu.SelectedItem.tunebar + c
									if PauseMenu.SelectedItem.tunebar < 0 then PauseMenu.SelectedItem.tunebar = 0.0 end 
									if PauseMenu.SelectedItem.tunebar > 100.0  then PauseMenu.SelectedItem.tunebar = 100.0 end 
									
									PauseMenu.SetColorValue(7,string.format("%.2f",PauseMenu.SelectedItem.tunebar).."%","",PauseMenu.SelectedItem.tunebar,-1,-1,true);
									if PauseMenu.SelectedItem.setter then 
										if PauseMenu.SelectedItem.setter == "BAR" then 
											PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunebar
										end 
									end 
									NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
									NB_Pause_Menu.Update();
								 
							end	
							if PauseMenu.SelectedItem.tunecolor then 
								
								PauseMenu.SelectedItem.tunecolor = PauseMenu.SelectedItem.tunecolor + c
								if PauseMenu.SelectedItem.tunecolor <= 0 then PauseMenu.SelectedItem.tunecolor = 1 end 
								if PauseMenu.SelectedItem.tunecolor > #PauseMenu.SelectedItem.options  then PauseMenu.SelectedItem.tunecolor = #PauseMenu.SelectedItem.options end 
								PauseMenu.SelectedItem.value = PauseMenu.SelectedItem.tunecolor
								
								if PauseMenu.SelectedItem.setter then 
									if PauseMenu.SelectedItem.setter == "COLOR" or PauseMenu.SelectedItem.setter == "COLOUR"  then 
										PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunecolor
									end 
								end 
								NB_Pause_Menu.change(PauseMenu.SelectedItem._namespace, PauseMenu.SelectedItem._name, PauseMenu.SelectedItem)
								NB_Pause_Menu.Update();
								 
							end 
							PauseMenu.SelectedItem.HoldingTimer = GetGameTimer() 
						else 
							PauseMenu.SelectedItem.HoldingTimer = nil
						end 
					end 
				end 
			end 
			if PauseMenu.CurrentColumndId == 1 then 
				if PauseMenu.SelectedItem.setter=="XY" or PauseMenu.SelectedItem.setter=="X" then 
					local a,b = PauseMenu.GetValueFromKeyboard(PauseMenu.SelectedItem.setter=="XY",PauseMenu.SelectedItem.description~=nil)
					if PauseMenu.SelectedItem.HoldingTimer and (GetGameTimer() - PauseMenu.SelectedItem.HoldingTimer > 150) and a and b then 
						if IsControlPressed(0,237) then 
							PauseMenu.SelectedItem.tunedpos = vector3(a,b,0.0)
							if PauseMenu.SelectedItem.tunedpos then 
								--PauseMenu.ShowColumn(3,true);
								
								PauseMenu.SetXYData(3,0,PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,0,"a","b","c","d",PauseMenu.SelectedItem.tunedpos.x,PauseMenu.SelectedItem.tunedpos.y,PauseMenu.SelectedItem.setter=="XY",PauseMenu.SelectedItem.tunedpos~=nil,false)
								--PauseMenu.DisplayDataSlot(3);
								if PauseMenu.SelectedItem.setter then 
									if PauseMenu.SelectedItem.setter == "XY" or PauseMenu.SelectedItem.setter == "X" then 
										PauseMenu.SelectedItem.getter.value = PauseMenu.SelectedItem.tunedpos
										
									end 
								end 
								NB_Pause_Menu.Update();
							end 
							PauseMenu.SelectedItem.HoldingTimer = GetGameTimer() 
						else 
							PauseMenu.SelectedItem.HoldingTimer = nil
						end 
					end 
				end
			end 	
			
		end 
	else 
		SetMouseCursorVisibleInMenus(false);
	end 
	
	if N_0x2e22fefa0100275e() then 
		local pos = GetPos()
		if pos then 
			local currentFocus = NB_Pause_Menu.GetCurrentFocus();
			if currentFocus and #(currentFocus) then
				local menu    = NB_Pause_Menu.opened[currentFocus.namespace][currentFocus.name];
				NB_Pause_Menu.SetPropSlotValue("pos",currentFocus.namespace,currentFocus.name,pos)
				NB_Pause_Menu.change(currentFocus.namespace, currentFocus.name, menu.elements[pos])
				NB_Pause_Menu.Update();
			end
		end 
	end  
	
	if #NB_Pause_Menu.focus<=0  then Break() end 
end 

NB_Pause_Menu.Open = function(namespace,name,data)
	PauseMenu.StartPauseMenu(PauseMenu.versionid.FE_MENU_VERSION_MP_CHARACTER_CREATION)
	if NB_Pause_Menu.IsPropSlotValueExist("opened",namespace,name) then 
		NB_Pause_Menu.Close(namespace, name);
	end 
	for i=1,#data.elements,1 do 
		if data.elements[i].type == nil then 
			data.elements[i].type = 'default';
		elseif data.elements[i].type == 'slider' then 
			if not data.elements[i].options then data.elements[i].options = {} end 
			data.elements[i].value = 1
		end 
		if data.elements[i].setter then 
			if not data.elements[i].getter then data.elements[i].getter = {} end 
		end 
	end 
	data._index     = #NB_Pause_Menu.focus;
	data._namespace = namespace;
	data._name      = name;
	data._style	    = data.style or "default"
	for i=1,#data.elements,1 do 
		data.elements[i]._namespace = namespace;
		data.elements[i]._name      = name;
	end 
	NB_Pause_Menu.SetPropSlotValue("opened",namespace,name,data)
	NB_Pause_Menu.SetPropSlotValue("pos",namespace,name,1)
	for i=1,#data.elements,1 do 
		if data.elements[i].selected  then 
			NB_Pause_Menu.SetPropSlotValue("pos",namespace,name,i)
		else
			data.elements[i].selected = false
		end 
	end 
	
	local columnid = 0
	if data._style == "scroll" then 
		columnid = 1
	elseif data._style == "scroll2" then 
		columnid = 6
	elseif data._style == "heritage" then 
		columnid = 2	
	elseif data._style == "stats" then 	
		columnid = 5
	elseif data._style == "setpoints" then 	
		columnid = 4
	end 
	PauseMenu.CurrentColumndId = columnid
	
	if columnid then --Build Menu 
		if columnid == 0 or columnid == 1 or columnid == 6 then 
			PauseMenu.SetDataSlotEmpty(columnid);
			PauseMenu.SetColumnTitle(columnid,data.title,data.description or "","");
			local data_idx = 0
			for i=1,#data.elements do 
				local item = data.elements[i]
				if i == #data.elements then 
					if item.type == 'footer' then 
						PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.label, " " , 2, 1, (not (PauseMenu.CurrentColumndId == nil)));
					else 
						PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.label, item.type == 'slider' and ((item.options and (type(item.options[item.value])~='table' and tostring(item.options[item.value]))) or tostring(item.value)) or "" , item.type == 'slider' and 0 or 1, 4, (not (PauseMenu.CurrentColumndId == nil))); 
					end 
				else 
					PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.label, item.type == 'slider' and ((item.options and (type(item.options[item.value])~='table' and tostring(item.options[item.value]))) or tostring(item.value)) or "" , item.type == 'slider' and 0 or 1, 4, (not (PauseMenu.CurrentColumndId == nil)));
				end 
				data_idx = data_idx + 1
			end 
			PauseMenu.DisplayDataSlot(columnid);
			PauseMenu.SetColumnFocus(columnid, 1, 1);
			PauseMenu.SetColumnCanJump(columnid, 1);
			PauseMenu.SetCurrentColumn(columnid)
			if #data.elements>7 then 
				if columnid == 1 or columnid == 6 then 
					PauseMenu.InitColumnScroll(columnid, 1, 1, 1, 0, 0)
				end 
			end 
		end 
		if columnid == 4 then 
			PauseMenu.SetDataSlotEmpty(columnid);
			PauseMenu.SetColumnTitle(columnid,data.title,data.description or "","");
			local data_idx = 0
			for i=1,#data.elements do 
				local item = data.elements[i]
				item.tuneskill = 0
				item.tuningskill = false 
				if i == #data.elements then 
					if item.type == 'footer' then 
						PauseMenu.SetSkillPointData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.tuningskill and 1 or 0,item.label,tostring(item.tuneskill),116,item.tuneskill,0,item.setter ~= nil,(not (PauseMenu.CurrentColumndId == nil)))--, " " , 1, 50, 100,true,(not (PauseMenu.CurrentColumndId == nil)));
					else 
						PauseMenu.SetSkillPointData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.tuningskill and 1 or 0,item.label,tostring(item.tuneskill),116,item.tuneskill,0,item.setter ~= nil,(not (PauseMenu.CurrentColumndId == nil)))--, " ",1, 50 100,true,(not (PauseMenu.CurrentColumndId == nil))); 
					end 
				else 
					PauseMenu.SetSkillPointData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.tuningskill and 1 or 0,item.label,tostring(item.tuneskill),120,item.tuneskill,0,item.setter ~= nil,(not (PauseMenu.CurrentColumndId == nil)))--, " ", 1, 50 100,true,(not (PauseMenu.CurrentColumndId == nil)));
				end 
				data_idx = data_idx + 1
			end 
			PauseMenu.DisplayDataSlot(columnid);
			PauseMenu.SetColumnFocus(columnid, 1, 1);
			PauseMenu.SetColumnCanJump(columnid, 1);
			PauseMenu.SetCurrentColumn(columnid)
			
		end 
		if columnid == 5 then 
			PauseMenu.SetDataSlotEmpty(columnid);
			
			PauseMenu.SetColumnTitle2(columnid,data.title or "",data.description or "",116,65,data.menurightbottom or "",data.playercrew or "",-1,-1,22,255,255,255,255,"","")--,"RIGHTBOTTOM","(+#NEGBK","a","b",22,255,255,255,255,"","");
			PauseMenu.SetSkillData0(columnid,0, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,0,data.playerdescription or "",data.playername or "",data.playertag or "",data.playerlevel or 0,true,true,true,true)
			
			local value = 50.0
			local data_idx = 1
			for i=1,#data.elements do 
				local item = data.elements[i]
				if i == #data.elements then 
					if item.type == 'footer' then 
						PauseMenu.SetSkillData(columnid,data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,item.label,item.description or "",item.value)
					else 
						PauseMenu.SetSkillData(columnid,data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,item.label,item.description or "",item.value)
					end 
				else 
					PauseMenu.SetSkillData(columnid,data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,item.label,item.description or "",item.value)
				end 
				data_idx = data_idx + 1
			end 
			PauseMenu.DisplayDataSlot(columnid);
			PauseMenu.SetColumnFocus(columnid, 1, 1);
			PauseMenu.SetColumnCanJump(columnid, 1);
			PauseMenu.SetCurrentColumn(columnid)
			
		end 
		if columnid == 2 then 
			
			PauseMenu.SetDataSlotEmpty(columnid);
			PauseMenu.SetColumnTitle(columnid,data.title,data.description or "","");
			RequestStreamedTextureDict("CHAR_CREATOR_PORTRAITS")
			repeat Wait(0) until HasStreamedTextureDictLoaded("CHAR_CREATOR_PORTRAITS") 
			
			local data_idx = 0
			PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, data.LastMother, data.LastFather, "CHAR_CREATOR_PORTRAITS");
			
			for i=1,#data.elements do 
				local item = data.elements[i]
				local rlabel = item.type == 'slider' and ((item.options and (type(item.options[item.value])~='table' and tostring(item.options[item.value]))) or tostring(item.value)) or ""
				if i == #data.elements then 
					if item.type == 'footer' then --special footer
						PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 2,0.0,item.label," ",false,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
					else --default footer 
						PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.type == 'slider' and 2 or 1,0.0,item.label,GetLabelText(rlabel),true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
					end 
				else 
					if i == 1 then 
						PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, data.LastMother, data.LastFather, "CHAR_CREATOR_PORTRAITS");
					else 
						if item.setter == "Mother" then 
							data.LastMother = rlabel
						end 
						if item.setter == "Father" then 
							data.LastFather = rlabel
						end 
						if item.setter == "SEX" then 
							item.tunelike = 50.0
							item.tuneskin = 50.0
							PauseMenu.SetMomDadData(columnid, 0, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, 0, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, data.LastMother, data.LastFather, "CHAR_CREATOR_PORTRAITS");
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.type == 'slider' and 2 or 1,50.0,item.label,GetLabelText(rlabel),true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
						else 
							PauseMenu.SetMomDadData(columnid, 0, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, 0, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, data.LastMother, data.LastFather, "CHAR_CREATOR_PORTRAITS");
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.type == 'slider' and 2 or 1,0.0,item.label,GetLabelText(rlabel),true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
						end 
					end 
				end 
				data_idx = data_idx + 1
			end 
			
			PauseMenu.DisplayDataSlot(columnid);
			PauseMenu.SetColumnFocus(columnid, 1, 1);
			PauseMenu.SetColumnCanJump(columnid, 1);
			PauseMenu.SetCurrentColumn(columnid)
			if #data.elements>7 then 
				if columnid == 1 or columnid == 6 then 
					PauseMenu.InitColumnScroll(columnid, 1, 1, 1, 0, 0)
				end 
			end 
			
		end 
	end 
	
	NB_Pause_Menu.InsertPropSlot("focus",{namespace=namespace,name=name})
	NB_Pause_Menu.Update();
	
	
	if ThisEnd == nil then 
		ThisEnd = false 
		CreateThread(function()
			while not ThisEnd do Wait(33)
				local Break = function()
					ThisEnd = true 
				end 
				OpenLoop(Break)
			end 
			return
		end)
	end 
end 
NB_Pause_Menu.Close = function(namespace, name)
	for  i=1,#NB_Pause_Menu.focus, 1 do 
		if NB_Pause_Menu.focus[i].namespace == namespace and  NB_Pause_Menu.focus[i].name == name then 
			table.remove(NB_Pause_Menu.focus,i)
			NB_Pause_Menu.ClearPropSlotValue('opened',namespace,name)
			break;
		end 
	end 
	NB_Pause_Menu.Update();
	SetFrontendActive(false);
end 
NB_Pause_Menu.GetCurrentFocus = function()
	return NB_Pause_Menu.focus[#NB_Pause_Menu.focus];
end 
NB_Pause_Menu.GetCurrentFocusData = function(cb)
	local currentFocus = NB_Pause_Menu.GetCurrentFocus();
	if currentFocus and #(currentFocus) then
		local menu    = NB_Pause_Menu.opened[currentFocus.namespace][currentFocus.name];
		local pos     = NB_Pause_Menu.pos[currentFocus.namespace][currentFocus.name];
		local itemdata    = menu.elements[pos];
		if(#menu.elements > 0) then 
			cb(currentFocus.namespace,currentFocus.name,#menu.elements,menu,pos,itemdata)
		else 
			error("menu has no any datas",2)
		end 
	end 
end 
NB_Pause_Menu.Update = function() -- DRAW FUNCTIONS
	local currentFocus             = NB_Pause_Menu.GetCurrentFocus();
	if currentFocus and #(currentFocus) then
		local menuData    = NB_Pause_Menu.opened[currentFocus.namespace][currentFocus.name];
		local pos     = NB_Pause_Menu.pos[currentFocus.namespace][currentFocus.name];
		if menuData.elements and (#menuData.elements > 0) then 
			for i,v in pairs (menuData.elements) do 
				if i == pos then 
					v.selected = true;
				else 
					v.selected = false;
				end 
			end 

			local selecteditem = menuData.elements[pos]
			PauseMenu.SelectedItem = selecteditem
			PauseMenu.SelectedItem.pos = pos
			if selecteditem.description then 
				if PauseMenu.CurrentColumndId then 
				PauseMenu.SetDescription(PauseMenu.CurrentColumndId,selecteditem.description,false)
				end 
			else 
				if PauseMenu.CurrentColumndId then 
				PauseMenu.SetDescription(PauseMenu.CurrentColumndId,"",false)
				end 
			end
			
			
			local data_idx = pos-1
			local columnid = PauseMenu.CurrentColumndId
			
			if columnid then
				if columnid == 0 or columnid == 1 or columnid == 6 then 
					if pos == #menuData.elements then 
						if selecteditem.type == 'footer' then 
							PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, selecteditem.label, " " , 2, 1, (not (PauseMenu.CurrentColumndId == nil)));
						else 
							PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, selecteditem.label, selecteditem.type == 'slider' and ((selecteditem.options and (type(selecteditem.options[selecteditem.value])~='table' and tostring(selecteditem.options[selecteditem.value]))) or tostring(selecteditem.value)) or ""  , selecteditem.type == 'slider' and 0 or 1, 4, (not (PauseMenu.CurrentColumndId == nil)));
						end 
					else 
						PauseMenu.SetOrUpdateNormalDataSlot(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, selecteditem.label, selecteditem.type == 'slider' and ((selecteditem.options and (type(selecteditem.options[selecteditem.value])~='table' and tostring(selecteditem.options[selecteditem.value]))) or tostring(selecteditem.value)) or "" , selecteditem.type == 'slider' and 0 or 1, 4, (not (PauseMenu.CurrentColumndId == nil)));
					end 
					if columnid == 1 then 
						if selecteditem.setter == "X" or selecteditem.setter == "XY" then 
							PauseMenu.SetDataSlotEmpty(3);
							PauseMenu.ShowColumn(3,true);
							if not selecteditem.tunedpos then 
								PauseMenu.SetXYData(3,0,PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,0,selecteditem.toptext,selecteditem.righttext,selecteditem.bottomtext,selecteditem.lefttext,50.0,50.0,selecteditem.setter=="XY",selecteditem.tunedpos~=nil,false)
								
								selecteditem.tunedpos = vector3(50.0,50.0,0.0)
							else 
								PauseMenu.SetXYData(3,0,PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION,0,selecteditem.toptext,selecteditem.righttext,selecteditem.bottomtext,selecteditem.lefttext,selecteditem.tunedpos.x,selecteditem.tunedpos.y,selecteditem.setter=="XY",selecteditem.tunedpos~=nil,false)
							end 
							PauseMenu.DisplayDataSlot(3);
						end 
					end 
					
					if columnid == 2 then 
						if selecteditem.setter == "SEX" then 
							local item = selecteditem
							if item.tunelike then 
								PauseMenu.SetMomDadData(2, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 1,item.tunelike,selecteditem.label,"",true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
							end 
							if item.tuneskin then 
								PauseMenu.SetMomDadData(2, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 1,item.tuneskin,selecteditem.label,"",true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
							end 
						end 
					end 
					if columnid == 6 then 
						if selecteditem.setter == "BAR" then 
							if not selecteditem.tunebar then 
								PauseMenu.SetDataSlotEmpty(7);
								PauseMenu.ShowColumn(7,true);
								
								PauseMenu.DisplayDataSlot(7);
								PauseMenu.SetDataSlotEmpty(7);
								PauseMenu.SetColorValue(7,"50.0%","",50.0,-1,-1,true);
								
								
								selecteditem.tunebar = 50.0 
							else 
								PauseMenu.ShowColumn(7,true);
								PauseMenu.DisplayDataSlot(7);
								PauseMenu.SetDataSlotEmpty(7);
								PauseMenu.SetColorValue(7,string.format("%.2f",selecteditem.tunebar).."%","",selecteditem.tunebar,-1,-1,true);
							end 
						else 
							PauseMenu.SetDataSlotEmpty(7);
							PauseMenu.ShowColumn(7,false);
						end
						if selecteditem.setter == "COLOR" or selecteditem.setter == "COLOUR" then 
							if not selecteditem.tunecolor then 
								PauseMenu.SetDataSlotEmpty(7);
								for i=1,#selecteditem.options do 
									
									PauseMenu.SetColorData(7,i-1,table.unpack(selecteditem.options[i]))
								end 
								PauseMenu.ShowColumn(7,true);
								PauseMenu.DisplayDataSlot(7);
								PauseMenu.SetColorValue(7,"FACE_OPAC","FACE_COLOUR",-1.0,1,#selecteditem.options,true);
								PauseMenu.SetColorLevel(7,0)
								selecteditem.tunecolor = 1
							else 
								for i=1,#selecteditem.options do 
									
									PauseMenu.SetColorData(7,i-1,table.unpack(selecteditem.options[i]))
								end 
								PauseMenu.ShowColumn(7,true);
								PauseMenu.DisplayDataSlot(7);
								PauseMenu.SetColorValue(7,"FACE_OPAC","FACE_COLOUR",-1.0,tonumber(selecteditem.tunecolor),#selecteditem.options,true);
								PauseMenu.SetColorLevel(7,tonumber(selecteditem.tunecolor)-1)
							end 
						end 
						
					end 
				end
				if columnid == 2 then 
					local item = selecteditem
					local rlabel = item.type == 'slider' and ((item.options and (type(item.options[item.value])~='table' and tostring(item.options[item.value]))) or tostring(item.value)) or ""
					if pos == #menuData.elements then 
						if item.type == 'footer' then --special footer
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 2,0.0,item.label," ",false,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
						else --default footer 
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.type == 'slider' and 2 or 1,50.0,item.label,GetLabelText(rlabel),true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
						end 
					else 
						if pos == 1 then 
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, menuData.LastMother, menuData.LastFather, "CHAR_CREATOR_PORTRAITS");
						else 
							if item.setter == "Mother" then 
								menuData.LastMother = rlabel
							end 
							if item.setter == "Father" then 
								menuData.LastFather = rlabel
							end 
							PauseMenu.SetMomDadData(columnid, 0, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, 0, 0,0.0,"","",false,0,(not (PauseMenu.CurrentColumndId == nil)), -1, menuData.LastMother, menuData.LastFather, "CHAR_CREATOR_PORTRAITS");
							PauseMenu.SetMomDadData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.type == 'slider' and 2 or 1,item.tunelike or item.tuneskin or 0.0,item.label,GetLabelText(rlabel),true,1,(not (PauseMenu.CurrentColumndId == nil)), -1, 0, 0, 0);
							
						end 
					end 
				end 
				if columnid == 4 then 
					if selecteditem.setter == "POINTS" then 
						local item = selecteditem
						if item.tuneskill then 
						   PauseMenu.SetSkillPointData(columnid, data_idx, PauseMenu.menuid.HEADER_MP_CHARACTER_CREATION, data_idx, item.tuningskill and 1 or 0,item.label,tostring(item.tuneskill),120,item.tuneskill,0,not item.disable,(not (PauseMenu.CurrentColumndId == nil)))	
						end 
					end 
				end 
			end 
		end 
	end 
end 
NB_Pause_Menu.submit = function(namespace, name, data_)
	local data = {
		_namespace= namespace,
		_name     = name,
		current   = data_,
		elements  = NB_Pause_Menu.opened[namespace][name].elements
	}
	local menu = NB.MenuFramework.GetOpened(MenuType, data._namespace, data._name)
	if menu.submit ~= nil then
		menu.submit(data, menu)
	end
end 
NB_Pause_Menu.cancel = function(namespace, name)
	local data = {_namespace= namespace,_name= name}
	local menu = NB.MenuFramework.GetOpened(MenuType, data._namespace, data._name)
	if menu.cancel ~= nil then
		menu.cancel(data, menu)
	end
end 
NB_Pause_Menu.change = function(namespace, name, data_)
	local data = {_namespace= namespace,_name= name,current= data_,elements= NB_Pause_Menu.opened[namespace][name].elements}
	local menu = NB.MenuFramework.GetOpened(MenuType, data._namespace, data._name)
	for i=1, #data.elements, 1 do
		menu.setElement(i, 'value', data.elements[i].value)
		if data.elements[i].selected then
			menu.setElement(i, 'selected', true)
		else
			menu.setElement(i, 'selected', false)
		end
	end
	if menu.change ~= nil then
		menu.change(data, menu)
	end
end 
end 
