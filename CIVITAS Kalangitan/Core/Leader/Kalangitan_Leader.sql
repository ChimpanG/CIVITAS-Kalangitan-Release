/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,						Kind			)
VALUES	('LEADER_CVS_KALANGITAN',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,					LeaderType,					CapitalName					)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'LOC_CITY_NAME_SC_TONDO'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,				Name,								InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_KALANGITAN',	'LOC_LEADER_CVS_KALANGITAN_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,					Quote											)
VALUES	('LEADER_CVS_KALANGITAN',		'LOC_PEDIA_LEADERS_PAGE_CVS_KALANGITAN_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,				ForegroundImage,					BackgroundImage,						PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_KALANGITAN',	'LEADER_CVS_KALANGITAN_NEUTRAL',	'LEADER_CVS_KALANGITAN_BACKGROUND',		0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,				ReligionType		)
VALUES	('LEADER_CVS_KALANGITAN',	'RELIGION_BUDDHISM'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,						Usage,			PrimaryColor,		 			SecondaryColor,						TextColor					)
VALUES	('LEADER_CVS_KALANGITAN',	'Unique',		'COLOR_CVS_KALANGITAN_PRIMARY',	'COLOR_CVS_KALANGITAN_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_KALANGITAN_PRIMARY',	'153,26,75,255'		),
		('COLOR_CVS_KALANGITAN_SECONDARY',	'139,185,255,255'	);
		