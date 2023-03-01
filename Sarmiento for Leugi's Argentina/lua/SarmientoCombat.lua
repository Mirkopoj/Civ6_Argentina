-- SarmientoCombat
-- Author: mirko
-- DateCreated: 3/1/2023 3:20:32 PM
--------------------------------------------------------------

function get_num_civics(pPlayer)
	local pPrinc = pSarmiento:GetCulture()
	local count = 0
	for Princ in GameInfo.Civics() do
		local iPrinc = Princ.Index
		if pPrinc:HasCivic(iPrinc) then
			count = count + 1
		end
	end
	return count
end

function get_sarmiento_bonus(pPlayer)
	local bonus = 0
	bonus = bonus +  math.floor(pPlayer:GetCuleture():GetCultureYield() * 0.1)
	bonus = bonus +  math.floor(pPlayer:GetTechs():GetScienceYield() * 0.1)
	bonus = bonus +  pPlayer:GetStats():GetNumTechsResearched()
	bonus = bonus +  get_num_civics(pPlayer)
	return bonus
end

function sarmiento_combat_update(iPlayer)
	local max_bonus = 0
	for pPlayer in Players do
		if pPlayer:GetDiplomacy():IsAtWarWith(iPlayer) then
			local bonus = get_sarmiento_bonus(pPlayer)
			if bonus > max_bonus then
				max_bonus = bonus
			end
		end
	end
	local sarmiento_bonus = get_sarmiento_bonus(iPlayer) - max_bonus

	for unit in Players[iPlayer]:Units() do
		local baseStrength = unit:GetBaseCombatSrength()
		unit:SetBaseCombatStrength(baseStrength + sarmiento_bonus)
	end
end

function sarmiento_combat_strength_turn()
	for pPlayer in PlayerConfigurations do
		if pPlayer:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
			sarmiento_combat_update(pPlayer:GetLeaderTypeID())
		end
	end
end

function sarmiento_caombat_strength_war(iP1, iP2)
	if PlayerConfigurations[iP1]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
		sarmiento_combat_update(iP1)
	end
	if PlayerConfigurations[iP2]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
		sarmiento_combat_update(iP2)
	end
end

function MRKSarmientoCombatInit()
	Events.TurnBegin.Add(sarmiento_combat_strength_turn)
	GameEvents.DiploSurpriseDeclareWar.Add(sarmiento_caombat_strength_war)
	Events.DiplomacyDeclareWar.Add(sarmiento_caombat_strength_war)
	Events.DiplomacyMakePeace.Add(sarmiento_caombat_strength_war)
end

Events.LoadScreenClose.Add(MRKSarmientoCombatInit)