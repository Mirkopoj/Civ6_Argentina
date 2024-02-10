-- SarmientoCombat-- Author: mirko
-- DateCreated: 3/1/2023 3:20:32 PM
--------------------------------------------------------------

function get_num_civics(pPrinc)
	local count = 0
	for Princ in GameInfo.Civics() do
		local iPrinc = Princ.Index
		if pPrinc:HasCivic(iPrinc) then
			count = count + 1
		end
	end
	return count
end

function get_num_techs(pTech)
	local count = 0
	for Tech in GameInfo.Technologies() do
		local iTech = Tech.Index
		if pTech:HasTech(iTech) then
			count = count + 1
		end
	end
	return count
end

function get_sarmiento_bonus(pPlayer)
	local bonus = 0
	bonus = bonus + math.floor(pPlayer:GetCulture():GetCultureYield() * 0.1)
	bonus = bonus + math.floor(pPlayer:GetTechs():GetScienceYield() * 0.1)
	bonus = bonus + get_num_techs(pPlayer:GetTechs())
	bonus = bonus + get_num_civics(pPlayer:GetCulture())
	return bonus
end

function clear_abilities(pAbility)
	local buf
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8", -buf)

	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7", -buf)
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8")
	pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8", -buf)
end

function print_ability(pAbility, ability)
	print(ability, pAbility:GetAbilityCount(ability))
end

function print_abilities(pAbility)
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_1")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_2")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_3")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_4")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_5")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_6")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_7")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_PRO_8")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_1")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_2")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_3")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_4")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_5")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_6")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_7")
	print_ability(pAbility, "ABILITY_MRK_SARMIENTO_UNITS_CON_8")
end

function give_bonus(pAbility, bonus)
	if bonus > 0 then
		if bonus > 8 then
			bonus = 8
		end
		local ability = "ABILITY_MRK_SARMIENTO_UNITS_PRO_" .. tostring(bonus)
		if pAbility:GetAbilityCount(ability) == 0 then
			pAbility:ChangeAbilityCount(ability, 1)
		end
	elseif bonus < 0 then
		if bonus < -8 then
			bonus = -8
		end
		local ability = "ABILITY_MRK_SARMIENTO_UNITS_CON_" .. tostring(-bonus)
		if pAbility:GetAbilityCount(ability) == 0 then
			pAbility:ChangeAbilityCount(ability, 1)
		end
	end
end

function sarmiento_combat_update(iSarmiento)
	local max_bonus = 0
	local is_major = true
	local iPlayer = 0
	local at_war = false
	repeat
		local pPlayer = Players[iPlayer]
		if pPlayer:GetDiplomacy():IsAtWarWith(iSarmiento) then
			print(iPlayer)
			print(PlayerConfigurations[iPlayer]:GetLeaderTypeName())
			print("At war with sarmiento")
			at_war = true
			local bonus = get_sarmiento_bonus(pPlayer)
			if bonus > max_bonus then
				max_bonus = bonus
			end
		end
		iPlayer = iPlayer + 1
		if PlayerConfigurations[iPlayer]:GetCivilizationLevelTypeName() ~= "CIVILIZATION_LEVEL_FULL_CIV" then
			is_major = false
		end
	until not is_major

	local pSarmiento = Players[iSarmiento]
	for _, unit in pSarmiento:GetUnits():Members() do
		local baseStrength = unit:GetCombat()
		if baseStrength > 0 then
			clear_abilities(unit:GetAbility())
		end
	end

	if at_war then
		print("Sarmiento")
		local sarmiento_bonus = get_sarmiento_bonus(pSarmiento) - max_bonus
		print("Bonus: ", sarmiento_bonus)
		for _, unit in pSarmiento:GetUnits():Members() do
			local baseStrength = unit:GetCombat()
			if baseStrength > 0 then
				give_bonus(unit:GetAbility(), sarmiento_bonus)
				print(unit:GetName())
				print_abilities(unit:GetAbility())
			end
		end
	end
end

function sarmiento_combat_strength_turn()
	local is_major = true
	local iPlayer = 0
	repeat
		if PlayerConfigurations[iPlayer]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
			sarmiento_combat_update(iPlayer)
		end
		iPlayer = iPlayer + 1
		if PlayerConfigurations[iPlayer]:GetCivilizationLevelTypeName() ~= "CIVILIZATION_LEVEL_FULL_CIV" then
			is_major = false
		end
	until not is_major
end

function sarmiento_combat_strength_war(iP1, iP2)
	if PlayerConfigurations[iP1]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
		sarmiento_combat_update(iP1)
	end
	if PlayerConfigurations[iP2]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
		sarmiento_combat_update(iP2)
	end
end

function MRKSarmientoCombatInit()
	Events.TurnBegin.Add(sarmiento_combat_strength_turn)
	GameEvents.DiploSurpriseDeclareWar.Add(sarmiento_combat_strength_war)
	Events.DiplomacyDeclareWar.Add(sarmiento_combat_strength_war)
	Events.DiplomacyMakePeace.Add(sarmiento_combat_strength_war)
end

Events.LoadScreenClose.Add(MRKSarmientoCombatInit)
