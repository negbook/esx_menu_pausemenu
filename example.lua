if IsClient() then 
CreateThread(function()
	Wait(2000)
		local elements = {}
		local HairColors = {}
		for i=0,GetNumHairColors() do 
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(HairColors,{GetPedHairRgbColor(i)})
		end 
		local Salle = {
			{label="Apple",value="Apple"},
			{label="Apple23",value="Apple42"},
			{label="Apple23",value="Apple42"},
			{label="Apple23",value="Apple42"},
			{label="Apple23",value="Apple42"},
			{label="Apple213",value="Apple42"},
			{label="Apple213",value="Apple412"},
			{label="Apple213",value="Apple412"},
			{label="Apple213",value="Apple412"},
			{label="Apple213",value="Apple412"},
			{label="保存",value="Save",type="footer"},
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				style = "default", --default, scroll, scroll2
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				if data.current.getter then 
				print("result change",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--scroll 
		--[=[
		local elements = {}
		local HairColors = {}
		for i=0,GetNumHairColors() do 
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(HairColors,{GetPedHairRgbColor(i)})
		end 
		local Salle = {
			{label="Apple",value="Apple"},
			{label="Apple",value="Apple"},
			{label="Apple",value="Apple"},
			{label="选择水果",type="slider",options={"apple","banana","orange"},description="select your favour"},
			{label="Apple123",value="Apple123",description="good health",setter="X",lefttext="-x",righttext="x",toptext="-y",bottomtext="y"},--scroll and selections > 7 
			{label="Apple123",value="Apple123",setter="XY",lefttext="d",righttext="b",toptext="a",bottomtext="c"},--scroll and selections > 7 
			{label="Apple123",value="Apple123",setter="XY",lefttext="d",righttext="b",toptext="a",bottomtext="c"},
			{label="Apple123",value="Apple123",setter="XY",lefttext="d",righttext="b",toptext="a",bottomtext="c"},
			{label="保存",value="Save",type="footer"},
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				style = "scroll", --default, scroll, scroll2
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				if data.current.getter then 
				print("result change",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--]=]
		--scroll2 
		--[=[
		local elements = {}
		local HairColors = {}
		for i=0,GetNumHairColors() do 
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(HairColors,{GetPedHairRgbColor(i)})
		end 
		local Salle = {
			{label="Apple",value="Apple"},
			{label="选择水果",type="slider",options={"apple","banana","orange"},description="select your favour"},
			{label="Apple123",value="Apple123",setter="BAR"},--scroll2
			{label="Color Pad",type="slider",options=HairColors,setter="COLOR"},--scroll2
			{label="保存",value="Save",type="footer"},
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				style = "scroll2", --default, scroll, scroll2
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				if data.current.getter then 
				print("result change",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--]=]
		--heritage
		--[=[
		local elements = {}
		local Mothers = {}
		local Fathers = {}
		for i=0,GetNumParentPedsOfType(1)-1 do --female
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(Mothers,("Female_"..i))
		end 
		for i=0,GetNumParentPedsOfType(0)-1 do --female
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(Fathers,("Male_"..i))
		end 
		for i=0,GetNumParentPedsOfType(4) do --female
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(Mothers,("Special_Female_"..i))
		end 
		for i=0,GetNumParentPedsOfType(3) do --female
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(Fathers,("Special_Male_"..i))
		end 
		local Salle = {
			{label="Apple",value="Apple"},
			{label="选择mother",type="slider",options=Mothers,setter="Mother",description="select your mother"},
			{label="选择father",type="slider",options=Fathers,setter="Father",description="select your father"},
			{label="HERITAGE",setter="SEX"},--dad
			{label="SKIN",setter="SEX"},--dad
			{label="保存",value="Save",type="footer"},
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				style = "heritage", --default, scroll, scroll2
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--]=]
		--stats
		--[=[
		local elements = {}
		local HairColors = {}
		for i=0,GetNumHairColors() do 
			--PauseMenu.SetColorData(7,i,GetPedHairRgbColor(i))
			table.insert(HairColors,{GetPedHairRgbColor(i)})
		end 
		local Salle = {
			{label="Apple",description="desc Apple",value=80},
			{label="Apple2",value=60},
			{label="Apple3",value=50},
			{label="Apple4",value=40}
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				playerlevel = 34,
				playertag = "player tag",
				playername = GetPlayerName(PlayerId()),
				playerdescription = "Good Player",
				playercrew = "(+#CREW",
				menurighttext = "menurighttext",
				style = "stats", --default, scroll, scroll2
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--]=]
		--setpoints 
		--[=[
		local Salle = {
			{label="Apple",value="Apple"},
			{label="Apple123",value="Apple123",description="good health",setter="POINTS"},
			{label="Apple123",value="Apple123",setter="POINTS"},
			{label="Apple123",value="Apple123",setter="POINTS"},
			{label="Apple123",value="Apple123",setter="POINTS"},
			{label=GetLabelText("FACE_STATPT"),value="Save",type="footer"},
		}
		NB.MenuFramework.CloseAll()
		NB.MenuFramework.Open(
			'PauseMenu', GetCurrentResourceName(), 'strip',
			{
				title  = 'Position Menu',
				description = "MENU DESCRIPTION",
				style = "setpoints", --default, scroll, scroll2, stats, heritage, setpoints
				-- 0: list menu  |  1: link-pad rolling list menu  |  2:  bar menu 142561   | 3:  pad menu   | 4: skillpoint menu  | 5:skilldata menu | 6: link-color-list menu |  7:color menu 
				elements = Salle
			},
			function(data, menu)
				print("result open",data.current.value)
				if data.current.getter then 
				print("result open",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--menu.close()
				--NB.Utils.Debug.DrawText("Open",data.current.value)
			end,
			function(data, menu)
				print("result cancel")
				--NB.Utils.Debug.DrawText("Cancel")
				menu.close()
			end
			,
			function(data, menu)
				print("result change",data.current.value)
				if data.current.getter then 
				print("result change",data.current.label,data.current.setter,data.current.getter.value)
				end 
				--NB.Utils.Debug.DrawText("Change",data.current.value)
			end
			,
			function()
				print("result close")
				--NB.Utils.Debug.DrawText("Close")
			end
		)
		--]=]
		
	end)
end 