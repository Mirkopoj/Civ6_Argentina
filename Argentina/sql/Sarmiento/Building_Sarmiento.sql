-- Buildig_Sarmiento
-- Author: TheOtherOne
-- DateCreated: 2/11/2023 2:49:56 AM
--------------------------------------------------------------

INSERT INTO Types
		(Type,											Kind)
VALUES	('BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR',	'KIND_BUILDING');

INSERT INTO Buildings
			(BuildingType,									Name,													Description,													PrereqTech,	PurchaseYield,	Cost,	AdvisorType,	Maintenance, CitizenSlots)
SELECT		'BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR',	'LOC_BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR_NAME',	'LOC_BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR_DESCRIPTION',	PrereqTech,	PurchaseYield,	Cost,	AdvisorType,	Maintenance, CitizenSlots
FROM Buildings WHERE BuildingType = 'BUILDING_LIBRARY';

INSERT INTO Building_YieldCHanges
		(BuildingType,									YieldType,			YieldChange)
VALUES	('BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR',	'YIELD_SCIENCE',	0);

INSERT INTO Building_GreatPersonPoints
			(BuildingType,									GreatPersonClasstype,			PointsPerTurn)
SELECT		'BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR',	GreatPersonClasstype,			PointsPerTurn,
			'BUILDING_LEU_SARMIENTO_BIBLIOTECA_POPULAR',	'GREAT_PERSON_CLASS_WRITER',	PointsPerTurn;
FROM Building_GreatPersonPoints WHERE BuildingType = 'BUILDING_LIBRARY';