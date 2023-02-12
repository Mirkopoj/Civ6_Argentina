--==========================================================================================================================
-- TRAITS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_LEU_SARMIENTO',	'TRAIT_LEADER_LEU_SARMIENTO');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('TRAIT_LEADER_LEU_SARMIENTO',		'KIND_TRAIT');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,						Name,										Description)
VALUES	('TRAIT_LEADER_LEU_SARMIENTO',	'LOC_TRAIT_LEADER_LEU_SARMIENTO_NAME',		'LOC_TRAIT_LEADER_LEU_SARMIENTO_DESCRIPTION');

-------------------------------------		
-- TraitModifiers		
-------------------------------------			
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_LEU_SARMIENTO',	'LEU_SARMIENTO_CIENCE_PER_KILL'),
		('TRAIT_LEADER_LEU_SARMIENTO',	'LEU_SARMIENTO_STRENGTH_VS_BARBS'),
		('TRAIT_LEADER_LEU_SARMIENTO',	'LEU_SARMIENTO_STRENGTH_PER_TECH'),
		('TRAIT_LEADER_LEU_SARMIENTO',	'LEU_SARMIENTO_STRENGTH_PER_CIENCE');
-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,									ModifierType,											RunOnce,	Permanent,		OwnerRequirementSetId,	SubjectRequirementSetId)
VALUES	('LEU_SARMIENTO_CIENCE_PER_KILL',				'MODIFIER_PLAYER_UNIT_ADJUST_POST_COMBAT_YIELD',		0,			1,				null,					null),
		('LEU_SARMIENTO_STRENGTH_VS_BARBS',				'MODIFIER_PLAYER_UNIT_ADJUST_BARBARIAN_COMBAT',			0,			0,				null,					null),
		('LEU_SARMIENTO_STRENGTH_PER_TECH',				'MODIFIER_PLAYER_UNIT_ADJUST_COMBAT_STRENGTH',			0,			1,				null,					'REQUIREMENTS_OPPONENT_IS_MAYOR_CIV'),
		('LEU_SARMIENTO_STRENGTH_PER_CIENCE',			'MODIFIER_PLAYER_UNIT_ADJUST_COMBAT_STRENGTH',			0,			0,				null,					'UNIT_IS_CAVALRY_REQUIREMENTS');
-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,						Value)
VALUES	('LEU_SARMIENTO_STRENGTH_PER_TECH',			'TechCivicsPerYield',		1),
		--('LEU_SARMIENTO_STRENGTH_PER_CIENCE',		'ModifierId',				'LEU_SARMIENTO_MOUNTED_MUSICIANS'),
		('LEU_SARMIENTO_CIENCE_PER_KILL',			'YieldType',				'YIELD_SCIENCE'),
		('LEU_SARMIENTO_CIENCE_PER_KILL',			'PercentDefeatedStrength',	100),
		('LEU_SARMIENTO_STRENGTH_VS_BARBS',			'Amount',					5);

	
