--
-- MoneyTool by MX11
-- Version 1.0.1.0 
-- 26.10.2016
-- 05.02.2017 - Ergänzung Key Honk mit Key 9 und Änderung des StoreIcons
-- 24.11.2018 - Änderungen für LS19 ohne Prüfung ob jemand einen Farm besitzt.
-- 22.11.2021 - Änderungen für LS22

MoneyTool = {};

function MoneyTool:loadMap(name)
end;

function MoneyTool:keyEvent(unicode, sym, modifier, isDown)
	local money = 1000000;
	if bitAND(modifier, Input.MOD_CTRL) > 0 and bitAND(modifier, Input.MOD_ALT) > 0 and Input.isKeyPressed(Input.KEY_0) then 
		if (g_currentMission.missionDynamicInfo.isMultiplayer == true) and (g_currentMission.player.farmId == FarmManager.SPECTATOR_FARM_ID) then
			print("MoneyTool - Multiplayer game - Player has no Farm!");
		else
			g_currentMission:addMoney(money, g_currentMission.player.farmId, MoneyType.OTHER, true)
			g_currentMission:showMoneyChange(MoneyType.OTHER)			
		end;
	end;
end;

function MoneyTool:update(dt)
end;

function MoneyTool:draw()
end;

function MoneyTool:deleteMap()
end;

function MoneyTool:mouseEvent(posX, posY, isDown, isUp, button)
end;

addModEventListener(MoneyTool);