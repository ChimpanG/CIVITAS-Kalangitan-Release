/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait, PortraitBackground)
VALUES	(
		-- Civilization
		'CIVILIZATION_CVS_PHILIPPINES', -- CivilizationType
		'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_PHILIPPINES_KALANGITAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_PHILIPPINES_KALANGITAN', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_KALANGITAN', -- LeaderType
		'LOC_LEADER_CVS_KALANGITAN_NAME', -- LeaderName
		'ICON_LEADER_CVS_KALANGITAN', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_KALANGITAN', -- LeaderAbilityIcon
		'LEADER_CVS_KALANGITAN_NEUTRAL', -- Portrait
		'LEADER_CVS_KALANGITAN_BACKGROUND' -- PortraitBackground
		);

-- RISE AND FALL
INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon, Portrait, PortraitBackground)
VALUES	(
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_PHILIPPINES', -- CivilizationType
		'LOC_CIVILIZATION_CVS_PHILIPPINES_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_PHILIPPINES_KALANGITAN', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_PHILIPPINES_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_PHILIPPINES_KALANGITAN', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_KALANGITAN', -- LeaderType
		'LOC_LEADER_CVS_KALANGITAN_NAME', -- LeaderName
		'ICON_LEADER_CVS_KALANGITAN', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_KALANGITAN', -- LeaderAbilityIcon
		'LEADER_CVS_KALANGITAN_NEUTRAL', -- Portrait
		'LEADER_CVS_KALANGITAN_BACKGROUND' -- PortraitBackground
		);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(CivilizationType, 					LeaderType, 				Type, 								Icon, 									Name, 										Description, 										SortIndex	)
VALUES 	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'UNIT_CVS_PHILIPPINES_UU',			'ICON_UNIT_CVS_PHILIPPINES_UU',			'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',			'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',			10			),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN', 	'BUILDING_CVS_PHILIPPINES_UI',		'ICON_BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', 	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION',		20			),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'IMPROVEMENT_CVS_KALANGITAN_UI',	'ICON_IMPROVEMENT_CVS_KALANGITAN_UI',	'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_NAME',	'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_DESCRIPTION',	30			);

-- RISE AND FALL
INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 				Type, 								Icon, 									Name, 										Description, 										SortIndex	)
VALUES 	('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'UNIT_CVS_PHILIPPINES_UU',			'ICON_UNIT_CVS_PHILIPPINES_UU',			'LOC_UNIT_CVS_PHILIPPINES_UU_NAME',			'LOC_UNIT_CVS_PHILIPPINES_UU_DESCRIPTION',			10			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES', 'LEADER_CVS_KALANGITAN', 	'BUILDING_CVS_PHILIPPINES_UI',		'ICON_BUILDING_CVS_PHILIPPINES_UI',		'LOC_BUILDING_CVS_PHILIPPINES_UI_NAME', 	'LOC_BUILDING_CVS_PHILIPPINES_UI_DESCRIPTION',		20			),
		('Players:Expansion1_Players',	'CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'IMPROVEMENT_CVS_KALANGITAN_UI',	'ICON_IMPROVEMENT_CVS_KALANGITAN_UI',	'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_NAME',	'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_DESCRIPTION',	30			);