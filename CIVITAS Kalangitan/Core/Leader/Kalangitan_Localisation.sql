/*
	Localisation
	Credits: SeelingCat, ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO BaseGameText
		(Tag,	Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_KALANGITAN_NAME",  "Kalangitan"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_NAME",  "Bayanihan"	),
	("LOC_TRAIT_LEADER_CVS_KALANGITAN_UA_DESCRIPTION",	
	"Luxury Resources provide an [ICON_Amenities] Amenity to one extra city for each civilization you are allied to, and each of your allies' Luxury Resources produce an additional [ICON_Amenities] Amenity for them. +50% [ICON_Production] Production when constructing Buildings in Districts adjacent to the City Center. Gains access to the Nipa Hut unique improvement."),

-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_IMPROVEMENT_CVS_KALANGITAN_UI_NAME",	"Nipa Hut"	),
	("LOC_IMPROVEMENT_CVS_KALANGITAN_UI_DESCRIPTION",	  
	"Unlocks the Builder ability to construct a Nipa Hut, unique to the Philippines. Provides +2 [ICON_Culture] Culture, and +0.5 [ICON_Housing] Housing. Gains +1 [ICON_Production] when adjacent to two other Nipa Hut improvements. Cannot be built on Hills."),

	("LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_KALANGITAN_UI_CHAPTER_HISTORY_PARA_1",	
	"The Nipa hut, Kamalig, or Bahay Kubo, is a type of stilt house indigenous to the vast majority of lowland Austronesian cultures of the Philippines. It often serves as an icon of Philippine culture or, more specifically, Filipino rural culture. Its architectural principles gave way to many of Filipino traditional houses and buildings that rose after the pre-colonial era. These includes the Spanish era 'Bahay Na Bato' which is a noble version of Bahay Kubo with Spanish and some Chinese architectural influence; the American era's 'Antillean Houses' which include aspects of Bahay Na Bato influence but has a wider range of influences; and the Marcos era's Coconut Palace, Sto. Nino Shrine and National Arts Center which radically adapted to its designs and architecture."),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_KALANGITAN_NAME",	
	"Lady of Pasig"	),
	("LOC_AGENDA_CVS_KALANGITAN_DESCRIPTION", 
	"Likes civilizations who are willing to form a long-term alliance. Dislikes civilizations who are at war on her home continent."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_KALANGITAN_REASON_ANY",		  
	"(You are friends.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KALANGITAN_HAPPY",	
	"Kalangitan is pleased with your loyalty toward your allies"	),
	("LOC_DIPLO_WARNING_LEADER_CVS_KALANGITAN_REASON_ANY",	  
	"(You have been at war on her home continent.)"	),
	("LOC_DIPLO_MODIFIER_CVS_KALANGITAN_UNHAPPY",		 
	"Kalangitan is displeased that you have attacked her home continent"	),
		
-----------------------------------------------
-- Diplos
-----------------------------------------------	

-- DOM
	("LOC_LOADING_INFO_LEADER_CVS_KALANGITAN",  
	"Greetings, Kalangitan, magnificent Queen of the isle of Luzon! Gather your people together, for it is your destiny to lead them into a resplendent Golden Age! Work together to build a community, both at home and abroad, and you will find that your nation runs as smoothly as the waters of the Pasig! Remember that there is strength in unity: together, anything is possible."  	),
	
-- FIRST MEET
	-- First AI Line
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_KALANGITAN_ANY",	
	"Good day to you, stranger. I am Kalangitan, Dayang of Tondo and Namayan: ruler of these lands. What business do you have here on our islands?" ),
	
	-- AI invitation to visit nearby City
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_KALANGITAN_ANY",	
	"Why don't you come visit one of our cities? The villagers there are currently moving a few houses. If that does not entice you, know that there will be a party afterwards as well."	),
	
	-- AI accepts human invitation
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_KALANGITAN_ANY",	
	"I would be delighted - I could not pass up a chance to get to know my neighbor more."	),
	
	-- AI invitation to exchange Capital Information
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_KALANGITAN_ANY",	
	"Would you like to exchange information about our capitals? That way you'll always know where to find me should you need my assistance."	),

-- GREETINGS	
	("LOC_DIPLO_GREETING_LEADER_CVS_KALANGITAN_ANY",	
	"What can I help you with?"	),
	
-- DELEGATION
	-- AI Accepts
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	
	"A splendid opportunity to foster a community. I accept!"	),
	
	-- AI Rejects
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	
	"A community must feel united in order to prosper - and we feel no kinship with your people. I must decline."	),
	
	-- AI Requests
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"I offer you a delegation bearing the fruits of our communal efforts: fine ceramics, roast duck, and exquisite textiles - all worth a few bulawan to be sure."	),
	
-- OPEN BORDERS
	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	                                     
	"May the work of our peoples cross all borders with this agreement."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",                                     
	"I must decline. Your people are not welcome in our community."	),
	
	-- AI requests from human	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_KALANGITAN_ANY",                                      
	"My people are traders and explorers by nature - it's in their blood. Let us throw open the borders between us and see what happens when two industrious communities reach out and touch one another."	),
	
-- DECLARE FRIENDSHIP

	-- AI accepts from human	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",                                      
	"And so our community grows ever stronger."	),
	
	-- AI rejects from human	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",                                      
	"I'm afraid that I do not reciprocate your feelings on this matter."	),
	
	-- AI Requests friendship from human	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KALANGITAN_ANY",                                      
	"Come, join with me in a most splendid friendship. Together, we can work side by side to solve any problem."	),
	
	-- Human accepts AI requests, AI responds	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KALANGITAN_ANY",                                      
	"Wonderful! Let us celebrate at once!"	),
	
	-- Human rejects AI requests, AI responds	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_KALANGITAN_ANY",                                      
	"A saddening response indeed."	),

-- ALLIANCE

	-- AI Requests an alliance from human
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"It is human nature to help one another. We call this damayan; you may have a different word for it. However, we can both appreciate the benefits that such an alliance would bring."	),

-- KUDOS & WARNINGS
	
	-- AI Kudos
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_KALANGITAN_ANY",	
	"You have shown to be a strong and reliable friend in the global community. For this you have earned my respect."	),
	
	-- AI Warnings
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_KALANGITAN_ANY",	
	"Your senseless violence looms large on the horizon and in the hearts and minds of my people. Can't you see that not everything need be solved with violence?"	),
	
	-- AI warns player for border troops
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_KALANGITAN_ANY",	
	"Your troops stand so close to my people's lands. Please explain why they are there."	),

-- TRADE
	
	-- AI Accepts Deal
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"My people are more traders than warriors, so we are keen to accept this."	),

	-- AI Rejects Deal
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"I cannot accept this; it is not in my people's best interest."	),

-- DENOUNCE
	
	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	
	"And so diplomacy is poisoned by sharp words and cruel intents. Never again shall you benefit from the kind words and deeds of my people."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"Your deeds show that you are not fit to be a part of this community. I announce to all who would hear me that you are not to be trusted. (Denounces You)"	),
	
-- DOW
	
	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	
	"What have my people ever done to you? We are not a martial race. But I assure you, we will resist you - together - with every fiber of our strength."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"You are no friend of me or my people. Before you may do harm to my people, I must at least attempt to defeat you. I owe no less than this to my citizens and the community we have built here in these lands."	),
	
-- MAKE PEACE
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_KALANGITAN_ANY",	
	"Now we may have a chance to come together, to solve our disputes amicably going forward, and to foster a relationship larger than just you and I."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_KALANGITAN_ANY",	
	"I cannot stop this until I am sure I can give my people the best terms possible."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"Let us cease this senseless violence. My people crave the opportunity to throw down their weapons and once again work the fields and sail the seas in peace."	),

-- DEFEAT
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_KALANGITAN_ANY",	
	"All is lost; I have failed my people. Please, I beg of you, do not punish them for my failures! Do with me what you will but please spare them. Treat them with kindness and perhaps one day they will reciprocate in kind."	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_KALANGITAN_ANY",	
	"All is lost; I have failed my people. Please, I beg of you, do not punish them for my failures! Do with me what you will but please spare them. Treat them with kindness and perhaps one day they will reciprocate in kind."	),	

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_KALANGITAN_QUOTE",	
	"If we daren't grasp the thorn we should not crave the rose."  	),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KALANGITAN_TITLE",	
	"Kalangitan"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_KALANGITAN_SUBTITLE",	
	"Dayang of the Kingdom of Tondo"),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KALANGITAN_CHAPTER_CAPSULE_BODY",	
	"Following the traditions of Bayanihan, friendship wih Kalangitan truly comes with extra benefits."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KALANGITAN_CHAPTER_DETAILED_BODY",	
	"A portrait of diplomacy, Kalangitan's unique ability not only applies to herself, but extends to those who are allied with her. With [ICON_Amenities] Amenities from luxury resources extending further in her empire for each ally, Kalangitan will keep her citizens at their happiest by allying as many civilizations as possible. She also gets access to the Nipa Hut unique improvement, which provide her with additional [ICON_Production] Production, [ICON_Culture] Culture and [ICON_Housing] Housing that allow her cities, constructed with her swift production bonuses, to thrive under her rule. With an abundance of luxuries and productive cities, Kalangitan's Philippines should be able to emerge in a dominant position versatile for most victory types while she focuses on maintaining alliances in a peaceful game."),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KALANGITAN_CHAPTER_HISTORY_PARA_1",	
	"Dayang Kalangitan is a legendary figure in early Philippine history who was said to be Dayang of the pre-Hispanic Philippine polity of Pasig. The eldest daughter of Rajah Gambang and ruling Pasig together with her husband, Rajah Lontok, legend considers her one of the most powerful rulers in the early history of the Tagalog people, and one of very few female leaders in early Philippine history. Under her reign, the Kingdom of Tondo reached its Golden Age, where it spanned from the southern Cordilleras down to Ibalon (now Bicol). She is also notably the last Buddhist ruler of Tondo, which encompassed land along the banks of the Pasig River in Metro Manila."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_KALANGITAN_CHAPTER_HISTORY_PARA_2",	
	"Dayang Kalangitan was the daughter of Rajah Gambang, who was then sovereign of Tondo. Since her father died without leaving a male heir, she was appointed queen regnant. Kalangitan married to Gat Lontok, (later Rajah Lontok) of Tondo. Believing herself capable of ruling, she proved to be a strong ruler. Together with her husband, Kalangitan established a small kingdom upstream to the east of Tondo around the Bitukang Manok (today Parian Creek in Pasig City). Sometime around 1450, she became sole ruler of both Tondo and her own realm in Bitukang Manok. In order to maintain power and influence as queen, Kalangitan assented to the marriage of one of her daughters, Dayang Panginoan, to Prince Balagtas, the son of Empress Sasaban of Namayan. Under her reign, the Kingdom of Tondo reached its Golden Age, where it spanned from the southern Cordilleras down to Ibalon (now Bicol), the greatest extent of the kingdom's historical territories.");