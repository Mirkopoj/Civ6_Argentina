--==========================================================================================================================
-- LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				ForegroundImage,					PlayDawnOfManAudio,		BackgroundImage)
VALUES	('LEADER_LEU_SARMIENTO',		'LEADER_LEU_SARMIENTO.dds',		0,						'LEADER_HOJO_BACKGROUND.dds');	
--==========================================================================================================================
-- DIPLOMACY INFO
--==========================================================================================================================
-- DiplomacyInfo
-------------------------------------	
-- INSERT INTO DiplomacyInfo	
-- 			(Type,						BackgroundImage)
-- VALUES	('LEADER_LEU_SARMIENTO',		'FALLBACK_NEUTRAL_LEU_SARMIENTO.dds');
--==========================================================================================================================
-- COLOURS
--==========================================================================================================================
-- PlayerColors
-------------------------------------	
INSERT INTO PlayerColors	
		(Type,					Usage,			PrimaryColor, 									SecondaryColor,								TextColor)
VALUES	('LEADER_LEU_SARMIENTO',	'Unique',		'COLOR_PLAYER_LEUGI_LEU_SARMIENTO_BACKGROUND',		'COLOR_PLAYER_LEUGI_LEU_SARMIENTO_FOREGROUND', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 											Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_LEUGI_LEU_SARMIENTO_BACKGROUND',	0.00,	0.00,	1.00,	1),
		('COLOR_PLAYER_LEUGI_LEU_SARMIENTO_FOREGROUND',	1.00,	1.00,	1.00,	1);
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
-------------------------------------	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_LEU_SARMIENTO',	'KIND_LEADER');	
-------------------------------------
-- Leaders
-------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_LEU_SARMIENTO',			'LOC_LEADER_LEU_SARMIENTO_NAME',		'LEADER_DEFAULT',	3);	
-------------------------------------
-- LeaderQuotes
-------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_LEU_SARMIENTO',	'LOC_PEDIA_LEADERS_PAGE_LEU_SARMIENTO_QUOTE');	

-------------------------------------
-- FavoredReligions
-------------------------------------	
INSERT INTO FavoredReligions	
 		(LeaderType,				ReligionType)
VALUES	('LEADER_LEU_SARMIENTO',	'RELIGION_CATHOLICISM');

--==========================================================================================================================
-- CivilizationLeaders
--==========================================================================================================================
INSERT INTO CivilizationLeaders
		(LeaderType, 			CivilizationType,				CapitalName)
VALUES  ('LEADER_LEU_SARMIENTO',	'CIVILIZATION_LEU_ARGENTINA',	'LOC_CITY_NAME_LEU_ARGENTINA_01');

--==========================================================================================================================
--==========================================================================================================================

--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,				MapName,			X,		Y)
VALUES	('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SARMIENTO',		'GiantEarth',		160,	14),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SARMIENTO',		'GreatestEarthMap',	29,		9),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SARMIENTO',		'LargestEarth',		216,	22),
		('CIVILIZATION_LEU_ARGENTINA',	'LEADER_LEU_SARMIENTO',		'CordiformEarth',	19,		8);

--==========================================================================================================================
--==========================================================================================================================
