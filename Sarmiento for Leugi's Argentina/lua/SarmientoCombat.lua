-- SarmientoCombat
-- Author: mirko
-- DateCreated: 3/1/2023 3:20:32 PM
--------------------------------------------------------------

function sarmiento_combat_strength(playerID, unitID, hCommand, iData1)
	print(hCommand..iData1)
end

function MRKSarmientoCombatInit()
	Events.UnitActivityChanged.Add(sarmiento_combat_strength)
end

Events.LoadScreenClose.Add(MRKSarmientoCombatInit)