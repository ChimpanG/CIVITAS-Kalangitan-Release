/*
	Strategy
	Authors: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType								)
VALUES 	('LEADER_CVS_KALANGITAN_TECHS'			),
		('LEADER_CVS_KALANGITAN_CIVICS'			),
		('LEADER_CVS_KALANGITAN_DISTRICTS'		),
		('LEADER_CVS_KALANGITAN_BUILDINGS'		),
		('LEADER_CVS_KALANGITAN_PROJECTS'		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY'		),
		('LEADER_CVS_KALANGITAN_UNITS'			),
		('LEADER_CVS_KALANGITAN_TACTICS'		),
		('LEADER_CVS_KALANGITAN_EXPANSION'		),
		('LEADER_CVS_KALANGITAN_PSUEDOS'		),
		-- XP1
		('LEADER_CVS_KALANGITAN_ALLIANCES'		),
		('LEADER_CVS_KALANGITAN_COMMEMORATIONS'	),
		-- XP2
		('LEADER_CVS_KALANGITAN_DISCUSSIONS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,									AgendaType,						System				) -- AgendaType links to a TraitType, not an AgendaType... :/
VALUES  ('LEADER_CVS_KALANGITAN_TECHS',				'TRAIT_AGENDA_CVS_KALANGITAN',	'Technologies'		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Civics'			),
		('LEADER_CVS_KALANGITAN_DISTRICTS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Districts'			),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Buildings'			),
		('LEADER_CVS_KALANGITAN_PROJECTS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Projects'			),
		('LEADER_CVS_KALANGITAN_UNITS',				'TRAIT_AGENDA_CVS_KALANGITAN',	'Units'				),
		('LEADER_CVS_KALANGITAN_TACTICS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Tactics'			),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'TRAIT_AGENDA_CVS_KALANGITAN',	'DiplomaticActions'	),
		('LEADER_CVS_KALANGITAN_EXPANSION',			'TRAIT_AGENDA_CVS_KALANGITAN',	'PlotEvaluations'	),
		('LEADER_CVS_KALANGITAN_PSUEDOS',			'TRAIT_AGENDA_CVS_KALANGITAN',	'PsuedoYields'		),
		-- XP1
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'TRAIT_AGENDA_CVS_KALANGITAN',	'Alliances'			),
		('LEADER_CVS_KALANGITAN_COMMEMORATIONS',	'TRAIT_AGENDA_CVS_KALANGITAN',	'Commemorations'	),
		-- XP2
		('LEADER_CVS_KALANGITAN_DISCUSSIONS',		'TRAIT_AGENDA_CVS_KALANGITAN',	'Discussions'		);

-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,									Item,									Favored	)
VALUES  -- TECHS
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_CURRENCY',						1		), -- Unique Infrastructure
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_SHIPBUILDING',					1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_CELESTIAL_NAVIGATION',			1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_CARTOGRAPHY',						1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_SQUARE_RIGGING',					1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_BANKING',							1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_ECONOMICS',						1		),
		('LEADER_CVS_KALANGITAN_TECHS',				'TECH_RADIO',							1		),
		-- CIVICS
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_FOREIGN_TRADE',					1		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_EXPLORATION',					1		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_STATE_WORKFORCE',				1		), -- Unique Infrastructure
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_CIVIL_SERVICE',					1		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_GUILDS',							1		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_FEUDALISM',						1		),
		('LEADER_CVS_KALANGITAN_CIVICS',			'CIVIC_NATIONALISM',					1		), -- Unique Unit
		-- DISTRICTS
		('LEADER_CVS_KALANGITAN_DISTRICTS',			'DISTRICT_COMMERCIAL_HUB',				1		),
		('LEADER_CVS_KALANGITAN_DISTRICTS',			'DISTRICT_HARBOR',						1		),
		-- BUILDINGS
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_CVS_PHILIPPINES_UI',			1		), -- Unique Infrastructure
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_BANK',						1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_STOCK_EXCHANGE',				1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_LIGHTHOUSE',					1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_SHIPYARD',					1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_SEAPORT',						1		),
		-- WONDERS
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_BIG_BEN',						1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_COLOSSUS',					1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_EIFFEL_TOWER',				1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_GREAT_LIGHTHOUSE',			1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_GREAT_ZIMBABWE',				1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_VENETIAN_ARSENAL',			1		),
		('LEADER_CVS_KALANGITAN_BUILDINGS',			'BUILDING_PYRAMIDS',					1		),
		-- DIPLOMACY
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_PROPOSE_TRADE',			1		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_RESIDENT_EMBASSY',			1		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_DIPLOMATIC_DELEGATION',	1		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_DECLARE_FRIENDSHIP',		1		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE',					1		),
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE_RESEARCH',		1		), -- XP1
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE_MILITARY',		1		), -- XP1
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE_ECONOMIC',		1		), -- XP1
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE_CULTURAL',		1		), -- XP1
		('LEADER_CVS_KALANGITAN_DIPLOMACY',			'DIPLOACTION_ALLIANCE_RELIGIOUS',		1		), -- XP1
		-- ALLIANCES (XP1)
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'ALLIANCE_RESEARCH',					1		),
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'ALLIANCE_CULTURAL',					1		),
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'ALLIANCE_MILITARY',					1		),
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'ALLIANCE_ECONOMIC',					1		),
		('LEADER_CVS_KALANGITAN_ALLIANCES',			'ALLIANCE_RELIGIOUS',					1		),
		-- COMMEMORATIONS (XP1)
		('LEADER_CVS_KALANGITAN_COMMEMORATIONS',	'COMMEMORATION_CULTURAL',				1		),
		-- DISCUSSIONS (XP2)
		('LEADER_CVS_KALANGITAN_DISCUSSIONS',		'WC_RES_LUXURY',						1		),
		('LEADER_CVS_KALANGITAN_DISCUSSIONS',		'WC_EMERGENCY_BACKSTAB',				1		),
		('LEADER_CVS_KALANGITAN_DISCUSSIONS',		'WC_RES_TRADE_TREATY',					1		);

INSERT INTO AiFavoredItems
		(ListType,							Item,						Favored,	Value,	StringVal					)
VALUES  -- EXPANSION
		('LEADER_CVS_KALANGITAN_EXPANSION',	'Coastal',					1,			15,		NULL						),
		('LEADER_CVS_KALANGITAN_EXPANSION',	'Resource Class',			1,			5,		'RESOURCECLASS_BONUS'		),
		('LEADER_CVS_KALANGITAN_EXPANSION',	'Resource Class',			1,			5,		'RESOURCECLASS_STRATEGIC'	),
		('LEADER_CVS_KALANGITAN_EXPANSION',	'Resource Class',			1,			10,		'RESOURCECLASS_LUXURY'		),
		('LEADER_CVS_KALANGITAN_EXPANSION',	'New Resources',			1,			15,		NULL						),
		-- PSUEDOS
		('LEADER_CVS_KALANGITAN_PSUEDOS',	'PSEUDOYIELD_UNIT_TRADE',	1,			5,		NULL						),
		('LEADER_CVS_KALANGITAN_PSUEDOS',	'PSEUDOYIELD_GPP_MERCHANT',	1,			50,		NULL						),
		('LEADER_CVS_KALANGITAN_PSUEDOS',	'PSEUDOYIELD_IMPROVEMENT',	1,			5,		NULL						);