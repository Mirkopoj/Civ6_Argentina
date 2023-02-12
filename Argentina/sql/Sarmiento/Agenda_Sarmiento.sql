--==========================================================================================================================
-- AGENDAS
--==========================================================================================================================
-- HistoricalAgendas
---------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,			AgendaType)
VALUES	('LEADER_LEU_SARMIENTO',	'AGENDA_LEU_SARMIENTO');	

-------------------------------------
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('TRAIT_AGENDA_LEU_SARMIENTO',	'KIND_TRAIT');			
-------------------------------------			
-- Agendas			
-------------------------------------				
INSERT INTO Agendas				
		(AgendaType,				Name,							Description)
VALUES	('AGENDA_LEU_SARMIENTO',		'LOC_AGENDA_LEU_SARMIENTO_NAME',	'LOC_AGENDA_LEU_SARMIENTO_DESCRIPTION');	
-------------------------------------			
-- Traits			
-------------------------------------				
INSERT INTO Traits				
		(TraitType,							Name,										Description)
VALUES	('TRAIT_AGENDA_LEU_SARMIENTO',		'LOC_AGENDA_LEU_SARMIENTO_NAME',	'LOC_AGENDA_LEU_SARMIENTO_DESCRIPTION');	
-------------------------------------			
-- AgendaTraits			
-------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,			TraitType)
VALUES	('AGENDA_LEU_SARMIENTO',	'TRAIT_AGENDA_LEU_SARMIENTO');	


--==========================================================================================================================
--==========================================================================================================================
-- Horse Lover
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,								ModifierType,										OwnerRequirementSetId,		SubjectRequirementSetId)
VALUES	('LEU_SARMIENTO_HORSE_LOVER',				'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',		null,						'LEUGENDA_HAS_HIGH_MOUNTED_UNITS');

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('LEU_SARMIENTO_HORSE_LOVER',			'InitialValue',					7,														null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_HORSE_LOVER',			'StatementKey',					'LOC_DIPLO_KUDO_EXIT_LEADER_LEU_SARMIENTO_HORSES',		null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_HORSE_LOVER',			'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_SARMIENTO_HORSES',				null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_HORSE_LOVER',			'HiddenAgenda',					0,														null,				'ARGTYPE_IDENTITY');

INSERT INTO ModifierStrings
		(ModifierId,							Context,							Text)
VALUES	('LEU_SARMIENTO_HORSE_LOVER',			'Sample',							'LOC_DIPLO_KUDO_LEADER_LEU_SARMIENTO_HORSES');

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('LEUGENDA_HAS_HIGH_MOUNTED_UNITS',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('LEUGENDA_HAS_HIGH_MOUNTED_UNITS',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('LEUGENDA_HAS_HIGH_MOUNTED_UNITS',		'REQUIRES_MET_10_TURNS_AGO'),
		('LEUGENDA_HAS_HIGH_MOUNTED_UNITS',		'LEU_ARG_REQUIRES_HIGH_MOUNTED'),

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Progressive)
VALUES	('LEU_ARG_REQUIRES_HIGH_MOUNTED',	'REQUIREMENT_COLLECTION_COUNT_ATLEAST',	1);

INSERT INTO RequirementArguments
		(RequirementId,						Name,							Value)
VALUES	('LEU_ARG_REQUIRES_HIGH_MOUNTED',	'CollectionType',				'COLLECTION_PLAYER_UNITS'),
		('LEU_ARG_REQUIRES_HIGH_MOUNTED',	'Count',						5),
		('LEU_ARG_REQUIRES_HIGH_MOUNTED',	'RequirementSetId',				'UNIT_IS_CAVALRY_REQUIREMENTS');
--==========================================================================================================================
--==========================================================================================================================

--==========================================================================================================================
--==========================================================================================================================
-- Expansion_Hater
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('LEU_SARMIENTO_EXPANSION_HATER', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 'LEUGENDA_HAS_MANY_CAPTURED_CITIES');

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value,													Extra,				Type)
VALUES	('LEU_SARMIENTO_EXPANSION_HATER',		'InitialValue',					-10,														null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_EXPANSION_HATER',		'StatementKey',					'LOC_DIPLO_WARNING_EXIT_LEADER_LEU_SARMIENTO_CITIES',		null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_EXPANSION_HATER',		'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_LEU_SARMIENTO_CITIES',				null,				'ARGTYPE_IDENTITY'),
		('LEU_SARMIENTO_EXPANSION_HATER',		'HiddenAgenda',					0,														null,				'ARGTYPE_IDENTITY');

INSERT INTO ModifierStrings
		(ModifierId,							Context,							Text)
VALUES	('LEU_SARMIENTO_EXPANSION_HATER',			'Sample',							'LOC_DIPLO_WARNING_LEADER_LEU_SARMIENTO_CITIES');

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('LEUGENDA_HAS_MANY_CAPTURED_CITIES',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('LEUGENDA_HAS_MANY_CAPTURED_CITIES',		'REQUIRES_MAJOR_CIV_OPPONENT'),
		('LEUGENDA_HAS_MANY_CAPTURED_CITIES',		'REQUIRES_MET_30_TURNS_AGO'),
		('LEUGENDA_HAS_MANY_CAPTURED_CITIES',		'LEU_ARG_REQUIRES_MANY_CAPTURES'),

INSERT INTO Requirements
		(RequirementId,						RequirementType,							Progressive)
VALUES	('LEU_ARG_REQUIRES_MANY_CAPTURES',	'REQUIREMENT_COLLECTION_COUNT_ATLEAST',	1);

INSERT INTO RequirementArguments
		(RequirementId,						Name,							Value)
VALUES	('LEU_ARG_REQUIRES_MANY_CAPTURES',	'CollectionType',				'COLLECTION_PLAYER_CAPTURED_CITIES'),
		('LEU_ARG_REQUIRES_MANY_CAPTURES',	'Count',						3);
--==========================================================================================================================
--==========================================================================================================================

-------------------------------------		
-- TraitModifiers
-------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,						ModifierId)
VALUES	('TRAIT_AGENDA_LEU_SARMIENTO',	'LEU_SARMIENTO_HORSE_LOVER'),
		('TRAIT_AGENDA_LEU_SARMIENTO',	'LEU_SARMIENTO_EXPANSION_HATER');

-------------------------------------			
-- ExclusiveAgendas			
-------------------------------------				
INSERT INTO ExclusiveAgendas				
		(AgendaOne,					AgendaTwo)
VALUES	('AGENDA_LEU_SARMIENTO',		'AGENDA_MONEY_GRUBBER');
		
--==========================================================================================================================
-- AI
--==========================================================================================================================
-- AiListTypes
-------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('LEU_Sarmiento_Districts'),
		('LEU_Sarmiento_Units');
-------------------------------------
-- AiLists
-------------------------------------	
INSERT INTO AiLists	
		(ListType,								AgendaType,							System)
VALUES	('LEU_Sarmiento_Districts',				'TRAIT_AGENDA_LEU_SARMIENTO',		'Districts'),
		('AlewxanderPreferWar',					'TRAIT_AGENDA_LEU_SARMIENTO',		'Strategies'),
		('LEU_Sarmiento_Units',					'TRAIT_AGENDA_LEU_SARMIENTO',		'Units');

-------------------------------------		
-- AiFavoredItems
-------------------------------------	
INSERT INTO AiFavoredItems	
		(ListType,						Item)
VALUES	('LEU_Sarmiento_Districts',		'DISTRICT_ENCAMPMENT'),
		('LEU_Sarmiento_Units',			'UNIT_HORSEMAN'),
		('LEU_Sarmiento_Units',			'UNIT_LEU_GAUCHO');
--==========================================================================================================================
--==========================================================================================================================

