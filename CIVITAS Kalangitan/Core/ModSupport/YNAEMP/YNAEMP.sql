/*
	Mod Support YNAEMP
	Credits: ChimpanG
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,		Y	)
VALUES	('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'GiantEarth',		88,		40	),
		('CIVILIZATION_CVS_PHILIPPINES',	'LEADER_CVS_KALANGITAN',	'GreatestEarthMap',	89,		34	);