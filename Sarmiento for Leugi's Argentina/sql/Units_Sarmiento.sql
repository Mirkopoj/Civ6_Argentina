-- Units_Sarmiento
-- Author: mirko
-- DateCreated: 2/21/2023 12:40:04 PM
--------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,													Kind)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS',							'KIND_ABILITY');

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
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_NAVAL_RAIDER'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_NAVAL_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_NAVAL_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_NAVAL_CARRIER'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'CLASS_SIEGE');

INSERT OR REPLACE INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS',	'MRK_SARMIENTO_STRENGTH_VS_BARBS'),
		('ABILITY_MRK_SARMIENTO_UNITS',	'MRK_SARMIENTO_STRENGTH_PER_TECH');

INSERT OR REPLACE INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId,	SubjectStackLimit)
VALUES	('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT',	null,						1),
		('MRK_SARMIENTO_STRENGTH_PER_TECH',		'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH',		null,						null);

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES	('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'Amount',					5),
		('MRK_SARMIENTO_STRENGTH_PER_TECH',		'TechCivicsPerYield',		-1);
		