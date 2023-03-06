-- SarmientoCombat
-- Author: mirko
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
	bonus = bonus +  math.floor(pPlayer:GetCulture():GetCultureYield() * 0.1)
	bonus = bonus +  math.floor(pPlayer:GetTechs():GetScienceYield() * 0.1)
	bonus = bonus +  get_num_techs(pPlayer:GetTechs())
	bonus = bonus +  get_num_civics(pPlayer:GetCulture())
	print("\tAcumula: ", bonus)
	return bonus
end

function give_count(pAbility)
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_1") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_2") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_3") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_4") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_5") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_6") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_7") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO_8") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8")
	end

	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_1") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_2") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_3") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_4") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_5") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_6") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_7") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON_8") then
		clear_abilities(pAbility)
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8")
	end
end

function clear_abilities(pAbility)
	local buf
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8", -buf)
	end

	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7", -buf)
	end
	buf = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8")
	if buf  ~= 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8", -buf)
	end
end

function give_bonus(pAbility, bonus)
	give_count(pAbility)

	if bonus > 0 then
		if bonus > 8 then
			bonus = 8
		end
		local ability = "ABILITY_MRK_SARMIENTO_UNITS_PRO_"..tostring(bonus)
		print(ability)
		if pAbility:GetAbilityCount(ability) == 0 then
			clear_abilities(pAbility)
			print("\t\tAbilities before:")
			print("\t\tPro 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1"))
			print("\t\tPro 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2"))
			print("\t\tPro 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3"))
			print("\t\tPro 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4"))
			print("\t\tPro 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5"))
			print("\t\tPro 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6"))
			print("\t\tPro 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7"))
			print("\t\tPro 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8"))
			print("\t\tCon 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1"))
			print("\t\tCon 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2"))
			print("\t\tCon 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3"))
			print("\t\tCon 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4"))
			print("\t\tCon 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5"))
			print("\t\tCon 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6"))
			print("\t\tCon 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7"))
			print("\t\tCon 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8"))
			pAbility:ChangeAbilityCount(ability, 1)
		end
	elseif bonus < 0 then
		if bonus < -8 then
			bonus = -8
		end
		local ability = "ABILITY_MRK_SARMIENTO_UNITS_CON_"..tostring(-bonus)
		print(ability)
		if pAbility:GetAbilityCount(ability) == 0 then
			clear_abilities(pAbility)
			print("\t\tAbilities before:")
			print("\t\tPro 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1"))
			print("\t\tPro 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2"))
			print("\t\tPro 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3"))
			print("\t\tPro 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4"))
			print("\t\tPro 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5"))
			print("\t\tPro 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6"))
			print("\t\tPro 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7"))
			print("\t\tPro 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8"))
			print("\t\tCon 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1"))
			print("\t\tCon 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2"))
			print("\t\tCon 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3"))
			print("\t\tCon 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4"))
			print("\t\tCon 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5"))
			print("\t\tCon 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6"))
			print("\t\tCon 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7"))
			print("\t\tCon 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8"))
			pAbility:ChangeAbilityCount(ability, 1)
		end
	else
		clear_abilities(pAbility)
	end
	print("\t\tAbilities after:")
	print("\t\tPro 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_1"))
	print("\t\tPro 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_2"))
	print("\t\tPro 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_3"))
	print("\t\tPro 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_4"))
	print("\t\tPro 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_5"))
	print("\t\tPro 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_6"))
	print("\t\tPro 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_7"))
	print("\t\tPro 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO_8"))
	print("\t\tCon 1:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_1"))
	print("\t\tCon 2:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_2"))
	print("\t\tCon 3:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_3"))
	print("\t\tCon 4:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_4"))
	print("\t\tCon 5:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_5"))
	print("\t\tCon 6:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_6"))
	print("\t\tCon 7:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_7"))
	print("\t\tCon 8:", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON_8"))
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

	if at_war then
		print("Sarmiento")
		local pSarmiento = Players[iSarmiento]
		local sarmiento_bonus = get_sarmiento_bonus(pSarmiento) - max_bonus
		print("Bonus: ", sarmiento_bonus)
		for _, unit in pSarmiento:GetUnits():Members() do
			print(unit:GetName())
			local baseStrength = unit:GetCombat()
			if baseStrength > 0 then
				give_bonus(unit:GetAbility(), sarmiento_bonus)
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