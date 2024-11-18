-- database: ./data_source.db

-- Use the ▷ button in the top right corner to run the entire file.

CREATE TABLE holidays(id INTEGER NOT NULL PRIMARY KEY, Date INTEGER NOT NULL, HolidayName TEXT NOT NULL, Information TEXT NOT NULL, MoreInformation TEXT NOT NULL, Jurisdiction TEXT NOT NULL);

INSERT INTO holidays(Date,HolidayName,Information,MoreInformation,Jurisdiction,id) VALUES 
("20250101","New Year's Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",1),
("20250127","Australia Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",2),
("20250310","Canberra Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",3),
("20250418","Good Friday"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",4),
("20250419","Easter Saturday - the day after Good Friday"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",5),
("20250420","Easter Sunday"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",6),
("20250421","Easter Monday"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",7),
("20250425","ANZAC Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",8),
("20250602","Reconciliation Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",9),
("20250609","King's Birthday"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",10),
("20251006","Labour Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",11),
("20251225","Christmas Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",12),
("20251226","Boxing Day"," ","https://www.act.gov.au/living-in-the-act/public-holidays-school-terms-and-daylight-savings","act",13),
("20250101","New Year's Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",14),
("20250127","Australia Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",15),
("20250418","Good Friday"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",16),
("20250419","Easter Saturday"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",17),
("20250420","Easter Sunday"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",18),
("20250421","Easter Monday"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",19),
("20250425","Anzac Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",20),
("20250609","King's Birthday"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",21),
("20250804","Bank Holiday","Applies to banks and certain financial institutions, see the Retail Trading Act 2008.","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",22),
("20251006","Labour Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",23),
("20251225","Christmas Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",24),
("20251226","Boxing Day"," ","https://www.nsw.gov.au/about-nsw/public-holidays","nsw",25),
("20250101","New Year's Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",26),
("20250127","Australia Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",27),
("20250418","Good Friday"," ","https://www.nt.gov.au/nt-public-holidays","nt",28),
("20250419","Easter Saturday"," ","https://www.nt.gov.au/nt-public-holidays","nt",29),
("20250420","Easter Sunday"," ","https://www.nt.gov.au/nt-public-holidays","nt",30),
("20250421","Easter Monday"," ","https://www.nt.gov.au/nt-public-holidays","nt",31),
("20250425","Anzac Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",32),
("20250505","May Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",33),
("20250609","King's Birthday"," ","https://www.nt.gov.au/nt-public-holidays","nt",34),
("20250704","Alice Springs Show Day","Regional holiday - to find out which show day applies to your area, check the map of NT show day regions.","https://www.nt.gov.au/nt-public-holidays","nt",35),
("20250711","Tennant Creek Show Day","Regional holiday - to find out which show day applies to your area, check the map of NT show day regions.","https://www.nt.gov.au/nt-public-holidays","nt",36),
("20250718","Katherine Show Day","Regional holiday - to find out which show day applies to your area, check the map of NT show day regions.","https://www.nt.gov.au/nt-public-holidays","nt",37),
("20250725","Darwin Show Day","Regional holiday - to find out which show day applies to your area, check the map of NT show day regions.","https://www.nt.gov.au/nt-public-holidays","nt",38),
("20250804","Picnic Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",39),
("20251224","Christmas Eve - part day holiday","Part day holiday - from 7pm to midnight only.","https://www.nt.gov.au/nt-public-holidays","nt",40),
("20251225","Christmas Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",41),
("20251226","Boxing Day"," ","https://www.nt.gov.au/nt-public-holidays","nt",42),
("20251231","New Year's Eve - part day holiday","Part day holiday - from 7pm to midnight only.","https://www.nt.gov.au/nt-public-holidays","nt",43),
("20250101","New Year's Day"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",44),
("20250127","Australia Day","Australia Day public holiday is to be observed on the 26 January or, if 26 January is a Saturday or Sunday, it shall be observed the following Monday.","https://www.qld.gov.au/recreation/travel/holidays/public","qld",45),
("20250418","Good Friday"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",46),
("20250419","The day after Good Friday"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",47),
("20250420","Easter Sunday","Easter Sunday is appointed as a public holiday. These arrangements have been in place since 2017 following amendments to the Holidays Act 1983 (passed by Parliament on 1 December 2016).","https://www.qld.gov.au/recreation/travel/holidays/public","qld",48),
("20250421","Easter Monday"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",49),
("20250425","Anzac Day"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",50),
("20250505","Labour Day","Labour Day public holiday is to be observed on the first Monday in May and the Birthday of the Sovereign (King's Birthday) public holiday is to be observed on the first Monday in October. These arrangements have been in place since 2016 following amendments to the Holidays Act 1983 (passed by Parliament on 13 October 2015).","https://www.qld.gov.au/recreation/travel/holidays/public","qld",51),
("20250813","Royal Queensland Show (Brisbane area only)","The Royal National Agricultural (RNA) Show Day (Brisbane only) is held on the Wednesday during the RNA Show period. The RNA Show commences on the first Friday in August, unless the first Friday is prior to 5 August, then it commences on the second Friday of August.","https://www.qld.gov.au/recreation/travel/holidays/public","qld",52),
("20251006","King's Birthday","Labour Day public holiday is to be observed on the first Monday in May and the Birthday of the Sovereign (King's Birthday) public holiday is to be observed on the first Monday in October. These arrangements have been in place since 2016 following amendments to the Holidays Act 1983 (passed by Parliament on 13 October 2015).","https://www.qld.gov.au/recreation/travel/holidays/public","qld",53),
("20251224","Christmas Eve (24 December) 6pm - midnight","From 2019, the Holidays Act 1983 provides for a part-day public holiday from 6pm to midnight on Christmas Eve (24 December).","https://www.qld.gov.au/recreation/travel/holidays/public","qld",54),
("20251225","Christmas Day"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",55),
("20251226","Boxing Day"," ","https://www.qld.gov.au/recreation/travel/holidays/public","qld",56),
("20250101","New Years Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",57),
("20250127","Australia Day public holiday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",58),
("20250310","Adelaide Cup Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",59),
("20250418","Good Friday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",60),
("20250419","Easter Saturday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",61),
("20250420","Easter Sunday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",62),
("20250421","Easter Monday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",63),
("20250425","ANZAC Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",64),
("20250609","Kings Birthday"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",65),
("20251006","Labour Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",66),
("20251224","Christmas Eve: 7pm to midnight"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",67),
("20251225","Christmas Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",68),
("20251226","Proclamation Day holiday and Boxing Day"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",69),
("20251231","New Years Eve: 7pm to midnight"," ","https://www.safework.sa.gov.au/resources/public-holidays","sa",70),
("20250101","New Year's Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",71),
("20250127","Australia Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",72),
("20250310","Eight Hours Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",73),
("20250418","Good Friday"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",74),
("20250421","Easter Monday"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",75),
("20250422","Easter Tuesday - generally Tasmanian Public Service only"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",76),
("20250425","ANZAC Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",77),
("20250609","King's Birthday"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",78),
("20251225","Christmas Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",79),
("20251226","Boxing Day"," ","https://worksafe.tas.gov.au/topics/laws-and-compliance/public-holidays","tas",80),
("20250101","New Year's Day"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",81),
("20250127","Australia Day","As Australia Day falls on a Sunday, the public holiday is on the following Monday.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",82),
("20250310","Labour Day"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",83),
("20250418","Good Friday","ANZAC Day, Good Friday and Christmas Day are restricted trading days.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",84),
("20250419","Saturday before Easter Sunday"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",85),
("20250420","Easter Sunday"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",86),
("20250421","Easter Monday"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",87),
("20250425","ANZAC Day","ANZAC Day, Good Friday and Christmas Day are restricted trading days.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",88),
("20250609","King's Birthday"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",89),
(" ","Friday before the AFL Grand Final","Friday before AFL Grand Final typically falls on the last Friday in September. The Business Victoria website will be updated with the exact date upon release of the 2025 AFL schedule.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",90),
("20251104","Melbourne Cup","Melbourne Cup Day is a public holiday across all of Victoria unless alternate local holiday has been arranged by a non-metro council.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",91),
("20251225","Christmas Day","ANZAC Day, Good Friday and Christmas Day are restricted trading days.","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",92),
("20251226","Boxing Day"," ","https://business.vic.gov.au/business-information/public-holidays/victorian-public-holidays-2025","vic",93),
("20250101","New Year's Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",94),
("20250127","Australia Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",95),
("20250303","Labour Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",96),
("20250418","Good Friday"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",97),
("20250420","Easter Sunday","Easter Sunday was established as a public holiday in Western Australia in February 2022. Visit the Easter Sunday public holiday page for more information.","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",98),
("20250421","Easter Monday"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",99),
("20250425","Anzac Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",100),
("20250602","Western Australia Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",101),
("20250929","King's Birthday","This public holiday now known as the King's Birthday, was previously known as the Queen’s Birthday. Some regional areas in WA hold this public holiday on a different date - the 2024 dates are on the Regional WA public holiday dates page.","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",102),
("20251225","Christmas Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",103),
("20251226","Boxing Day"," ","https://www.commerce.wa.gov.au/labour-relations/public-holidays-western-australia","wa",104);

CREATE TABLE dates(id INTEGER NOT NULL PRIMARY KEY, Date INTEGER NOT NULL, DateName TEXT NOT NULL);

INSERT INTO dates(id,Date,DateName) VALUES
(1,20250101,'January 1'),
(2,20250102,'January 2'),
(3,20250103,'January 3'),
(4,20250104,'January 4'),
(5,20250105,'January 5'),
(6,20250106,'January 6'),
(7,20250107,'January 7'),
(8,20250108,'January 8'),
(9,20250109,'January 9'),
(10,20250110,'January 10'),
(11,20250111,'January 11'),
(12,20250112,'January 12'),
(13,20250113,'January 13'),
(14,20250114,'January 14'),
(15,20250115,'January 15'),
(16,20250116,'January 16'),
(17,20250117,'January 17'),
(18,20250118,'January 18'),
(19,20250119,'January 19'),
(20,20250120,'January 20'),
(21,20250121,'January 21'),
(22,20250122,'January 22'),
(23,20250123,'January 23'),
(24,20250124,'January 24'),
(25,20250125,'January 25'),
(26,20250126,'January 26'),
(27,20250127,'January 27'),
(28,20250128,'January 28'),
(29,20250129,'January 29'),
(30,20250130,'January 30'),
(31,20250131,'January 31'),
(32,20250201,'February 1'),
(33,20250202,'February 2'),
(34,20250203,'February 3'),
(35,20250204,'February 4'),
(36,20250205,'February 5'),
(37,20250206,'February 6'),
(38,20250207,'February 7'),
(39,20250208,'February 8'),
(40,20250209,'February 9'),
(41,20250210,'February 10'),
(42,20250211,'February 11'),
(43,20250212,'February 12'),
(44,20250213,'February 13'),
(45,20250214,'February 14'),
(46,20250215,'February 15'),
(47,20250216,'February 16'),
(48,20250217,'February 17'),
(49,20250218,'February 18'),
(50,20250219,'February 19'),
(51,20250220,'February 20'),
(52,20250221,'February 21'),
(53,20250222,'February 22'),
(54,20250223,'February 23'),
(55,20250224,'February 24'),
(56,20250225,'February 25'),
(57,20250226,'February 26'),
(58,20250227,'February 27'),
(59,20250228,'February 28'),
(60,20250301,'March 1'),
(61,20250302,'March 2'),
(62,20250303,'March 3'),
(63,20250304,'March 4'),
(64,20250305,'March 5'),
(65,20250306,'March 6'),
(66,20250307,'March 7'),
(67,20250308,'March 8'),
(68,20250309,'March 9'),
(69,20250310,'March 10'),
(70,20250311,'March 11'),
(71,20250312,'March 12'),
(72,20250313,'March 13'),
(73,20250314,'March 14'),
(74,20250315,'March 15'),
(75,20250316,'March 16'),
(76,20250317,'March 17'),
(77,20250318,'March 18'),
(78,20250319,'March 19'),
(79,20250320,'March 20'),
(80,20250321,'March 21'),
(81,20250322,'March 22'),
(82,20250323,'March 23'),
(83,20250324,'March 24'),
(84,20250325,'March 25'),
(85,20250326,'March 26'),
(86,20250327,'March 27'),
(87,20250328,'March 28'),
(88,20250329,'March 29'),
(89,20250330,'March 30'),
(90,20250331,'March 31'),
(91,20250401,'April 1'),
(92,20250402,'April 2'),
(93,20250403,'April 3'),
(94,20250404,'April 4'),
(95,20250405,'April 5'),
(96,20250406,'April 6'),
(97,20250407,'April 7'),
(98,20250408,'April 8'),
(99,20250409,'April 9'),
(100,20250410,'April 10'),
(101,20250411,'April 11'),
(102,20250412,'April 12'),
(103,20250413,'April 13'),
(104,20250414,'April 14'),
(105,20250415,'April 15'),
(106,20250416,'April 16'),
(107,20250417,'April 17'),
(108,20250418,'April 18'),
(109,20250419,'April 19'),
(110,20250420,'April 20'),
(111,20250421,'April 21'),
(112,20250422,'April 22'),
(113,20250423,'April 23'),
(114,20250424,'April 24'),
(115,20250425,'April 25'),
(116,20250426,'April 26'),
(117,20250427,'April 27'),
(118,20250428,'April 28'),
(119,20250429,'April 29'),
(120,20250430,'April 30'),
(121,20250501,'May 1'),
(122,20250502,'May 2'),
(123,20250503,'May 3'),
(124,20250504,'May 4'),
(125,20250505,'May 5'),
(126,20250506,'May 6'),
(127,20250507,'May 7'),
(128,20250508,'May 8'),
(129,20250509,'May 9'),
(130,20250510,'May 10'),
(131,20250511,'May 11'),
(132,20250512,'May 12'),
(133,20250513,'May 13'),
(134,20250514,'May 14'),
(135,20250515,'May 15'),
(136,20250516,'May 16'),
(137,20250517,'May 17'),
(138,20250518,'May 18'),
(139,20250519,'May 19'),
(140,20250520,'May 20'),
(141,20250521,'May 21'),
(142,20250522,'May 22'),
(143,20250523,'May 23'),
(144,20250524,'May 24'),
(145,20250525,'May 25'),
(146,20250526,'May 26'),
(147,20250527,'May 27'),
(148,20250528,'May 28'),
(149,20250529,'May 29'),
(150,20250530,'May 30'),
(151,20250531,'May 31'),
(152,20250601,'June 1'),
(153,20250602,'June 2'),
(154,20250603,'June 3'),
(155,20250604,'June 4'),
(156,20250605,'June 5'),
(157,20250606,'June 6'),
(158,20250607,'June 7'),
(159,20250608,'June 8'),
(160,20250609,'June 9'),
(161,20250610,'June 10'),
(162,20250611,'June 11'),
(163,20250612,'June 12'),
(164,20250613,'June 13'),
(165,20250614,'June 14'),
(166,20250615,'June 15'),
(167,20250616,'June 16'),
(168,20250617,'June 17'),
(169,20250618,'June 18'),
(170,20250619,'June 19'),
(171,20250620,'June 20'),
(172,20250621,'June 21'),
(173,20250622,'June 22'),
(174,20250623,'June 23'),
(175,20250624,'June 24'),
(176,20250625,'June 25'),
(177,20250626,'June 26'),
(178,20250627,'June 27'),
(179,20250628,'June 28'),
(180,20250629,'June 29'),
(181,20250630,'June 30'),
(182,20250701,'July 1'),
(183,20250702,'July 2'),
(184,20250703,'July 3'),
(185,20250704,'July 4'),
(186,20250705,'July 5'),
(187,20250706,'July 6'),
(188,20250707,'July 7'),
(189,20250708,'July 8'),
(190,20250709,'July 9'),
(191,20250710,'July 10'),
(192,20250711,'July 11'),
(193,20250712,'July 12'),
(194,20250713,'July 13'),
(195,20250714,'July 14'),
(196,20250715,'July 15'),
(197,20250716,'July 16'),
(198,20250717,'July 17'),
(199,20250718,'July 18'),
(200,20250719,'July 19'),
(201,20250720,'July 20'),
(202,20250721,'July 21'),
(203,20250722,'July 22'),
(204,20250723,'July 23'),
(205,20250724,'July 24'),
(206,20250725,'July 25'),
(207,20250726,'July 26'),
(208,20250727,'July 27'),
(209,20250728,'July 28'),
(210,20250729,'July 29'),
(211,20250730,'July 30'),
(212,20250731,'July 31'),
(213,20250801,'August 1'),
(214,20250802,'August 2'),
(215,20250803,'August 3'),
(216,20250804,'August 4'),
(217,20250805,'August 5'),
(218,20250806,'August 6'),
(219,20250807,'August 7'),
(220,20250808,'August 8'),
(221,20250809,'August 9'),
(222,20250810,'August 10'),
(223,20250811,'August 11'),
(224,20250812,'August 12'),
(225,20250813,'August 13'),
(226,20250814,'August 14'),
(227,20250815,'August 15'),
(228,20250816,'August 16'),
(229,20250817,'August 17'),
(230,20250818,'August 18'),
(231,20250819,'August 19'),
(232,20250820,'August 20'),
(233,20250821,'August 21'),
(234,20250822,'August 22'),
(235,20250823,'August 23'),
(236,20250824,'August 24'),
(237,20250825,'August 25'),
(238,20250826,'August 26'),
(239,20250827,'August 27'),
(240,20250828,'August 28'),
(241,20250829,'August 29'),
(242,20250830,'August 30'),
(243,20250831,'August 31'),
(244,20250901,'September 1'),
(245,20250902,'September 2'),
(246,20250903,'September 3'),
(247,20250904,'September 4'),
(248,20250905,'September 5'),
(249,20250906,'September 6'),
(250,20250907,'September 7'),
(251,20250908,'September 8'),
(252,20250909,'September 9'),
(253,20250910,'September 10'),
(254,20250911,'September 11'),
(255,20250912,'September 12'),
(256,20250913,'September 13'),
(257,20250914,'September 14'),
(258,20250915,'September 15'),
(259,20250916,'September 16'),
(260,20250917,'September 17'),
(261,20250918,'September 18'),
(262,20250919,'September 19'),
(263,20250920,'September 20'),
(264,20250921,'September 21'),
(265,20250922,'September 22'),
(266,20250923,'September 23'),
(267,20250924,'September 24'),
(268,20250925,'September 25'),
(269,20250926,'September 26'),
(270,20250927,'September 27'),
(271,20250928,'September 28'),
(272,20250929,'September 29'),
(273,20250930,'September 30'),
(274,20251001,'October 1'),
(275,20251002,'October 2'),
(276,20251003,'October 3'),
(277,20251004,'October 4'),
(278,20251005,'October 5'),
(279,20251006,'October 6'),
(280,20251007,'October 7'),
(281,20251008,'October 8'),
(282,20251009,'October 9'),
(283,20251010,'October 10'),
(284,20251011,'October 11'),
(285,20251012,'October 12'),
(286,20251013,'October 13'),
(287,20251014,'October 14'),
(288,20251015,'October 15'),
(289,20251016,'October 16'),
(290,20251017,'October 17'),
(291,20251018,'October 18'),
(292,20251019,'October 19'),
(293,20251020,'October 20'),
(294,20251021,'October 21'),
(295,20251022,'October 22'),
(296,20251023,'October 23'),
(297,20251024,'October 24'),
(298,20251025,'October 25'),
(299,20251026,'October 26'),
(300,20251027,'October 27'),
(301,20251028,'October 28'),
(302,20251029,'October 29'),
(303,20251030,'October 30'),
(304,20251031,'October 31'),
(305,20251101,'November 1'),
(306,20251102,'November 2'),
(307,20251103,'November 3'),
(308,20251104,'November 4'),
(309,20251105,'November 5'),
(310,20251106,'November 6'),
(311,20251107,'November 7'),
(312,20251108,'November 8'),
(313,20251109,'November 9'),
(314,20251110,'November 10'),
(315,20251111,'November 11'),
(316,20251112,'November 12'),
(317,20251113,'November 13'),
(318,20251114,'November 14'),
(319,20251115,'November 15'),
(320,20251116,'November 16'),
(321,20251117,'November 17'),
(322,20251118,'November 18'),
(323,20251119,'November 19'),
(324,20251120,'November 20'),
(325,20251121,'November 21'),
(326,20251122,'November 22'),
(327,20251123,'November 23'),
(328,20251124,'November 24'),
(329,20251125,'November 25'),
(330,20251126,'November 26'),
(331,20251127,'November 27'),
(332,20251128,'November 28'),
(333,20251129,'November 29'),
(334,20251130,'November 30'),
(335,20251201,'December 1'),
(336,20251202,'December 2'),
(337,20251203,'December 3'),
(338,20251204,'December 4'),
(339,20251205,'December 5'),
(340,20251206,'December 6'),
(341,20251207,'December 7'),
(342,20251208,'December 8'),
(343,20251209,'December 9'),
(344,20251210,'December 10'),
(345,20251211,'December 11'),
(346,20251212,'December 12'),
(347,20251213,'December 13'),
(348,20251214,'December 14'),
(349,20251215,'December 15'),
(350,20251216,'December 16'),
(351,20251217,'December 17'),
(352,20251218,'December 18'),
(353,20251219,'December 19'),
(354,20251220,'December 20'),
(355,20251221,'December 21'),
(356,20251222,'December 22'),
(357,20251223,'December 23'),
(358,20251224,'December 24'),
(359,20251225,'December 25'),
(360,20251226,'December 26'),
(361,20251227,'December 27'),
(362,20251228,'December 28'),
(363,20251229,'December 29'),
(364,20251230,'December 30'),
(365,20251231,'December 31');

SELECT * FROM "table-name";