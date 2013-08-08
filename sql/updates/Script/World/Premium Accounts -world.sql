
-- Vip Commands
DELETE FROM `trinity_string` WHERE `entry` IN (11007,11008,11009,11010,11011,11012);
INSERT INTO `trinity_string`(`entry`,`content_default`, `content_loc8`) VALUES 
(11009, 'You can\`t do this at the moment.', 'Вы не можете сделать это сейчас.'),
(11007,'You are not VIP.', 'Вы не владеете правами VIP аккаунта.'),
(11008,'You are not VIP.', 'Вам недоступна эта VIP команда.');
