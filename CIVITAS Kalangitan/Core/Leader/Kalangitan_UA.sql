/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,														Kind			)
VALUES	('TRAIT_LEADER_CVS_KALANGITAN_UA',							'KIND_TRAIT'	),
		('TRAIT_LEADER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS',	'KIND_TRAIT'	),
		('MODTYPE_CVS_KALANGITAN_UA_ATTACH_MODIFIER',				'KIND_MODIFIER'	),
		('MODTYPE_CVS_KALANGITAN_UA_AMENITIES_FROM_LUX',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',			'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,													Name,										Description,										InternalOnly	)
VALUES	('TRAIT_LEADER_CVS_KALANGITAN_UA',							'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_NAME',	'LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_DESCRIPTION',	0				),
		('TRAIT_LEADER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS',	'LOC_PLACEHOLDER',							NULL,												1				);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType							)
VALUES	('LEADER_CVS_KALANGITAN',	'TRAIT_LEADER_CVS_KALANGITAN_UA'	);

INSERT INTO	LeaderTraits
		(LeaderType,	TraitType	)
SELECT	LeaderType,		'TRAIT_LEADER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS'
FROM	Leaders
WHERE	InheritFrom = "LEADER_DEFAULT"
AND		LeaderType IS NOT "LEADER_CVS_KALANGITAN";

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,													ModifierId											)	
VALUES	('TRAIT_LEADER_CVS_KALANGITAN_UA',							'MODIFIER_CVS_KALANGITAN_UA_AMENITIES_TO_OTHERS'	),
		('TRAIT_LEADER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS',	'MODIFIER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS'	);

-- CAMPUS
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_CAMPUS';

-- COMMERCIAL HUB
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';

-- HOLY SITE
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HOLY_SITE';

-- THEATER
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_THEATER';

-- INDUSTRIAL ZONE
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE';

-- HARBOR
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HARBOR';

-- ENCAMPMENT
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENCAMPMENT';

-- ENTERTAINMENT COMPLEX
INSERT INTO	TraitModifiers (TraitType, ModifierId)	
SELECT	'TRAIT_LEADER_CVS_KALANGITAN_UA',	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,					EffectType										)
VALUES	('MODTYPE_CVS_KALANGITAN_UA_ATTACH_MODIFIER',		'COLLECTION_ALL_PLAYERS',		'EFFECT_ATTACH_MODIFIER'						),
		('MODTYPE_CVS_KALANGITAN_UA_AMENITIES_FROM_LUX',	'COLLECTION_ALL_PLAYERS',		'EFFECT_ADJUST_OWNED_LUXURY_EXTRA_AMENITIES'	),
		('MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'COLLECTION_PLAYER_CITIES',		'EFFECT_ADJUST_BUILDING_PRODUCTION'				);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId							)
VALUES	('MODIFIER_CVS_KALANGITAN_UA_EXTRA_AMENITIES',			'MODTYPE_CVS_KALANGITAN_UA_AMENITIES_FROM_LUX',		NULL											),
		('MODIFIER_CVS_KALANGITAN_UA_AMENITIES_TO_OTHERS',		'MODTYPE_CVS_KALANGITAN_UA_ATTACH_MODIFIER',		'REQSET_CVS_KALANGITAN_UA_IS_ALLY'				),
		('MODIFIER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS',	'MODTYPE_CVS_KALANGITAN_UA_ATTACH_MODIFIER',		'REQSET_CVS_KALANGITAN_UA_IS_PLAYER'			);

-- CAMPUS
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_CAMPUS'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_CAMPUS';

-- COMMERCIAL HUB
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_COMMERCIAL_HUB'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';

-- HOLY SITE
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_HOLY_SITE'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HOLY_SITE';

-- THEATER
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_THEATER'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_THEATER';

-- INDUSTRIAL ZONE
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_INDUSTRIAL_ZONE'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE';

-- HARBOR
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_HARBOR'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HARBOR';

-- ENCAMPMENT
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_ENCAMPMENT'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENCAMPMENT';

-- ENTERTAINMENT COMPLEX
INSERT INTO	Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId	)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'MODTYPE_CVS_KALANGITAN_UA_BUILDING_PRODUCTION',	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_DISTRICT_ENTERTAINMENT_COMPLEX'
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,											Name,			Value											)
VALUES	('MODIFIER_CVS_KALANGITAN_UA_EXTRA_AMENITIES',			'Amount',		1												),
		('MODIFIER_CVS_KALANGITAN_UA_AMENITIES_TO_OTHERS',		'ModifierId',	'MODIFIER_CVS_KALANGITAN_UA_EXTRA_AMENITIES'	),
		('MODIFIER_CVS_KALANGITAN_UA_AMENITIES_FROM_OTHERS',	'ModifierId',	'MODIFIER_CVS_KALANGITAN_UA_EXTRA_AMENITIES'	);

-- CAMPUS
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_CAMPUS';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_CAMPUS';

-- COMMERCIAL HUB
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_COMMERCIAL_HUB';

-- HOLY SITE
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HOLY_SITE';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HOLY_SITE';

-- THEATER
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_THEATER';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_THEATER';

-- INDUSTRIAL ZONE
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_INDUSTRIAL_ZONE';

-- HARBOR
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HARBOR';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_HARBOR';

-- ENCAMPMENT
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENCAMPMENT';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	50
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENCAMPMENT';

-- ENTERTAINMENT COMPLEX
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENTERTAINMENT_COMPLEX';

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_KALANGITAN_UA_PRODUCTION_'||BuildingType,	'Amount',	100
FROM	Buildings WHERE	TraitType IS NULL AND PrereqDistrict = 'DISTRICT_ENTERTAINMENT_COMPLEX';

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId						)
VALUES	('REQSET_CVS_KALANGITAN_UA_IS_ALLY',			'REQ_CVS_KALANGITAN_UA_IS_ALLY'		),
		('REQSET_CVS_KALANGITAN_UA_IS_PLAYER',			'REQ_CVS_KALANGITAN_UA_IS_PLAYER'	),
		('REQSET_CVS_KALANGITAN_UA_IS_PLAYER',			'REQ_CVS_KALANGITAN_UA_IS_ALLY'		);

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId	)
SELECT	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,	'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType			)
VALUES	('REQSET_CVS_KALANGITAN_UA_IS_ALLY',			'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_KALANGITAN_UA_IS_PLAYER',			'REQUIREMENTSET_TEST_ALL'	);

INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType	)
SELECT	'REQSET_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,	'REQUIREMENTSET_TEST_ALL'
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_KALANGITAN_UA_IS_PLAYER',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	),
		('REQ_CVS_KALANGITAN_UA_IS_ALLY',	'REQUIREMENT_ALLY'							);

INSERT INTO Requirements
		(RequirementId,										RequirementType	)
SELECT	'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------
		
INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value					)
VALUES	('REQ_CVS_KALANGITAN_UA_IS_PLAYER',		'LeaderType',	'LEADER_CVS_KALANGITAN'	);

INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value	)
SELECT	'REQ_CVS_KALANGITAN_UA_PLOT_ADJ_'||DistrictType,	'DistrictType',	DistrictType
FROM	Districts
WHERE	DistrictType
IN		('DISTRICT_CAMPUS', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_HOLY_SITE', 'DISTRICT_THEATER', 'DISTRICT_INDUSTRIAL_ZONE', 'DISTRICT_HARBOR', 'DISTRICT_ENCAMPMENT', 'DISTRICT_ENTERTAINMENT_COMPLEX');