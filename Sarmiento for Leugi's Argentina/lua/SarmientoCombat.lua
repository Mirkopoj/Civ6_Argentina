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


function give_bonus(pAbility, bonus)
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_PRO") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO")
	end
	if not pAbility:HasAbility("ABILITY_MRK_SARMIENTO_UNITS_CON") then
		pAbility:AddAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON")
	end

	local pro = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO")
	local con = pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON")
	local c_pro = bonus-pro
	local c_con = -bonus-con
	if pro == 0 or con == 0 then
		return
	end

	if bonus > 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO", c_pro)
		if con ~= 0 then
			pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON", -con)
		end
	elseif bonus < 0 then
		pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON", c_con)
		if por ~= 0 then
			pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO", -pro)
		end
	else
		if por ~= 0 then
			pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO", -pro)
		end
		if con ~= 0 then
			pAbility:ChangeAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON", -con)
		end
	end

	print("\tPro: ", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_PRO"))
	print("\tCon: ", pAbility:GetAbilityCount("ABILITY_MRK_SARMIENTO_UNITS_CON"))
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