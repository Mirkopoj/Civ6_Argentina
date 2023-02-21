-- Units_Sarmiento
-- Author: mirko
-- DateCreated: 2/21/2023 12:40:04 PM
--------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,							Kind)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS',	'KIND_ABILITY');

INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('MRK_SARMIETNO_UNITS_REQUIREMENT',	'REQUIREMENTSET_TEST_ALL');

INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('MRK_SARMIETNO_UNITS_REQUIREMENT',	'MRK_REQUIRE_SARMIENTO_UNIT');

INSERT OR REPLACE INTO Requirements
		(RequirementId,						RequirementType,					Inverse)
VALUES	('MRK_REQUIRE_SARMIENTO_UNIT',		'REQUIREMENT_UNIT_HAS_ABILITY',		0);

INSERT OR REPLACE INTO RequirementArguments
		(RequirementId,					Name,				Value)
VALUES	('MRK_REQUIRE_SARMIENTO_UNIT',	'UnitAbilityType',	'ABILITY_MRK_SARMIENTO_UNITS');

INSERT OR REPLACE INTO UnitAbilities
		(UnitAbilityType,				Name,									Description,									Inactive)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_NAME',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_DESCRIPTION',	1);	

INSERT OR REPLACE INTO TypeTags
		(Type,							Tag)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_RANGED_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_RECON'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_ANTI_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_NAVAL'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_SIEGE');

INSERT OR REPLACE INTO GameModifiers
		(ModifierId)
VALUES	('MRK_SARMIENTO_CIENCE_PER_KILL'),
		('MRK_SARMIENTO_STRENGTH_VS_BARBS');

INSERT OR REPLACE INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('MRK_SARMIENTO_CIENCE_PER_KILL',		'MODIFIER_PLAYER_UNIT_ADJUST_POST_COMBAT_YIELD',	'MRK_SARMIETNO_UNITS_REQUIREMENT'),
		('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'MODIFIER_PLAYER_UNIT_ADJUST_BARBARIAN_COMBAT',		'MRK_SARMIETNO_UNITS_REQUIREMENT');

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES	('MRK_SARMIENTO_CIENCE_PER_KILL',		'YieldType',				'YIELD_SCIENCE'),
		('MRK_SARMIENTO_CIENCE_PER_KILL',		'PercentDefeatedStrength',	100),
		('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'Amount',					5);
		