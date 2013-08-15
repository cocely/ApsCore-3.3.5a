/*******************************************************************************************
*              _   _                                      __   _                           *
*              | \ | |   ___    _ __ ___    ___    ___    / _| | |_                        *
*              |  \| |  / _ \  | '_ ` _ \  / __|  / _ \  | |_  | __|                       *
*              | |\  | | (_) | | | | | | | \__ \ | (_) | |  _| | |_                        *
*              |_| \_|  \___/  |_| |_| |_| |___/  \___/  |_|    \__|                       *
*                               The policy of Nomsoftware states: Releasing our software   *
*                               or any other files are protected. You cannot re-release    * 
*                               anywhere unless you were given permission.                 *
*                           (C) Nomsoftware 2011-2012. All rights reserved.                *
********************************************************************************************/

#include "ScriptPCH.h"
using namespace std;

class npc_arena_teamTop : public CreatureScript
{
   public:
	   npc_arena_teamTop() : CreatureScript("npc_arena_teamTop") { }

	   bool OnGossipHello(Player * player, Creature * creature)
	   {
		   player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tamashaye team haye bartare arena 2v2", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
		   player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tamashaye team haye bartare arena 3v3", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+2);
		   player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tamashaye team haye bartare arena 5v5", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+3);
		   player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Enseraf", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+4);
		   player->SEND_GOSSIP_MENU(1, creature->GetGUID());
		   return true;
	   }

	   bool OnGossipSelect(Player * player, Creature * creature, uint32 sender, uint32 actions)
	   {
		   if(sender == GOSSIP_SENDER_MAIN)
		   {
			   switch(actions)
			   {
			       case GOSSIP_ACTION_INFO_DEF+1:
				   {
					   QueryResult result = CharacterDatabase.Query("SELECT name,rating FROM arena_team WHERE type='2' ORDER BY rating DESC LIMIT 10");
					   if(!result)
						   return false;

					   Field * fields = NULL;
					   player->MonsterWhisper("|cff4169E110 Teame bartare arena 2v2 ebartand az:|r", player->GetGUID());
					   do
					   {
						   fields = result->Fetch();
						   string arena_name = fields[0].GetString();
						   uint32 rating = fields[1].GetUInt32();
						   char msg[250];
						   snprintf(msg, 250, "Name Team: |cffFFFF00%s|r, Emtiyaze Team: %u \n", arena_name.c_str(), rating);
						   player->MonsterWhisper(msg, player->GetGUID());
					   }while(result->NextRow());
				   }break;

			       case GOSSIP_ACTION_INFO_DEF+2:
				   {
					   QueryResult result = CharacterDatabase.Query("SELECT name,rating FROM arena_team WHERE type='3' ORDER BY rating DESC LIMIT 10");
					   if(!result)
						   return false;

					   Field * fields = NULL;
					   player->MonsterWhisper("|cff4169E110 Teame bartare arena 3v3 ebartand az:|r", player->GetGUID());
					   do
					   {
						   fields = result->Fetch();
						   string arena_name = fields[0].GetString();
						   uint32 rating = fields[1].GetUInt32();
						   char msg[250];
						   snprintf(msg, 250, "Name Team: |cffFFFF00%s|r, Emtiyaze Team: %u \n", arena_name.c_str(), rating);
						   player->MonsterWhisper(msg, player->GetGUID());
					   }while(result->NextRow());
				   }break;

			       case GOSSIP_ACTION_INFO_DEF+3:
				   {
					   QueryResult result = CharacterDatabase.Query("SELECT name,rating FROM arena_team WHERE type='5' ORDER BY rating DESC LIMIT 10");
					   if(!result)
						   return false;

					   Field * fields = NULL;
					   player->MonsterWhisper("|cff4169E110 Teame bartare arena 5v5 ebartand az:|r", player->GetGUID());
					   do
					   {
						   fields = result->Fetch();
						   string arena_name = fields[0].GetString();
						   uint32 rating = fields[1].GetUInt32();
						   char msg[250];
						   snprintf(msg, 250, "Name Team: |cffFFFF00%s|r, Emtiyaze Team: %u \n", arena_name.c_str(), rating);
						   player->MonsterWhisper(msg, player->GetGUID());
					   }while(result->NextRow());
				   }break;

			       case GOSSIP_ACTION_INFO_DEF+4:
					   {
						   player->PlayerTalkClass->SendCloseGossip();
					   }break;
			   }
		   }

		   return true;
	   }
};

void AddSC_npc_arena_setup()
{
	new npc_arena_teamTop;
}