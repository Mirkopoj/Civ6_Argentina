--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_MRK_SARMIENTO','TRAIT_LEADER_MRK_SARMIENTO'),
		('LEADER_MRK_SARMIENTO','TRAIT_BIBLIO_MRK_SARMIENTO');

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('TRAIT_LEADER_MRK_SARMIENTO',	'KIND_TRAIT'),
		('TRAIT_BIBLIO_MRK_SARMIENTO',	'KIND_TRAIT');
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,										Description)
VALUES	('TRAIT_LEADER_MRK_SARMIENTO',	'LOC_TRAIT_LEADER_MRK_SARMIENTO_NAME',		'LOC_TRAIT_LEADER_MRK_SARMIENTO_DESCRIPTION'),
		('TRAIT_BIBLIO_MRK_SARMIENTO',	'LOC_TRAIT_LEADER_MRK_SARMIENTO_NAME',		'LOC_TRAIT_LEADER_MRK_SARMIENTO_DESCRIPTION');

-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_MRK_SARMIENTO',	'MRK_SARMIENTO_UNITS'),
		('TRAIT_LEADER_MRK_SARMIENTO',	'MRK_SARMIENTO_CIENCE_PER_KILL');
		--('TRAIT_LEADER_MRK_SARMIENTO',	'LEU_SARMIENTO_STRENGTH_PER_CIENCE');

-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,						ModifierType,											RunOnce,	Permanent,	OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('MRK_SARMIENTO_UNITS',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',					0,			1,			null,					null),
		('MRK_SARMIENTO_CIENCE_PER_KILL',	'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD',		0,			0,			null,					null);

		--('LEU_SARMIENTO_STRENGTH_PER_CIENCE',			'MODIFIER_PLAYER_UNIT_ADJUST_COMBAT_STRENGTH',			0,			0,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,						Value)
VALUES	('MRK_SARMIENTO_UNITS',				'AbilityType',				'ABILITY_MRK_SARMIENTO_UNITS'),
		('MRK_SARMIENTO_CIENCE_PER_KILL',	'YieldType',				'YIELD_SCIENCE'),
		('MRK_SARMIENTO_CIENCE_PER_KILL',	'PercentDefeatedStrength',	100);

		--('LEU_SARMIENTO_STRENGTH_PER_CIENCE',			'ModifierId',			'LEU_SARMIENTO_MOUNTED_MUSICIANS'),

--INSERT INTO ModifierStrings
--		(ModifierId,						Context,	Text)
--VALUES	('MRK_SARMIENTO_STRENGTH_VS_BARBS',	'Preview',	'LOC_MRK_SARMIENTO_STRENGTH_VS_BARBS');

