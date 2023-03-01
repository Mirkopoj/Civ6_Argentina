-- SarmientoCombat
-- Author: mirko
-- DateCreated: 3/1/2023 3:20:32 PM
--------------------------------------------------------------

function sarmiento_combat_strength()
	print("Activada")
end

function MRKSarmientoCombatInit()
	Events.UnitActivate.Add(sarmiento_combat_strength)
end

Events.LoadScreenClose.Add(MRKSarmientoCombatInit)