function IsServer() return IsDuplicityVersion() end ;function IsClient() return not IsDuplicityVersion() end ;function IsShared() return true end ;function Main (fn) return fn() end ;
case = {} --cfx-switchcase by negbook https://github.com/negbook/cfx-switchcase/blob/main/cfx-switchcase.lua
default = {} --default must put after cases when use
switch = setmetatable({},{__call=function(a,b)case=setmetatable({},{__call=function(a,...)return a[{...}]end,__index=function(a,c)local d=false;if c and type(c)=="table"then for e=1,#c do local f=c[e]if f and b and f==b then d=true;break end end end;if d then return setmetatable({},{__call=function(a,g)default=setmetatable({},{__call=function(a,h)end})g()end})else return function()end end end})default=setmetatable({},{__call=function(a,b)if b and type(b)=="function"then b()end end})return a[b]end,__index=function(a,f)return setmetatable({},{__call=function(a,...)end})end})
json.decodetable = function(...) local a = json.decode(...) return a end ;
IsStringNullOrEmpty = function(str) return (str == nil or str == "") end 
StringCopy = function(fromlabel) if IsStringNullOrEmpty(fromlabel) then return "" else local a = GetLabelText(fromlabel) if a and a~= 'NULL' then return GetLabelText(fromlabel) else local b = GetStreetNameFromHashKey(fromlabel) return b end end end 
GetHashString = StringCopy
GetPauseMenuSelection = function() if N_0x2e22fefa0100275e() --[[IsSelectionUpdated]] then return GetPauseMenuSelectionData() end end
IF = function(x,a,b) return x and a or b end 
ratioX = function(x) x = (x * (1.777778 / GetAspectRatio(0)));return x; end
com = {}
com.menu = {}
com.menu = {Client={},Server={},Shared={}}
com.menu.ESXMenuFramework = {}
com.menu.type = {}
com.lua = {}
com.lua.utils = {}
com.lua.utils.Table = {}
com.lua.utils.Table.GetLastSlot = function(obj,...)
	local args = {...}
	local nowreach = obj
	local pos_end = #args
	local value = args[#args]
	for i=1,pos_end do 
		local v = args[i]
		if nowreach[v] == nil then 
			nowreach[v] = {} 
		end 
		if i == pos_end then 
			return nowreach,v
		else 
			nowreach = nowreach[v]
		end 
	end 
	return nil 
end 

com.lua.utils.Table.SetTableSomething = function(obj,...)
	local args = {...}
	local value = args[#args]
	table.remove(args,#args)
	local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,table.unpack(args))
	tbl[idx] = value
end 

com.lua.utils.Table.ClearTableSomething = function(obj,...)
	if com.lua.utils.Table.IsTableSomthingExist(obj,...) then 
		local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,...)
		tbl[idx] = nil
	end 
end 

com.lua.utils.Table.MakeSureTableSomethingExist = function(obj,...)
	local args = {...}
	local nowreach = obj
	local pos_end = #args
	for i=1,pos_end do 
		local v = args[i]
		if nowreach[v] == nil then 
			nowreach[v] = {} 
		end 
		if i ~= pos_end then 
			nowreach = nowreach[v]
		else 
			if nowreach[v] == nil then 
				nowreach[v] = nil
			else 
				return nowreach[v]
			end 
			return nowreach[v]
		end 
	end 
	return nil 
end 

com.lua.utils.Table.IsTableSomthingExist = function(obj,...)
	local args = {...}
	local nowreach = obj
	local pos_end = #args 
	for i=1,pos_end do 
		local v = args[i]
		if i == pos_end then 
			return not (nowreach[v]==nil)
		else 
			if nowreach[v] == nil then 
				return false 
			end 
			nowreach = nowreach[v]
		end 
	end 
	return false 
end 

com.lua.utils.Table.GetTableSomthing = function(obj,...)
	if com.lua.utils.Table.IsTableSomthingExist(obj,...) then 
		local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,...)
		return tbl[idx]
	end  
	return nil  
end 

com.lua.utils.Table.InsertTableSomethingTable = function(obj,...)
	local args = {...}
	local value = args[#args]
	table.remove(args,#args)
	local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,table.unpack(args))
	table.insert(tbl[idx],value)
	local rtbl = tbl[idx]
	local rlength = #rtbl 
	return rtbl,rlength
end 

com.lua.utils.Table.RemoveTableSomethingTable = function(obj,...)
	local args = {...}
	local index = args[#args]
	if type(index) == 'number' or (#args>1 and index==nil) then 
		table.remove(args,#args)
		local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,table.unpack(args))
		table.remove(tbl[idx],index)
	else 
		local tbl,idx = com.lua.utils.Table.GetLastSlot(obj,table.unpack(args))
		table.remove(tbl[idx])
	end 
	local rtbl = tbl[idx]
	local rlength = #rtbl 
	return rtbl,rlength
end 



NB = {}
local RegisterKeyboardCallback = function(name,key,description,fn) RegisterCommand(name, function() fn() end, false) RegisterKeyMapping(name, IsStringNullOrEmpty(description) and name or description , 'keyboard', key) end 
local RegisterMouseWheelCallback = function(name,key,description,fn) RegisterCommand(name, function() fn() end, false) RegisterKeyMapping(name, IsStringNullOrEmpty(description) and name or description , 'MOUSE_WHEEL', key) end 
local RegisterMouseButtonCallback = function(name,key,description,fn) RegisterCommand(name, function() fn() end, false) RegisterKeyMapping(name, IsStringNullOrEmpty(description) and name or description , 'MOUSE_BUTTON', key) end 

com.menu.ESXMenuFramework = ESX.UI.Menu
NB.MenuFramework = com.menu.ESXMenuFramework

NB.MenuFramework.AcceptedInput = {}

local TriggerAcceptedStyleMenuInput = function(input)
	
	for i,v in pairs(NB.MenuFramework.AcceptedInput) do 
		if v.input then 
			v.input(input)  
		end 
	end 
end 


RegisterMouseButtonCallback("MENU_MOUSE_LEFT","MOUSE_LEFT","MOUSE_LEFT",function()
	TriggerAcceptedStyleMenuInput("MENU_MOUSE_LEFT_CLICK")
	
end)



RegisterMouseWheelCallback("MENU_WHEEL_UP","IOM_WHEEL_UP","Wheel UP",function()
	TriggerAcceptedStyleMenuInput("MENU_WHEEL_UP")
end)
RegisterMouseWheelCallback("MENU_WHEEL_DOWN","IOM_WHEEL_DOWN","Wheel DOWN",function()
	TriggerAcceptedStyleMenuInput("MENU_WHEEL_DOWN")
end)
RegisterKeyboardCallback("MENU_SELECT","SPACE","MENU SELECT",function()
	TriggerAcceptedStyleMenuInput("MENU_SELECT")
end )

RegisterKeyboardCallback("MENU_SHIFT","TAB","",function()
	TriggerAcceptedStyleMenuInput("MENU_SHIFT")
end )

RegisterKeyboardCallback("MENU_BACK","BACK","",function()
	TriggerAcceptedStyleMenuInput("MENU_BACK")
end )

RegisterKeyboardCallback("MENU_ESCAPE","ESCAPE","",function()
	TriggerAcceptedStyleMenuInput("MENU_ESCAPE")
end )

RegisterKeyboardCallback("MENU_ENTER","RETURN","",function()
	TriggerAcceptedStyleMenuInput("MENU_ENTER")
end )

RegisterKeyboardCallback("MENU_UP","UP","",function()
	TriggerAcceptedStyleMenuInput("MENU_UP")
end )

RegisterKeyboardCallback("MENU_DOWN","DOWN","",function()
	TriggerAcceptedStyleMenuInput("MENU_DOWN")
end )

RegisterKeyboardCallback("MENU_LEFT","LEFT","",function()
	TriggerAcceptedStyleMenuInput("MENU_LEFT")
end )

RegisterKeyboardCallback("MENU_RIGHT","RIGHT","",function()
	TriggerAcceptedStyleMenuInput("MENU_RIGHT")
end )

