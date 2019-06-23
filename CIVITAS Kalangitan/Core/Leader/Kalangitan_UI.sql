/*
	UI
	Credits: ChimpanG, SeelingCat
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind				)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI',	'KIND_TRAIT'		),
		('IMPROVEMENT_CVS_KALANGITAN_UI',				'KIND_IMPROVEMENT'	);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,										Name													)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI',	'LOC_TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI_NAME'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,										ModifierId							)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI',	'MODIFIER_CVS_KALANGITAN_UI_UNLOCK'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(TraitType,										LeaderType				)
VALUES	('TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI',	'LEADER_CVS_KALANGITAN'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		PrereqCivic,
		Buildable,
		PlunderType,
		PlunderAmount,
		Housing,
		TilesRequired,
		SameAdjacentValid,
		Domain		
		)
VALUES  (
		'IMPROVEMENT_CVS_KALANGITAN_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_KALANGITAN_UI_DESCRIPTION', -- Description
		'TRAIT_LEADER_IMPROVEMENT_CVS_KALANGITAN_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_KALANGITAN_UI', -- Icon
		'CIVIC_STATE_WORKFORCE', -- PrereqCivic
		1, -- Buildable
		'PLUNDER_CULTURE', -- PlunderType
		25, -- PlunderAmount
		1, -- Housing
		2, -- TilesRequired
		1, -- SameAdjacentValid
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,					UnitType		)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,					TerrainType			)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'TERRAIN_DESERT'	),
		('IMPROVEMENT_CVS_KALANGITAN_UI',	'TERRAIN_GRASS'		),
		('IMPROVEMENT_CVS_KALANGITAN_UI',	'TERRAIN_PLAINS'	),
		('IMPROVEMENT_CVS_KALANGITAN_UI',	'TERRAIN_TUNDRA'	),
		('IMPROVEMENT_CVS_KALANGITAN_UI',	'TERRAIN_SNOW'		);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,					YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'YIELD_CULTURE',	2			),
		('IMPROVEMENT_CVS_KALANGITAN_UI',	'YIELD_PRODUCTION',	0			);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,					YieldType,			BonusYieldChange,	PrereqCivic,	PrereqTech		)
VALUES	(404,	'IMPROVEMENT_CVS_KALANGITAN_UI',	'YIELD_CULTURE',	1,					NULL,			'TECH_RADIO'	);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------

INSERT INTO Improvement_Adjacencies
		(ImprovementType,					YieldChangeId						)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'ADJ_CVS_KALANGITAN_UI_PRODUCTION'	);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

INSERT INTO Adjacency_YieldChanges
		(ID,									Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement				)
VALUES	('ADJ_CVS_KALANGITAN_UI_PRODUCTION',	'Placeholder',	'YIELD_PRODUCTION',	1,				2,				'IMPROVEMENT_CVS_KALANGITAN_UI'	);

-----------------------------------------------
-- Improvement_Tourism
-----------------------------------------------

INSERT INTO Improvement_Tourism
		(ImprovementType,					TourismSource,				PrereqTech,		ScalingFactor	)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'TOURISMSOURCE_CULTURE',	'TECH_FLIGHT',	100				);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers
		(ImprovementType,					ModifierId									)
VALUES	('IMPROVEMENT_CVS_KALANGITAN_UI',	'MODIFIER_CVS_KALANGITAN_UI_EXTRA_HOUSING'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId						)	
VALUES	('MODIFIER_CVS_KALANGITAN_UI_UNLOCK',			'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',			NULL										),
		('MODIFIER_CVS_KALANGITAN_UI_EXTRA_HOUSING',	'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_HOUSING',	'REQSET_CVS_KALANGITAN_UI_HAS_URBANIZATION'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,				Value							)
VALUES	('MODIFIER_CVS_KALANGITAN_UI_UNLOCK',			'ImprovementType',	'IMPROVEMENT_CVS_KALANGITAN_UI'	),
		('MODIFIER_CVS_KALANGITAN_UI_EXTRA_HOUSING',	'Amount',			1								);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType					)
VALUES	('REQ_CVS_KALANGITAN_UI_HAS_URBANIZATION',	'REQUIREMENT_PLAYER_HAS_CIVIC'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value					)
VALUES	('REQ_CVS_KALANGITAN_UI_HAS_URBANIZATION',	'CivicType',	'CIVIC_URBANIZATION'	);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements	
		(RequirementSetId,								RequirementId								)
VALUES	('REQSET_CVS_KALANGITAN_UI_HAS_URBANIZATION',	'REQ_CVS_KALANGITAN_UI_HAS_URBANIZATION'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_KALANGITAN_UI_HAS_URBANIZATION',	'REQUIREMENTSET_TEST_ALL'	);
