-- -------------------------------------------------------- 
-- 2013_03_09_00_World_gunship_battle.sql 
-- -------------------------------------------------------- 
-- Muradin & Saurfang
DELETE FROM `creature_template` WHERE `entry` IN (50004, 50006);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(50004, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'High Overlord Saurfang', '', '', 0, 80, 80, 2, 1802, 1802, 0, 0, 0, 1, 1, 252, 357, 0, 304, '7.5', 2000, 0, 1, 33554432, 8, 0, 0, 0, 0, 0, 215, 320, 44, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, '', 12340),
(50006, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Muradin Bronzebeard', '', '', 10875, 83, 83, 2, 1802, 1802, 1, 1, '1.14286', 1, 1, 468, 702, 0, 175, '47.2', 2000, 2000, 1, 33554432, 8, 0, 0, 0, 0, 0, 374, 562, 140, 7, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15284, 70309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 175, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 0, 2, '', 12340);

-- Miscs
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` IN (36939, 38156, 38637, 38638, 37184);
UPDATE `creature_template` SET `modelid1` = 25455, `modelid2` = 0, `unit_flags` = 33555202, `flags_extra` = 129, `ScriptName` = 'npc_sindragosas_ward' WHERE `entry` = 37503;
 

-- Templates del trash
UPDATE `creature_template` SET `faction_A` = 1801, `faction_H` = 1801, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_flags` = 32832, `spell1` = 71339, `spell2` = 70161, `spell3` = 72539, `mechanic_immune_mask` = 73745 WHERE `entry` IN (36968, 38403, 38675, 38676);
UPDATE `creature_template` SET `faction_A` = 1802, `faction_H` = 1802, `baseattacktime` = 2000, `rangeattacktime` = 2000, `unit_flags` = 32832, `spell1` = 71335, `spell2` = 70162, `spell3` = 72566, `mechanic_immune_mask` = 73745 WHERE `entry` IN (36969, 38408, 38689, 38690);

-- Spawn for the sorcerer and the vindicator
DELETE FROM `creature` WHERE `id` IN (37003, 37026);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(200988, 37003, 631, 15, 1, 0, 0, -562.385, 2217.58, 199.969, 3.46228, 86400, 0, 0, 398434, 41690, 0, 0, 0, 0),
(201020, 37026, 631, 15, 1, 0, 0, -571.091, 2219.71, 199.969, 5.06842, 86400, 0, 0, 269600, 91600, 0, 0, 0, 0);

-- Scriptnames
UPDATE `creature_template` SET `ScriptName` = 'npc_muradin_gunship' WHERE `entry` = 36948;
UPDATE `creature_template` SET `ScriptName` = 'npc_saurfang_gunship' WHERE `entry` = 36939;
UPDATE `creature_template` SET `ScriptName` = 'npc_zafod_boombox' WHERE `entry` = 37184;
UPDATE `creature_template` SET `ScriptName` = 'npc_korkron_defender' WHERE `entry` = 37032;
UPDATE `creature_template` SET `ScriptName` = 'npc_korkron_primalist' WHERE `entry` = 37030;
UPDATE `creature_template` SET `ScriptName` = 'npc_skybreaker_vindicator' WHERE `entry` = 37003;
UPDATE `creature_template` SET `ScriptName` = 'npc_skybreaker_protector' WHERE `entry` = 36998;
UPDATE `creature_template` SET `ScriptName` = 'npc_icc_spire_frostwyrm' WHERE `entry` = 37230;
UPDATE `creature_template` SET `ScriptName` = 'npc_korkron_axethrower_rifleman' WHERE `entry` = 36968;
UPDATE `creature_template` SET `ScriptName` = 'npc_korkron_axethrower_rifleman' WHERE `entry` = 36969;
UPDATE `creature_template` SET `ScriptName` = 'npc_mortar_soldier_or_rocketeer', AIName = '' WHERE `entry` = 36982;
UPDATE `creature_template` SET `ScriptName` = 'npc_mortar_soldier_or_rocketeer', AIName = '' WHERE `entry` = 36978;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_mage' WHERE `entry` = 37117;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_mage' WHERE `entry` = 37116;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_trigger' WHERE `entry` = 37547;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_portal' WHERE `entry` = 37227;
UPDATE `creature_template` SET `ScriptName` = 'npc_marine_or_reaver' WHERE `entry` = 36957;
UPDATE `creature_template` SET `ScriptName` = 'npc_marine_or_reaver' WHERE `entry` = 36950;
UPDATE `creature_template` SET `ScriptName` = 'npc_sergeant' WHERE `entry` = 36960;
UPDATE `creature_template` SET `ScriptName` = 'npc_sergeant' WHERE `entry` = 36961;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_skybreaker' WHERE `entry` = 37540;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_orgrimmar' WHERE `entry` = 37215;
UPDATE `gameobject_template` SET `ScriptName` = 'transport_gunship' WHERE `entry` IN (201580, 201812);
UPDATE `item_template` SET ScriptName = 'item_icc_rocket_pack' WHERE entry = 49278;

-- Areatriggers Script
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5630, 5628, 5623);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5628,'at_icc_land_frostwyrm'),
(5630,'at_icc_land_frostwyrm');

-- Spell Scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70713, 68645, 69471, 69488, 69402, 70175, 71335, 71339);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('70713', 'spell_remove_rocket_pack'),
('68645', 'spell_rocket_pack'),
('69471', 'spell_gb_heat_drain'),
('69488', 'spell_gb_overheat_drain'),
('69402', 'spell_gb_incinerating_blast'),
('70175', 'spell_gb_incinerating_blast'),
('71335', 'spell_gb_burning_pitch'),
('71339', 'spell_gb_burning_pitch');

-- Transport
DELETE FROM transports WHERE entry IN (201580, 201581, 201811, 201812);
DELETE FROM creature WHERE id IN (37230, 36838, 36839, 36948, 36939);
DELETE FROM `creature_template_addon` WHERE (`entry`=37547);
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 37547;

-- Spell effects
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 71193 AND `spell_effect` = -71188;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 71195 AND `spell_effect` = -71193;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 68645 AND `spell_effect` = 69193;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 73077 AND `spell_effect` = 69188;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 73077 AND `spell_effect` = 68721;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 69193 AND `spell_effect` = 69192;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(71193, -71188, 0, 'Gunship Battle - Veteran removes Experimented'),
(71195, -71193, 0, 'Gunship Battle - Elite removes Veteran'),
(73077, 69188, 2, 'Gunship Battle - Fix visual for Rocket Pack'),
(68645, 69193, 0, 'Gunship Battle - Fix visual for Rocket Pack'),
(69193, 69192, 0, 'Gunship Battle - Cast Rocket Burst when landing with Rocket Pack');

-- Spells
UPDATE `creature_template` SET `unit_flags` = 33554564, `flags_extra` = 2 WHERE `entry` IN (37044, 37041);
UPDATE `creature_template` SET `faction_A` = 1801, `faction_H` = 1801 WHERE `entry` = 37044;
UPDATE `creature_template` SET `faction_A` = 1802, `faction_H` = 1802 WHERE `entry` = 37041;
DELETE FROM `creature_template_addon` WHERE `entry` IN (37044, 37041);
SET @KORKRON := 37044;     -- Kor'kron Battle Standard
SET @SKYBREAKER := 37041;  -- Skybreaker Battle Standard
SET @HSPELL := 69809;
SET @ASPELL := 69808;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@KORKRON, @SKYBREAKER);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@KORKRON, @SKYBREAKER);
INSERT INTO `smart_scripts`
(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
VALUES
(@KORKRON ,0,0,0,25,0,100,1,0,0,0,0,11,@HSPELL,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Kor''kron Battle Standard - On spawn & reset - Cast spell 69809'),
(@SKYBREAKER,0,0,0,25,0,100,1,0,0,0,0,11,@ASPELL,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Skybreaker Battle Standard - On spawn & reset - Cast spell 69808');

-- Creature Text
SET @MURADIN := 36948;
SET @OVERLORD := 36939;
SET @MURADIN_INVISIBLE := 50006;
SET @OVERLORD_INVISIBLE := 50004;
SET @PRIMALIST := 37030;
SET @INVOKER := 37033;
SET @DEFENDER := 37032;
SET @VINDICATOR := 37003;
SET @SORCERER := 37026;
SET @PROTECTOR := 36998;
SET @FROSTWYRM := 37230;
SET @SOUNDID := 0;

DELETE FROM `creature_text` WHERE `entry` IN (36948, 36939, 37030, 37033, 37032, 37003, 37026, 36998, 37230, 50004, 50006);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@MURADIN_INVISIBLE,  0, 0, 'Move yer jalopy or we''ll blow it out of the sky, orc! The Horde''s got no business here!', 14, 0, 0, 0, 0, 16969, 'Muradin Bronzebeard - INVISIBLE_0'),
(@MURADIN_INVISIBLE,  1, 0, 'Marines, Sergeants, attack!', 14, 0, 0, 0, 0, 16956, 'Muradin Bronzebeard - INVISIBLE_1'),
(@MURADIN,  0, 0, 'Fire up the engines! We got a meetin'' with destiny, lads!', 14, 0, 100, 0, 0, 16962, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_0'),
(@MURADIN,  1, 0, 'Hold on to yer hats!', 14, 0, 100, 0, 0, 16963, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_1'),
(@MURADIN,  2, 0, 'What in the world is that? Grab me spyglass, crewman!', 14, 0, 100, 0, 0, 16964, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_2'),
(@MURADIN,  3, 0, 'By me own beard! HORDE SAILIN'' IN FAST ''N HOT!', 14, 0, 100, 0, 0, 16965, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_3'),
(@MURADIN,  4, 0, 'EVASIVE ACTION! MAN THE GUNS!', 14, 0, 100, 0, 0, 16966, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_4'),
(@MURADIN,  5, 0, 'Cowardly dogs! Ye blindsided us!', 14, 0, 100, 0, 0, 16967, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_5'),
(@MURADIN,  6, 0, 'Not me battle? I dunnae who ye? think ye are, mister, but I got a score to settle with Arthas and yer not gettin'' in me way! FIRE ALL GUNS! FIRE! FIRE!', 14, 0, 100, 0, 0, 16968, 'Muradin Bronzebeard - SAY_INTRO_ALLIANCE_7'),
(@MURADIN,  7, 0, 'Move yer jalopy or we''ll blow it out of the sky, orc! The Horde''s got no business here!', 14, 0, 100, 0, 0, 16969, 'Muradin Bronzebeard - SAY_INTRO_HORDE_3'),
(@MURADIN,  8, 0, 'What''s this then?! Ye won''t be takin'' this son o'' Ironforge''s vessel without a fight!.', 14, 0, 100, 0, 0, 16958, 'Muradin Bronzebeard - SAY_BOARDING_SKYBREAKER_1'),
(@MURADIN,  9, 0, 'Marines, Sergeants, attack!', 14, 0, 100, 0, 0, 16956, 'Muradin Bronzebeard - SAY_BOARDING_ORGRIMS_HAMMER_0'),
(@MURADIN, 10, 0, 'Riflemen, shoot faster!', 14, 0, 100, 0, 0, 16954, 'Muradin Bronzebeard - SAY_NEW_RIFLEMEN_SPAWNED'),
(@MURADIN, 11, 0, 'Mortar team, reload!', 14, 0, 100, 0, 0, 16955, 'Muradin Bronzebeard - SAY_NEW_MORTAR_TEAM_SPAWNED'),
(@MURADIN, 12, 0, 'We''re taking hull damage, get a sorcerer out here to shut down those cannons!', 14, 0, 100, 0, 0, 16957, 'Muradin Bronzebeard - SAY_NEW_MAGE_SPAWNED'),
(@MURADIN, 13, 0, 'Don''t say I didn''t warn ya, scoundrels! Onward, brothers and sisters!', 14, 0, 100, 0, 0, 16959, 'Muradin Bronzebeard - SAY_ALLIANCE_VICTORY'),
(@MURADIN, 14, 0, 'Captain Bartlett, get us out of here! We''re taken too much damage to stay afloat!', 14, 0, 100, 0, 0, 16960, 'Muradin Bronzebeard - SAY_ALLIANCE_DEFEAT'),
(@OVERLORD_INVISIBLE, 0, 0, 'This is not your battle, dwarf. Back down or we will be forced to destroy your ship.', 14, 0, 0, 0, 0, 17093, 'High Overlord Saurfang - INVISIBLE_0'),
(@OVERLORD_INVISIBLE, 1, 0, 'Reavers, Sergeants, attack!', 14, 0, 0, 0, 0, 17081, 'High Overlord Saurfang - INVISIBLE_1'),
(@OVERLORD, 0, 0, 'Rise up, sons and daughters of the Horde! Today we battle a hated enemy of the Horde! LOK''TAR OGAR!', 14, 0, 100, 0, 0, 17087, 'High Overlord Saurfang - SAY_INTRO_HORDE_0'),
(@OVERLORD, 1, 0, 'Kor''kron, take us out!', 14, 0, 100, 0, 0, 17088, 'High Overlord Saurfang - SAY_INTRO_HORDE_1_1'),
(@OVERLORD, 2, 0, 'What is that?! Something approaching in the distance!', 14, 0, 100, 0, 0, 17089, 'High Overlord Saurfang - SAY_INTRO_HORDE_1'),
(@OVERLORD, 3, 0, 'ALLIANCE GUNSHIP! ALL HANDS ON DECK!', 14, 0, 100, 0, 0, 17090, 'High Overlord Saurfang - SAY_INTRO_HORDE_2'),
(@OVERLORD, 4, 0, 'You will know our business soon! KOR''KRON, ANNIHILATE THEM!', 14, 0, 100, 0, 0, 17092, 'High Overlord Saurfang - SAY_INTRO_HORDE_4'),
(@OVERLORD, 5, 0, 'Reavers, Sergeants, attack!', 14, 0, 100, 0, 0, 17081, 'High Overlord Saurfang - SAY_BOARDING_SKYBREAKER_0'),
(@OVERLORD, 6, 0, 'You DARE board my ship? Your death will come swiftly.', 14, 0, 100, 0, 0, 17083, 'High Overlord Saurfang - SAY_BOARDING_ORGRIMS_HAMMER_1'),
(@OVERLORD, 7, 0, 'Axethrowers, hurl faster!', 14, 0, 100, 0, 0, 17079, 'High Overlord Saurfang - SAY_NEW_AXETHROWER_SPAWNED'),
(@OVERLORD, 8, 0, 'Rocketeers, reload!', 14, 0, 100, 0, 0, 17080, 'High Overlord Saurfang - SAY_NEW_ROCKETEERS_SPAWNED'),
(@OVERLORD, 9, 0, 'We''re taking hull damage, get a battle-mage out here to shut down those cannons!', 14, 0, 100, 0, 0, 17082, 'High Overlord Saurfang - SAY_NEW_BATTLE_MAGE_SPAWNED'),
(@OVERLORD, 10, 0, 'The Alliance falter. Onward to the Lich King!', 14, 0, 100, 0, 0, 17084, 'High Overlord Saurfang - SAY_HORDE_VICTORY'),
(@OVERLORD, 11, 0, 'Damage control! Put those fires out! You haven''t seen the last of the Horde!', 14, 0, 100, 0, 0, 17085, 'High Overlord Saurfang - SAY_HORDE_DEFEAT'),
(@OVERLORD, 12, 0, 'This is not your battle, dwarf. Back down or we will be forced to destroy your ship.', 14, 0, 100, 0, 0, 17093, 'High Overlord Saurfang - SAY_INTRO_ALLIANCE_6'),

(@PRIMALIST,0, 0, 'Thank the spirits for you, brothers and sisters. The Skybreaker has already left. Quickly now, to Orgrim''s Hammer! If you leave soon, you may be able to catch them.', 12, 0, 100, 0, 0, @SOUNDID, 'Kor''kron Primalist - SAY_FIRST_SQUAD_RESCUED_HORDE_0'),
(@INVOKER,  0, 0, 'This should be helpin''ya!', 12, 0, 100, 0, 0, @SOUNDID, 'Kor''kron Invoker - SAY_FIRST_SQUAD_RESCUED_HORDE_1'),
(@INVOKER,  1, 0, '%s summons a Kor''kron Battle Standard.', 16, 0, 100, 0, 0, @SOUNDID, 'Kor''kron Invoker - SAY_SUMMON_BATTLE_STANDARD'),
(@DEFENDER, 0, 0, 'Aka''Magosh, brave warriors. The alliance is in great number here.', 12, 0, 100, 0, 0, @SOUNDID, 'Kor''kron Defender - SAY_SECOND_SQUAD_RESCUED_HORDE_0'),
(@DEFENDER, 1, 0, 'Captain Saurfang will be pleased to see you aboard Orgrim''s Hammer. Make haste, we will secure the area until you are ready for take-off.', 12, 0, 100, 0, 0, @SOUNDID, 'Kor''kron Defender - SAY_SECOND_SQUAD_RESCUED_HORDE_1'),
(@DEFENDER, 2, 0, 'A screeching cry pierces the air above!',41, 0, 100, 0, 0, @SOUNDID, 'Frostwyrm - SAY_FROSTWYRM_SUMMON_0'),
(@VINDICATOR, 0, 0, 'Thank goodness you arrived when you did, heroes. Orgrim''s Hammer has already left. Quickly now, to The Skybreaker! If you leave soon, you may be able to catch them.', 12, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Vindicator - SAY_FIRST_SQUAD_RESCUED_ALLIANCE_0'),
(@SORCERER, 0, 0, 'This ought to help!', 12, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Sorcerer - SAY_FIRST_SQUAD_RESCUED_ALLIANCE_1'),
(@SORCERER, 1, 0, '%s summons a Skybreaker Battle Standard.', 16, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Sorcerer - SAY_SUMMON_BATTLE_STANDARD'),
(@PROTECTOR,0, 0, 'You have my thanks. We were outnumbered until you arrived.', 12, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Protector - SAY_SECOND_SQUAD_RESCUED_ALLIANCE_0'),
(@PROTECTOR,1, 0, 'Captain Muradin is waiting aboard The Skybreaker. We''ll secure the area until you are ready for take off.', 12, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Protector - SAY_SECOND_SQUAD_RESCUED_ALLIANCE_1'),
(@PROTECTOR,2, 0, 'Skybreaker infantry, hold position!', 12, 0, 100, 0, 0, @SOUNDID, 'Skybreaker Protector - SAY_SECOND_SQUAD_RESCUED_ALLIANCE_2'),
(@PROTECTOR,3, 0, 'A screeching cry pierces the air above!',41, 0, 100, 0, 0, @SOUNDID, 'Frostwyrm - SAY_FROSTWYRM_SUMMON_0'),
(@FROSTWYRM,0, 0, 'A Spire Frostwyrm lands just before Orgrim''s Hammer.', 16, 0, 100, 0, 0, @SOUNDID, 'Frostwyrm - SAY_FROSTWYRM_LAND_H_1'),
(@FROSTWYRM,1, 0, 'A Spire Frostwyrm lands just before The Skybreaker. ', 16, 0, 100, 0, 0, @SOUNDID, 'Frostwyrm - SAY_FROSTWYRM_LAND_A_2');



-- CONDITIONS
-- Additionnal Conditions (by 2010phenix - https://github.com/2010phenix)
SET @ENTRYA := 37540;
SET @ENTRYH := 37215;
SET @ENTRYA10H := 38128;
SET @ENTRYH10H := 38129;
SET @ENTRYA25 := 38699;
SET @ENTRYH25 := 38701;
SET @ENTRYA25H := 38700;
SET @ENTRYH25H := 38702;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (69400, 70173, 69402, 70175, 70374, 70383, 72959, 69705);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES
('13', '69400', '18', '1', @ENTRYA),    -- Horde Cannon (Cannon Blast) set to hit only Skybreaker (effect 2)
('13', '69400', '18', '1', @ENTRYA10H), -- Horde Cannon (Cannon Blast) set to hit only Skybreaker - 10H (effect 2)
('13', '69400', '18', '1', @ENTRYA25),  -- Horde Cannon (Cannon Blast) set to hit only Skybreaker - 25Normal (effect 2)
('13', '69400', '18', '1', @ENTRYA25H), -- Horde Cannon (Cannon Blast) set to hit only Skybreaker -- 25H (effect 2)
('13', '70173', '18', '1', @ENTRYH),    -- Alliance Cannon (Cannon Blast) set to hit only Orgrimms Hammer (effect 2)
('13', '70173', '18', '1', @ENTRYH10H), -- Alliance Cannon (Cannon Blast) set to hit only Orgrimms Hammer 10H (effect 2)
('13', '70173', '18', '1', @ENTRYH25),  -- Alliance Cannon (Cannon Blast) set to hit only Orgrimms Hammer - 25Normal (effect 2)
('13', '70173', '18', '1', @ENTRYH25H), -- Alliance Cannon (Cannon Blast) set to hit only Orgrimms Hammer -- 25H (effect 2)
('13', '69402', '18', '1', @ENTRYA),    -- Horde Cannon (Incinerating Blast) set to hit only Skybreaker (effect 2)
('13', '69402', '18', '1', @ENTRYA10H), -- Horde Cannon (Incinerating Blast) set to hit only Skybreaker 10H(effect 2)
('13', '69402', '18', '1', @ENTRYA25),  -- Horde Cannon (Incinerating Blast) set to hit only Skybreaker - 25Normal (effect 2)
('13', '69402', '18', '1', @ENTRYA25H), -- Horde Cannon (Incinerating Blast) set to hit only Skybreaker -- 25H (effect 2)
('13', '70175', '18', '1', @ENTRYH),    -- Alliance Cannon (Incinerating Blast) set to hit only Orgrimms Hammer (effect 2)
('13', '70175', '18', '1', @ENTRYH10H), -- Alliance Cannon (Incinerating Blast) set to hit only Orgrimms Hammer 10H (effect 2)
('13', '70175', '18', '1', @ENTRYH25),  -- Alliance Cannon (Incinerating Blast) set to hit only Orgrimms Hammer - 25Normal (effect 2)
('13', '70175', '18', '1', @ENTRYH25H), -- Alliance Cannon (Incinerating Blast) set to hit only Orgrimms Hammer -- 25H (effect 2)
('13', '70374', '18', '1', @ENTRYA),    -- Burning Pitch
('13', '70374', '18', '1', @ENTRYA10H), -- Burning Pitch
('13', '70374', '18', '1', @ENTRYA25),  -- Burning Pitch
('13', '70374', '18', '1', @ENTRYA25H), -- Burning Pitch
('13', '70383', '18', '1', @ENTRYH),    -- Burning Pitch
('13', '70383', '18', '1', @ENTRYH10H), -- Burning Pitch
('13', '70383', '18', '1', @ENTRYH25),  -- Burning Pitch
('13', '70383', '18', '1', @ENTRYH25H), -- Burning Pitch
('13', '72959', '18', '1', 0),          -- Achievement (Radius: 50000 yards)
('13', '69705' ,'18', '1', 36838),      -- Gunship Battle - Spell 69705 (Below Zero) target creature 36838
('13', '69705' ,'18', '1', 36839);      -- Gunship Battle - Spell 69705 (Below Zero) target creature 36839

-- Update condition by TrinityCore:
DELETE FROM conditions WHERE SourceTypeOrReferenceId=13 AND SourceEntry IN (69400, 70173, 69402, 70175, 70374, 70383, 69705, 72959);
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, SourceId, ElseGroup, ConditionTypeOrReference, ConditionTarget, ConditionValue1, ConditionValue2, ConditionValue3, NegativeCondition, ErrorTextId, ScriptName, Comment) VALUES
-- Alliance
(13, 3, 69400, 0, 0, 31, 0, 3, 37540, 0, 0, 0, '', NULL),
(13, 1, 70374, 0, 0, 31, 0, 3, 37540, 0, 0, 0, '', NULL),
(13, 3, 69402, 0, 0, 31, 0, 3, 37540, 0, 0, 0, '', NULL),
(13, 1, 69705, 0, 0, 31, 0, 3, 36838, 0, 0, 0, '', NULL),
-- Horde
(13, 3, 70175, 0, 1, 31, 0, 3, 37215, 0, 0, 0, '', NULL),
(13, 1, 70383, 0, 1, 31, 0, 3, 37215, 0, 0, 0, '', NULL),
(13, 3, 70173, 0, 1, 31, 0, 3, 37215, 0, 0, 0, '', NULL),
(13, 1, 69705, 0, 1, 31, 0, 3, 36839, 0, 0, 0, '', NULL);



-- Loot templates
-- Fix by TrinityCore
-- Set Variables
SET @Gunship10N := 28057; -- Data1 for 201872 & 202177
SET @Gunship10H := 28045; -- Data1 for 201873 & 202178
SET @Gunship25N := 28072; -- Data1 for 201874 & 202179
SET @Gunship25H := 28090; -- Data1 for 201875 & 202180
SET @emblem := 49426; -- Emblem of Frost
SET @SfShard := 50274; -- Shadowfrost Shard
SET @PriSar := 49908; -- Primordial Saronite
-- Dug up the old references i created for UP34:
SET @Ref10J := 34329;
SET @Ref25J := 34251;
SET @RefJ10H := 34263;
SET @RefJ25H := 34275;

-- Gunship_Armory10N_reference
DELETE FROM `reference_loot_template` WHERE `entry` IN (@Ref10J,@Ref25J,@RefJ10H,@RefJ25H);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Ref10J,50791,0,1,1,1,1), -- Saronite Gargoyle Cloak
(@Ref10J,50795,0,1,1,1,1), -- Cord of Dark Suffering
(@Ref10J,50794,0,1,1,1,1), -- Neverending Winter
(@Ref10J,50787,0,1,1,1,1), -- Frost Giant's Cleaver
(@Ref10J,50793,0,1,1,1,1), -- Midnight Sun
(@Ref10J,50788,0,1,1,1,1), -- Bone Drake's Enameled Boots
(@Ref10J,50792,0,1,1,1,1), -- Pauldrons of Lost Hope
(@Ref10J,50340,0,1,1,1,1), -- Muradin's Spyglass
(@Ref10J,50797,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm
(@Ref10J,50790,0,1,1,1,1), -- Abomination's Bloody Ring
(@Ref10J,50789,0,1,1,1,1), -- Icecrown Rampart Bracers
(@Ref10J,50796,0,1,1,1,1), -- Bracers of Pale Illumination
-- Gunship_Armory25N_reference
(@Ref25J,50011,0,1,1,1,1), -- Gunship Captain's Mittens
(@Ref25J,50002,0,1,1,1,1), -- Polar Bear Claw Bracers
(@Ref25J,50006,0,1,1,1,1), -- Corp'rethar Ceremonial Crown
(@Ref25J,50010,0,1,1,1,1), -- Waistband of Righteous Fury
(@Ref25J,50003,0,1,1,1,1), -- Boneguard Commander's Pauldrons
(@Ref25J,50000,0,1,1,1,1), -- Scourge Hunter's Vambraces
(@Ref25J,50359,0,1,1,1,1), -- Althor's Abacus
(@Ref25J,50352,0,1,1,1,1), -- Corpse Tongue Coin
(@Ref25J,49999,0,1,1,1,1), -- Skeleton Lord's Circle
(@Ref25J,50009,0,1,1,1,1), -- Boots of Unnatural Growth
(@Ref25J,50008,0,1,1,1,1), -- Ring of Rapid Ascent
(@Ref25J,49998,0,1,1,1,1), -- Shadowvault Slayer's Cloak
(@Ref25J,50005,0,1,1,1,1), -- Amulet of the Silent Eulogy
(@Ref25J,50411,0,1,1,1,1), -- Scourgeborne Waraxe
(@Ref25J,50001,0,1,1,1,1), -- Ikfirus's Sack of Wonder
-- Gunship_Armory10H_reference
(@RefJ10H,51912,0,1,1,1,1), -- Saronite Gargoyle Cloak (heroic)
(@RefJ10H,51908,0,1,1,1,1), -- Cord of Dark Suffering (heroic)
(@RefJ10H,51909,0,1,1,1,1), -- Neverending Winter (heroic)
(@RefJ10H,51916,0,1,1,1,1), -- Frost Giant's Cleaver (heroic)
(@RefJ10H,51910,0,1,1,1,1), -- Midnight Sun (heroic)
(@RefJ10H,51915,0,1,1,1,1), -- Bone Drake's Enameled Boots (heroic)
(@RefJ10H,51911,0,1,1,1,1), -- Pauldrons of Lost Hope (heroic)
(@RefJ10H,50345,0,1,1,1,1), -- Muradin's Spyglass (heroic)
(@RefJ10H,51906,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm (heroic)
(@RefJ10H,51913,0,1,1,1,1), -- Abomination's Bloody Ring (heroic)
(@RefJ10H,51914,0,1,1,1,1), -- Icecrown Rampart Bracers (heroic)
(@RefJ10H,51907,0,1,1,1,1), -- Bracers of Pale Illumination (heroic)
-- Gunship_Armory25H_reference
(@RefJ25H,50663,0,1,1,1,1), -- Gunship Captain's Mittens (heroic)
(@RefJ25H,50659,0,1,1,1,1), -- Polar Bear Claw Bracers (heroic)
(@RefJ25H,50661,0,1,1,1,1), -- Corp'rethar Ceremonial Crown (heroic)
(@RefJ25H,50667,0,1,1,1,1), -- Waistband of Righteous Fury (heroic)
(@RefJ25H,50660,0,1,1,1,1), -- Boneguard Commander's Pauldrons (heroic)
(@RefJ25H,50655,0,1,1,1,1), -- Scourge Hunter's Vambraces (heroic)
(@RefJ25H,50366,0,1,1,1,1), -- Althor's Abacus (heroic)
(@RefJ25H,50349,0,1,1,1,1), -- Corpse Tongue Coin (heroic)
(@RefJ25H,50657,0,1,1,1,1), -- Skeleton Lord's Circle (heroic)
(@RefJ25H,50665,0,1,1,1,1), -- Boots of Unnatural Growth (heroic)
(@RefJ25H,50664,0,1,1,1,1), -- Ring of Rapid Ascent (heroic)
(@RefJ25H,50653,0,1,1,1,1), -- Shadowvault Slayer's Cloak (heroic)
(@RefJ25H,50658,0,1,1,1,1), -- Amulet of the Silent Eulogy (heroic)
(@RefJ25H,50654,0,1,1,1,1), -- Scourgeborne Waraxe (heroic)
(@RefJ25H,50656,0,1,1,1,1); -- Ikfirus's Sack of Wonder (heroic)

-- Bind the refs to the objects
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@Gunship10N,@Gunship10H,@Gunship25N,@Gunship25H);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Gunship10N
(@Gunship10N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10N
(@Gunship10N,1,100,1,0,-@Ref10J,2), -- 2 from reference 10Normal
-- Gunship25N
(@Gunship25N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 25N
(@Gunship25N,1,100,1,0,-@Ref25J,2), -- 3 from reference 25Normal
(@Gunship25N,@SfShard,-35,1,0,1,1), -- Shadowfrost Shard @ 38% chance
(@Gunship25N,@PriSar,38,1,0,1,1), -- Primordial Saronite @ 10% chance
-- Gunship10H
(@Gunship10H,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10H
(@Gunship10H,1,100,1,0,-@RefJ10H,2), -- 2 from reference 10Heroic
(@Gunship10H,@PriSar,38,1,0,1,1), -- Primordial Saronite @ 38% chance
-- Gunship25H
(@Gunship25H,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 25H
(@Gunship25H,1,100,1,0,-@RefJ25H,2), -- 3 from reference 25Heroic
(@Gunship25H,@SfShard,-75,1,0,1,1), -- Shadowfrost Shard @ 75% chance
(@Gunship25H,@PriSar,50,1,0,1,1); -- Primordial Saronite @ 50% chance

SET @Twins := 34329; 
SET @emblem := 49426;
DELETE FROM `reference_loot_template` WHERE `entry`=@Twins;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(@Twins,47296,0,1,1,1,1), -- Greaves of Ruthless Judgment
(@Twins,47297,0,1,1,1,1), -- The Executioner's Vice
(@Twins,47298,0,1,1,1,1), -- Armguards of the Shieldmaiden
(@Twins,47299,0,1,1,1,1), -- Belt of the Pitiless Killer
(@Twins,47300,0,1,1,1,1), -- Gouge of the Frigid Heart
(@Twins,47301,0,1,1,1,1), -- Skyweaver Vestments
(@Twins,47302,0,1,1,1,1), -- Twin's Pact
(@Twins,47303,0,1,1,1,1), -- Death's Choice
(@Twins,47304,0,1,1,1,1), -- Legplates of Ascension
(@Twins,47305,0,1,1,1,1); -- Legionnaire's Gorget
SET @Gunship10N := 28057; -- Data1 for 201872 & 202177
SET @Ref10J := 12036;
-- Gunship_Armory10N_reference
DELETE FROM `reference_loot_template` WHERE `entry`=@Ref10J;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Ref10J,50791,0,1,1,1,1), -- Saronite Gargoyle Cloak
(@Ref10J,50795,0,1,1,1,1), -- Cord of Dark Suffering
(@Ref10J,50794,0,1,1,1,1), -- Neverending Winter
(@Ref10J,50787,0,1,1,1,1), -- Frost Giant's Cleaver
(@Ref10J,50793,0,1,1,1,1), -- Midnight Sun
(@Ref10J,50788,0,1,1,1,1), -- Bone Drake's Enameled Boots
(@Ref10J,50792,0,1,1,1,1), -- Pauldrons of Lost Hope
(@Ref10J,50340,0,1,1,1,1), -- Muradin's Spyglass
(@Ref10J,50797,0,1,1,1,1), -- Ice-Reinforced Vrykul Helm
(@Ref10J,50790,0,1,1,1,1), -- Abomination's Bloody Ring
(@Ref10J,50789,0,1,1,1,1), -- Icecrown Rampart Bracers
(@Ref10J,50796,0,1,1,1,1); -- Bracers of Pale Illumination
-- Bind the refs to the objects
DELETE FROM `gameobject_loot_template` WHERE `entry`=@Gunship10N;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Gunship10N
(@Gunship10N,@emblem,100,1,0,2,2), -- Gunship Armory 2xemblems 10N
(@Gunship10N,1,100,1,0,-@Ref10J,2); -- 2 from reference 10Normal

-- Make Muradin and Saufangs unattackable and unable to attack players (All difficulty modes)
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=36948;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=36939;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38156;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38638;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38637;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38157;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38639;
UPDATE `creature_template` SET `unit_flags`=2, `flags_extra`=2 WHERE `entry`=38640;

-- Prevent players from exploiting the Rocket pack item outside of raid
UPDATE `item_template` SET `area` = 4812 WHERE `entry` = 49278;
UPDATE `item_template` SET `map` = 631 WHERE `entry` = 49278;



-- Fix for Gunship Battle Cannons
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_cannon' WHERE `entry` = 36838;
UPDATE `creature_template` SET `ScriptName` = 'npc_gunship_cannon' WHERE `entry` = 36839;

-- Cannon template
UPDATE `creature_template` SET `exp` = 2, `VehicleId` = 554, `RegenHealth` = 0, `npcflag` = 16777216, `spell1` = 69399, `spell2` = 69401 WHERE entry = 36839;
UPDATE `creature_template` SET `exp` = 2, `VehicleId` = 554, `RegenHealth` = 0, `npcflag` = 16777216, `spell1` = 70172, `spell2` = 70174 WHERE entry = 36838;
DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (36838, 36839);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES
('36838', '46598', '1'),
('36839', '46598', '1');
DELETE FROM `creature_template_addon` WHERE `entry` IN (36838, 36839);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(36838, 0, 0, 0, 1, 0, 69470),
(36839, 0, 0, 0, 1, 0, 69470);
UPDATE `creature_template` SET `difficulty_entry_1` = '38129',`difficulty_entry_2` = '38701', `difficulty_entry_3` = '38702' WHERE `entry` =37215;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35, `minlevel` = 83, `maxlevel` = 83, `unit_flags` = 4, `flags_extra` = 2, `modelid1` = 1126, `modelid2` = 11686 WHERE `entry` IN (37215, 38129, 38701, 38702, 37540, 38128, 38699, 38700);

-- Fix for Cannons
UPDATE `creature_template` SET `difficulty_entry_1`=0 WHERE `entry`=36839 LIMIT 1;
UPDATE `creature_template` SET `speed_walk`=0 ,`speed_run`=0 WHERE `entry` IN (36839,36838);
 
 
-- -------------------------------------------------------- 
-- 2013_03_10_00_world_isle_of_conquest_exploit.sql 
-- -------------------------------------------------------- 
-- bosses Isle of Conquest
UPDATE `creature_template` SET `ScriptName`='bosses_isle_of_conquest' WHERE `entry` IN (34924,34922);
 
 
-- -------------------------------------------------------- 
-- 2013_03_30_world_raise_ally.sql 
-- -------------------------------------------------------- 
DELETE FROM `creature_template` WHERE `entry` IN (30230);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(30230, 0, 0, 0, 0, 0, 24992, 24993, 24994, 24995, 'Risen Ally', '', '', 0, 1, 1, 0, 35, 35, 0, 0.8, 0.99206, 1, 0, 422, 586, 0, 642, 4.6, 2000, 0, 1, 0, 0, 0, 40, 0, 0, 0, 0, 345, 506, 80, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62225, 47480, 47481, 47482, 47484, 51874, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 288.8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, 'npc_risen_ally', 12340); 
 
-- -------------------------------------------------------- 
-- 2013_04_10_world_AntiCheat_string.sql 
-- -------------------------------------------------------- 
DELETE FROM `trinity_string` WHERE `entry` = 11002;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(11002, '|cFFFFBF00[%s]:|cFFFFFFFF [%s] |cFF00FFFFdetected as possible cheater.');
 
 
-- -------------------------------------------------------- 
-- 2013_05_06_champion_of_anguish.sql 
-- -------------------------------------------------------- 
UPDATE `creature_template` SET `ScriptName` = 'npc_vladof_the_butcher' WHERE `entry` =30022; 
 
-- -------------------------------------------------------- 
-- 2013_05_06_sindragosa.sql 
-- -------------------------------------------------------- 
-- Sindragosa Flight
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=36853;

-- Register spell-script for Sindragosa ability Permeating Chill / Durchdringende Kaelte 70107 in instance / Instanz ICC / Eiskronenzitadelle / Icecrown Citadel
DELETE FROM `spell_script_names` WHERE `spell_id` = 70107 AND `ScriptName` = 'spell_sindragosa_permeating_chill';

UPDATE `creature_template` SET `modelid1` = 25455, `modelid2` = 0, `unit_flags` = 33555202, `flags_extra` = 129, `ScriptName` = 'npc_sindragosas_ward' WHERE `entry` = 37503;
DELETE FROM `creature` WHERE `id` = 37503;
INSERT INTO `creature` (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(37503, 631, 15, 1, 0, 0, 4181.54, 2551.65, 211.033, 4.72777, 604800, 0, 0, 27890000, 8516000, 0, 0, 0, 0);

UPDATE `gameobject` SET `state` = 0 WHERE `id` = 201373;

DELETE FROM `areatrigger_scripts` WHERE `entry` = 5623;
INSERT INTO `areatrigger_scripts` (entry, ScriptName) VALUES
(5623, 'at_icc_start_sindragosa_gauntlet');

UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 21, `faction_H` = 21, `mechanic_immune_mask` = 8388624 WHERE `entry` IN (37228, 37229, 37232, 37501, 37502, 38197, 38198, 38362, 38134, 38137);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 7.5, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (37228, 37229);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 13, `lootid` = 100002, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (38134, 38137);
UPDATE `creature_template` SET `dmg_multiplier` = 2 WHERE `entry` = 38362;
UPDATE `creature_template` SET `difficulty_entry_1` = 38134 WHERE `entry` = 37228;
UPDATE `creature_template` SET `difficulty_entry_1` = 38137 WHERE `entry` = 37229;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (37228, 37229, 37501, 37502);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37228, 37229, 37501, 37502) AND `source_type` = 0;
INSERT INTO `smart_scripts` (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
-- Frostwarden Warrior: 37228 / 38134
(37228, 0, 0, 0, 0, 0, 100, 30, 5000, 15000, 10000, 25000, 11, 71323, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Frostblade'),
(37228, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Soul Feast On Death'),
-- Frostwarden Sorceress: 37229 / 38137
(37229, 0, 0, 0, 0, 0, 100, 20, 15000, 20000, 20000, 25000, 11, 71331, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Ice Tomb (25 man only)'),
(37229, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71320, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frost Nova'),
(37229, 0, 2, 0, 0, 0, 100, 30, 3000, 5000, 3000, 4000, 11, 71318, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frostbolt'),
(37229, 0, 3, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Soul Feast On Death'),
-- Nerub'ar Champion: 37501 / 38197
(37501, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71801, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Rush'),
(37501, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Soul Feast On Death'),
-- Nerub'ar Webweaver: 37502 / 38198
(37502, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71326, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Crypt Scarabs'),
(37502, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71327, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Web'),
(37502, 0, 2, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Soul Feast On Death');

-- Close entrance door by default in encounter Sindragosa in instance / Instanz ICC / Eiskronenzitadelle / Icecrown Citadel
UPDATE `gameobject` SET `state` = 1 WHERE `id` = 201373;  
 
-- -------------------------------------------------------- 
-- 2013_05_08_hadronox.sql 
-- -------------------------------------------------------- 
-- Add support for Hadronox's event and achievement "Hadronox Denied"
-- Index of guids/entries and ids
SET @Hadronox                := 28921;
SET @Crusher                 := 28922;
SET @NoSpellNecromancer      := 29119; -- These 3 are used for initial spawns and reinforcement groups
SET @NoSpellChampion         := 29117; -- -//-
SET @NoSpellFiend            := 29118; -- -//-
SET @AttackingNecromancer    := 28925; -- Periodically sent NPCs to attack player (max 3 for each front door)
SET @AttackingChampion       := 28924; -- -//-
SET @AttackingFiend          := 29051; -- -//-
SET @LARGE_TRIGGER_AOI       := 23472; -- Triggers used at doors to summon spider trash
SET @StaticCrusher          := 127402; -- Guid of static spawned Crusher
SET @WP_Hadronox          := 28921*10; -- Hadronox path through tunnel
SET @WEB_SIDE_DOOR           := 53185; -- Spell used to "web" spawning doors
SET @WEB_FRONT_DOORS         := 53177; -- -//-
SET @GUID1                  := 209846; -- Guids of 2 guards of initial Crusher
SET @GUID2                  := 209847; -- -//-

-- Delete existing unblizzlike spawns
DELETE FROM `creature` WHERE `id` IN (29064,29063,29062,29098,29096,29097,@AttackingNecromancer,@AttackingChampion,@AttackingFiend,@NoSpellNecromancer);

-- Delete addon data from previous mentioned wrong spanws
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 127316 AND 127337;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 127340 AND 127375;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 127293 AND 127315;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 127272 AND 127292;
DELETE FROM `creature_addon` WHERE `guid`=12246;
DELETE FROM `creature_addon` WHERE `guid`=127401;

-- Assign ScriptNames to creature_templates
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_crusher' WHERE `entry` IN (28922); -- Anub'Ar Crusher
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_champion' WHERE `entry` IN (29117,28924,29096,29062); -- Anub'Ar Champions
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_necromancer' WHERE `entry` IN (29119,28925,29064,29098); -- Anub'Ar Necromancers
UPDATE `creature_template` SET `ScriptName`='npc_anub_ar_crypt_fiend' WHERE `entry` IN (29118,29051,29063,29097); -- Anub'Ar Crypt Fiends

-- Replace wrong faction
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14 WHERE `entry` IN (28924,28925,29051);

-- Remove creature_ai support where there was one
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@Crusher,@NoSpellChampion,@NoSpellNecromancer,@NoSpellFiend,@AttackingNecromancer,@AttackingFiend,@AttackingChampion,29062,29096,29063,29097,29064,29098);
UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (@Crusher,@NoSpellChampion,@NoSpellNecromancer,@NoSpellFiend,@AttackingNecromancer,@AttackingFiend,@AttackingChampion,29062,29096,29063,29097,29064,29098);

-- Update bounding radius and combat reach
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1 WHERE `modelid` IN (29096,29062,29064,28924);
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1.25 WHERE `modelid` IN (29097,29063,28921);
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1.5 WHERE `modelid` IN (29098,29119,28925);
UPDATE `creature_model_info` SET `bounding_radius`=1.35,`combat_reach`=1.6875 WHERE `modelid` IN (29118,29051);
UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1.25 WHERE `modelid`=29117;
UPDATE `creature_model_info` SET `bounding_radius`=0.375,`combat_reach`=7.5 WHERE `modelid`=28922;
UPDATE `creature_model_info` SET `bounding_radius`=0.85,`combat_reach`=1.275 WHERE `modelid`=29153;

-- Insert into creature_text - Anub'ar Crusher and Hadronox texts
DELETE FROM `creature_text` WHERE `entry` IN (@Crusher,@Hadronox);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@Crusher,0,0,'The gate has been breached! Quickly, divert forces to deal with these invaders!',14,0,100,1,2500,0,'Anub''ar Crusher'),
(@Crusher,1,0,'Anub''ar Crusher goes into a frenzy!',41,0,100,1,1000,0,'Anub''ar Crusher'),
(@Hadronox,0,0,'Hadronox moves up the tunnel!',41,0,100,1,1000,0,'Hadronox');

-- Add some needed conditions
DELETE FROM `conditions` WHERE `SourceEntry` IN (53826,53827,53828,@WEB_SIDE_DOOR,@WEB_FRONT_DOORS) AND `SourceTypeOrReferenceId`=13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
-- Don't asky me why, but they hit only the very caster implicitly?!
(13,1,53826,0,0,31,0,3,23472,0,0,0,'', 'Event 0 of Anub\'ar Champion can hit only trigger'),
(13,1,53826,0,0,33,0,1,0,0,0,0,'', 'Event 2 of  Anub\'ar Champion caster and hit target can only be same npc'),
(13,1,53827,0,0,31,0,3,23472,0,0,0,'', 'Event 0 of  Anub\'ar Necromancer can hit only trigger'),
(13,1,53827,0,0,33,0,1,0,0,0,0,'', 'Event 2 of  Anub\'ar Necromancer caster and hit target can only be same npc'),
(13,1,53828,0,0,31,0,3,23472,0,0,0,'', 'Event 0 of  Anub\'ar Crypt Fiend can hit only trigger'),
(13,1,53828,0,0,33,0,1,0,0,0,0,'', 'Event 2 of  Anub\'ar Crypt Fiend caster and hit target can only be same npc'),
(13,1,@WEB_SIDE_DOOR,0,0,31,0,3,23472,0,0,0,'', 'Web Side Door can hit only World Trigger Large AOI'),
(13,1,@WEB_FRONT_DOORS,0,0,31,0,3,23472,0,0,0,'', 'Web Front Doors can hit only World Trigger Large AOI');

-- Insert into waypoint_data - Hadronox waypoints on the way up
DELETE FROM `waypoint_data` WHERE `id`=@WP_Hadronox;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES
(@WP_Hadronox,1,530.406128,539.697144,678.06640,0,1,0,0,100,0),
(@WP_Hadronox,2,539.736572,533.151306,684.36322,0,1,0,0,100,0),
(@WP_Hadronox,3,554.09241,520.610229,690.13574,0,1,0,0,100,0),
(@WP_Hadronox,4,573.976929,513.072876,698.37188,0,1,0,0,100,0),
(@WP_Hadronox,5,566.644714,513.355530,698.91723,0,1,0,0,100,0),
(@WP_Hadronox,6,584.711609,509.847137,696.98925,0,1,0,0,100,0),
(@WP_Hadronox,7,588.071411,511.273407,695.12219,0,1,0,0,100,0),
(@WP_Hadronox,8,602.654419,511.136871,694.73089,0,1,0,0,100,0),
(@WP_Hadronox,9,617.250305,522.585205,695.48046,0,1,0,0,100,0),
(@WP_Hadronox,10,623.674683,536.210999,704.561,0,1,0,0,100,0),
(@WP_Hadronox,11,620.4,561.0,717.8,0,1,0,0,100,0),
(@WP_Hadronox,12,602.9,579.5,724.0,0,1,0,0,100,0),
(@WP_Hadronox,13,532.5,560.0,732.0,0,0,1,0,100,0);

-- Update orientation of the guards of initial Crusher
UPDATE `creature` SET `orientation`=4.8 WHERE `guid` IN (@GUID1,@GUID2);

-- Linked respawn - remove linked_respawn of unblizzlike spawned trash
DELETE FROM `linked_respawn` WHERE `guid` IN (127272,127273,127275,127293,127296,127318,127340,127341,127350,127351,127352,127355,127357,127359,127360,127364,127365,127375,127379,127380);

-- Linked respawn - link initial spawned in db first Crusher's group to first boss death in order to bound the id,
-- since Hadronox actions are permanent (and adds won't reset on even rest, also bound triggers).
DELETE FROM `linked_respawn` WHERE `guid` IN (@StaticCrusher,@GUID1,@GUID2,127376,127377,127378);
INSERT INTO `linked_respawn` (`guid`,`linkedGuid`,`linkType`) VALUES
(@GUID1,127214,0),
(@GUID2,127214,0),
(@StaticCrusher,127214,0),
(127376,127214,0), -- Large Trigger AOI
(127377,127214,0), -- -//-
(127378,127214,0); -- -//-

-- Add all 3 auras to each of the invisible triggers
DELETE FROM `creature_addon` WHERE `guid` IN (127376,127377,127378);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127376,0,0,0,1,0, '53035 53036 53037'), -- Anub'ar Champion, Necromancer and Crypt Fiend Periodic
(127377,0,0,0,1,0, '53035 53036 53037'), -- Anub'ar Champion, Necromancer and Crypt Fiend Periodic
(127378,0,0,0,1,0, '53035 53036 53037'); -- Anub'ar Champion, Necromancer and Crypt Fiend Periodic

-- Update orientations of triggers to set webbed doors animation correctly
UPDATE `creature` SET `orientation`=2.4360 WHERE `guid`=127377;
UPDATE `creature` SET `orientation`=0.694 WHERE `guid`=127378;
UPDATE `creature` SET `orientation`=2.202 WHERE `guid`=127376;

-- Creature template addon updates - add missing auras to some trash adds
DELETE FROM `creature_template_addon` WHERE `entry` IN (@AttackingChampion,@AttackingNecromancer,@AttackingFiend,29117,29118,29119,29062,29063,29064,29096,29097,29098,@Hadronox);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
-- All these 53255 auras are used to check if event was reseted
(@AttackingChampion,0,0,0,1,0, '53255'),
(@AttackingNecromancer,0,0,0,1,0, '53255'),
(@AttackingFiend,0,0,0,1,0, '53255'),
(29117,0,0,0,1,0, ''),
(29118,0,0,0,1,0, ''),
(29119,0,0,0,1,0, ''),
(29063,0,0,0,1,0, ''),
(29097,0,0,0,1,0, ''),
(29062,0,0,0,1,0, ''),
(29096,0,0,0,1,0, ''),
(29064,0,0,0,1,0, ''),
(29098,0,0,0,1,0, ''),
(@Hadronox,0,0,0,1,0, '');

-- Update position - Adjust Hadronox spawning position
UPDATE `creature` SET `position_x`=515.5848,`position_y`=544.2007,`position_z`=673.6272,`orientation`=5.647 WHERE `guid`=127401;

-- Add spelldifficulty spells
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (53030,53400,57731,53406,53318,53330,53322,53317,53394);
INSERT INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(53030,53030,59417), -- Spell Leech Poison
(53400,53400,59419), -- Spell Acid Cloud
(57731,57731,59421), -- Spell Web Grab - cast only when players are fighting boss
(53406,53406,59420), -- Spell Web Grab - cast when players aren't fighting boss
(53318,53318,59346), -- Spell Smash used by Anub'Ar Crusher
(53330,53330,59348), -- Spell Infected Wounds used by Anub'Ar Crypt Fiend
(53322,53322,59347), -- Spell Crushing Webs used by Anub'Ar Crypt Fiend
(53317,53317,59343), -- Spell Rend used by Anub'Ar Champion
(53394,53394,59344); -- Spell Pummel used by Anub'Ar Champion

-- Add spell_script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (53035,53037,53036,@WEB_FRONT_DOORS,@WEB_SIDE_DOOR,53255);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(53035, 'spell_trigger_large_aoi_summon_anubar_champion_periodic'),
(53037, 'spell_trigger_large_aoi_summon_anubar_crypt_fiend_periodic'),
(53036, 'spell_trigger_large_aoi_summon_anubar_necromancer_periodic'),
(53255, 'spell_hadronox_event_check_reset'),
(@WEB_FRONT_DOORS, 'spell_hadronox_web_front_doors'),
(@WEB_SIDE_DOOR, 'spell_hadronox_web_side_door');

-- Remove http://www.wowhead.com/achievement=1297 "Hadronox Denied" from disabled
DELETE FROM `disables` WHERE `sourceType`=4 AND `entry`=4244;

-- Achievement criteria data - instance script support
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=4244 AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(4244,11,0,0, 'achievement_hadronox_denied');
 
 
-- -------------------------------------------------------- 
-- 2013_05_08_halion.sql 
-- -------------------------------------------------------- 
-- Fixes Orb Rotation being visible to players.
UPDATE `creature_template` SET `modelid1`=169, `modelid2`=11686, `flags_extra` = `flags_extra` | 128 WHERE `entry` IN (40091, 43280, 43281, 43282); 
 
-- -------------------------------------------------------- 
-- 2013_06_01_skadi.sql 
-- -------------------------------------------------------- 
-- Update InhabitType for Skadi and Grauf. (Very Hacky, It's under the "It Works" Category.)
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=26893;
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=26693; 
 
-- -------------------------------------------------------- 
-- 2013_06_04_03_world_creature_text.sql 
-- -------------------------------------------------------- 

DELETE FROM `creature_text` WHERE `entry` = 38995 AND `groupid` = 4;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(38995, 4, 0, 'THE LICH KING...MUST...FALL!', 14, 0, 0, 0, 0, 17389, 'Highlord Tirion Fordring - SAY_TIRION_OUTRO_3');

UPDATE `creature_text` SET `sound` = 17352 WHERE `entry` = 36597 AND `groupid` = 3; -- Lich King's Agrro
 
 
-- -------------------------------------------------------- 
-- 2013_06_05_00_World_TrialOfTheChampion.sql 
-- -------------------------------------------------------- 
-- Creatures
DELETE FROM `creature_template` WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703, 35314, 35326, 35325, 35323, 35327, 35328, 35331, 35330, 35332, 35329, 35119, 34928, 35309, 35305, 35307, 35451, 35545, 35564, 35004, 35005, 35052, 35041, 35033, 35046, 35043, 35047, 35044, 35039, 35034, 35049, 35030, 34942, 35050, 35042, 35045, 35037, 35031, 35038, 35029, 35048, 35032, 35028, 35040, 35036, 35051, 35637, 35633, 35768, 34658, 35636, 33319, 33318, 33217, 33317, 33316, 35638, 35635, 35640, 35641, 35634, 33324, 33322, 33320, 33323, 33321, 35644, 36558, 35492, 35491);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`,  `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(33217, 0, 0, 0, 0, 0, 28912, 0, 0, 0, 'Stormwind Steed', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 422, 586, 0, 642, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33316, 0, 0, 0, 0, 0, 29258, 0, 0, 0, 'Ironforge Ram', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33317, 0, 0, 0, 0, 0, 28571, 0, 0, 0, 'Gnomeregan Mechanostrider', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33318, 0, 0, 0, 0, 0, 29255, 0, 0, 0, 'Exodar Elekk', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33319, 0, 0, 0, 0, 0, 29256, 0, 0, 0, 'Darnassian Nightsaber', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33320, 0, 0, 0, 0, 0, 29260, 0, 0, 0, 'Orgrimmar Wolf', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33321, 0, 0, 0, 0, 0, 29261, 0, 0, 0, 'Darkspear Raptor', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33322, 0, 0, 0, 0, 0, 29259, 0, 0, 0, 'Thunder Bluff Kodo', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33323, 0, 0, 0, 0, 0, 29262, 0, 0, 0, 'Silvermoon Hawkstrider', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(33324, 0, 0, 0, 0, 0, 29257, 0, 0, 0, 'Forsaken Warhorse', '', '', 0, 80, 80, 2, 16, 16, 16777216, 1, 1.57143, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 62960, 62552, 64077, 62863, 63034, 0, 0, 349, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 2, 0, 'generic_vehicleAI_toc5', 12340),
(34657, 36086, 0, 0, 0, 0, 28735, 0, 0, 0, 'Jaelyne Evensong', 'Grand Champion of Darnassus', '', 0, 80, 80, 2, 1076, 1076, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_hunter_toc5', 12340),
(34658, 0, 0, 0, 0, 0, 9991, 0, 0, 0, 'Jaelyne Evensong''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 430, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(34701, 36083, 0, 0, 0, 0, 28736, 0, 0, 0, 'Colosos', 'Grand Champion of the Exodar', '', 0, 80, 80, 2, 1694, 1694, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_shaman_toc5', 12340),
(34702, 36082, 0, 0, 0, 0, 28586, 0, 0, 0, 'Ambrose Boltspark', 'Grand Champion of Gnomeregan', '', 0, 80, 80, 2, 64, 64, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_mage_toc5', 12340),
(34703, 36087, 0, 0, 0, 0, 28564, 0, 0, 0, 'Lana Stouthammer', 'Grand Champion of Ironforge', '', 0, 80, 80, 2, 2155, 2155, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 0, 'boss_rouge_toc5', 12340),
(34705, 36088, 0, 0, 0, 0, 28560, 0, 0, 0, 'Marshal Jacob Alerius', 'Grand Champion of Stormwind', '', 0, 80, 80, 2, 1078, 1078, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_warrior_toc5', 12340),
(34928, 35517, 0, 0, 0, 0, 29490, 0, 0, 0, 'Argent Confessor Paletress', '', '', 0, 82, 82, 2, 35, 35, 0, 1, 1.14286, 1, 1, 463, 640, 0, 726, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 360, 520, 91, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 20, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 42147703, 0, 'boss_paletress', 12340),
(34942, 35531, 0, 0, 0, 0, 29525, 0, 0, 0, 'Memory of Hogger', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35004, 0, 0, 0, 0, 0, 29894, 0, 0, 0, 'Jaeren Sunsworn', '', '', 10614, 75, 75, 2, 35, 35, 1, 1, 1.14286, 1, 0, 342, 485, 0, 392, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 295, 438, 68, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_herald_toc5', 12340),
(35005, 0, 0, 0, 0, 0, 29893, 0, 0, 0, 'Arelas Brightstar', '', '', 0, 75, 75, 2, 35, 35, 1, 1, 1.14286, 1, 0, 342, 485, 0, 392, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 295, 438, 68, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_herald_toc5', 12340),
(35028, 35541, 0, 0, 0, 0, 29536, 0, 0, 0, 'Memory of VanCleef', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35029, 35538, 0, 0, 0, 0, 29556, 0, 0, 0, 'Memory of Mutanus', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35030, 35530, 0, 0, 0, 0, 29537, 0, 0, 0, 'Memory of Herod', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35031, 35536, 0, 0, 0, 0, 29562, 0, 0, 0, 'Memory of Lucifron', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35032, 35540, 0, 0, 0, 0, 25840, 0, 0, 0, 'Memory of Thunderaan', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35033, 35521, 0, 0, 0, 0, 14367, 0, 0, 0, 'Memory of Chromaggus', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35034, 35528, 0, 0, 0, 0, 29540, 0, 0, 0, 'Memory of Hakkar', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35036, 35543, 0, 0, 0, 0, 29541, 0, 0, 0, 'Memory of Vek''nilash', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35037, 35535, 0, 0, 0, 0, 29542, 0, 0, 0, 'Memory of Kalithresh', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35038, 35537, 0, 0, 0, 0, 29543, 0, 0, 0, 'Memory of Malchezaar', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35039, 35527, 0, 0, 0, 0, 18698, 0, 0, 0, 'Memory of Gruul', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35040, 35542, 0, 0, 0, 0, 29545, 0, 0, 0, 'Memory of Vashj', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35041, 35520, 0, 0, 0, 0, 29546, 0, 0, 0, 'Memory of Archimonde', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35042, 35533, 0, 0, 0, 0, 29547, 0, 0, 0, 'Memory of Illidan', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 3, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35043, 35523, 0, 0, 0, 0, 18699, 0, 0, 0, 'Memory of Delrissa', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35044, 35525, 0, 0, 0, 0, 23428, 0, 0, 0, 'Memory of Entropius', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35045, 35534, 0, 0, 0, 0, 29558, 0, 0, 0, 'Memory of Ingvar', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 8388624, 0, 'npc_memory', 12340),
(35046, 35522, 0, 0, 0, 0, 29549, 0, 0, 0, 'Memory of Cyanigosa', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35047, 35524, 0, 0, 0, 0, 26644, 0, 0, 0, 'Memory of Eck', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 7, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35048, 35539, 0, 0, 0, 0, 21401, 0, 0, 0, 'Memory of Onyxia', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 2, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35049, 35529, 0, 0, 0, 0, 29557, 0, 0, 0, 'Memory of Heigan', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 8388624, 0, 'npc_memory', 12340),
(35050, 35532, 0, 0, 0, 0, 29551, 0, 0, 0, 'Memory of Ignis', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35051, 35544, 0, 0, 0, 0, 29552, 0, 0, 0, 'Memory of Vezax', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35052, 35519, 0, 0, 0, 0, 29553, 0, 0, 0, 'Memory of Algalon', '', '', 0, 82, 82, 2, 16, 16, 0, 1, 1.14286, 1, 1, 488, 642, 0, 782, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 363, 521, 121, 4, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 29, 25, 1, 0, 0, 0, 0, 0, 0, 0, 150, 1, 0, 0, 'npc_memory', 12340),
(35119, 35518, 0, 0, 0, 0, 29616, 0, 0, 0, 'Eadric the Pure', 'Grand Champion of the Argent Crusade', '', 0, 82, 82, 2, 35, 35, 0, 2, 1.42857, 1, 1, 463, 640, 0, 726, 7.5, 2400, 0, 2, 0, 8, 0, 0, 0, 0, 0, 360, 520, 91, 7, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 42.5, 20, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 42147703, 0, 'boss_eadric', 12340),
(35305, 0, 0, 0, 0, 0, 29758, 29759, 0, 0, 'Argent Monk', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 8, 35305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_argent_soldier', 12340),
(35307, 0, 0, 0, 0, 0, 29760, 29761, 0, 0, 'Argent Priestess', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 32832, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 8, 35307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_argent_soldier', 12340),
(35309, 0, 0, 0, 0, 0, 29762, 29763, 0, 0, 'Argent Lightwielder', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 32832, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 8, 35309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_argent_soldier', 12340),
(35314, 0, 0, 0, 0, 0, 29090, 0, 0, 0, 'Orgrimmar Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35323, 0, 0, 0, 0, 0, 28702, 0, 0, 0, 'Sen''jin Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35325, 0, 0, 0, 0, 0, 28864, 0, 0, 0, 'Thunder Bluff Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 35325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35326, 0, 0, 0, 0, 0, 28862, 0, 0, 0, 'Silvermoon Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35327, 0, 0, 0, 0, 0, 28865, 0, 0, 0, 'Undercity Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35328, 0, 0, 0, 0, 0, 28863, 0, 0, 0, 'Stormwind Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35329, 0, 0, 0, 0, 0, 28860, 0, 0, 0, 'Ironforge Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35330, 0, 0, 0, 0, 0, 28858, 0, 0, 0, 'Exodar Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.38571, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35331, 0, 0, 0, 0, 0, 28859, 0, 0, 0, 'Gnomeregan Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35332, 0, 0, 0, 0, 0, 28857, 0, 0, 0, 'Darnassus Champion', '', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 33554434, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 5.95238, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340),
(35451, 35490, 0, 0, 0, 0, 29837, 0, 0, 0, 'The Black Knight', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 1500, 0, 1, 64, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 35451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 16, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 805257215, 0, 'boss_black_knight', 12340),
(35491, 0, 0, 0, 0, 0, 29842, 0, 0, 0, 'Black Knight''s Skeletal Gryphon', '', '', 0, 80, 80, 2, 14, 1, 0, 1, 1.71429, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 164, 1, 8388624, 0, 'npc_black_knight_skeletal_gryphon', 12340),
(35492, 0, 0, 0, 0, 0, 4261, 4262, 4263, 4264, 'Zephyr Guard', 'The Zephyr', '', 0, 1, 1, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_gr', 12340),
(35545, 0, 0, 0, 0, 0, 25528, 0, 0, 0, 'Risen Jaeren Sunsworn', 'Black Knight''s Minion', '', 0, 80, 80, 2, 35, 35, 0, 1, 1.14286, 1, 0, 422, 586, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, 'npc_risen_announcer', 12340),
(35564, 0, 0, 0, 0, 0, 25528, 0, 0, 0, 'Risen Arelas Brightstar', 'Black Knight''s Minion', '', 0, 80, 80, 2, 14, 14, 0, 0.8, 0.992063, 1.4, 0, 422, 586, 0, 642, 1, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, 'npc_risen_announcer', 12340),
(35569, 36085, 0, 0, 0, 0, 28637, 0, 0, 0, 'Eressea Dawnsinger', 'Grand Champion of Silvermoon', '', 0, 80, 80, 2, 1604, 1604, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_mage_toc5', 12340),
(35570, 36091, 0, 0, 0, 0, 28588, 0, 0, 0, 'Zul''tore', 'Grand Champion of Sen''jin', '', 0, 80, 80, 2, 126, 126, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_hunter_toc5', 12340),
(35571, 36090, 0, 0, 0, 0, 28597, 0, 0, 0, 'Runok Wildmane', 'Grand Champion of the Thunder Bluff', '', 0, 80, 80, 2, 104, 104, 0, 1, 1.14286, 1, 1, 417, 582, 0, 608, 7.5, 2400, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_shaman_toc5', 12340),
(35572, 36089, 0, 0, 0, 0, 28587, 0, 0, 0, 'Mokra the Skullcrusher', 'Grand Champion of Orgrimmar', '', 0, 80, 80, 2, 29, 29, 0, 1, 1.42857, 1, 1, 422, 586, 0, 642, 7.5, 2400, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 441, 1, 0, 0, 'boss_warrior_toc5', 12340),
(35617, 36084, 0, 0, 0, 0, 28589, 0, 0, 0, 'Deathstalker Visceri', 'Grand Champion of Undercity', '', 0, 80, 80, 2, 68, 68, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_rouge_toc5', 12340),
(35633, 0, 0, 0, 0, 0, 28571, 0, 0, 0, 'Ambrose Boltspark''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 478, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35634, 0, 0, 0, 0, 0, 10718, 0, 0, 0, 'Deathstalker Visceri''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.28968, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 479, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35635, 0, 0, 0, 0, 0, 28607, 0, 0, 0, 'Eressea Dawnsinger''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 480, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35636, 0, 0, 0, 0, 0, 2787, 0, 0, 0, 'Lana Stouthammer''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 481, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35637, 0, 0, 0, 0, 0, 29284, 0, 0, 0, 'Marshal Jacob Alerius'' Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 482, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35638, 0, 0, 0, 0, 0, 29879, 0, 0, 0, 'Mokra the Skullcrusher''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1.5, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 483, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35640, 0, 0, 0, 0, 0, 29880, 0, 0, 0, 'Runok Wildmane''s Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 484, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35641, 0, 0, 0, 0, 0, 29261, 0, 0, 0, 'Zul''tore''s Mount', '', '', 0, 80, 80, 2, 126, 126, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 485, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(35644, 0, 0, 0, 0, 0, 28918, 0, 0, 0, 'Argent Warhorse', '', 'vehichleCursor', 0, 80, 80, 2, 84, 84, 16777216, 1, 2, 1, 0, 422, 586, 0, 642, 1, 0, 0, 1, 256, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 63010, 66482, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 0, 0, '', 12340),
(35768, 0, 0, 0, 0, 0, 29255, 0, 0, 0, 'Colosos'' Mount', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.38571, 1, 1, 420, 630, 0, 157, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 489, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'generic_vehicleAI_toc5', 12340),
(36558, 0, 0, 0, 0, 0, 29283, 0, 0, 0, 'Argent Battleworg', '', 'vehichleCursor', 0, 80, 80, 2, 83, 83, 16777216, 1, 2, 1, 0, 422, 586, 0, 642, 1, 0, 0, 1, 256, 8, 0, 0, 0, 0, 0, 345, 509, 103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62544, 62575, 63010, 66482, 0, 0, 0, 0, 0, 486, 0, 0, '', 0, 3, 3.96825, 1, 1, 0, 0, 0, 0, 0, 0, 0, 157, 1, 0, 0, '', 12340);

-- Mount on mount action!
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (35638,35637,35635,34658,35636,35768,35633,35640,35641,35634,33321,33323,33320,33322,33316,33317,33324,33217,33318,33319,35491);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(35638,35572,0,0,'Mokra the Skullcrusher''s Mount',6,30000),
(35637,34705,0,0,'Marshal Jacob Alerius'' Mount',6,30000),
(35635,35569,0,0,'Eressea Dawnsinger''s Mount',6,30000),
(34658,34657,0,0,'Jaelyne Evensong''s Mount',6,30000),
(35636,34703,0,0,'Lana Stouthammer''s Mount',6,30000),
(35768,34701,0,0,'Colosos'' Mount',6,30000),
(35633,34702,0,0,'Ambrose Boltspark''s Mount',6,30000),
(35640,35571,0,0,'Runok Wildmane''s Mount',6,30000),
(35641,35570,0,0,'Zul''tore''s Mount',6,30000),
(35634,35617,0,0,'Deathstalker Visceri''s Mount',6,30000),
(33321,35323,0,1,'Darkspear Raptor',6,30000),
(33323,35326,0,1,'Silvermoon Hawkstrider',6,30000),
(33320,35314,0,1,'Orgrimmar Wolf',6,30000),
(33322,35325,0,1,'Thunder Bluff Kodo',6,30000),
(33316,35329,0,1,'Ironforge Ram',6,30000),
(33317,35331,0,1,'Gnomeregan Mechanostrider',6,30000),
(33324,35327,0,1,'Forsaken Warhorse',6,30000),
(33217,35328,0,1,'Stormwind Steed',6,30000),
(33318,35330,0,1,'Exodar Elekk',6,30000),
(33319,35332,0,1,'Darnassian Nightsaber',6,30000),
(35491,35451,0,0,'Trial of the Champion - Black Knight on his gryphon',6,30000);

-- Model data (TDB)
UPDATE `creature_model_info` SET `bounding_radius`=0,`combat_reach`=1,`gender`=0 WHERE `modelid`=29255; -- Colosos' Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.525,`combat_reach`=2.25,`gender`=0 WHERE `modelid`=9991; -- Jaelyne Evensong's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=2,`gender`=0 WHERE `modelid`=2787; -- Lana Stouthammer's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29879; -- Mokra the Skullcrusher's Mount
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28607; -- Eressea Dawnsinger's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.34,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=29880; -- Runok Wildmane's Mount
UPDATE `creature_model_info` SET `bounding_radius`=0.35,`combat_reach`=1.5,`gender`=2 WHERE `modelid`=10718; -- Deathstalker Visceri's Mount

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (35637,35633,35768,34658,35636,35638,35635,35640,35641,35634,33321,33323,33320,33322,33316,33217,33324,33317,33318,33319,35491);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(35637,46598,1,0), -- Marshal Jacob Alerius' Mount - Ride Vehicle Hardcoded
(35633,46598,1,0), -- Ambrose Boltspark's Mount - Ride Vehicle Hardcoded
(35768,46598,1,0), -- Colosos' Mount - Ride Vehicle Hardcoded
(34658,46598,1,0), -- Jaelyne Evensong's Mount - Ride Vehicle Hardcoded
(35636,46598,1,0), -- Lana Stouthammer's Evensong's Mount - Ride Vehicle Hardcoded
(35638,46598,1,0), -- Mokra the Skullcrusher's Mount - Ride Vehicle Hardcoded
(35635,46598,1,0), -- Eressea Dawnsinger's Mount - Ride Vehicle Hardcoded
(35640,46598,1,0), -- Runok Wildmane's Mount - Ride Vehicle Hardcoded
(35641,46598,1,0), -- Zul'tore's Mount - Ride Vehicle Hardcoded
(35634,46598,1,0), -- Deathstalker Visceri's Mount - Ride Vehicle Hardcoded
(33321,46598,1,0), -- Darkspear Raptor - Ride Vehicle Hardcoded
(33323,46598,1,0), -- Silvermoon Hawkstrider - Ride Vehicle Hardcoded
(33320,46598,1,0), -- Orgrimmar Wolf - Ride Vehicle Hardcoded
(33322,46598,1,0), -- Thunderbluff Kodo - Ride Vehicle Hardcoded
(33316,46598,1,0), -- Ironforge Ram - Ride Vehicle Hardcoded
(33317,46598,1,0), -- Gnomeregan Mechanostrider - Ride Vehicle Hardcoded
(33324,46598,1,0), -- Forsaken Warhorse - Ride Vehicle Hardcoded
(33217,46598,1,0), -- Stormwind Steed - Ride Vehicle Hardcoded
(33318,46598,1,0), -- Exodar Elekk - Ride Vehicle Hardcoded
(33319,46598,1,0), -- Darnassian Nightsaber - Ride Vehicle Hardcoded
(35491,46598,1,0); -- Black Knight - Ride Vehicle Hardcoded

-- Creature addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (35572, 35569, 35571, 35570, 35617, 34705, 34702, 34701, 34657, 34703, 35314, 35326, 35325, 35323, 35327, 35328, 35331, 35330, 35332, 35329, 35119, 34928, 35309, 35305, 35307, 35451, 35545, 35564, 35004, 35005, 35052, 35041, 35033, 35046, 35043, 35047, 35044, 35039, 35034, 35049, 35030, 34942, 35050, 35042, 35045, 35037, 35031, 35038, 35029, 35048, 35032, 35028, 35040, 35036, 35051, 35637, 35633, 35768, 34658, 35636, 33319, 33318, 33217, 33317, 33316, 35638, 35635, 35640, 35641, 35634, 33324, 33322, 33320, 33323, 33321, 35644, 36558, 35492, 35491);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(33217, 0, 0, 0, 2305, 0, NULL),
(33316, 0, 0, 0, 2305, 0, NULL),
(33317, 0, 0, 0, 2305, 0, NULL),
(33318, 0, 0, 0, 2305, 0, NULL),
(33319, 0, 0, 0, 2305, 0, NULL),
(33320, 0, 0, 0, 2305, 0, NULL),
(33321, 0, 0, 0, 2305, 0, NULL),
(33322, 0, 0, 0, 2305, 0, NULL),
(33323, 0, 0, 0, 2305, 0, NULL),
(33324, 0, 0, 0, 2305, 0, NULL),
(34658, 0, 0, 0, 1, 0, NULL),
(35307, 0, 0, 0, 1, 0, NULL),
(35309, 0, 0, 0, 1, 0, NULL),
(35451, 0, 0, 0, 1, 0, NULL),
(35633, 0, 0, 0, 1, 0, NULL),
(35634, 0, 0, 0, 1, 0, NULL),
(35635, 0, 0, 0, 1, 0, NULL),
(35636, 0, 0, 0, 1, 0, NULL),
(35637, 0, 0, 0, 1, 0, NULL),
(35638, 0, 0, 0, 1, 0, NULL),
(35640, 0, 0, 0, 1, 0, NULL),
(35641, 0, 0, 0, 1, 0, NULL),
(35644, 0, 0, 0, 1, 0, NULL),
(35768, 0, 0, 0, 1, 0, NULL),
(36558, 0, 0, 0, 1, 0, NULL);

-- Creature Texts
DELETE FROM `creature_text` WHERE `entry` IN (35004, 35005, 34928, 35119, 35451, 34705, 34702, 34701, 34657, 34703, 35572, 35569, 35571, 35570, 35617);
DELETE FROM `creature_text` WHERE `entry` = 34996 AND `groupid` > 16; -- Tirion
DELETE FROM `creature_text` WHERE `entry` IN(34994, 34990, 34995, 34992) AND `groupid` > 9; -- Thrall, Varian, Garrosh, Jaina
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(35004, 0, 0, "The Sunreavers are proud to present their representatives in this trial by combat.", 12, 0, 0, 2, 0, 0, "ToC5 - Horde Intro 1"),
(35005, 0, 0, "The Silver Covenant is pleased to present their contenders for this event, Highlord.", 12, 0, 0, 2, 0, 0, "ToC5 - Alliance Intro 1"),
(34996, 17, 0, "Welcome, champions. Today, before the eyes of your leaders and peers, you will prove youselves worthy combatants.", 12, 0, 0, 2, 0, 0, "ToC5 - Intro 2"),
(34994, 10, 0, "Fight well, Horde! Lok''tar Ogar!", 12, 0, 0, 2, 0, 0, "ToC - Horde Intro 3"),
(34990, 10, 0, "I have no taste for these games, Tirion.  Still... I trust they will perform admirably.", 12, 0, 0, 2, 0, 0, "ToC - Alliance Intro 3"),
(34995, 10, 0, "Finally, a fight worth watching.", 12, 0, 0, 2, 0, 0, "ToC - Horde Intro 4"),
(34992, 10, 0, "Of course they will.", 12, 0, 0, 2, 0, 0, "ToC - Alliance Intro 4"),
(34990, 11, 0, "I did not come here to watch animals tear at each other senselessly, Tirion.", 12, 0, 0, 2, 0, 0, "ToC - Horde Intro 5"),
(34995, 11, 0, "Admirably? Hah!  I will enjoy watching your weak little champions fail, human.", 12, 0, 0, 2, 0, 0, "ToC - Alliance Intro 5"),
(34992, 11, 0, "They're worthy fighters, you'll see.", 12, 0, 0, 2, 0, 0, "ToC - Horde Intro 6"),
(34994, 11, 0, "Garrosh, enough.", 12, 0, 0, 2, 0, 0, "ToC - Alliance Intro 6"),
(34996, 18, 0, "You will first be facing three of the Grand Champions of the Tournament! These fierce contenders have beaten out all others to reach the pinnacle of skill in the joust.", 12, 0, 0, 2, 0, 0, "ToC5 - Intro 7"),
(35004, 1, 0, "Proud and strong, give a cheer for Marshal Jacob Alerius, the Grand Champion of Stormwind!", 14, 0, 0, 2, 0, 0, "ToC5 - Stormwind Enters"),
(35004, 2, 0, "The humans of Stormwind cheer for Marshal Jacob Alerius.", 41, 0, 0, 2, 0, 8572, "ToC5 - Stormwind Cheers"),
(35004, 3, 0, "Here comes the small but deadly Amberose Boltspark, Grand Champion of Gnomregan!", 14, 0, 0, 2, 0, 0, "ToC5 - Gnomeregan Enters"),
(35004, 4, 0, "The gnomes of Gnomeregan cheer for Amberose Boltspark.", 41, 0, 0, 2, 0, 8572, "ToC5 - Gnomeregan Cheers"),
(35004, 5, 0, "Coming out of the gate is Colosos, the towering Grand Champion of the Exodar!", 14, 0, 0, 2, 0, 0, "ToC5 - Draenei Enters"),
(35004, 6, 0, "The Draenei of the Exodar cheer for Colosos.", 41, 0, 0, 2, 0, 8572, "ToC5 - Draenei Cheers"),
(35004, 7, 0, "Entering the arena is Grand Champion of Darnassus, the skilled sentinel Jaelyne Evensong!", 14, 0, 0, 2, 0, 0, "ToC5 - Darnassus Enters"),
(35004, 8, 0, "The night elves of Darnassus cheer for Jaelyne Evensong.", 41, 0, 0, 2, 0, 8572, "ToC5 - Darnassus Cheers"),
(35004, 9, 0, "The might of the dwarves is represented today by the Grand Champion of Ironforge, Lana Stouthammer!", 14, 0, 0, 2, 0, 0, "ToC5 - Ironforge Enters"),
(35004, 10, 0, "The dwarves of Ironforge being a cheer for Lana Stouthammer.", 41, 0, 0, 2, 0, 8572, "ToC5 - Ironforge Cheers"),
(35005, 1, 0, "Presenting the fierce Grand Champion of Orgrimmar, Mokra the Skullcrusher!", 14, 0, 0, 2, 0, 0, "ToC5 - Orgrimmar Enters"),
(35005, 2, 0, "The orcs of Orgrimmar cheer for Mokra the Skullcrusher.", 41, 0, 0, 2, 0, 8572, "ToC5 - Orgrimmar Cheers"),
(35005, 3, 0, "Coming out of the gate is Eressa Dawnsinger, skilled mage and Grand Champion of Silvermoon!", 14, 0, 0, 2, 0, 0, "ToC5 - Silvermoon Enters"),
(35005, 4, 0, "'The blood elves of Silvermoon cheer for Eressa Dawnsinger.", 41, 0, 0, 2, 0, 8572, "ToC5 - Silvermoon Cheers"),
(35005, 5, 0, "Tail in the saddle of his kodo, here is the venerable Runok Wildmane, Grand Champion of Thunder Bluff!", 14, 0, 0, 2, 0, 0, "ToC5 - ThunderBluff Enters"),
(35005, 6, 0, "The tauren of Thunder Bluff cheer for Runok Wildmane..", 41, 0, 0, 2, 0, 8572, "ToC5 - ThunderBluff Cheers"),
(35005, 7, 0, "Entering the arena is the lean and dangerous Zul'tore, Grand Champion of Sen'jin!", 14, 0, 0, 2, 0, 0, "ToC5 - Sen'jin Enters"),
(35005, 8, 0, "The trolls of Sen'jin begin a chant to celebrate Zul'tore.", 41, 0, 0, 2, 0, 8572, "ToC5 - Sen'jin Cheers"),
(35005, 9, 0, "Representing the tenacity of the Forsaken, here is the Grand Champion of the Undercity, Deathstalker Visceri!", 14, 0, 0, 2, 0, 0, "ToC5 - Undercity Enters"),
(35005, 10, 0, "The forsaken of the Undercity cheer for Deathstalker Visceri!.", 41, 0, 0, 2, 0, 8572, "ToC5 - Undercity Cheers"),
(34705, 1, 0, "Please change your weapon. The next battle will be starting shortly.", 41, 0, 0, 0, 0, 0, "ToC - Equip Warning"),
(35572, 1, 0, "Please change your weapon. The next battle will be starting shortly.", 41, 0, 0, 0, 0, 0, "ToC - Equip Warning"),
(34705, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(35572, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(34702, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(35569, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(34701, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(35571, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(35570, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(34657, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(35617, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(34703, 0, 0, "Excellent work!", 12, 0, 0, 0, 0, 0, "ToC - Champion Defeated"),
(34996, 19, 0, "Well fought! You next challenge comes from the Crusade's own ranks. You will be tested against their considerable prowess.", 12, 0, 0, 2, 0, 0, "ToC5 - Paletress Intro 1 Tirion"),
(35004, 11, 0, "The next combatant is second to none in her passion for upholding the Light. I give you Argent Confessor Paletress!", 12, 0, 0, 2, 0, 0, "ToC5 - Paletress Horde Intro 2"),
(35005, 11, 0, "The next combatant is second to none in her passion for upholding the Light. I give you Argent Confessor Paletress!", 12, 0, 0, 2, 0, 0, "ToC5 - Paletress Alliance Intro 2"),
(35004, 12, 0, "The Alliance spectators cheer for Argent Confessor Paletress.", 41, 0, 0, 0, 0, 8573, "ToC5 - Paletress Horde Intro 3"),
(35005, 12, 0, "The Horde spectators cheer for Argent Confessor Paletress.", 41, 0, 0, 0, 0, 8573, "ToC5 - Paletress Alliance Intro 3"),
(34928, 0, 0, "Thank you, good herald. Your words are too kind.", 12, 0, 0, 0, 0, 16245, "ToC5 - Paletress Intro 4"),
(34928, 1, 0, "May the Light give me strength to provide a worthy challenge.", 12, 0, 0, 0, 0, 16246, "ToC5 - Paletress Intro 5"),
(34996, 20, 0, "You may begin!", 12, 0, 0, 2, 0, 0, "ToC5 - Paletress Intro 6 Tirion"),
(34928, 2, 0, "Well then, let us begin.", 12, 0, 0, 0, 0, 16247, "ToC5 - Paletress Aggro"),
(34928, 3, 0, "Take this time to consider your past deeds.", 12, 0, 0, 0, 0, 16248, "ToC5 - Paletress Summon Memory"),
(34928, 4, 0, "Even the darkest memory fades when confronted.", 12, 0, 0, 0, 0, 16249, "ToC5 - Paletress Memory Defeated"),
(34928, 5, 0, "Take your rest.", 12, 0, 0, 0, 0, 16250, "ToC5 - Paletress Kill Player 1"),
(34928, 5, 1, "Be at ease.", 12, 0, 0, 0, 0, 16251, "ToC5 - Paletress Kill Player 2"),
(34928, 6, 1, "Excellent work!", 12, 0, 0, 0, 0, 16252, "ToC5 - Paletress Defeated"),
(35004, 13, 0, "Entering the arena, a paladin who is no stranger to the battlefield or tournament ground, the Grand Champion of the Argent Crusade, Eadric the Pure!", 12, 0, 0, 2, 0, 0, "ToC5 - Eadric Horde Intro 2"),
(35005, 13, 0, "Entering the arena, a paladin who is no stranger to the battlefield or tournament ground, the Grand Champion of the Argent Crusade, Eadric the Pure!", 12, 0, 0, 2, 0, 0, "ToC5 - Eadric Alliance Intro 2"),
(35004, 14, 0, "The Alliance spectators cheer for Eadric The Pure.", 41, 0, 0, 0, 0, 8573, "ToC5 - Eadric Horde Intro 3"),
(35005, 14, 0, "The Horde spectators cheer for Eadric The Pure.", 41, 0, 0, 0, 0, 8573, "ToC5 - Eadric Alliance Intro 3"),
(35119, 0, 0, "Are you up to the challenge? I will not hold back.", 12, 0, 0, 0, 0, 16134, "ToC5 - Eadric Intro"),
(35119, 1, 0, "Prepare yourselves!", 14, 0, 0, 0, 0, 16135, "ToC5 - Eadric Aggro"),
(35119, 2, 0, "Hammer of the Righteous!", 14, 0, 0, 0, 0, 16136, "ToC5 - Eadric Hammer"),
(35119, 3, 0, "You... You need more practice.", 14, 0, 0, 0, 0, 16137, "ToC5 - Eadric Kill Player 1"),
(35119, 3, 1, "Nay! Nay! And I say yet again nay! Not good enough!", 14, 0, 0, 0, 0, 16138, "ToC5 - Eadric Kill Player 2"),
(35119, 4, 0, "I yield! I submit. Excellent work. May I run away now?", 14, 0, 0, 0, 0, 16139, "ToC5 - Eadric Defeated"),
(34996, 21, 0, "Well done.  You have proven yourself today-", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Intro 1"),
(35004, 15, 0, "What's that, up near the rafters?", 12, 0, 0, 2, 0, 0, "Horde Black Knight Intro 2"),
(35005, 15, 0, "What's that, up near the rafters?", 12, 0, 0, 2, 0, 0, "Alliance Black Knight Intro 2"),
(35451, 0, 0, "You spoiled my grand entrance, Rat.", 14, 0, 0, 0, 0, 16256, "Black Knight Intro 3"),
(34996, 22, 0, "What is the meaning of this?", 14, 0, 0, 0, 0, 0, "Black Knight Intro 4 Tirion"),
(35451, 1, 0, "Did you honestly think that an agent of the Lich King would be bested on the field of your pathetic little tournament?", 14, 0, 0, 0, 0, 16257, "Black Knight Intro 5"),
(35451, 2, 0, "I have come to finish my task.", 14, 0, 0, 0, 0, 16258, "Black Knight Intro 6"),
(35451, 3, 0, "This farce ends here!", 14, 0, 0, 0, 0, 16259, "Black Knight Aggro"),
(34990, 12, 0, "Don't just stand there; kill him!", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Aggro Alliance"),
(34995, 12, 0, "Tear him apart!", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Aggro Horde"),
(35451, 4, 0, "A waste of flesh.", 14, 0, 0, 0, 0, 16261, "Black Knight Kills Player"),
(35451, 4, 1, "Pathetic.", 14, 0, 0, 0, 0, 16260, "Black Knight Kills Player"),
(35451, 5, 0, "My roting flash was just getting in the way!", 14, 0, 0, 0, 0, 16262, "Black Knight Phase 2"),
(35451, 6, 0, "I have no need for bones to best you!", 14, 0, 0, 0, 0, 16263, "Black Knight Phase 2"),
(35451, 7, 0, "No! I must not fail...again...", 14, 0, 0, 0, 0, 16264, "Black Knight Dies"),
(34994, 12, 0, "Well done horde!", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight dies horde"),
(34996, 23, 0, "My congratulations, champions.  Through trials both planned and unexpected, you have triumphed.", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Dies Alliance 1"),
(34996, 24, 0, "Go now and rest; you've earned it.", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Dies Alliance 2"),
(34990, 13, 0, "You fought well.", 12, 0, 0, 2, 0, 0, "ToC5 - Black Knight Dies Alliance 3");

-- Equipment
DELETE FROM `creature_equip_template` WHERE `entry` IN (35314,35326,35327,35325,35323,35331,35330,35329,35328,35332, 35571,36090,35569,36085,35572,36089,35617,36084,35570,36091,34701,36803,34703,36087,34657,36086,34705,36088,35119,35518,34928,35517,35451,35490) AND `id` = 1;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)VALUES 
('35314', '1', '2049', '0', '0'),
('35323', '1', '2049', '0', '0'),
('35325', '1', '2049', '0', '0'),
('35326', '1', '2049', '0', '0'),
('35327', '1', '2049', '0', '0'),
('35328', '1', '2049', '0', '0'),
('35329', '1', '2049', '0', '0'),
('35330', '1', '2049', '0', '0'),
('35331', '1', '2049', '0', '0'),
('35332', '1', '2049', '0', '0'),
('35571', '1', '2025', '0', '0'),
('36090', '1', '2025', '0', '0'),
('35569', '1', '2021', '0', '0'),
('36085', '1', '2021', '0', '0'),
('35572', '1', '2018', '0', '0'),
('36089', '1', '2018', '0', '0'),
('35570', '1', '2019', '0', '0'),
('36091', '1', '2019', '0', '0'),
('35617', '1', '2020', '0', '0'),
('36084', '1', '2020', '0', '0'),
('34701', '1', '2096', '0', '0'),
('36803', '1', '2096', '0', '0'),
('34703', '1', '2093', '0', '0'),
('36087', '1', '2093', '0', '0'),
('34657', '1', '2095', '0', '0'),
('36086', '1', '2095', '0', '0'),
('34705', '1', '2092', '0', '0'),
('36088', '1', '2092', '0', '0'),
('35119', '1', '834', '0', '0'),
('35518', '1', '834', '0', '0'),
('35517', '1', '235', '0', '0'),
('34928', '1', '235', '0', '0');

-- Fountain of Light
DELETE FROM `creature_template` WHERE `entry`=35311;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
(35311, 0, 0, 0, 0, 0, 27769, 0, 0, 0, 'Fountain of Light', '', '', 0, 79, 80, 0, 14, 14, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '');

-- Black Knight Gryphon
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `mindmg`=0, `maxdmg`=0, `attackpower`=0, `dmg_multiplier`=0, `baseattacktime`=0, `unit_flags`=33554432, `dynamicflags`=0, `minrangedmg`=0, `maxrangedmg`=0, `rangedattackpower`=0, `VehicleId`=486 WHERE `entry`=35491;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`,  `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(35451, 35490, 0, 0, 0, 0, 29837, 0, 0, 0, 'The Black Knight', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 1800, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 35451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 16, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'boss_black_knight', 12340);
-- heroic mod template of DK
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(35490, 0, 0, 0, 0, 0, 29837, 0, 0, 0, 'The Black Knight (1)', '', '', 0, 80, 80, 2, 14, 14, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 13, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 35490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 22, 1, 1, 0, 48418, 0, 0, 0, 0, 0, 0, 1, 0, 1, '', 12340);

-- Boss immune mask
UPDATE `creature_template` SET `mechanic_immune_mask`=13319551 WHERE `entry` IN (35490,35451,35518,35517,35119,35518,34928,35517);

UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1071644671 WHERE `entry` IN
(35309,35310, -- Argent Lightwielder
35305,35306, -- Argent Monk
35307,35308); -- Argent Priestess

DELETE FROM `gameobject` WHERE `guid`=150077;
-- Npcs on vehicle should be passive and untargettable
-- (not blizzlike, but only way to make the event works. On offy players must kill the champions not the vehicles..)
UPDATE `creature_template` SET `AIName`='PassiveAI', `unit_flags`=33554434 WHERE `entry` IN (SELECT `accessory_entry` FROM `vehicle_template_accessory` WHERE `entry` IN (33324, 33321, 33322, 33320, 33323, 33319, 33318, 33317, 33316, 33324));

-- scale of mokra mount
UPDATE `creature_template` SET `scale`=1.5 WHERE `entry`=35638;
-- Immune to daze
UPDATE creature_template SET mechanic_immune_mask=mechanic_immune_mask|0x04000000 WHERE entry IN (33531,33782,36558,35644); 
-- pendand and cosmetic stuff
DELETE FROM `creature_template_addon` WHERE `entry` IN (34701, 34657, 34705, 35570, 35569, 35332,35330,33299,35328,35327,35331,35329,35325,35314,35326,35323, 35572, 35571, 34703, 34702, 35617);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35323, 1, '63399'),
(35570, 1, '63399'),
(35326, 1, '63403'),
(35569, 1, '63403'),
(35314, 1, '63433'),
(35572, 1, '63433'),
(35325, 1, '63436'),
(35571, 1, '63436'),
(35329, 1, '63427'),
(34703, 1, '63427'),
(35331, 1, '63396'),
(34702, 1, '63396'),
(35327, 1, '63430'),
(35617, 1, '63430'),
(35328, 1, '62594'),
(34705, 1, '62594'),
(35330, 1, '63423'),
(34701, 1, '63423'),
(35332, 1, '63406'),
(34657, 1, '63406');

DELETE FROM `creature` WHERE `map`=650;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `npcflag`, `MovementType`) VALUES 

(230958, 36558, 650, 3, 1, 0, 0, 726.826, 661.201, 412.472, 4.66003, 86400, 0, 0, 1, 0, 0, 0),
(230960, 36558, 650, 3, 1, 0, 0, 716.665, 573.495, 412.475, 0.977384, 86400, 0, 0, 1, 0, 0, 0), 
(230962, 36558, 650, 3, 1, 0, 0, 705.497, 583.944, 412.476, 0.698132, 86400, 0, 0, 1, 0, 0, 0), 
(230964, 36558, 650, 3, 1, 0, 0, 770.486, 571.552, 412.475, 2.05949, 86400, 0, 0, 1, 0, 0, 0), 
(230966, 36558, 650, 3, 1, 0, 0, 717.443, 660.646, 412.467, 4.92183, 86400, 0, 0, 1, 0, 0, 0), 
(230968, 36558, 650, 3, 1, 0, 0, 700.531, 591.927, 412.475, 0.523599, 86400, 0, 0, 1, 0, 0, 0), 
(230970, 36558, 650, 3, 1, 0, 0, 790.177, 589.059, 412.475, 2.56563, 86400, 0, 0, 1, 0, 0, 0), 
(230972, 36558, 650, 3, 1, 0, 0, 702.165, 647.267, 412.475, 5.68977, 86400, 0, 0, 1, 0, 0, 0), 
(230974, 36558, 650, 3, 1, 0, 0, 773.097, 660.733, 412.467, 4.45059, 86400, 0, 0, 1, 0, 0, 0), 
(230976, 36558, 650, 3, 1, 0, 0, 793.052, 642.851, 412.474, 3.63029, 86400, 0, 0, 1, 0, 0, 0), 
(230978, 36558, 650, 3, 1, 0, 0, 778.741, 576.049, 412.476, 2.23402, 86400, 0, 0, 1, 0, 0, 0), 
(230980, 36558, 650, 3, 1, 0, 0, 788.016, 650.788, 412.475, 3.80482, 86400, 0, 0, 1, 0, 0, 0),
(230982, 35644, 650, 3, 1, 0, 0, 704.943, 651.33, 412.475, 5.60251, 86400, 0, 0, 1, 0, 0, 0),
(230984, 35644, 650, 3, 1, 0, 0, 774.898, 573.736, 412.475, 2.14675, 86400, 0, 0, 1, 0, 0, 0), 
(230986, 35644, 650, 3, 1, 0, 0, 699.943, 643.37, 412.474, 5.77704, 86400, 0, 0, 1, 0, 0, 0), 
(230988, 35644, 650, 3, 1, 0, 0, 712.594, 576.26, 412.476, 0.890118, 86400, 0, 0, 1, 0, 0, 0), 
(230990, 35644, 650, 3, 1, 0, 0, 793.009, 592.667, 412.475, 2.6529, 86400, 0, 0, 1, 0, 0, 0), 
(230992, 35644, 650, 3, 1, 0, 0, 702.967, 587.649, 412.475, 0.610865, 86400, 0, 0, 1, 0, 0, 0), 
(230994, 35644, 650, 3, 1, 0, 0, 768.255, 661.606, 412.47, 4.55531, 86400, 0, 0, 1, 0, 0, 0), 
(230996, 35644, 650, 3, 1, 0, 0, 720.569, 571.285, 412.475, 1.06465, 86400, 0, 0, 1, 0, 0, 0), 
(230998, 35644, 650, 3, 1, 0, 0, 787.439, 584.969, 412.476, 2.47837, 86400, 0, 0, 1, 0, 0, 0), 
(231000, 35644, 650, 3, 1, 0, 0, 722.363, 660.745, 412.468, 4.83456, 86400, 0, 0, 1, 0, 0, 0), 
(231002, 35644, 650, 3, 1, 0, 0, 790.49, 646.533, 412.474, 3.71755, 86400, 0, 0, 1, 0, 0, 0), 
(231004, 35644, 650, 3, 1, 0, 0, 777.564, 660.3, 412.467, 4.34587, 86400, 0, 0, 1, 0, 0, 0),
(230961, 35004, 650, 3, 1, 0, 0, 746.626, 618.54, 411.09, 4.63158, 86400, 0, 0, 10635, 0, 0, 0),
(215948, 35016, 650, 3, 1, 0, 0, 746.524, 615.868, 411.172, 0, 180, 0, 0, 1, 0, 0, 0),
(215949, 35016, 650, 3, 1, 0, 0, 795.549, 618.25, 412.477, 0, 180, 0, 0, 1, 0, 0, 0),
(215950, 35016, 650, 3, 1, 0, 0, 782.12, 583.21, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(215951, 35016, 650, 3, 1, 0, 0, 791.972, 638.01, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(215952, 35016, 650, 3, 1, 0, 0, 780.436, 654.406, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(215953, 35016, 650, 3, 1, 0, 0, 697.285, 618.253, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(215954, 35016, 650, 3, 1, 0, 0, 714.486, 581.722, 412.476, 0, 180, 0, 0, 1, 0, 0, 0),
(215955, 35016, 650, 3, 1, 0, 0, 703.884, 596.601, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(215956, 35016, 650, 3, 1, 0, 0, 746.977, 618.793, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),
(215957, 35016, 650, 3, 1, 0, 0, 748.884, 616.462, 411.174, 0, 180, 0, 0, 1, 0, 0, 0),
(215958, 35016, 650, 3, 1, 0, 0, 702.274, 638.76, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(215959, 35016, 650, 3, 1, 0, 0, 792.259, 598.224, 412.47, 0, 180, 0, 0, 1, 0, 0, 0),
(215960, 35016, 650, 3, 1, 0, 0, 712.413, 653.931, 412.474, 0, 180, 0, 0, 1, 0, 0, 0),
(215961, 35016, 650, 3, 1, 0, 0, 747.375, 619.109, 411.971, 0, 180, 0, 0, 1, 0, 0, 0),
(231040, 34856, 650, 3, 65535, 0, 0, 810.378, 600.961, 438.781, 2.85266, 300, 0, 0, 1, 0, 0, 0), 
(231041, 34856, 650, 3, 65535, 0, 0, 803.7, 601.271, 435.419, 2.93905, 300, 0, 0, 1, 0, 0, 0),
(231042, 34856, 650, 3, 65535, 0, 0, 803.254, 599.097, 435.419, 2.93512, 300, 0, 0, 1, 0, 0, 0),
(231043, 34856, 650, 3, 65535, 0, 0, 801.833, 592.214, 435.419, 2.66809, 300, 0, 0, 1, 0, 0, 0),
(231044, 34856, 650, 3, 65535, 0, 0, 803.01, 588.849, 436.921, 2.53849, 300, 0, 0, 1, 0, 0, 0),
(231045, 34856, 650, 3, 65535, 0, 0, 808.849, 591.522, 438.762, 2.78589, 300, 0, 0, 1, 0, 0, 0),
(231080, 34857, 650, 3, 65535, 0, 0, 691.338, 593.985, 435.421, 0.463489, 300, 0, 0, 1, 0, 0, 0),
(231081, 34857, 650, 3, 65535, 0, 0, 686.892, 594.635, 436.913, 0.310337, 300, 0, 0, 1, 0, 0, 0),
(231082, 34857, 650, 3, 65535, 0, 0, 682.889, 596.325, 438.744, 0.212162, 300, 0, 0, 1, 0, 0, 0),
(231083, 34857, 650, 3, 65535, 0, 0, 689.73, 599.11, 435.42, 0.341752, 300, 0, 0, 1, 0, 0, 0),
(231084, 34857, 650, 3, 65535, 0, 0, 678.56, 600.035, 440.169, 0.141476, 300, 0, 0, 1, 0, 0, 0),
(231075, 34858, 650, 3, 65535, 0, 0, 697.235, 584.177, 435.421, 0.58129, 300, 0, 0, 1, 0, 0, 0),
(231076, 34858, 650, 3, 65535, 0, 0, 697.667, 578.208, 436.925, 0.600927, 300, 0, 0, 1, 0, 0, 0),
(231077, 34858, 650, 3, 65535, 0, 0, 689.247, 585.204, 438.779, 0.467415, 300, 0, 0, 1, 0, 0, 0),
(231078, 34858, 650, 3, 65535, 0, 0, 690.431, 576.641, 440.185, 0.565586, 300, 0, 0, 1, 0, 0, 0),
(231079, 34858, 650, 3, 65535, 0, 0, 686.422, 588.876, 438.766, 0.479192, 300, 0, 0, 1, 0, 0, 0),
(231085, 34859, 650, 3, 65535, 0, 0, 689.458, 604.899, 435.417, 0.180746, 300, 0, 0, 1, 0, 0, 0),
(231086, 34859, 650, 3, 65535, 0, 0, 686.041, 601.491, 436.916, 0.255361, 300, 0, 0, 1, 0, 0, 0),
(231087, 34859, 650, 3, 65535, 0, 0, 681.72, 605.995, 438.765, 0.290703, 300, 0, 0, 1, 0, 0, 0),
(231088, 34859, 650, 3, 65535, 0, 0, 689.472, 629.279, 435.417, 6.20476, 300, 0, 0, 1, 0, 0, 0),
(231089, 34859, 650, 3, 65535, 0, 0, 686.241, 634.227, 436.924, 6.11444, 300, 0, 0, 1, 0, 0, 0),
(231090, 34859, 650, 3, 65535, 0, 0, 682.425, 633.087, 438.772, 6.01626, 300, 0, 0, 1, 0, 0, 0),
(231096, 34860, 650, 3, 65535, 0, 0, 699.635, 654.463, 435.421, 5.85133, 300, 0, 0, 1, 0, 0, 0),
(231097, 34860, 650, 3, 65535, 0, 0, 695.174, 654.18, 436.925, 5.61964, 300, 0, 0, 1, 0, 0, 0),
(231098, 34860, 650, 3, 65535, 0, 0, 689.259, 651.278, 438.771, 5.79242, 300, 0, 0, 1, 0, 0, 0),
(231099, 34860, 650, 3, 65535, 0, 0, 688.07, 655.691, 440.196, 5.7885, 300, 0, 0, 1, 0, 0, 0),
(231091, 34861, 650, 3, 65535, 0, 0, 690.616, 639.017, 435.42, 6.08695, 300, 0, 0, 1, 0, 0, 0),
(231092, 34861, 650, 3, 65535, 0, 0, 692.094, 643.788, 435.42, 5.92201, 300, 0, 0, 1, 0, 0, 0),
(231093, 34861, 650, 3, 65535, 0, 0, 687.286, 642.438, 436.921, 5.97699, 300, 0, 0, 1, 0, 0, 0),
(231094, 34861, 650, 3, 65535, 0, 0, 686.736, 647.02, 438.783, 5.78849, 300, 0, 0, 1, 0, 0, 0),
(231095, 34861, 650, 3, 65535, 0, 0, 680.065, 642.334, 440.188, 6.08302, 300, 0, 0, 1, 0, 0, 0),
(231046, 34868, 650, 3, 65535, 0, 0, 796.164, 584.956, 435.421, 2.44032, 300, 0, 0, 1, 0, 0, 0),
(231047, 34868, 650, 3, 65535, 0, 0, 798.57, 588.261, 435.421, 2.53064, 300, 0, 0, 1, 0, 0, 0),
(231048, 34868, 650, 3, 65535, 0, 0, 792.513, 579.865, 435.421, 2.43639, 300, 0, 0, 1, 0, 0, 0),
(231049, 34868, 650, 3, 65535, 0, 0, 796.131, 579.051, 436.927, 2.52671, 300, 0, 0, 1, 0, 0, 0),
(231050, 34868, 650, 3, 65535, 0, 0, 801.093, 579.5, 438.752, 2.511, 300, 0, 0, 1, 0, 0, 0),
(231029, 34869, 650, 3, 65535, 0, 0, 809.105, 643.482, 438.774, 3.50385, 300, 0, 0, 1, 0, 0, 0),
(231030, 34869, 650, 3, 65535, 0, 0, 802.657, 640.241, 435.419, 3.41353, 300, 0, 0, 1, 0, 0, 0),
(231031, 34869, 650, 3, 65535, 0, 0, 806.511, 638.859, 436.923, 3.33892, 300, 0, 0, 1, 0, 0, 0),
(231032, 34869, 650, 3, 65535, 0, 0, 803.337, 635.024, 435.419, 3.3507, 300, 0, 0, 1, 0, 0, 0),
(231033, 34869, 650, 3, 65535, 0, 0, 810.526, 635.597, 438.772, 3.37874, 300, 0, 0, 1, 0, 0, 0),
(231034, 34870, 650, 3, 65535, 0, 0, 804.269, 629.575, 435.418, 3.29627, 300, 0, 0, 1, 0, 0, 0),
(231035, 34870, 650, 3, 65535, 0, 0, 807.446, 632.568, 436.922, 3.41015, 300, 0, 0, 1, 0, 0, 0),
(231036, 34870, 650, 3, 65535, 0, 0, 811.982, 626.887, 438.773, 3.31983, 300, 0, 0, 1, 0, 0, 0),
(231037, 34870, 650, 3, 65535, 0, 0, 812.287, 608.857, 438.76, 2.92321, 300, 0, 0, 1, 0, 0, 0),
(231038, 34870, 650, 3, 65535, 0, 0, 804.13, 606.65, 435.418, 2.91143, 300, 0, 0, 1, 0, 0, 0),
(231039, 34870, 650, 3, 65535, 0, 0, 807.288, 603.803, 436.927, 2.8054, 300, 0, 0, 1, 0, 0, 0),
(231024, 34871, 650, 3, 65535, 0, 0, 795.766, 651.07, 435.421, 3.73555, 300, 0, 0, 1, 0, 0, 0),
(231025, 34871, 650, 3, 65535, 0, 0, 797.19, 655.396, 436.93, 3.89263, 300, 0, 0, 1, 0, 0, 0),
(231026, 34871, 650, 3, 65535, 0, 0, 804.537, 650.886, 438.767, 3.7434, 300, 0, 0, 1, 0, 0, 0),
(231027, 34871, 650, 3, 65535, 0, 0, 802.272, 648.233, 436.923, 3.52898, 300, 0, 0, 1, 0, 0, 0),
(231028, 34871, 650, 3, 65535, 0, 0, 800.747, 644.155, 435.421, 3.6413, 300, 0, 0, 1, 0, 0, 0),
(231067, 34966, 650, 3, 65535, 0, 0, 726.498, 554.757, 438.775, 1.33527, 300, 0, 0, 1, 0, 0, 0),
(231068, 34966, 650, 3, 65535, 0, 0, 725.875, 561.87, 435.421, 1.29992, 300, 0, 0, 1, 0, 0, 0),
(231069, 34966, 650, 3, 65535, 0, 0, 720.481, 559.718, 436.92, 1.05252, 300, 0, 0, 1, 0, 0, 0),
(231070, 34966, 650, 3, 65535, 0, 0, 720.483, 564.132, 435.421, 1.08394, 300, 0, 0, 1, 0, 0, 0),
(231060, 34970, 650, 3, 65535, 0, 0, 757.896, 560.428, 435.417, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(231061, 34970, 650, 3, 65535, 0, 0, 763.526, 558.026, 436.932, 1.73189, 300, 0, 0, 1, 0, 0, 0),
(231062, 34970, 650, 3, 65535, 0, 0, 761.724, 553.669, 438.767, 1.78686, 300, 0, 0, 1, 0, 0, 0),
(231051, 34974, 650, 3, 65535, 0, 0, 785.952, 572.827, 435.421, 2.13401, 300, 0, 0, 1, 0, 0, 0),
(231052, 34974, 650, 3, 65535, 0, 0, 781.002, 569.334, 435.421, 2.09474, 300, 0, 0, 1, 0, 0, 0),
(231053, 34974, 650, 3, 65535, 0, 0, 780.854, 565.183, 436.924, 2.08296, 300, 0, 0, 1, 0, 0, 0),
(231054, 34974, 650, 3, 65535, 0, 0, 786.776, 565.04, 438.765, 2.2204, 300, 0, 0, 1, 0, 0, 0),
(231055, 34975, 650, 3, 65535, 0, 0, 775.647, 565.757, 435.421, 2.03191, 300, 0, 0, 1, 0, 0, 0),
(231056, 34975, 650, 3, 65535, 0, 0, 766.964, 561.534, 435.421, 1.81828, 300, 0, 0, 1, 0, 0, 0),
(231057, 34975, 650, 3, 65535, 0, 0, 767.925, 557.983, 436.914, 1.72796, 300, 0, 0, 1, 0, 0, 0),
(231058, 34975, 650, 3, 65535, 0, 0, 772.597, 559.445, 436.919, 2.02249, 300, 0, 0, 1, 0, 0, 0),
(231059, 34975, 650, 3, 65535, 0, 0, 777.127, 559.035, 438.781, 2.10495, 300, 0, 0, 1, 0, 0, 0),
(231063, 34977, 650, 3, 65535, 0, 0, 735.978, 560.676, 435.417, 1.4727, 300, 0, 0, 1, 0, 0, 0),
(231064, 34977, 650, 3, 65535, 0, 0, 733.086, 557.001, 436.916, 1.32347, 300, 0, 0, 1, 0, 0, 0),
(231065, 34977, 650, 3, 65535, 0, 0, 733.016, 549.424, 440.174, 1.2253, 300, 0, 0, 1, 0, 0, 0),
(231066, 34977, 650, 3, 65535, 0, 0, 728.087, 558.086, 436.927, 1.39023, 300, 0, 0, 1, 0, 0, 0),
(231071, 34979, 650, 3, 65535, 0, 0, 716.195, 558.771, 438.769, 1.02897, 300, 0, 0, 1, 0, 0, 0),
(231072, 34979, 650, 3, 65535, 0, 0, 713.858, 563.841, 436.914, 0.938649, 300, 0, 0, 1, 0, 0, 0),
(231073, 34979, 650, 3, 65535, 0, 0, 711.956, 569.633, 435.421, 1.00148, 300, 0, 0, 1, 0, 0, 0),
(231074, 34979, 650, 3, 65535, 0, 0, 702.138, 563.997, 440.192, 0.962211, 300, 0, 0, 1, 0, 0, 0),
(231106, 34883, 650, 3, 65535, 0, 0, 735.931, 560.084, 435.416, 1.3216, 300, 0, 0, 1, 0, 0, 0),
(231107, 34883, 650, 3, 65535, 0, 0, 726.508, 554.731, 438.774, 1.3805, 300, 0, 0, 1, 0, 0, 0),
(231108, 34883, 650, 3, 65535, 0, 0, 713.509, 563.346, 436.897, 1.11347, 300, 0, 0, 1, 0, 0, 0),
(231109, 34883, 650, 3, 65535, 0, 0, 701.499, 563.425, 440.137, 0.944606, 300, 0, 0, 1, 0, 0, 0),
(231116, 34901, 650, 3, 65535, 0, 0, 681.404, 606.01, 438.753, 0.186696, 300, 0, 0, 1, 0, 0, 0),
(231117, 34901, 650, 3, 65535, 0, 0, 682.044, 633.089, 438.758, 6.26568, 300, 0, 0, 1, 0, 0, 0),
(231114, 34902, 650, 3, 65535, 0, 0, 690.713, 593.896, 435.421, 0.504781, 300, 0, 0, 1, 0, 0, 0),
(231115, 34902, 650, 3, 65535, 0, 0, 678.504, 599.937, 440.17, 0.159205, 300, 0, 0, 1, 0, 0, 0),
(231110, 34903, 650, 3, 65535, 0, 0, 697.341, 577.798, 436.911, 0.665789, 300, 0, 0, 1, 0, 0, 0),
(231111, 34903, 650, 3, 65535, 0, 0, 696.432, 583.914, 435.421, 0.563687, 300, 0, 0, 1, 0, 0, 0),
(231112, 34903, 650, 3, 65535, 0, 0, 689.846, 576.178, 440.141, 0.461585, 300, 0, 0, 1, 0, 0, 0),
(231113, 34903, 650, 3, 65535, 0, 0, 688.993, 584.588, 438.755, 0.669715, 300, 0, 0, 1, 0, 0, 0),
(231118, 34904, 650, 3, 65535, 0, 0, 687.376, 642.417, 436.923, 6.03791, 300, 0, 0, 1, 0, 0, 0),
(231119, 34904, 650, 3, 65535, 0, 0, 691.9, 643.825, 435.421, 5.83764, 300, 0, 0, 1, 0, 0, 0),
(231120, 34904, 650, 3, 65535, 0, 0, 686.635, 646.976, 438.781, 5.81407, 300, 0, 0, 1, 0, 0, 0),
(231121, 34905, 650, 3, 65535, 0, 0, 688.937, 651.509, 438.754, 5.74731, 300, 0, 0, 1, 0, 0, 0),
(231122, 34905, 650, 3, 65535, 0, 0, 699.036, 654.459, 435.421, 5.67271, 300, 0, 0, 1, 0, 0, 0),
(231123, 34905, 650, 3, 65535, 0, 0, 694.682, 654.335, 436.912, 5.7748, 300, 0, 0, 1, 0, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (35309, 35310, 35305, 35306, 35307, 35308, 35119, 35518, 34928, 35517);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(35309, 1, '63501'),
(35310, 1, '63501'),
(35305, 1, '63501'),
(35306, 1, '63501'),
(35307, 1, '63501'),
(35308, 1, '63501'),
(35119, 1, '63501'),
(35518, 1, '63501'),
(34928, 1, '63501'),
(35517, 1, '63501');

UPDATE  `gameobject` SET  `state` =  '1' WHERE  `gameobject`.`guid` =150073;
UPDATE  `gameobject` SET  `state` =  '1' WHERE  `gameobject`.`guid` =150074;

DELETE FROM spell_script_names WHERE `spell_id` IN (67680, 66903);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES
(67680, 'spell_eadric_hoj'), -- Eadric's Hammer of Justice
(66903, 'spell_eadric_hoj'); 

DELETE FROM spell_linked_spell WHERE spell_trigger = 66905;
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(66905, -66904, 0, 'Unflip HOJ Bar when Hammer was thrown');

DELETE FROM achievement_criteria_data WHERE criteria_id IN (12302, 12303, 12304, 12305, 12306, 12307, 12308, 12318, 12319, 12320, 12321, 12322, 12323, 12324, 12439, 11420, 12298, 12299, 12300, 12301, 11559, 11560, 12310, 12311, 12312, 12313, 12314, 12315, 12316, 12317);
INSERT INTO achievement_criteria_data (criteria_id, type, value1, value2, ScriptName) VALUES
-- alliance nh
(12302, 11, 0, 0, 'achievement_toc5_champions_mokra'), 
(12303, 11, 0, 0, 'achievement_toc5_champions_visceri'), 
(12304, 11, 0, 0, 'achievement_toc5_champions_runok'), 
(12305, 11, 0, 0, 'achievement_toc5_champions_eressea'), 
(12306, 11, 0, 0, 'achievement_toc5_champions_zultore'), 
(12307, 11, 0, 0, 'achievement_toc5_paletress'), 
(12308, 11, 0, 0, 'achievement_toc5_eadric'), 
-- alliance hc
(12318, 11, 0, 0, 'achievement_toc5_champions_mokra'), 
(12318, 12, 1, 0, ''), 
(12319, 11, 0, 0, 'achievement_toc5_champions_visceri'), 
(12319, 12, 1, 0, ''),
(12320, 11, 0, 0, 'achievement_toc5_champions_runok'), 
(12320, 12, 1, 0, ''),
(12321, 11, 0, 0, 'achievement_toc5_champions_eressea'), 
(12321, 12, 1, 0, ''),
(12322, 11, 0, 0, 'achievement_toc5_champions_zultore'), 
(12322, 12, 1, 0, ''),
(12323, 11, 0, 0, 'achievement_toc5_paletress'), 
(12323, 12, 1, 0, ''),
(12324, 11, 0, 0, 'achievement_toc5_eadric'), 
(12324, 12, 1, 0, ''),
(12439, 12, 1, 0, ''), -- black knight, diffculty check suffices
-- horde nh
(11420, 11, 0, 0, 'achievement_toc5_champions_alerius'), 
(12298, 11, 0, 0, 'achievement_toc5_champions_lana'), 
(12299, 11, 0, 0, 'achievement_toc5_champions_colosos'), 
(12300, 11, 0, 0, 'achievement_toc5_champions_ambrose'), 
(12301, 11, 0, 0, 'achievement_toc5_champions_jaelyne'), 
(11559, 11, 0, 0, 'achievement_toc5_paletress'), 
(11560, 11, 0, 0, 'achievement_toc5_eadric'), 
-- horde hc
(12310, 11, 0, 0, 'achievement_toc5_champions_alerius'), 
(12310, 12, 1, 0, ''), 
(12311, 11, 0, 0, 'achievement_toc5_champions_lana'), 
(12311, 12, 1, 0, ''),
(12312, 11, 0, 0, 'achievement_toc5_champions_colosos'), 
(12312, 12, 1, 0, ''),
(12313, 11, 0, 0, 'achievement_toc5_champions_ambrose'), 
(12313, 12, 1, 0, ''),
(12314, 11, 0, 0, 'achievement_toc5_champions_jaelyne'), 
(12314, 12, 1, 0, ''),
(12315, 11, 0, 0, 'achievement_toc5_paletress'), 
(12315, 12, 1, 0, ''),
(12316, 11, 0, 0, 'achievement_toc5_eadric'), 
(12316, 12, 1, 0, ''),
(12317, 12, 1, 0, ''); -- black knight, diffculty check suffices

-- eadric credit spell
DELETE FROM spell_dbc WHERE Id = 68575;
INSERT INTO spell_dbc (Id, Dispel, Mechanic, Attributes, AttributesEx, AttributesEx2, AttributesEx3, AttributesEx4, AttributesEx5, AttributesEx6, AttributesEx7, Stances, StancesNot, Targets, CastingTimeIndex, AuraInterruptFlags, ProcFlags, ProcChance, ProcCharges, MaxLevel, BaseLevel, SpellLevel, DurationIndex, RangeIndex, StackAmount, EquippedItemClass, EquippedItemSubClassMask, EquippedItemInventoryTypeMask, Effect1, Effect2, Effect3, EffectDieSides1, EffectDieSides2, EffectDieSides3, EffectRealPointsPerLevel1, EffectRealPointsPerLevel2, EffectRealPointsPerLevel3, EffectBasePoints1, EffectBasePoints2, EffectBasePoints3, EffectMechanic1, EffectMechanic2, EffectMechanic3, EffectImplicitTargetA1, EffectImplicitTargetA2, EffectImplicitTargetA3, EffectImplicitTargetB1, EffectImplicitTargetB2, EffectImplicitTargetB3, EffectRadiusIndex1, EffectRadiusIndex2, EffectRadiusIndex3, EffectApplyAuraName1, EffectApplyAuraName2, EffectApplyAuraName3, EffectAmplitude1, EffectAmplitude2, EffectAmplitude3, EffectMultipleValue1, EffectMultipleValue2, EffectMultipleValue3, EffectMiscValue1, EffectMiscValue2, EffectMiscValue3, EffectMiscValueB1, EffectMiscValueB2, EffectMiscValueB3, EffectTriggerSpell1, EffectTriggerSpell2, EffectTriggerSpell3, EffectSpellClassMaskA1, EffectSpellClassMaskA2, EffectSpellClassMaskA3, EffectSpellClassMaskB1, EffectSpellClassMaskB2, EffectSpellClassMaskB3, EffectSpellClassMaskC1, EffectSpellClassMaskC2, EffectSpellClassMaskC3, MaxTargetLevel, SpellFamilyName, SpellFamilyFlags1, SpellFamilyFlags2, SpellFamilyFlags3, MaxAffectedTargets, DmgClass, PreventionType, DmgMultiplier1, DmgMultiplier2, DmgMultiplier3, AreaGroupId, SchoolMask, Comment) VALUES
(68575, 0, 0, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 101, 0, 0, 0, 0, 0, 1, 0, -1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 16, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Argent Champion credit marker - Eadric The Pure");

-- Several fixes thanks to Tea91
UPDATE creature_template SET minlevel=82, maxlevel=82, exp=2, faction_A=16, faction_H=16, speed_walk=0.8, speed_run=0.992063, scale=1.4, mindmg=488, maxdmg=642, attackpower=782, dmg_multiplier=13, unit_flags=0, dynamicflags=8, minrangedmg=363, maxrangedmg=521, rangedattackpower=121, WDBVerified=12340 WHERE entry IN 
(35535, 35528, 35542, 35533, 35533, 35520, 35541, 35527, 35523, 35532, 35537, 35529, 35544, 35539, 35524, 35536, 35530, 35538, 35531, 35521, 35540, 35519, 35525, 35534, 35522); -- Fix heroic memory faction and stats

UPDATE creature_template SET pickpocketloot=94839 WHERE entry IN (35517);
DELETE FROM `pickpocketing_loot_template` WHERE entry = 94839 AND item IN (54291, 43575, 33447);
INSERT INTO pickpocketing_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) values('94839','54291','80','1','0','4','5'); -- A Steamy Romance Novel: Blue Moon
INSERT INTO pickpocketing_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) values('94839','43575','40','1','0','1','2');
INSERT INTO pickpocketing_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount) values('94839','33447','40','1','0','1','2');

 
 
-- -------------------------------------------------------- 
-- 2013_30_30_00_Cloacas_de_Dalaran_y_El_C?rculo_del_Valor.sql 
-- -------------------------------------------------------- 
-- Dalaran Sewers and Ring of Valor
UPDATE `gameobject_template` SET `flags` = '36' WHERE `entry` IN (192642,192643);
DELETE FROM disables WHERE sourceType = 3 AND entry IN (10,11); 
 
-- -------------------------------------------------------- 
-- Corin_Direbrew.sql 
-- -------------------------------------------------------- 
DELETE FROM`creature_text` WHERE `entry` = 23872;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
('23872', '0', '0', 'This is an insult! An affront! They deny us participation in time-honored dwarven traditions!', '12', '0', '0', '0', '0', '0', 'Coren Rant 1'),
('23872', '1', '0', 'Are we going to hide in our mountain and let those swill-peddlers have their little shindig without us?', '12', '0', '0', '0', '0', '0', 'Coren Rant 2'),
('23872', '2', '0', 'DAMN RIGHT! We''ll show ''em why you don''t cross the Dark Iron dwarves!', '12', '0', '0', '0', '0', '0', 'Coren Rant 3'),
('23872', '3', '0', 'You''ll pay for this insult!', '12', '0', '0', '0', '0', '0', 'Coren Intro'),
('23872', '4', '0', 'Smash their kegs! DRAIN BREWFEST DRY!', '12', '0', '0', '0', '0', '0', 'Coren something');

DELETE FROM`creature_text` WHERE `entry` = 23795;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
('23795', '0', '0', 'Yeah!', '12', '0', '100', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '0', '1', 'Right!', '12', '0', '100', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '0', '2', 'You said it!', '12', '0', '100', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '0', '3', 'Damn straight!', '12', '0', '100', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '1', '0', 'NO!', '0', '0', '100', '12', '0', '0', 'Dark Iron Antagonist'),
('23795', '1', '1', 'No way!', '0', '0', '100', '12', '0', '0', 'Dark Iron Antagonist'),
('23795', '1', '2', 'Not on your life!', '12', '0', '100', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '2', '0', 'Time to die, $C.', '12', '0', '50', '0', '0', '0', 'Dark Iron Antagonist'),
('23795', '2', '1', 'Never cross a Dark Iron, $C.', '12', '0', '50', '0', '0', '0', 'Dark Iron Antagonist');

UPDATE  `creature_template` SET  `faction_A` =  '35', `faction_H` =  '35', `npcflag` =  '1' WHERE `entry` =23872;
UPDATE  `creature_template` SET  `faction_A` =  '35', `faction_H` =  '35' WHERE  `entry` =23795;

DELETE FROM `creature` WHERE `id` IN (23795, 23872);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
('250640', '23795', '230', '1', '1', '0', '0', '896.401', '-130.886', '-49.7459', '2.56785', '300', '0', '0', '12600', '0', '0', '0', '0', '0'), -- Antagonist
('250642', '23795', '230', '1', '1', '0', '0', '895.341', '-132.526', '-49.7473', '2.56785', '300', '0', '0', '12600', '0', '0', '0', '0', '0'),
('250644', '23795', '230', '1', '1', '0', '0', '894.091', '-134.46', '-49.7488', '2.56785', '300', '0', '0', '12600', '0', '0', '0', '0', '0'),
('250400', '23872', '230', '1', '1', '0', '0', '895.679', '-127.46', '-49.7433', '3.63599', '43200', '0', '0', '302400', '0', '2', '1', '0', '0'); -- Spawn Coren

DELETE FROM `waypoint_data` WHERE `id` = 2504000;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES 
('2504000', '1', '888.65', '-131.418', '-49.7426', '0', '500', '0', '0', '100', '0'),
('2504000', '2', '895.869', '-127.393', '-49.7432', '0', '500', '0', '0', '100', '0');

DELETE FROM `game_event_creature` WHERE `guid` IN (250640, 250642, 250644, 250400);
INSERT INTO  `game_event_creature` (`eventEntry`,`guid`)VALUES 
('24', '250640'),
('24', '250642'),
('24', '250644'),
('24', '250400');

DELETE FROM `creature_addon` WHERE `guid` = 250400;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('250400', '2504000', '0', '0', '0', '0', NULL);

UPDATE  `creature_template` SET  `ScriptName` =  'npc_dark_iron_antagonist' WHERE  `entry` =23795;
UPDATE  `creature_template` SET  `ScriptName` =  'boss_coren_direbrew' WHERE  `entry` =23872;
 
 
-- -------------------------------------------------------- 
-- Halls_Of_Reflection.sql 
-- -------------------------------------------------------- 
-- Halls of Reflection
-- Creature Defines 
SET @NPC_UTHER              := 37225; 
SET @NPC_JAINA_OUTRO        := 36955;
SET @NPC_SYLVANA_OUTRO      := 37554;
SET @NPC_FROSTWORN_GENERAL  := 36723;
SET @NPC_LICH_KING_EVENT    := 36954;
SET @NPC_LICH_KING_BOSS     := 37226;
SET @NPC_QUEL_DELAR			:= 37158;

-- LK adds
DELETE FROM `creature_template` WHERE `entry` IN (37014, 36940, 36941, 37069, 37550, 37551, 37549);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(36940, 37550, 0, 0, 0, 0, 24993, 0, 0, 0, 'Raging Ghoul', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 0, 422, 586, 0, 642, 1, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, 'npc_raging_gnoul', 12340),
(36941, 37551, 0, 0, 0, 0, 25245, 0, 0, 0, 'Risen Witch Doctor', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, 'npc_risen_witch_doctor', 12340),
(37014, 0, 0, 0, 0, 0, 169, 16925, 0, 0, 'Ice Wall Target', '', '', 0, 60, 60, 0, 114, 114, 0, 1, 0.99206, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 1, 33555200, 8, 0, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 7, 1.35, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 128, '', 12340),
(37069, 37549, 0, 0, 0, 0, 30503, 0, 0, 0, 'Lumbering Abomination', '', '', 0, 80, 80, 2, 1771, 1771, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 7.5, 2000, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, 'npc_abon', 12340),
(37549, 0, 0, 0, 37069, 0, 30503, 0, 0, 0, 'Lumbering Abomination (1)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 1, 1.14286, 1, 1, 422, 586, 0, 642, 13, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8388624, 0, '', 12340),
(37550, 0, 0, 0, 36940, 0, 24993, 0, 0, 0, 'Raging Ghoul (1)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 0, 422, 586, 0, 642, 1, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 345, 509, 103, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, '', 12340),
(37551, 0, 0, 0, 36941, 0, 25245, 0, 0, 0, 'Risen Witch Doctor (1)', '', '', 0, 80, 80, 2, 1771, 1771, 0, 2, 1.42857, 1, 1, 417, 582, 0, 608, 13, 0, 0, 2, 0, 8, 0, 0, 0, 0, 0, 341, 506, 80, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 7.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 151, 1, 8388624, 0, '', 12340);

-- Creature template updates
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_frostworn_general' WHERE `entry`=@NPC_FROSTWORN_GENERAL;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_and_sylvana_hor_part2' WHERE `entry` IN (@NPC_JAINA_OUTRO, @NPC_SYLVANA_OUTRO);
UPDATE `creature_template` SET `AIName`='', `Scriptname`='boss_lich_king_hor' WHERE `entry`=@NPC_LICH_KING_BOSS;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_sylvanas_hor_part1' WHERE `entry`=37223;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_jaina_hor_part1' WHERE `entry`=37221;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_raging_gnoul' WHERE `entry`=36940;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_risen_witch_doctor' WHERE `entry`=36941;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_abon' WHERE `entry`=37069;
UPDATE `creature_template` SET `AIName`='', `Scriptname`='npc_queldelar' WHERE `entry`=@NPC_QUEL_DELAR;
UPDATE `creature_template` SET `unit_flags` = 32784, `AIName` = '', `ScriptName` = 'npc_spiritual_reflection', `difficulty_entry_1` = 37721 WHERE `entry` = 37107;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `unit_flags` = 32784, `mindmg` = '422', `maxdmg` = '586', `attackpower` = '642', `dmg_multiplier` = '13' WHERE `entry` = 37721;
UPDATE `creature_template` SET `flags_extra` = 1 WHERE `entry` = @NPC_FROSTWORN_GENERAL;
UPDATE `creature_template` SET `flags_extra` = 257 WHERE `entry` = @NPC_FROSTWORN_GENERAL;

UPDATE `creature_template` SET `scale`='0.8' WHERE `entry` IN (@NPC_JAINA_INTRO, @NPC_JAINA_OUTRO);

UPDATE `creature_template` SET `speed_walk`='1.8', `speed_run`='2.0' WHERE `entry` IN (@NPC_LICH_KING_EVENT, @NPC_LICH_KING_BOSS);
UPDATE `creature_template` SET `scale`='1' WHERE `entry` IN (@NPC_UTHER, @NPC_SYLVANA_INTRO, @NPC_LICH_KING_BOSS, @NPC_SYLVANA_OUTRO); 

-- Update equiment to Jaina
DELETE FROM `creature_equip_template` WHERE `entry` = 36955;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
('36955','1','2177','12869','0');

-- Halls of Reflection
 REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(38172, 38524, 0, 0, 0, 0, 30977, 0, 0, 0, 'Phantom Mage', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.28571, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 576, 136, 0, 0, 0, 0, 0, 341, 506, 80, 6, 72, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 10, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 8388624, 0, 'npc_phantom_mage', 12340),
(38175, 38563, 0, 0, 0, 0, 30979, 0, 0, 0, 'Ghostly Priest', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.28571, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 576, 136, 0, 0, 0, 0, 0, 341, 506, 80, 6, 72, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1,  8388624, 0, 'npc_ghostly_priest', 12340),
(38176, 38544, 0, 0, 0, 0, 30980, 0, 0, 0, 'Tortured Rifleman', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.28571, 1, 1, 417, 582, 0, 608, 7.5, 2000, 0, 2, 576, 136, 0, 0, 0, 0, 0, 341, 506, 80, 6, 72, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 8388624, 0, 'npc_tortured_rifleman', 12340),
(38173, 38525, 0, 0, 0, 0, 30978, 0, 0, 0, 'Spectral Footman', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.28571, 1, 1, 422, 586, 0, 642, 7.5, 2000, 0, 1, 576, 136, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1, 8388624, 0, 'npc_spectral_footman', 12340),
(38177, 38564, 0, 0, 0, 0, 30981, 0, 0, 0, 'Shadowy Mercenary', '', '', 0, 80, 80, 2, 16, 16, 0, 1, 1.28571, 1, 1, 422, 586, 0, 642, 7.5, 2000, 0, 1, 576, 136, 0, 0, 0, 0, 0, 345, 509, 103, 6, 72, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 6.5, 5, 1, 0, 0, 0, 0, 0, 0, 0, 133, 1,  8388624, 0, 'npc_shadowy_mercenary', 12340),
(38113, 38603, 0, 0, 0, 0, 30973, 0, 0, 0, 'Marwyn', '', '', 0, 82, 82, 2, 16, 16, 0, 1.2, 1.42857, 1, 1, 488, 642, 0, 782, 7.5, 2000, 0, 1, 576, 136, 0, 0, 0, 0, 0, 363, 521, 121, 6, 72, 38113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 40, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 617299955, 0, 'boss_marwyn', 12340),
(38112, 38599, 0, 0, 0, 0, 30972, 0, 0, 0, 'Falric', '', '', 0, 82, 82, 2, 16, 16, 0, 1.2, 1.42857, 1, 1, 488, 642, 0, 782, 7.5, 1800, 0, 1, 576, 136, 0, 0, 0, 0, 0, 363, 521, 121, 6, 72, 38112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 28, 1, 1, 0, 0, 0, 0, 0, 0, 0, 147, 1, 617299955, 0, 'boss_falric', 12340);

-- AreaTrigger for waves restarter
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5697;
INSERT INTO `areatrigger_scripts` VALUES
(5697, 'at_hor_waves_restarter');

-- Normal
UPDATE `creature_template` SET `unit_flags`=576 WHERE `entry` IN (38172, 38175, 38176, 38173, 38177, 38113, 38112);
-- Heroic
UPDATE `creature_template` SET `unit_flags`=576 WHERE `entry` IN (38599, 38603, 38524, 38525, 38563, 38544, 38564);
-- Fix faction on Heroic 
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry` = 37720;

-- Waipoints to escort event on Halls of reflection 
-- Jaina
DELETE FROM `script_waypoint` WHERE `entry` IN(@NPC_JAINA_OUTRO,@NPC_LICH_KING_BOSS,@NPC_SYLVANA_OUTRO);
INSERT INTO `script_waypoint` VALUES
-- Jaina
   (@NPC_JAINA_OUTRO, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (@NPC_JAINA_OUTRO, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (@NPC_JAINA_OUTRO, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (@NPC_JAINA_OUTRO, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'),
   (@NPC_JAINA_OUTRO, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (@NPC_JAINA_OUTRO, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (@NPC_JAINA_OUTRO, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (@NPC_JAINA_OUTRO, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (@NPC_JAINA_OUTRO, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (@NPC_JAINA_OUTRO, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (@NPC_JAINA_OUTRO, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (@NPC_JAINA_OUTRO, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (@NPC_JAINA_OUTRO, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (@NPC_JAINA_OUTRO, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (@NPC_JAINA_OUTRO, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (@NPC_JAINA_OUTRO, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (@NPC_JAINA_OUTRO, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (@NPC_JAINA_OUTRO, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (@NPC_JAINA_OUTRO, 21, 5260.400,1677.775,784.301, 0, 'WP22'),
-- Sylvana
   (@NPC_SYLVANA_OUTRO, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (@NPC_SYLVANA_OUTRO, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (@NPC_SYLVANA_OUTRO, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (@NPC_SYLVANA_OUTRO, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'),
   (@NPC_SYLVANA_OUTRO, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (@NPC_SYLVANA_OUTRO, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (@NPC_SYLVANA_OUTRO, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (@NPC_SYLVANA_OUTRO, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (@NPC_SYLVANA_OUTRO, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (@NPC_SYLVANA_OUTRO, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (@NPC_SYLVANA_OUTRO, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (@NPC_SYLVANA_OUTRO, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (@NPC_SYLVANA_OUTRO, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (@NPC_SYLVANA_OUTRO, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (@NPC_SYLVANA_OUTRO, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (@NPC_SYLVANA_OUTRO, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (@NPC_SYLVANA_OUTRO, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (@NPC_SYLVANA_OUTRO, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (@NPC_SYLVANA_OUTRO, 21, 5260.400,1677.775,784.301, 0, 'WP22'),
-- Lich King
   (@NPC_LICH_KING_BOSS, 1, 5577.19, 2236, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 2, 5580.57, 2232.22, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 3, 5586.67, 2225.54, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 4, 5590.45, 2221.41, 733.012, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 5, 5595.75, 2215.62, 732.101, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 6, 5601.21, 2206.49, 731.54, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 7, 5605.01, 2197.9, 731.667, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 8, 5606.55, 2191.39, 730.977, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 9, 5604.68, 2186.11, 730.998, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 10, 5602.26, 2179.9, 730.967, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 11, 5600.06, 2174.38, 730.924, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 12, 5597.29, 2166.81, 730.924, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 13, 5596.25, 2160.36, 730.931, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 14, 5591.79, 2152.87, 731.008, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 15, 5585.47, 2146.63, 731.109, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 16, 5579.1, 2140.34, 731.18, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 17, 5572.56, 2134.21, 731.092, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 18, 5564.08, 2126.53, 730.816, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 19, 5559.04, 2117.64, 730.812, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 20, 5555.77, 2111.88, 730.995, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 21, 5550.82, 2103.14, 731.123, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 22, 5546.02, 2094.68, 731.16, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 23, 5541.53, 2084.42, 730.999, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 24, 5537.5, 2075.18, 730.901, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 25, 5533.76, 2063.84, 730.87, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 26, 5530.97, 2052.98, 730.981, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 27, 5526.75, 2041.73, 731.193, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 28, 5522.88, 2031.65, 731.7, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 29, 5521.01, 2023.02, 732.396, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 30, 5516.55, 2015.36, 733.12, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 31, 5513.06, 2007.33, 733.99, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 32, 5510.43, 1997.9, 735.016, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 33, 5504.53, 1990.39, 735.748, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 34, 5499.34, 1983.78, 736.29, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 35, 5493.11, 1975.86, 736.852, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 36, 5487.58, 1968.81, 737.394, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 37, 5483.12, 1961.78, 738.06, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 38, 5478.33, 1954.2, 739.343, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 39, 5475.2, 1945.84, 740.697, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 40, 5472.15, 1938.02, 741.884, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 41, 5469.26, 1931.34, 742.813, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 42, 5464.23, 1922.25, 744.055, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 43, 5458.43, 1912.96, 745.229, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 44, 5452.26, 1902.95, 747.091, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 45, 5442.44, 1892.51, 749.208, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 46, 5435.67, 1879.7, 751.776, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 47, 5429.03, 1870.73, 753.151, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 48, 5423.72, 1862.16, 754.263, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 49, 5417.21, 1851.7, 755.507, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 50, 5408.94, 1838.38, 757.002, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 51, 5398.8, 1829.61, 757.742, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 52, 5388.47, 1817.95, 759.285, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 53, 5378.23, 1808.5, 760.316, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 54, 5368.5, 1801.35, 760.845, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 55, 5360.86, 1793.16, 762.271, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 56, 5353.62, 1785.4, 763.868, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 57, 5344.78, 1776.09, 765.759, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 58, 5336.38, 1768.67, 767.324, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 59, 5327.56, 1760.12, 769.332, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 60, 5319.62, 1750.7, 771.487, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 61, 5313.12, 1742.99, 773.424, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 62, 5305.41, 1735.79, 775.473, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 63, 5298.93, 1728.16, 777.573, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 64, 5292.54, 1720.37, 779.862, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 65, 5287.11, 1713.96, 781.667, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 66, 5280.14, 1705.21, 784.65, 0, 'HoR WP LichKing'),
   (@NPC_LICH_KING_BOSS, 67, 5277.98, 1701.28, 785.224, 0, 'HoR WP LichKing');

-- Normal loot
DELETE FROM `gameobject_loot_template` WHERE `entry` =27985;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(27985, 43102, 100, 1, 0, 1, 1),
(27985, 47241, 100, 1, 0, 2, 2),
(27985, 100000, 100, 1, 1, -100000, 2);
DELETE FROM `reference_loot_template` WHERE `entry` =100000;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(100000, 49839, 0, 1, 1, 1, 1),
(100000, 49840, 0, 1, 1, 1, 1),
(100000, 49841, 0, 1, 1, 1, 1),
(100000, 49842, 0, 1, 1, 1, 1),
(100000, 49843, 0, 1, 1, 1, 1),
(100000, 49844, 0, 1, 1, 1, 1),
(100000, 49845, 0, 1, 1, 1, 1),
(100000, 49846, 0, 1, 1, 1, 1),
(100000, 49847, 0, 1, 1, 1, 1),
(100000, 49848, 0, 1, 1, 1, 1),
(100000, 49849, 0, 1, 1, 1, 1),
(100000, 49851, 0, 1, 1, 1, 1);

-- Heroic Loot
DELETE FROM `gameobject_loot_template` WHERE `entry` =27993;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(27993, 43102, 100, 1, 0, 1, 1),
(27993, 47241, 100, 1, 0, 2, 2),
(27993, 100000, 100, 1, 1, -100001, 2);

DELETE FROM `reference_loot_template` WHERE `entry` =100001;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(100001, 50302, 0, 1, 1, 1, 1),
(100001, 50303, 0, 1, 1, 1, 1),
(100001, 50304, 0, 1, 1, 1, 1),
(100001, 50305, 0, 1, 1, 1, 1),
(100001, 50306, 0, 1, 1, 1, 1),
(100001, 50308, 0, 1, 1, 1, 1),
(100001, 50309, 0, 1, 1, 1, 1),
(100001, 50310, 0, 1, 1, 1, 1),
(100001, 50311, 0, 1, 1, 1, 1),
(100001, 50312, 0, 1, 1, 1, 1),
(100001, 50313, 0, 1, 1, 1, 1),
(100001, 50314, 0, 1, 1, 1, 1);

-- Fix portal spell
UPDATE `gameobject_template` SET `data0`='53141' WHERE `entry`=202079;

-- Fix loot Halls of Reflection
UPDATE `gameobject_template` SET `flags` = '0' WHERE `gameobject_template`.`entry` = 202212;
UPDATE `gameobject_template` SET `flags` = '0' WHERE `gameobject_template`.`entry` = 201710;
UPDATE `gameobject_template` SET `flags` = '0' WHERE `gameobject_template`.`entry` = 202337;
UPDATE `gameobject_template` SET `flags` = '0' WHERE `gameobject_template`.`entry` = 202336;

-- Creature Text
DELETE FROM `creature_text` WHERE `entry` IN (37221, 37225, 37223, 36954, 38112, 38113, 36955, 37554, 37226, 36723, 37182, 37833, 38177, 38173, 38176, 38175, 38172);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(37221, 0, 0, "The chill of this place... Brr... I can feel my blood freezing.", 14, 0, 10, 0, 0, 16631, "Jaina HoR Alliance Intro 1"),
(37221, 1, 0, "What is that! Up ahead! Could it be? Heroes, at my side!", 14, 0, 10, 0, 0, 16632, "Jaina HoR Alliance Intro 2"),
(37221, 2, 0, "Frostmourne: the blade that destroyed our kingdom...", 14, 0, 10, 0, 0, 16633, "Jaina HoR Alliance Intro 3"),
(37221, 3, 0, "Stand back! Touch that blade and your soul will be scarred for all eternity! I must attempt to commune with the spirits locked away within Frostmourne. Give me space. Back up, please.", 14, 0, 10, 0, 0, 16634, "Jaina HoR Alliance Intro 4"),
(37225, 0, 0, "Jaina! Could it truly be you?", 12, 0, 10, 0, 0, 16666, "Uther HoR Alliance Intro 5"),
(37221, 4, 0, "Uther! Dear Uther! I... I'm so sorry.", 12, 0, 10, 0, 0, 16635, "Jaina HoR Alliance Intro 6"),
(37225, 1, 0, "Jaina you haven't much time. The Lich King sees what the sword sees. He will be here shortly!", 12, 0, 10, 0, 0, 16667, "Uther HoR Alliance Intro 7"),
(37221, 5, 0, "Arthas is here? Maybe I...", 12, 0, 10, 0, 0, 16636, "Jaina HoR Alliance Intro 8"),
(37225, 2, 0, "No, girl. Arthas is not here. Arthas is merely a presence within the Lich King's mind. A dwindling presence...", 12, 0, 10, 0, 0, 16668, "Uther HoR Alliance Intro 9"),
(37221, 6, 0, "But Uther, if there's any hope of reaching Arthas. I... I must try.", 12, 0, 10, 0, 0, 16637, "Jaina HoR Alliance Intro 10"),
(37225, 3, 0, "Jaina, listen to me. You must destroy the Lich King. You cannot reason with him. He will kill you and your allies and raise you all as powerful soldiers of the Scourge.", 12, 0, 10, 0, 0, 16669, "Uther HoR Alliance Intro 11"),
(37221, 7, 0, "Tell me how, Uther? How do I destroy my prince? My...", 12, 0, 10, 0, 0, 16638, "Jaina HoR Alliance Intro 12"),
(37225, 4, 0, "Snap out of it, girl. You must destroy the Lich King at the place where he merged with Ner'zhul - atop the spire, at the Frozen Throne. It is the only way.", 12, 0, 10, 0, 0, 16670, "Uther HoR Alliance Intro 13"),
(37221, 8, 0, "You're right, Uther. Forgive me. I... I don't know what got a hold of me. We will deliver this information to the King and the knights that battle the Scourge within Icecrown Citadel.", 12, 0, 10, 0, 0, 16639, "Jaina HoR Alliance Intro 14"),
(37225, 5, 0, "There is... something else that you should know about the Lich King. Control over the Scourge must never be lost. Even if you were to strike down the Lich King, another would have to take his place. For without the control of its master, the Scourge would run rampant across the world - destroying all living things.", 12, 0, 10, 0, 0, 16671, "Uther HoR Alliance Intro 15"),
(37225, 6, 0, "A grand sacrifice by a noble soul...", 12, 0, 10, 0, 0, 16672, "Uther HoR Alliance Intro 16"),
(37221, 9, 0, "Who could bear such a burden?", 12, 0, 10, 0, 0, 16640, "Jaina HoR Alliance Intro 17"),
(37225, 7, 0, "I do not know, Jaina. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.", 12, 0, 10, 0, 0, 16673, "Uther HoR Alliance Intro 18"),
(37221, 10, 0, "Then maybe there is still hope...", 12, 0, 10, 0, 0, 16641, "Jaina HoR Alliance Intro 19"),
(37225, 8, 0, "No, Jaina! ARRRRRRGHHHH... He... He is coming. You... You must...", 12, 0, 10, 0, 0, 16674, "Uther HoR Alliance Intro 20"),
(37223, 0, 0, "I... I don't believe it! Frostmourne stands before us, unguarded! Just as the Gnome claimed. Come, heroes!", 14, 0, 10, 0, 0, 17049, "Sylvanas HoR Horde Intro 1"),
(37223, 1, 0, "Standing this close to the blade that ended my life... The pain... It is renewed.", 14, 0, 10, 0, 0, 17050, "Sylvanas HoR Horde Intro 2"),
(37223, 2, 0, "I dare not touch it. Stand back! Stand back as I attempt to commune with the blade! Perhaps our salvation lies within...", 14, 0, 10, 0, 0, 17051, "Sylvanas HoR Horde Intro 3"),
(37225, 9, 0, "Careful, girl. I've heard talk of that cursed blade saving us before. Look around you and see what has been born of Frostmourne.", 12, 0, 10, 0, 0, 16659, "Uther HoR Horde Intro 4"),
(37223, 3, 0, "Uther...Uther the Lightbringer. How...", 12, 0, 10, 0, 0, 17052, "Sylvanas HoR Horde Intro 5"),
(37225, 10, 0, "You haven't much time. The Lich King sees what the sword sees. He will be here shortly.", 12, 0, 10, 0, 0, 16660, "Uther HoR Horde Intro 6"),
(37223, 4, 0, "The Lich King is here? Then my destiny shall be fulfilled today!", 12, 0, 10, 0, 0, 17053, "Sylvanas HoR Horde Intro 7"),
(37225, 11, 0, "You cannot defeat the Lich King. Not here. You would be a fool to try. He will kill those who follow you and raise them as powerful servants of the Scourge. But for you, Sylvanas, his reward for you would be worse than the last.", 12, 0, 10, 0, 0, 16661, "Uther HoR Horde Intro 8"),
(37223, 5, 0, "There must be a way... ", 12, 0, 10, 0, 0, 17054, "Sylvanas HoR Horde Intro 9"),
(37225, 12, 0, "Perhaps, but know this: there must always be a Lich King. Even if you were to strike down Arthas, another would have to take his place, for without the control of the Lich King, the Scourge would wash over this world like locusts, destroying all that they touched.", 12, 0, 10, 0, 0, 16662, "Uther HoR Horde Intro 10"),
(37223, 6, 0, "Who could bear such a burden?", 12, 0, 10, 0, 0, 17055, "Sylvanas HoR Horde Intro 11"),
(37225, 13, 0, "I do not know, Banshee Queen. I suspect that the piece of Arthas that might be left inside the Lich King is all that holds the Scourge from annihilating Azeroth.", 12, 0, 10, 0, 0, 16663, "Uther HoR Horde Intro 12"),
(37225, 14, 0, "Alas, the only way to defeat the Lich King is to destroy him at the place he was created.", 12, 0, 10, 0, 0, 16664, "Uther HoR Horde Intro 13"),
(37223, 7, 0, "The Frozen Throne...", 12, 0, 10, 0, 0, 17056, "Sylvanas HoR Horde Intro 14"),
(37225, 15, 0, "Aye. ARRRRRRGHHHH... He... He is coming. You... You must...", 12, 0, 10, 0, 0, 16665, "Uther HoR Horde Intro 15"),
(36954, 0, 0, "SILENCE, PALADIN!", 14, 0, 10, 0, 0, 17225, "HoR Intro LK 1"),
(36954, 1, 0, "So you wish to commune with the dead? You shall have your wish.", 14, 0, 10, 0, 0, 17226, "HoR Intro LK 2"),
(36954, 2, 0, "Falric. Marwyn. Bring their corpses to my chamber when you are through.", 14, 0, 10, 0, 0, 17227, "HoR Intro LK 3"),
(38112, 5, 0, "As you wish, my lord.", 14, 0, 10, 0, 0, 16717, "HoR Intro LK 4"),
(38113, 5, 0, "As you wish, my lord.", 14, 0, 10, 0, 0, 16741, "HoR Intro LK 5"),
(38112, 6, 0, "Soldiers of Lordaeron, rise to meet your master's call!", 14, 0, 10, 0, 0, 16714, "HoR Intro LK 6"),
(37221, 11, 0, "You won't deny me this Arthas! I must know! I must find out!", 14, 0, 10, 0, 0, 16642, "HoR Alliance Intro 20"),
(37223, 8, 0, "You will not escape me that easily, Arthas! I will have my vengeance!", 12, 0, 10, 0, 0, 17057, "Sylvanas HoR Horde Intro 16"),
(36954, 3, 0, "Foolish girl, you seek that which I killed long ago. He is merely a ghost now, a faint echo in my mind.", 14, 0, 10, 0, 0, 17229, "HoR Intro LK 7 Alliance"),
(36954, 4, 0, "I will not make the same mistake again Sylvanas, this time there will be no escape. You failed to serve me in undeath, now all that remains for you is oblivion.", 14, 0, 10, 0, 0, 17228, "HoR Intro LK 7 Horde"),
(37226, 0, 0, "Your allies have arrived, Jaina, just as you promised. You will all become powerful agents of the Scourge.", 14, 0, 10, 0, 0, 17212, "HoR Escape Alliance 1"),
(37226, 1, 0, "I will not make the same mistake again, Sylvanas. This time there will be no escape. You will all serve me in death!", 14, 0, 10, 0, 0, 17213, "HoR Escape Horde 1"),
(36955, 0, 0, "He is too powerful, we must leave this place at once! My magic will hold him in place for only a short time! Come quickly, heroes!", 14, 0, 10, 0, 0, 16644, "HoR Escape Alliance 2"),
(37554, 0, 0, "He's too powerful! Heroes, quickly, come to me! We must leave this place immediately! I will do what I can do hold him in place while we flee.", 14, 0, 10, 0, 0, 17058, "HoR Escape Horde 2"),
(36955, 1, 0, "I will destroy this barrier. You must hold the undead back!", 14, 0, 10, 0, 0, 16607, "HoR Escape Alliance 3 Wall 1"),
(37554, 1, 0, "No wall can hold the Banshee Queen! Keep the undead at bay, heroes! I will tear this barrier down!", 14, 0, 10, 0, 0, 17029, "HoR Escape Horde 3 Wall 1"),
(37226, 2, 0, "Succumb to the chill of the grave.", 14, 0, 10, 0, 0, 17218, "HoR Escape 4 LK"),
(36955, 2, 0, "Another ice wall! Keep the undead from interrupting my incantation so that I may bring this wall down!", 14, 0, 10, 0, 0, 16608, "HoR Escape Alliance 5 Wall 2"),
(37554, 2, 0, "Another barrier? Stand strong, champions! I will bring the wall down!", 14, 0, 10, 0, 0, 17030, "HoR Escape Horde 5 Wall 2"),
(37226, 3, 0, "Another dead end.", 14, 0, 10, 0, 0, 17219, "HoR Escape 6 LK"),
(36955, 3, 0, "He's playing with us! I'll show him what happens to ice when it meets fire!", 14, 0, 10, 0, 0, 16609, "HoR Escape Alliance 7 Wall 3"),
(37554, 3, 0, "I grow tired of these games, Arthas! Your walls can't stop me!", 14, 0, 10, 0, 0, 17031, "HoR Escape Horde 7 Wall 3"),
(37226, 4, 0, "How long can you fight it?", 14, 0, 10, 0, 0, 17220, "HoR Escape 8 LK"),
(36955, 4, 0, "Your barriers can't hold us back much longer, monster. I will shatter them all!", 14, 0, 10, 0, 0, 16610, "HoR Escape Alliance 9 Wall 4"),
(37554, 4, 0, "You won't impede our escape, fiend. Keep the undead off me while I bring this barrier down!", 14, 0, 10, 0, 0, 17032, "HoR Escape Horde 9 Wall 4"),
(36955, 5, 0, "There's an opening up ahead. GO NOW!", 14, 0, 10, 0, 0, 16645, "HoR Escape Alliance 10"),
(37554, 5, 0, "There's an opening up ahead. GO NOW!", 14, 0, 10, 0, 0, 17059, "HoR Escape Horde 10"),
(36955, 6, 0, "We're almost there... Don't give up!", 14, 0, 10, 0, 0, 16646, "HoR Escape Alliance 11"),
(37554, 6, 0, "We're almost there... Don't give up!", 14, 0, 10, 0, 0, 17060, "HoR Escape Horde 11"),
(36955, 7, 0, "It... It's a dead end. We have no choice but to fight. Steel yourself heroes, for this is our last stand!", 14, 0, 10, 0, 0, 16647, "HoR Escape Alliance 12"),
(37554, 7, 0, "BLASTED DEAD END! So this is how it ends. Prepare yourselves, heroes, for today we make our final stand!", 14, 0, 10, 0, 0, 17061, "HoR Escape Horde 12"),
(37182, 0, 0, "Fire! FIRE!", 14, 0, 10, 0, 0, 16721, "HoR Escape Alliance 14"),
(37833, 0, 0, "Fire! FIRE!", 14, 0, 10, 0, 0, 16732, "HoR Escape Horde 14"),
(37182, 1, 0, "Quickly, climb aboard! We mustn't tarry here! There's no telling when this whole mountainside will collapse.", 14, 0, 10, 0, 0, 16722, "HoR Escape Alliance 15"),
(37833, 1, 0, "Get onboard, now! This whole mountainside could collapse at any moment.", 14, 0, 10, 0, 0, 16733, "HoR Escape Horde 15"),
(36955, 8, 0, "Forgive me, heroes. I should have listened to Uther. I... I just had to see for myself. To look into his eyes one last time. I am sorry.", 14, 0, 10, 0, 0, 16648, "HoR Escape Alliance 16"),
(37554, 8, 0, " We are safe, for now. His strength has increased ten-fold since our last battle! It will take a mighty army to destroy the Lich King, an army greater than even the Horde can rouse.", 14, 0, 10, 0, 0, 17062, "HoR Escape Horde 16"),
(36955, 9, 0, "We now know what must be done. I will deliver this news to King Varian and Highlord Fordring.", 14, 0, 10, 0, 0, 16649, "HoR Escape Alliance 16"),
(37226, 5, 0, "There is no escape!", 14, 0, 10, 0, 0, 17217, "boss_the_lich_king_hor 1"),
(37226, 6, 0, "Succumb to the chill of the grave.", 14, 0, 10, 0, 0, 17218, "boss_the_lich_king_hor 2"),
(37226, 7, 0, "Rise minions, do not left them us!", 14, 0, 10, 0, 0, 17216, "boss_the_lich_king_hor 3"),
(37226, 8, 0, "Minions seize them.  Bring their corpses back to me!", 14, 0, 10, 0, 0, 17222, "boss_the_lich_king_hor 4"),
(37226, 9, 0, "Death's cold embrace awaits.", 14, 0, 10, 0, 0, 17221, "boss_the_lich_king_hor 5"),
(37226, 10, 0, "Nowhere to run! You're mine now...", 14, 0, 10, 0, 0, 17223, "boss_the_lich_king_hor 6"),
(37226, 11, 0, "All is lost!", 14, 0, 10, 0, 0, 17215, "boss_the_lich_king_hor wipe"),
(38112, 0, 0, "Men, women and children... None were spared the master's wrath. Your death will be no different.", 14, 0, 10, 0, 0, 16710, "HoR Falric Aggro"),
(38112, 1, 0, "Sniveling maggot!", 14, 0, 10, 0, 0, 16711, "HoR Falric Slay 1"),
(38112, 1, 1, "The children of Stratholme fought with more ferocity!", 14, 0, 10, 0, 0, 16712, "HoR Falric Slay 2"),
(38112, 2, 0, "Despair... so delicious...", 14, 0, 10, 0, 0, 16715, "HoR Falric Impending Despair"),
(38112, 3, 0, "Fear... so exhilarating...", 14, 0, 10, 0, 0, 16716, "HoR Falric Defiling Horor"),
(38112, 4, 0, "Marwyn, finish them...", 14, 0, 10, 0, 0, 16713, "HoR Falric Death"),
(38113, 0, 0, "Death is all that you will find here!", 14, 0, 10, 0, 0, 16734, "HoR Marwyn Aggro"),
(38113, 1, 0, "I saw the same look in his eyes when he died. Terenas could hardly believe it. Hahahaha!", 14, 0, 10, 0, 0, 16735, "HoR Marwyn Slay 1"),
(38113, 1, 1, "Choke on your suffering!", 14, 0, 10, 0, 0, 16736, "HoR Marwyn Slay 2"),
(38113, 2, 0, "Your flesh has decayed before your very eyes!", 14, 0, 10, 0, 0, 16739, "HoR Marwyn Corrupted Flesh"),
(38113, 3, 0, "Waste away into nothingness!", 14, 0, 10, 0, 0, 16734, "HoR Marwyn Well of Corruption"),
(38113, 4, 0, "Yes... Run... Run to meet your destiny... Its bitter, cold embrace, awaits you.", 14, 0, 10, 0, 0, 16737, "HoR Marwyn Death"),
(36723, 0, 0, "You are not worthy to face the Lich King!", 14, 0, 10, 0, 0, 16921, "HoR FrostSworn General Aggro"),
(36723, 1, 0, "Master, I have failed...", 14, 0, 10, 0, 0, 16922, "HoR FrostSworn General Death"),
(38177, 0, 0, 'This is not our final rest.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38173, 0, 0, 'This is not our final rest.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38176, 0, 0, 'This is not our final rest.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38175, 0, 0, 'This is not our final rest.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38172, 0, 0, 'This is not our final rest.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38177, 0, 1, 'All serve the master in death.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38173, 0, 1, 'All serve the master in death.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38176, 0, 1, 'All serve the master in death.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38175, 0, 1, 'All serve the master in death.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38172, 0, 1, 'All serve the master in death.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38177, 0, 2, 'Our souls will never be freed.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38173, 0, 2, 'Our souls will never be freed.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38176, 0, 2, 'Our souls will never be freed.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38175, 0, 2, 'Our souls will never be freed.', 12, 0, 10, 0, 0, 0, 'HoR Trash death'),
(38172, 0, 2, 'Our souls will never be freed.', 12, 0, 10, 0, 0, 0, 'HoR Trash death');

INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (37158, 50254, -100, 1, 0, 1, 1);

DELETE FROM `creature` WHERE `id`=37158;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (37158, 668, 1, 1, 0, 0, 5304.82, 2000.48, 709.341, 0.800565, 300, 0, 0, 214200, 0, 0, 0, 0, 0);

-- Fixed Halls of Reflection 
-- Creature Spawns
DELETE FROM `gameobject_template` WHERE `entry` = 500001;
INSERT INTO `gameobject_template` VALUES ('500001', '0', '9214', 'Ice Wall', '', '', '', '1375', '0', '2.5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '1');
SET @GUID_CREATURE := 202284;
DELETE FROM creature WHERE map=668 AND id IN (14881, 36723, 37221, 37704, 37906, 38112, 38113);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID_CREATURE+1,'37704','668','3','1','17612','0','5309.08','2006.32','711.422','3.93429','604800','0','0','12600','0','0','0','0','0'),
(@GUID_CREATURE+2,'14881','668','3','1','1160','0','5337.6','2012.14','707.695','3.52509','604800','0','0','8','0','0','0','0','0'),
(@GUID_CREATURE+3,'14881','668','3','1','2536','0','5268.91','1969.17','707.696','0.321519','604800','0','0','8','0','0','0','0','0'),
(@GUID_CREATURE+4,'14881','668','3','1','1160','0','5386.99','2080.5','707.695','4.67797','604800','0','0','8','0','0','0','0','0'),
(@GUID_CREATURE+5,'38112','668','3','1','0','0','5271.65','2042.5','709.32','5.51217','604800','0','0','377468','0','0','0','0','0'),
(@GUID_CREATURE+6,'38113','668','3','1','0','0','5344.75','1972.87','709.319','2.33445','604800','0','0','539240','0','0','0','0','0'),
(@GUID_CREATURE+7,'37221','668','3','1','0','0','5236.67','1929.91','707.695','0.837758','604800','0','0','5040000','881400','0','0','0','0'),
(@GUID_CREATURE+8,'36723','668','3','1','0','2432','5413.9','2116.65','707.695','3.94765','604800','0','0','315000','0','0','0','0','0'); 

-- GameObjects Halls Of Refletion
UPDATE `gameobject_template` SET `faction`='1375' WHERE `entry` IN (197341, 202302, 201385, 201596);

-- Spawns
DELETE FROM gameobject WHERE map = 668 AND id IN (190236, 196391, 196392, 197341, 197342, 197343, 201385, 201596, 201710, 201747, 201756, 201885, 201976, 202079, 202212, 202236, 202302, 202336, 202337, 202396, 500001, 500002, 500003);
SET @GUID_GO := 153000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID_GO,201747,668,3,1,5231.04,1923.79,707.044,0.810935,0,0,-0.370856,0.928691,6000,100,1),
(@GUID_GO+1,201756,668,3,1,5231.04,1923.79,707.044,0.810935,0,0,-0.370856,0.928691,6000,100,1),
(@GUID_GO+2,190236,668,3,1,4926.09,1554.96,163.292,-2.26562,0,0,0.999999,-0.001655,6000,100,1),
(@GUID_GO+3,202302,668,3,1,5309.51,2006.64,709.341,5.50041,0,0,0.381473,-0.92438,604800,100,1),
(@GUID_GO+4,202236,668,3,1,5309.51,2006.64,709.341,5.53575,0,0,0.365077,-0.930977,604800,100,1),
(@GUID_GO+5,201596,668,3,1,5275.28,1694.23,786.147,0.981225,0,0,0.471166,0.882044,25,0,0),
(@GUID_GO+6,500001,668,3,1,5323.61,1755.85,770.305,0.784186,0,0,0.382124,0.924111,604800,100,0),
(@GUID_GO+7,196391,668,3,1,5232.31,1925.57,707.695,0.815481,0,0,0.396536,0.918019,300,0,1),
(@GUID_GO+8,196392,668,3,1,5232.31,1925.57,707.695,0.815481,0,0,0.396536,0.918019,300,0,1),
(@GUID_GO+9,202396,668,3,1,5434.27,1881.12,751.303,0.923328,0,0,0.445439,0.895312,604800,100,0),
(@GUID_GO+10,201885,668,3,1,5494.3,1978.27,736.689,1.0885,0,0,0.517777,0.855516,604800,100,0),
(@GUID_GO+11,197341,668,3,1,5359.24,2058.35,707.695,3.96022,0,0,0.917394,-0.397981,300,100,1),
(@GUID_GO+12,201976,668,3,1,5264.6,1959.55,707.695,0.736951,0,0,0.360194,0.932877,300,100,0),
(@GUID_GO+13,197342,668,3,1,5520.72,2228.89,733.011,0.778581,0,0,0.379532,0.925179,300,100,1),
(@GUID_GO+14,197343,668,3,1,5582.96,2230.59,733.011,5.49098,0,0,0.385827,-0.922571,300,100,1),
(@GUID_GO+15,201385,668,3,1,5540.39,2086.48,731.066,1.00057,0,0,0.479677,0.877445,604800,100,0),
(@GUID_GO+16,202337,668,2,1,5252.33,1585.36,796.062,2.80195,0,0,0.985615,0.169007,604800,100,1),
(@GUID_GO+17,202336,668,2,1,5264.22,1584.94,794.359,2.70142,0,0,0.975878,0.218315,604800,100,1),
(@GUID_GO+18,202079,668,3,1,5248.58,1574.22,795.209,0,0,0,0,1,604800,100,1),
(@GUID_GO+19,500002,668,3,1,5247.09,1586.39,773.922,5.86166,0,0,0.209207,-0.977871,300,0,1),
(@GUID_GO+20,500003,668,3,1,5245.17,1582.11,761.72,5.86166,0,0,0.209207,-0.977871,300,0,1),
(@GUID_GO+21,202212,668,1,1,5253.03,1585.13,796.089,2.75698,0,0,0.981566,0.191121,300,0,1),
(@GUID_GO+22,201710,668,1,1,5262.5,1582.41,794.342,2.75698,0,0,0.981566,0.191121,300,0,1);

-- Gunship models
DELETE FROM `gameobject_template` WHERE `entry` IN (201709, 500002, 202211, 500003);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(201709, 5, 9288, 'Gunship Stairs', '', '', '', 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340),
(202211, 5, 9289, 'Gunship Stairs', '', '', '', 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340),
(500002, 14, 9150, 'The Skybreaker', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1),
(500003, 14, 8253, 'Orgrim''s Hammer', '', '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);

-- Spawn Ships
DELETE FROM `gameobject` WHERE `id` IN (201709, 500002, 202211, 500003);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(150180, 202211, 631, 15, 1, -437.351, 1979.57, 190.897, 0, 0, 0, 0, 1, 6000, 100, 1),
(150185, 202211, 631, 15, 1, -437.564, 1959.54, 203.37, 0, 0, 0, 0, 1, 6000, 100, 1),
(153019, 500002, 668, 3, 1, 5247.09, 1586.39, 773.922, 5.86166, 0, 0, 0.209207, -0.977871, 300, 0, 1),
(153020, 500003, 668, 3, 1, 5245.17, 1582.11, 761.72, 5.86166, 0, 0, 0.209207, -0.977871, 300, 0, 1);

-- Templates
DELETE FROM gameobject_template WHERE entry IN (201709, 202211, 190236, 196391, 196392, 197341, 197342, 197343, 201385, 201596, 201710, 201747, 201756, 201885, 201976, 202079, 202212, 202236, 202302, 202336, 202337, 202396, 500001, 500002, 500003);
INSERT INTO `gameobject_template` (`entry`, `TYPE`, `displayId`, `NAME`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('201596','0','9223','Cave In','','','','1375','4','2','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197342','0','9124','Doodad_IceCrown_Door_02','','','','1375','36','1','0','0','0','0','0','0','1','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197343','0','9124','Doodad_IceCrown_Door_03','','','','1375','36','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201976','0','9124','Doodad_IceCrown_Door_04','','','','114','32','1','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('196391','31','8196','Doodad_InstanceNewPortal_Purple01','','','','0','0','2.72','0','0','0','0','0','0','632','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201747','31','8196','Doodad_InstanceNewPortal_Purple01','','','','0','0','2.72','0','0','0','0','0','0','668','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('196392','31','8197','Doodad_InstanceNewPortal_Purple_Skull01','','','','0','0','2.72','0','0','0','0','0','0','632','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201756','31','8197','Doodad_InstanceNewPortal_Purple_Skull01','','','','0','0','2.72','0','0','0','0','0','0','668','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202302','0','9301','Frostmourne','','','','1375','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202236','0','9294','Frostmourne Altar','','','','114','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('190236','0','7876','Gate','','','','114','32','0.88','0','0','0','0','0','0','0','0','3000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201385','0','9214','Ice Wall','','','','1375','1','2.5','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('500001','0','9214','Ice Wall','','','','1375','1','2.5','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('201885','0','9214','Ice Wall','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202396','0','9214','Ice Wall','','','','114','33','2','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('197341','0','9124','Impenetrable Door','','','','1375','32','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('500003','14','8253','Orgrim\'s Hammer','','','','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('202079','22','8111','Portal to Dalaran','','','','0','0','1','0','0','0','0','0','0','53141','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('201710','3','9280','The Captain\'s Chest','','','','1732','0','1','0','0','0','0','0','0','57','27985','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202337','3','9281','The Captain\'s Chest','','','','1735','0','1','0','0','0','0','0','0','57','27993','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202336','3','9280','The Captain\'s Chest','','','','1732','0','1','0','0','0','0','0','0','57','27993','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','12340'),
('202212','3','9281','The Captain\'s Chest','','','','1735','0','1','0','0','0','0','0','0','57','27985','0','1','0','0','0','0','0','0','0','1','0','0','0','1','0','0','0','0','0','0','0','0','','','11723'),
('500002','14','9150','The Skybreaker','','','','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1'),
('201709','5','9288','Gunship Stairs','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340'),
('202211','5','9289','Gunship Stairs','','','','0','1','2','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','12340');

-- Equip template Fix some startup errors.
UPDATE `creature_equip_template` SET `id`='2' WHERE `entry`='1976' AND `id`='2';
UPDATE `creature` SET `equipment_id`='2' WHERE `guid`='90438';
UPDATE `creature_equip_template` SET `id`='2' WHERE `entry`='424' AND `id`='2';
UPDATE `creature_equip_template` SET `id`='2' WHERE `entry`='25239' AND `id`='1';
UPDATE `creature` SET `equipment_id`='0' WHERE `guid`='202292';

 
 
-- -------------------------------------------------------- 
-- icecrown_citadel_trashmobs.sql 
-- -------------------------------------------------------- 
UPDATE `creature_template` SET AIName = "" WHERE entry IN (36725, 36724); 
UPDATE `creature_template` SET `ScriptName` = 'npc_NerubarBroodkeeper' WHERE `entry` = 36725;
UPDATE `creature_template` SET `ScriptName` = 'npc_ServantoftheThrone' WHERE `entry` = 36724;

-- Nerubar Broodkeeper position
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201170;
UPDATE `creature` SET `position_z` = 35.24 WHERE `guid`=201106;
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200949;
UPDATE `creature` SET `position_z` = 44.57 WHERE `guid`=200956;
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200912;
UPDATE `creature` SET `position_z` = 42.1 WHERE `guid`=200934;
UPDATE `creature` SET `position_z` = 37.98 WHERE `guid`=201127;
UPDATE `creature` SET `position_z` = 37.98 WHERE `guid`=200939;

-- Inmunity's trash-icc:
-- nerubar broodkeeper
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|4|8|16|128|512|1024|65536|131072|524288|1048576|4194304|8388608|33554432|67108864|134217728 WHERE `entry` IN (36725,38058);
-- servant of the throne
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|4|8|16|128|512|1024|65536|131072|524288|1048576|4194304|8388608|33554432|67108864|134217728 WHERE `entry` IN (36724,38057);
 
 
-- -------------------------------------------------------- 
-- Premium Accounts -world.sql 
-- -------------------------------------------------------- 

-- Vip Commands
DELETE FROM `trinity_string` WHERE `entry` IN (11007,11008,11009,11010,11011,11012);
INSERT INTO `trinity_string`(`entry`,`content_default`, `content_loc8`) VALUES 
(11009, 'You can\`t do this at the moment.', 'Вы не можете сделать это сейчас.'),
(11007,'You are not VIP.', 'Вы не владеете правами VIP аккаунта.'),
(11008,'You are not VIP.', 'Вам недоступна эта VIP команда.');
 
 
-- -------------------------------------------------------- 
-- scourgelord_tyrannus.sql 
-- -------------------------------------------------------- 
-- Fix boss scourgelord tyrannus
UPDATE creature_template SET InhabitType = InhabitType | 4 WHERE `entry` IN (36658);
 
 
-- -------------------------------------------------------- 
-- Spell.sql 
-- -------------------------------------------------------- 
-- Fix Shadowmeld.
DELETE FROM spell_script_names WHERE spell_id = 58984;
INSERT INTO spell_script_names VALUES (58984, 'spell_gen_shadowmeld');

-- Fix Sylvanas Music Box
DELETE FROM spell_script_names WHERE spell_id = 73331;
INSERT INTO spell_script_names VALUES ('73331', 'spell_item_sylvanas_music_box');

-- Fix Glyph of Succubus.
DELETE FROM `spell_script_names` WHERE `spell_id`=6358;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(6358,'spell_warl_seduction');

-- Blessing of Sanctuary vs Vigilance
DELETE FROM `spell_dbc` WHERE `id` = 20912;
INSERT INTO `spell_dbc` (`Id`,`CastingTimeIndex`,`DurationIndex`,`RangeIndex`,`Effect1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`EffectMiscValue1`,`SpellFamilyName`,`Comment`) VALUES
(20912,1,21,1,6,-3,1,87,127,10,'Blessing of Sanctuary Helper');

UPDATE `spell_group` SET `spell_id` = 68066 WHERE `id` = 1091 and `spell_id` = 47930;
UPDATE `spell_group` SET `spell_id` = 20912 WHERE `id` = 1092 and `spell_id` = 20911;

-- spell_warl_shadow_bite
DELETE FROM spell_script_names WHERE spell_id IN (-54049,54049,54050,54051,54052,54053);
INSERT INTO spell_script_names (spell_id, ScriptName) VALUES (-54049, 'spell_warl_shadow_bite');

-- spell_dk_raise_dead
DELETE FROM `spell_script_names` WHERE `spell_id` = -46584;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(-46584, "spell_dk_raise_dead");
 
 
-- -------------------------------------------------------- 
-- The_Grand_Melee.sql 
-- -------------------------------------------------------- 

-- The Grand Melee
-- (13665,13745,13750,13756,13761,13767,13772,13777,13782,13787);

-- Remove Wrong Gossips :
DELETE FROM gossip_menu_option WHERE menu_id = 10458;

-- Set Scriptname, Dmg Multiplier for Valiants :
UPDATE creature_template SET ScriptName = 'npc_valiant' , dmg_multiplier = 2 , gossip_menu_id = 10464 WHERE entry IN (33285,33306,33382,33383,33384,33558,33559,33561,33562,33564);

-- Remove wrong ScriptName that was set by TC :
UPDATE creature_template SET ScriptName = '' , gossip_menu_id = 10457 WHERE entry IN (33738,33739,33740,33743,33744,33745,33746,33747,33748,33749);
 
 
-- -------------------------------------------------------- 
-- Wintergrasp.sql 
-- -------------------------------------------------------- 
-- Fix Gameobjects Wintergraps despawn wall fix
DELETE FROM `gameobject` WHERE `id` IN (192317,192335,192313,192316,192332,192331,192330,192329,192487,192310,192314,192308,192309,192324,192326,192312,192325,192304,187433,193984,193983,192377,192321,192318,192322,192320,192269,192273,192274,192277,192278,192280,192283,192284,192285,192289,192290,192336,192338,192339,192349,192350,192351,192352,192353,192354,192355,192356,192357,192358,192359,192360,192361,192362,192363,192364,192366,192367,192368,192369,192370,192371,192372,192373,192374,192375,192378,192379,192406,192407,192414,192416,192417,192418,192429,192433,192434,192435,192458,192459,192460,192461,192488,192501,192254,192255,192688,192686,180398,193764,193762,192319,192287,192323,192305,192286,192334,192307,192306,192328,192252,192253,192292,192299,192327,192267,192449,192450) AND map=571;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(NULL, 192317, 571, 1, 385, 5363.39, 2781.28, 435.634, 1.58825, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192335, 571, 1, 385, 5363.72, 2763.25, 445.023, -1.54462, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192313, 571, 1, 1, 5392.65, 3037.11, 433.713, -1.52716, 0, 0, -0.691512, 0.722365, 300, 0, 1),
(NULL, 192316, 571, 1, 385, 5322.01, 2781.13, 435.673, 1.57952, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192332, 571, 1, 1, 5289.46, 2704.68, 435.875, -0.017451, 0, 0, -0.00872539, 0.999962, 300, 0, 1),
(NULL, 192331, 571, 1, 1, 5350.95, 2640.36, 435.408, 1.5708, 0, 0, 0.707108, 0.707106, 300, 0, 1),
(NULL, 192330, 571, 1, 1, 5392.27, 2639.74, 435.331, 1.50971, 0, 0, 0.685183, 0.728371, 300, 0, 1),
(NULL, 192329, 571, 1, 1, 5350.88, 2622.72, 444.686, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1),
(NULL, 192487, 571, 1, 1, 5278.38, 2613.83, 432.721, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1),
(NULL, 192487, 571, 1, 1, 5260.82, 2631.8, 433.324, 3.05433, 0, 0, 0.999048, 0.0436174, 300, 0, 1),
(NULL, 192310, 571, 1, 1, 5271.8, 2704.87, 445.183, -3.13286, 0, 0, -0.99999, 0.00436634, 300, 0, 1),
(NULL, 192314, 571, 1, 1, 5236.27, 2739.46, 444.992, -1.59698, 0, 0, -0.716303, 0.697789, 300, 0, 1),
(NULL, 192487, 571, 1, 1, 5163.78, 2729.68, 432.009, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1),
(NULL, 192308, 571, 1, 1, 5237.07, 2757.03, 435.796, 1.51844, 0, 0, 0.688356, 0.725373, 300, 0, 1),
(NULL, 192309, 571, 1, 1, 5235.34, 2924.34, 435.04, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1),
(NULL, 192487, 571, 1, 1, 5262.54, 3047.95, 430.979, 3.10665, 0, 0, 0.999847, 0.0174704, 300, 0, 1),
(NULL, 192487, 571, 1, 1, 5163.13, 2952.59, 433.503, 1.53589, 0, 0, 0.694658, 0.71934, 300, 0, 1),
(NULL, 192324, 571, 1, 1, 5235.19, 2942, 443.948, 1.58825, 0, 0, 0.713251, 0.700909, 300, 0, 1),
(NULL, 192326, 571, 1, 1, 5272.73, 2976.55, 443.81, 3.12412, 0, 0, 0.999962, 0.00873622, 300, 0, 1),
(NULL, 192312, 571, 1, 1, 5352.37, 3037.09, 435.252, -1.5708, 0, 0, -0.707108, 0.707106, 300, 0, 1),
(NULL, 192325, 571, 1, 1, 5290.35, 2976.56, 435.221, 0.017452, 0, 0, 0.00872589, 0.999962, 300, 0, 1),
(NULL, 192304, 571, 1, 385, 5397.76, 2873.08, 455.321, 3.10665, 0, 0, 0.999847, 0.0174704, 300, 0, 1),
(NULL, 187433, 571, 1, 1, 2832.84, 6184.45, 84.6827, -2.58308, 0, 0, 0, 0, 300, 100, 1),
(NULL, 187433, 571, 1, 1, 2835.96, 6180.37, 84.6827, 1.50098, 0, 0, 0, 0, 180, 100, 1),
(NULL, 187433, 571, 1, 1, 2830.12, 6188.96, 84.6827, -0.855211, 0, 0, 0, 0, 300, 100, 1),
(NULL, 187433, 571, 1, 1, 2831.88, 6188.72, 84.6827, -1.65806, 0, 0, 0, 0, 300, 100, 1),
(NULL, 193984, 571, 1, 1, 7647.47, 2055.55, 599.399, -0.279252, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193984, 571, 1, 1, 7647.42, 2065.23, 599.308, 0.279252, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193984, 571, 1, 1, 7609.86, 2055.53, 599.494, -2.86234, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193984, 571, 1, 1, 7610.18, 2065.31, 599.426, 2.87979, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193983, 571, 1, 1, 7906.95, 2053.04, 599.626, -0.296705, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193983, 571, 1, 1, 7907.01, 2063.02, 599.587, 0.261798, 0, 0, 0, 0, 300, 0, 1),
(NULL, 193983, 571, 1, 1, 7870.43, 2053.35, 599.669, -2.87979, 0, 0, 0, 0, 180, 0, 1),
(NULL, 193983, 571, 1, 1, 7870.36, 2063.25, 599.628, 2.86234, 0, 0, 0, 0, 300, 0, 1),
(NULL, 192377, 571, 1, 1, 5414.19, 3069.8, 415.187, 1.64061, 0, 0, 0, 0, 5, 100, 1),
(NULL, 192321, 571, 1, 385, 5288.85, 2861.82, 435.591, 0.026179, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192318, 571, 1, 385, 5322.25, 2898.95, 435.643, -1.57952, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192322, 571, 1, 385, 5322.89, 2917.14, 445.154, 1.56207, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192320, 571, 1, 385, 5289.05, 2820.23, 435.674, 0, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192269, 571, 1, 1, 4526.46, 2810.18, 391.2, -2.99322, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192273, 571, 1, 1, 4417.94, 2324.81, 371.577, 3.08051, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192274, 571, 1, 1, 4424.15, 3286.54, 371.546, 3.12412, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192277, 571, 1, 1, 4572.93, 3475.52, 363.009, 1.42244, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192278, 571, 1, 1, 4433.9, 3534.14, 360.275, -1.85005, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192280, 571, 1, 1, 4857.97, 3335.44, 368.881, -2.94959, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192283, 571, 1, 1, 5006.34, 3280.4, 371.163, 2.22529, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192284, 571, 1, 65, 5372.48, 2862.5, 409.049, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192285, 571, 1, 65, 5371.49, 2820.8, 409.177, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192289, 571, 1, 1, 4778.19, 2438.06, 345.644, -2.94088, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192290, 571, 1, 1, 5024.57, 2532.75, 344.023, -1.93732, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192336, 571, 1, 1, 5154.49, 2862.15, 445.012, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192338, 571, 1, 65, 5397.76, 2873.08, 455.461, 3.10665, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192339, 571, 1, 65, 5397.39, 2809.33, 455.344, 3.10665, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192349, 571, 1, 1, 5155.31, 2820.74, 444.979, -3.13286, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192350, 571, 1, 1, 5270.69, 2861.78, 445.058, -3.11539, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192351, 571, 1, 1, 5271.28, 2820.16, 445.201, -3.13286, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192352, 571, 1, 1, 5173.02, 2820.93, 435.72, 0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192353, 571, 1, 1, 5172.11, 2862.57, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192354, 571, 1, 1, 5288.41, 2861.79, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192355, 571, 1, 1, 5288.92, 2820.22, 435.721, 0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192356, 571, 1, 1, 5237.07, 2757.03, 435.796, 1.51844, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192357, 571, 1, 1, 5235.34, 2924.34, 435.04, -1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192358, 571, 1, 65, 5322.23, 2899.43, 435.808, -1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192359, 571, 1, 65, 5364.35, 2899.4, 435.839, -1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192360, 571, 1, 65, 5352.37, 3037.09, 435.252, -1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192361, 571, 1, 65, 5392.65, 3037.11, 433.713, -1.52716, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192362, 571, 1, 65, 5322.12, 2763.61, 444.974, -1.55334, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192363, 571, 1, 65, 5363.61, 2763.39, 445.024, -1.54462, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192364, 571, 1, 1, 5350.88, 2622.72, 444.686, -1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192366, 571, 1, 1, 5236.27, 2739.46, 444.992, -1.59698, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192367, 571, 1, 1, 5271.8, 2704.87, 445.183, -3.13286, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192368, 571, 1, 65, 5289.46, 2704.68, 435.875, -0.017451, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192369, 571, 1, 1, 5350.95, 2640.36, 435.408, 1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192370, 571, 1, 1, 5392.27, 2639.74, 435.331, 1.50971, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192371, 571, 1, 65, 5364.29, 2916.94, 445.331, 1.57952, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192372, 571, 1, 65, 5322.86, 2916.95, 445.154, 1.56207, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192373, 571, 1, 1, 5290.35, 2976.56, 435.221, 0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192374, 571, 1, 1, 5272.94, 2976.55, 444.492, 3.12412, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192375, 571, 1, 1, 5235.19, 2941.9, 444.278, 1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192378, 571, 1, 65, 5322.02, 2781.13, 435.811, 1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192379, 571, 1, 65, 5363.42, 2781.03, 435.763, 1.5708, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192406, 571, 1, 1, 4438.3, 3361.08, 371.568, -0.017451, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192407, 571, 1, 1, 4448.17, 3235.63, 370.412, -1.56207, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192414, 571, 1, 1, 4387.62, 2719.57, 389.935, -1.54462, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192416, 571, 1, 1, 4408.57, 2422.61, 377.179, 1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192417, 571, 1, 1, 4416.59, 2414.08, 377.196, 0, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192418, 571, 1, 1, 4417.25, 2301.14, 377.214, 0.026179, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192429, 571, 1, 1, 4464.12, 2855.45, 406.111, 0.829032, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192433, 571, 1, 1, 4401.63, 3377.46, 363.365, 1.55334, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192434, 571, 1, 1, 5041.61, 3294.4, 382.15, -1.63188, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192435, 571, 1, 1, 4855.63, 3297.62, 376.739, -3.13286, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192458, 571, 1, 1, 4811.4, 2441.9, 358.207, -2.0333, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192459, 571, 1, 1, 4805.67, 2407.48, 358.191, 1.78023, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192460, 571, 1, 1, 5004.35, 2486.36, 358.449, 2.17294, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192461, 571, 1, 1, 4983.28, 2503.09, 358.177, -0.427603, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5160.34, 2798.61, 430.769, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5158.81, 2883.13, 431.618, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5278.38, 2613.83, 433.409, -1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5260.82, 2631.8, 433.324, 3.05433, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5163.13, 2952.59, 433.503, 1.53589, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5145.11, 2935, 433.386, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5262.54, 3047.95, 432.055, 3.10665, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5146.04, 2747.21, 433.584, 3.07177, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192488, 571, 1, 1, 5163.78, 2729.68, 433.394, -1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4398.82, 2804.7, 429.792, -1.58825, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4416, 2822.67, 429.851, -0.017452, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4559.11, 3606.22, 419.999, -1.48353, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4539.42, 3622.49, 420.034, -3.07177, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4555.26, 3641.65, 419.974, 1.67551, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4574.87, 3625.91, 420.079, 0.087266, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4466.79, 1960.42, 459.144, 1.15192, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4475.35, 1937.03, 459.07, -0.436332, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4451.76, 1928.1, 459.076, -2.00713, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192501, 571, 1, 1, 4442.99, 1951.9, 459.093, 2.74016, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192254, 571, 1, 1, 5154.46, 2828.94, 409.189, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192255, 571, 1, 1, 5154.52, 2853.31, 409.183, 3.14159, 0, 0, 0, 1, 180, 0, 1),
(NULL, 192688, 571, 1, 1, 5916.1, 566.209, 639.625, -2.72271, 0, 0, 0, 1, 180, 100, 1),
(NULL, 192686, 571, 1, 1, 5664.81, 791.002, 653.698, -0.663223, 0, 0, 0, 1, 180, 100, 1),
(NULL, 180398, 571, 1, 1, 5665.02, 790.2, 653.698, -0.610864, 0, 0, 0, 1, 180, 100, 1),
(NULL, 192487, 571, 1, 256, 4855.63, 3297.62, 376.281, -3.13286, 0, 0, -0.99999, 0.00436634, 300, 0, 1),
(NULL, 192290, 571, 1, 256, 4526.46, 2810.18, 391.2, -2.99322, 0, 0, -0.997249, 0.0741182, 300, 0, 1),
(NULL, 192487, 571, 1, 256, 4517.75, 2717.23, 387.812, -1.53589, 0, 0, -0.694658, 0.71934, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4475.35, 1937.03, 459.07, -0.436332, 0, 0, -0.216439, 0.976296, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4451.76, 1928.1, 459.076, -2.00713, 0, 0, -0.843392, 0.537299, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4442.99, 1951.9, 459.093, 2.74016, 0, 0, 0.979924, 0.199371, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4466.8, 1960.44, 459.841, 1.15192, 0, 0, 0.54464, 0.83867, 300, 0, 1),
(NULL, 192487, 571, 1, 256, 5041.61, 3294.4, 382.15, -1.63188, 0, 0, -0.72837, 0.685184, 300, 0, 1),
(NULL, 192278, 571, 1, 256, 5006.34, 3280.4, 371.163, 2.22529, 0, 0, 0.896872, 0.442291, 300, 0, 1),
(NULL, 192278, 571, 1, 256, 4857.97, 3335.44, 368.881, -2.94959, 0, 0, -0.995395, 0.0958539, 300, 0, 1),
(NULL, 192290, 571, 1, 256, 4433.9, 3534.14, 360.275, -1.85005, 0, 0, -0.798636, 0.601815, 300, 0, 1),
(NULL, 192290, 571, 1, 256, 4572.93, 3475.52, 363.009, 1.42244, 0, 0, 0.652758, 0.757566, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4555.26, 3641.65, 419.974, 1.67551, 0, 0, 0.743143, 0.669133, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4574.87, 3625.91, 420.079, 0.087266, 0, 0, 0.0436192, 0.999048, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4559.11, 3606.22, 419.999, -1.48353, 0, 0, -0.67559, 0.737277, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4539.42, 3622.49, 420.034, -3.07177, 0, 0, -0.999391, 0.0349043, 300, 0, 1),
(NULL, 192290, 571, 1, 256, 4401.63, 3377.46, 363.365, 1.55334, 0, 0, 0.700908, 0.713252, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4448.17, 3235.63, 370.412, -1.56207, 0, 0, -0.704015, 0.710185, 300, 0, 1),
(NULL, 192488, 571, 1, 256, 4438.3, 3361.08, 371.299, -0.017451, 0, 0, -0.00872539, 0.999962, 300, 0, 1),
(NULL, 192290, 571, 1, 256, 4424.15, 3286.54, 371.546, 3.12412, 0, 0, 0.999962, 0.00873622, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4416.03, 2822.68, 430.475, -0.017452, 0, 0, -0.00872589, 0.999962, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4464.12, 2855.45, 406.111, 0.829032, 0, 0, 0.402747, 0.915311, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4398.82, 2804.7, 429.792, -1.58825, 0, 0, -0.713251, 0.700909, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4408.57, 2422.61, 377.179, 1.58825, 0, 0, 0.713251, 0.700909, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4416.59, 2414.08, 377.13, 0, 0, 0, 0, 1, 300, 0, 1),
(NULL, 192461, 571, 1, 1, 4417.25, 2301.14, 377.214, 0.026179, 0, 0, 0.0130891, 0.999914, 300, 0, 1),
(NULL, 192418, 571, 1, 1, 4805.67, 2407.48, 358.191, 1.78023, 0, 0, 0.777144, 0.629323, 300, 0, 1),
(NULL, 192418, 571, 1, 1, 4811.4, 2441.9, 358.207, -2.0333, 0, 0, -0.85035, 0.526218, 300, 0, 1),
(NULL, 192273, 571, 1, 1, 4778.19, 2438.06, 345.644, -2.94088, 0, 0, -0.994969, 0.100188, 300, 0, 1),
(NULL, 192273, 571, 1, 1, 5024.57, 2532.75, 344.023, -1.93732, 0, 0, -0.824127, 0.566404, 300, 0, 1),
(NULL, 192418, 571, 1, 1, 5004.35, 2486.36, 358.449, 2.17294, 0, 0, 0.884989, 0.465612, 300, 0, 1),
(NULL, 192418, 571, 1, 1, 4983.28, 2503.09, 358.177, -0.427603, 0, 0, -0.212176, 0.977231, 300, 0, 1),
(NULL, 192290, 571, 1, 1, 4417.94, 2324.81, 371.577, 3.08051, 0, 0, 0.999534, 0.0305366, 300, 0, 1),
(NULL, 193764, 571, 1, 1, 7625.87, 2060.05, 604.27, 0.07854, 0, 0, 0.99999, 0.004363, 180, 255, 1),
(NULL, 193762, 571, 1, 1, 7625.66, 2060.04, 604.195, -3.05428, 0, 0, 0.99999, 0.004363, 180, 255, 1),
(NULL, 192319, 571, 1, 385, 5364.3, 2899.22, 435.691, -1.55334, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192287, 571, 1, 385, 5372.42, 2862.48, 409.366, 3.14159, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192323, 571, 1, 385, 5364.28, 2917.26, 445.332, 1.58825, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192305, 571, 1, 385, 5397.31, 2809.26, 455.102, 3.13286, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192286, 571, 1, 385, 5371.45, 2820.79, 409.427, 3.12412, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192334, 571, 1, 385, 5322.17, 2763.2, 444.974, -1.56207, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192307, 571, 1, 385, 5271.16, 2820.11, 445.109, -3.13286, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192306, 571, 1, 385, 5270.56, 2861.68, 444.917, -3.12412, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192487, 571, 1, 385, 5160.28, 2798.6, 430.604, -3.12412, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192487, 571, 1, 385, 5146.04, 2747.3, 433.527, 3.12412, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192328, 571, 1, 385, 5173.13, 2820.96, 435.658, 0.026179, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192252, 571, 1, 385, 5154.37, 2853.23, 409.183, 3.14159, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192253, 571, 1, 385, 5154.42, 2828.93, 409.189, 3.14159, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192292, 571, 1, 385, 5154.35, 2862.08, 445.01, 3.14159, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192299, 571, 1, 385, 5155.22, 2820.63, 444.979, -3.11539, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192327, 571, 1, 385, 5172.34, 2862.57, 435.658, 0, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192487, 571, 1, 385, 5158.71, 2882.9, 431.274, 3.14159, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192487, 571, 1, 385, 5145.11, 2934.95, 433.255, -3.10665, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192267, 571, 1, 385, 4452.76, 2639.14, 358.444, 1.67552, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192449, 571, 1, 385, 4517.75, 2717.23, 387.812, -1.53589, 0, 0, 0, 1, 300, 255, 1),
(NULL, 192450, 571, 1, 385, 4387.59, 2719.9, 390.201, -1.51843, 0, 0, 0, 1, 300, 255, 1);
 
 
-- -------------------------------------------------------- 
-- _MERGED.sql 
-- -------------------------------------------------------- 
 
 
