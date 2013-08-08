SET @NPC = 50000;

DELETE FROM `creature_template` WHERE `entry` = @NPC;
INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `faction_A`, `faction_H`, `npcflag`, 'scale', `unit_class`, `type`, `ScriptName`) VALUES
(@NPC, '10913', 'Referee', 'Top Arena Teams', '35', '35', '1', '1.5', '1', '7', 'npc_arena_teamTop');
