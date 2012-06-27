/*
 * Copyright (C) 2010-2012 OregonCore <http://www.oregoncore.com/>
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2012 ScriptDev2 <http://www.scriptdev2.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: NPC_Transmogrify
SD%Complete: 100
SDComment: Transogrifier for items
SDCategory: Script Custom
EndScriptData */

#include "ScriptPCH.h"
#include "ObjectMgr.h"
#include <cstring>

std::map<uint64, std::map<uint32, Item*> > Items; // Items[GUID][DISPLAY] = item

char * GetSlotName(uint8 slot)
{
	switch(slot)
	{
		case EQUIPMENT_SLOT_HEAD      : return "Head";
		case EQUIPMENT_SLOT_SHOULDERS : return "Shoulders";
		case EQUIPMENT_SLOT_BODY      : return "Shirt";
		case EQUIPMENT_SLOT_CHEST     : return "Chest";
		case EQUIPMENT_SLOT_WAIST     : return "Waist";
		case EQUIPMENT_SLOT_LEGS      : return "Legs";
		case EQUIPMENT_SLOT_FEET      : return "Feet";
		case EQUIPMENT_SLOT_WRISTS    : return "Wrists";
		case EQUIPMENT_SLOT_HANDS     : return "Hands";
		case EQUIPMENT_SLOT_BACK      : return "Back";
		case EQUIPMENT_SLOT_MAINHAND  : return "Main hand";
		case EQUIPMENT_SLOT_OFFHAND   : return "Off hand";
		case EQUIPMENT_SLOT_RANGED    : return "Ranged";
		case EQUIPMENT_SLOT_TABARD    : return "Tabard";
		default: return NULL;
	}
}

bool HasGoodQuality(Item* pItem)
{
	uint32 Quality = pItem->GetProto()->Quality;
	if(Quality == ITEM_QUALITY_UNCOMMON || Quality == ITEM_QUALITY_RARE || Quality == ITEM_QUALITY_EPIC)
		return true;
	return false;
}

bool IsSuitable(Item* pItem, Item* OLD, Player* pPlayer)
{
	if(OLD->GetProto()->DisplayInfoID != pItem->GetProto()->DisplayInfoID)
	{
		if(ItemPrototype const* FakeItemTemplate = ObjectMgr::GetItemPrototype(OLD->FakeEntry))
			if(FakeItemTemplate->DisplayInfoID == pItem->GetProto()->DisplayInfoID)
				return false;
		if(pPlayer->CanUseItem(pItem, false) == EQUIP_ERR_OK)
			if(HasGoodQuality(pItem))
			{
				uint32 NClass = pItem->GetProto()->Class;
				uint32 OClass = OLD->GetProto()->Class;
				uint32 NSubClass = pItem->GetProto()->SubClass;
				uint32 OSubClass = OLD->GetProto()->SubClass;
				uint32 NEWinv = pItem->GetProto()->InventoryType;
				uint32 OLDinv = OLD->GetProto()->InventoryType;
				if(NClass == OClass) // not possibly the best structure here, but atleast I got my head around this
					if(NClass == ITEM_CLASS_WEAPON && NSubClass != ITEM_SUBCLASS_WEAPON_FISHING_POLE && OSubClass != ITEM_SUBCLASS_WEAPON_FISHING_POLE)
					{
						if(NSubClass == OSubClass || ((NSubClass == ITEM_SUBCLASS_WEAPON_BOW || NSubClass == ITEM_SUBCLASS_WEAPON_GUN || NSubClass == ITEM_SUBCLASS_WEAPON_CROSSBOW) && (OSubClass == ITEM_SUBCLASS_WEAPON_BOW || OSubClass == ITEM_SUBCLASS_WEAPON_GUN || OSubClass == ITEM_SUBCLASS_WEAPON_CROSSBOW)))
							if(NEWinv == OLDinv || (NEWinv == INVTYPE_WEAPON && (OLDinv == INVTYPE_WEAPONMAINHAND || OLDinv == INVTYPE_WEAPONOFFHAND)))
								return true;
					}
					else if(NClass == ITEM_CLASS_ARMOR)
						if(NSubClass == OSubClass)
							if(NEWinv == OLDinv || (NEWinv == INVTYPE_CHEST && OLDinv == INVTYPE_ROBE) || (NEWinv == INVTYPE_ROBE && OLDinv == INVTYPE_CHEST))
								return true;
			}
	}
	return false;
}

uint32 GetSellPrice(Item* pItem, Player* pPlayer) // The formula is not right
{
	uint32 Price = pItem->GetProto()->SellPrice;
	uint32 MinPrice = pPlayer->getLevel() * 1176;
	if(Price < MinPrice)
		return MinPrice;
	return Price;
}



//This function is called when the player opens the gossip menubool
bool GossipHello_NPC_Transmogrify(Player *pPlayer, Creature* pUnit)
{
	
	pPlayer->PlayerTalkClass->ClearMenus();
	for (uint8 Slot = EQUIPMENT_SLOT_START; Slot < EQUIPMENT_SLOT_TABARD; Slot++) // EQUIPMENT_SLOT_END
	{
		if (Item* pItem = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, Slot))
			if(HasGoodQuality(pItem))
				if(char* SlotName = GetSlotName(Slot))
				{
					uint8 br = 0;
					
					for (uint8 i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; i++)
					{
						if(br > 0)
							break;
						if (Item* newItem = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
							if(IsSuitable(newItem, pItem, pPlayer))
							{
								pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, SlotName, EQUIPMENT_SLOT_END, Slot);
								br++;
							}
					}
					
					for (uint8 i = INVENTORY_SLOT_BAG_START; i < INVENTORY_SLOT_BAG_END; i++)
					{
						if(br > 0)
							break;
						if (Bag* pBag = pPlayer->GetBagByPos(i))
							for (uint32 j = 0; j < pBag->GetBagSize(); j++)
							{
								if(br > 0)
									break;
								if (Item* newItem = pPlayer->GetItemByPos(i, j))
									if(IsSuitable(newItem, pItem, pPlayer))
									{
										pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TRAINER, SlotName, EQUIPMENT_SLOT_END, Slot);
										br++;
									}
							}
					}
				}
	}
	pPlayer->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Remove all transmogrifications", EQUIPMENT_SLOT_END+2, 0, "Remove transmogrifications from all equipped items?", 0, false);
	pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Update Menu", EQUIPMENT_SLOT_END+1, 0);
	pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pUnit->GetGUID());         
	
	return true;
}

//This function is called when the player clicks an option on the gossip menubool
bool GossipSelect_NPC_Transmogrify(Player *pPlayer, Creature* pUnit, uint32 sender, uint32 uiAction)
{
	pPlayer->PlayerTalkClass->ClearMenus();
		if(sender == EQUIPMENT_SLOT_END) // Show items you can use
		{
			if (Item* OLD = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, uiAction))
			{
				uint32 GUID = pPlayer->GetGUIDLow();
				Items[GUID].clear();
				uint32 limit = 0;
				for (uint8 i = INVENTORY_SLOT_ITEM_START; i < INVENTORY_SLOT_ITEM_END; i++)
				{
					if(limit > 30)
						break;
					if (Item* pItem = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, i))
					{
						uint32 Display = pItem->GetProto()->DisplayInfoID;
						if(IsSuitable(pItem, OLD, pPlayer))
						{
							if(Items[GUID].find(Display) == Items[GUID].end())
							{
								limit++;
								Items[GUID][Display] = pItem;
								pPlayer->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, pItem->GetProto()->Name1, uiAction, Display, "Using this item for transmogrigy will bind it to you and make it non-refundable and non-tradeable.\nDo you wish to continue?\n\n", GetSellPrice(OLD, pPlayer), false);
							}
						}
					}
				}

				for (uint8 i = INVENTORY_SLOT_BAG_START; i < INVENTORY_SLOT_BAG_END; i++)
				{
					if (Bag* pBag = pPlayer->GetBagByPos(i))
						for (uint32 j = 0; j < pBag->GetBagSize(); j++)
						{
							if(limit > 30)
								break;
							if (Item* pItem = pPlayer->GetItemByPos(i, j))
							{
								uint32 Display = pItem->GetProto()->DisplayInfoID;
								if(IsSuitable(pItem, OLD, pPlayer))
									if(Items[GUID].find(Display) == Items[GUID].end())
									{
										limit++;
										Items[GUID][Display] = pItem;
										pPlayer->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, pItem->GetProto()->Name1, uiAction, Display, "Using this item for transmogrigy will bind it to you and make it non-refundable and non-tradeable.\nDo you wish to continue?\n\n", GetSellPrice(OLD, pPlayer), false);
									}
							}
						}
				}

				pPlayer->ADD_GOSSIP_ITEM_EXTENDED(GOSSIP_ICON_INTERACT_1, "Remove transmogrification", EQUIPMENT_SLOT_END+3, uiAction, "Remove transmogrification from "+(std::string)GetSlotName(uiAction)+"?", 0, false);
				pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, "Back..", EQUIPMENT_SLOT_END+1, 0);
				pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE, pUnit->GetGUID());
			}
			else
				GossipHello_NPC_Transmogrify(pPlayer, pUnit);
		}
		else if(sender == EQUIPMENT_SLOT_END+1) // Back
			GossipHello_NPC_Transmogrify(pPlayer, pUnit);
		else if(sender == EQUIPMENT_SLOT_END+2) // Remove Transmogrifications
		{
			for (uint8 Slot = EQUIPMENT_SLOT_START; Slot < EQUIPMENT_SLOT_END; Slot++)
				if (Item* pItem = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, Slot))
				{
					if(pItem->FakeEntry || pItem->FakeOwner)
					{
						CharacterDatabase.PExecute("UPDATE item_instance SET FakeEntry = 0, FakeOwner = 0 WHERE guid = %u", pItem->GetGUIDLow());
						pItem->FakeEntry = NULL;
						pItem->FakeOwner = NULL;
					}
					pPlayer->SetUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (Slot * MAX_VISIBLE_ITEM_OFFSET), pItem->GetEntry());
				}
				GossipHello_NPC_Transmogrify(pPlayer, pUnit);
		}
		else if(sender == EQUIPMENT_SLOT_END+3) // Remove Transmogrification from single item
		{
			if (Item* pItem = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, uiAction))
			{
				if(pItem->FakeEntry || pItem->FakeOwner)
				{
					CharacterDatabase.PExecute("UPDATE item_instance SET FakeEntry = 0, FakeOwner = 0 WHERE guid = %u", pItem->GetGUIDLow());
					pItem->FakeEntry = NULL;
					pItem->FakeOwner = NULL;
				}
				pPlayer->SetUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (uiAction * MAX_VISIBLE_ITEM_OFFSET), pItem->GetEntry());
			}
			GossipSelect_NPC_Transmogrify(pPlayer, pUnit, EQUIPMENT_SLOT_END, uiAction);
		}
		else // Transmogrify
		{
			uint32 GUID = pPlayer->GetGUIDLow();
			if(Item* OLD = pPlayer->GetItemByPos(INVENTORY_SLOT_BAG_0, sender))
			{
				if(Items[GUID].find(uiAction) != Items[GUID].end() && Items[GUID][uiAction]->IsInWorld())
				{
					Item* pItem = Items[GUID][uiAction];
					if(pItem->GetOwnerGUID() == pPlayer->GetGUID() && (pItem->IsInBag() || pItem->GetBagSlot() == INVENTORY_SLOT_BAG_0) && IsSuitable(pItem, OLD, pPlayer))
					{
						pPlayer->ModifyMoney(-1*GetSellPrice(OLD, pPlayer)); // take cost
						pItem->SetBinding(true); // soulbound
						uint32 FakeEntry = pItem->GetEntry();
						CharacterDatabase.PExecute("UPDATE item_instance SET FakeEntry = %u, FakeOwner = %u WHERE guid = %u", FakeEntry, pPlayer->GetGUIDLow(), OLD->GetGUIDLow());
						OLD->FakeEntry = FakeEntry;
						OLD->FakeOwner = pPlayer->GetGUIDLow();
						pPlayer->SetVisibleItemSlot(sender, pItem); // No need to use this, useless checking
						//pPlayer->UpdateUInt32Value(PLAYER_VISIBLE_ITEM_1_0 + (sender * MAX_VISIBLE_ITEM_OFFSET), FakeEntry); // use this instead
						pPlayer->GetSession()->SendAreaTriggerMessage("%s transmogrified", GetSlotName(sender));
					}
					else
						pPlayer->GetSession()->SendNotification("Selected items are not suitable");
				}
				else
					pPlayer->GetSession()->SendNotification("Selected item does not exist");
			}
			else
				pPlayer->GetSession()->SendNotification("Equipment slot is empty");
			Items[GUID].clear();
			GossipSelect_NPC_Transmogrify(pPlayer, pUnit, EQUIPMENT_SLOT_END, sender);
		}
	return true;
}

void AddSC_NPC_Transmogrify()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "NPC_Transmogrify";
    newscript->pGossipHello =           &GossipHello_NPC_Transmogrify;
    newscript->pGossipSelect =          &GossipSelect_NPC_Transmogrify;
    newscript->RegisterSelf();
}

