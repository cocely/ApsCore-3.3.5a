#include "ScriptPCH.h" 
 
class Boss_Announcer : public PlayerScript 
{ 
public: 
Boss_Announcer() : PlayerScript ("Boss_Announcer") {} 
 
void OnCreatureKill(Player* player, Creature* boss) 
{ 
 
if (boss->isWorldBoss()) 
{ 
if (player->getGender() == GENDER_MALE) 
{ 
char msg[250]; 
snprintf(msg, 250, "|CFF7BBEF7[Boss Announcer]|r:|cffff0000 %s  %name and %group killed world boss % |CFF18BE00[%s]|r !!!",player->GetName(),boss->GetName()); 
sWorld->SendServerMessage(SERVER_MSG_STRING, msg); 
} 
else 
{ 
char msg[250]; 
snprintf(msg, 250, "|CFF7BBEF7[Boss Announcer]|r:|cffff0000 %s |r and her group killed world boss |CFF18BE00[%s]|r !!!",player->GetName(),boss->GetName()); 
sWorld->SendServerMessage(SERVER_MSG_STRING, msg); 
} 
} 
} 
}; 
 
void AddSC_Boss_Announcer() 
{ 
new Boss_Announcer; 
}