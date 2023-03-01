-- Biblio
-- Author: mirko
-- DateCreated: 2/23/2023 5:33:34 PM
--------------------------------------------------------------
local iBiblio = GameInfo.Buildings["BUILDING_MRK_BIB_POPULAR"].Index
math.randomseed(os.clock())

function get_random_tech_boost(pSarmiento)
	local pTech = pSarmiento:GetTechs()
	for Tech in GameInfo.Technologies() do
		local iTech = Tech.Index
		print(iTech)
		print(Tech.TechnologyType)
		local bStatus = pTech:HasBoostBeenTriggered(iTech)
		local hasTech = pTech:HasTech(iTech)
		print(bStatus)
		print(hasTech)
		if not bStatus and not hasTech then
			pTech:TriggerBoost(iTech)
			print("Boosted")
			break;
		end
	end
end

function get_random_principle_boost(pSarmiento)
	local pPrinc = pSarmiento:GetCulture()
	for Princ in GameInfo.Civics() do
		local iPrinc = Princ.Index
		print(iPrinc)
		print(Princ.CivicType)
		local bStatus = pPrinc:HasBoostBeenTriggered(iPrinc)
		local hasPrinc = pPrinc:HasCivic(iPrinc)
		print(bStatus)
		print(hasPrinc)
		if not bStatus and not hasPrinc then
			pPrinc:TriggerBoost(iPrinc)
			print("Boosted")
			break;
		end
	end
end

function add_citizen(pCity)
	pCity:ChangePopulation(1)
end

function add_science_per_trade(PlayerID, OriginPlayerID, OriginCityID, TargetPlayerID, TargetCityID)

	if PlayerConfigurations[TargetPlayerID]:GetLeaderTypeName() ~= "LEADER_MRK_SARMIENTO" then
		return
	end

	print("Llego a sarmiento")

	if PlayerConfigurations[OriginPlayerID]:GetLeaderTypeName() == "LEADER_MRK_SARMIENTO" then
		return
	end

	print("Era Internacional")

	local pSarmiento = Players[TargetPlayerID]
	local pCity = pSarmiento:GetCities():FindID(TargetCityID)

	if pCity == nil then
		print ("pCity nil")
		return
	end

	if not pCity:GetBuildings():HasBuilding(iBiblio) then
		return
	end

	print("Tenia biblio")

	local rand = math.random(5)
	if rand == 1 then
		get_random_tech_boost(pSarmiento)
	elseif rand == 2 
		get_random_principle_boost(pSarmiento)
	else
		add_citizen(pCity)
	end
end

function MRKBiblioInit()
	Events.TradeRouteActivityChanged.Add(add_science_per_trade)
end

Events.LoadScreenClose.Add(MRKBiblioInit)