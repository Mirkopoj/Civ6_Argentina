-- Biblio
-- Author: mirko
-- DateCreated: 2/23/2023 5:33:34 PM
--------------------------------------------------------------

function add_science_per_trade(PlayerID, OriginPlayerID, OriginCityID, TargetPlayerID, TargetCityID)

	if (PlayerConfigurations[TargertPlayerID]:GetLeaderTypeName() ~= "LEADER_MRK_SARMIENTO") then
		return
	end

	local pCity = Cities[TargetCityID]

	if (not pCity:has_building(GameInfoTypes.BUILDING_MRK_BIB_POPULAR)) then
		return
	end

	local pBiblioaux = GameInfoTypes.BUILDING_MRK_BIB_POPULAR_AUX

	local nBiblioaux = pCity:GetNumRealBuilding(pBiblioaux)

	pCity:SetNumRealBuilding(pBiblioaux, nBiblioaux+1)

end

function MKRBiblioInit()
	Events.TradeRouteActivityChanged.Add(add_science_per_trade)
end

Events.LoadScreenClose.Add(MKRBiblioInit)