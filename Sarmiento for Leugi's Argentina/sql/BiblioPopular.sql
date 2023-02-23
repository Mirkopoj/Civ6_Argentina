-- Buildig_Sarmiento
-- Author: TheOtherOne
-- DateCreated: 2/11/2023 2:49:56 AM
--------------------------------------------------------------

INSERT INTO Types
		(Type,							Kind)
VALUES	('BUILDING_MRK_BIB_POPULAR',	'KIND_BUILDING');

INSERT INTO Buildings
			(BuildingType,				Name,									Description,								TraitType,						PrereqTech, PrereqDistrict,	PurchaseYield, Cost, AdvisorType, Maintenance, CitizenSlots)
SELECT		'BUILDING_MRK_BIB_POPULAR',	'LOC_BUILDING_MRK_BIB_POPULAR_NAME',	'LOC_BUILDING_MRK_BIB_POPULAR_DESCRIPTION',	'TRAIT_BIBLIO_MRK_SARMIENTO',	PrereqTech, PrereqDistrict,	PurchaseYield, Cost, AdvisorType, Maintenance, CitizenSlots
FROM Buildings WHERE BuildingType = 'BUILDING_LIBRARY';

INSERT INTO BuildingReplaces
		(CivUniqueBuildingType,			ReplacesBuildingType)
VALUES	('BUILDING_MRK_BIB_POPULAR',	'BUILDING_LIBRARY');

INSERT INTO Building_GreatWorks
			(BuildingType,					GreatWorkSlotType,		NumSlots)
VALUES		('BUILDING_MRK_BIB_POPULAR',	'GREATWORKSLOT_WRITING',	2),
			('BUILDING_MRK_BIB_POPULAR',	'GREATWORKSLOT_PALACE',		1);

INSERT INTO Building_GreatPersonPoints
			(BuildingType,				GreatPersonClassType,			PointsPerTurn)
SELECT		'BUILDING_MRK_BIB_POPULAR',	GreatPersonClassType,			PointsPerTurn
FROM Building_GreatPersonPoints WHERE BuildingType = 'BUILDING_LIBRARY';

INSERT INTO Building_GreatPersonPoints
			(BuildingType,				GreatPersonClassType,			PointsPerTurn)
SELECT		'BUILDING_MRK_BIB_POPULAR',	'GREAT_PERSON_CLASS_WRITER',	PointsPerTurn
FROM Building_GreatPersonPoints WHERE BuildingType = 'BUILDING_LIBRARY';

INSERT INTO BuildingModifiers
			(BuildingType,					ModifierId)
VALUES		('BUILDING_MRK_BIB_POPULAR',	'MRK_SCIENCE_PER_POP');

INSERT INTO Modifiers
			(ModifierId,			ModifierType,						RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES		('MRK_SCIENCE_PER_POP',	'MODIFIER_BUILDING_YIELD_CHANGE',	0,			0,			null);

INSERT INTO ModifierArguments
			(ModifierId,			Name,			Value)
VALUES		('MRK_SCIENCE_PER_POP',	'BuildingType',	'BUILDING_MRK_BIB_POPULAR'),
			('MRK_SCIENCE_PER_POP',	'YieldType',	'YIELD_SCIENCE'),
			('MRK_SCIENCE_PER_POP',	'Amount',		0.5);