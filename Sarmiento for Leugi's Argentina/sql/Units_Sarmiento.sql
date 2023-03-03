-- Units_Sarmiento
-- Author: mirko
-- DateCreated: 2/21/2023 12:40:04 PM
--------------------------------------------------------------
INSERT OR REPLACE INTO Types
		(Type,									Kind)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'KIND_ABILITY'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'KIND_ABILITY'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'KIND_ABILITY');

INSERT OR REPLACE INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,											Inactive)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_NAME',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_DESCRIPTION',	1),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_NAME',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_DESCRIPTION',	1),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_NAME',	'LOC_ABILITY_MRK_SARMIENTO_UNITS_BARBS_DESCRIPTION',	1);	

INSERT OR REPLACE INTO TypeTags	
		(Type,									Tag)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_RANGED_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_RECON'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_ANTI_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_NAVAL_RAIDER'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_NAVAL_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_NAVAL_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_NAVAL_CARRIER'),
		('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'CLASS_SIEGE'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_RANGED_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_RECON'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_ANTI_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_NAVAL_RAIDER'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_NAVAL_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_NAVAL_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_NAVAL_CARRIER'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'CLASS_SIEGE'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_LIGHT_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_RANGED_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_HEAVY_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_RECON'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_ANTI_CAVALRY'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_NAVAL_RAIDER'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_NAVAL_MELEE'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_NAVAL_RANGED'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_NAVAL_CARRIER'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'CLASS_SIEGE');

INSERT OR REPLACE INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_MRK_SARMIENTO_UNITS_BARBS',	'MRK_SARMIENTO_STRENGTH_VS_BARBS'),
		('ABILITY_MRK_SARMIENTO_UNITS_PRO',		'MRK_SARMIENTO_STRENGTH_CIV_PRO'),
		('ABILITY_MRK_SARMIENTO_UNITS_CON',		'MRK_SARMIENTO_STRENGTH_CIV_CON');

INSERT OR REPLACE INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId,	SubjectStackLimit)
VALUES	('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'MODIFIER_PLAYER_UNITS_ADJUST_BARBARIAN_COMBAT',	null,						1),
		('MRK_SARMIENTO_STRENGTH_CIV_PRO',		'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH',		null,						null),
		('MRK_SARMIENTO_STRENGTH_CIV_CON',		'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH',		null,						null);

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,							Name,		Value)
VALUES	('MRK_SARMIENTO_STRENGTH_VS_BARBS',		'Amount',	5),
		('MRK_SARMIENTO_STRENGTH_CIV_PRO',		'Amount',	1),
		('MRK_SARMIENTO_STRENGTH_CIV_CON',		'Amount',	-1);
		
INSERT OR REPLACE INTO ModifierStrings
		(ModifierId,							Context,		Text)
VALUES	('MRK_SARMIENTO_STRENGTH_CIV_PRO',		'Preview',		'LOC_MRK_SARMIENTO_STRENGTH_PER_CIENCE'),
		('MRK_SARMIENTO_STRENGTH_CIV_CON',		'Preview',		'LOC_MRK_SARMIENTO_STRENGTH_PER_CIENCE');