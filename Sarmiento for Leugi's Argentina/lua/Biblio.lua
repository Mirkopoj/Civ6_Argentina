-- Biblio
-- Author: mirko
-- DateCreated: 2/23/2023 5:33:34 PM
--------------------------------------------------------------
local iBiblio = GameInfo.Buildings["BUILDING_MRK_BIB_POPULAR"].Index

function add_science_per_trade(PlayerID, OriginPlayerID, OriginCityID, TargetPlayerID, TargetCityID)

	if PlayerConfigurations[TargetPlayerID]:GetLeaderTypeName() ~= "LEADER_MRK_SARMIENTO" then
		return
	end

	print("Llego a sarmiento")

	local pSarmiento = Players[TargetPlayerID]
	local pCity = pSarmiento:GetCities():FindID(TargetCityID)

	if pCity == nil then
		print ("pCity nil")
	end

	if not pCity:GetBuildings():HasBuilding(iBiblio) then
		return
	end

	print("Tenia biblio")

	local pTech = pSarmiento:GetTechs()
	for Tech in GameInfo.Technologies() do
		print(Tech.Index)
		print(Tech.TechnologyType)
		local bStatus = pTech:HasBoostBeenTriggered(iTech)
		local tLeft = pTech:GetTurnsLeft(iTech)
		print(bStatus)
		print(tLeft)
		if not bStatus then
			pTech:TriggerBoost(iTech)
			print("Boosted")
			break;
		end
	end
	
end

function MKRBiblioInit()
	Events.TradeRouteActivityChanged.Add(add_science_per_trade)
end

Events.LoadScreenClose.Add(MKRBiblioInit)
