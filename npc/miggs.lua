--------------------------------------------------------------------------------
-- NPC Name: Miggs                                                    Galmair --
-- NPC Job:  Henchman                                                         --
--                                                                            --
-- NPC Race: dwarf                      NPC Position:  374, 216, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (1, 374, 216, 0, 6, 'Miggs', 'npc.miggs', 0, 2, 2, 242, 182, 0, 208, 160, 118);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.miggs", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Miggs, the henchman of Don Valerio. Keywords: Hello, henchman, quest, Don Valerio, rules."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Miggs, der Handlanger von Don Valerio. Schl�sselw�rter: Hallo, Handlanger, Quest, Don Valerio, Regeln."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("G'day, did the Don send you?");
talkEntry:addResponse("So, you are the next big shot of Galmair? Something makes me doubt that.");
talkEntry:addResponse("What?! Make it quick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Tach, hat euch der Don geschickt?");
talkEntry:addResponse("So, ihr seid also der n�chste Stern am Himmel Galmairs? Irgendwie kann ich das nicht recht glauben.");
talkEntry:addResponse("Was!? Sprecht schnell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("G'day, did the Don send you?");
talkEntry:addResponse("So, you are the next big shot of Galmair? Something makes me doubt that.");
talkEntry:addResponse("What?! Make it quick.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Tach, hat euch der Don geschickt?");
talkEntry:addResponse("So, ihr seid also der n�chste Stern am Himmel Galmairs? Irgendwie kann ich das nicht recht glauben.");
talkEntry:addResponse("Was!? Sprecht schnell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Go and come back, but not too soon.");
talkEntry:addResponse("Off!");
talkEntry:addResponse("Get lost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Geht und beehrt mich mal wieder. Aber nicht zu bald.");
talkEntry:addResponse("Hinfort!");
talkEntry:addResponse("Haut ab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Go and come back, but not too soon.");
talkEntry:addResponse("Off!");
talkEntry:addResponse("Get lost.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Geht und beehrt mich mal wieder. Aber nicht zu bald.");
talkEntry:addResponse("Hinfort!");
talkEntry:addResponse("Haut ab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I feel like beating somebody up. Just give me a reason.");
talkEntry:addResponse("Four words: None of your business.");
talkEntry:addResponse("My fist itches.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Mir ist danach, jemanden zu verm�beln. Gebt mir nur einen Anlass.");
talkEntry:addResponse("Vier Worte: Geht euch nichts an.");
talkEntry:addResponse("Meine Faust juckt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Miggs!");
talkEntry:addResponse("I am Miggs, and this is my fist. Me and her are looking forward to make your acquaintance.");
talkEntry:addResponse("I am Miggs, the right hand... no, the right fist of Don Valerio.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Miggs!");
talkEntry:addResponse("Ich bin Miggs. Und dies ist meine Faust. Ich und sie freuen uns darauf, deine Bekanntschaft zu machen.");
talkEntry:addResponse("Ich bin Miggs, die rechte Hand... nein, die rechte Faust Don Valerios.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(107, "=", 3));
talkEntry:addTrigger("message");
talkEntry:addTrigger("news");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("scroll");
talkEntry:addTrigger("parchment");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] The Reminder II: You deliver the message from Groktan Flintsplit to Miggs."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(107, "=", 4));
talkEntry:addResponse("Ah! Good! A list of debtors from Groktan. I'll rule out their names one after another... when I'm done with 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(107, "=", 3));
talkEntry:addTrigger("nachricht");
talkEntry:addTrigger("brief");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Schriftrolle");
talkEntry:addTrigger("Pergament");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Die Erinnerung II: Du �berbringst Miggs die Nachricht von Groktan Flintsplit."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(107, "=", 4));
talkEntry:addResponse("Ah! Gut! Eine Liste der Schuldner von Groktan. Ich werde einen Namen nach dem anderen durchstreichen... wenn ich mit ihnen fertig bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(107, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Groktan");
talkEntry:addTrigger("Flintsplit");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] The Reminder II: You deliver the message from Groktan Flintsplit to Miggs."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(107, "=", 4));
talkEntry:addResponse("Ah! Good! A list of debtors from Groktan. I'll rule out their names one after another... when I'm done with 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(107, "=", 3));
talkEntry:addTrigger("Groktan");
talkEntry:addTrigger("Flintsplit");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Die Erinnerung II: Du �berbringst Miggs die Nachricht von Groktan Flintsplit."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(107, "=", 4));
talkEntry:addResponse("Ah! Gut! Eine Liste der Schuldner von Groktan. Ich werde einen Namen nach dem anderen durchstreichen... wenn ich mit ihnen fertig bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("joey");
talkEntry:addTrigger("licavoli");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah Joey send you but you already ask me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("joey");
talkEntry:addTrigger("licavoli");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah Joey hat dich geschickt aber du hast mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah Joey send you but you already ask me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah Joey hat dich geschickt aber du hast mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("message");
talkEntry:addTrigger("news");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("scroll");
talkEntry:addTrigger("parchment");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] The Reminder II: You deliver the message from Groktan Flintsplit to Miggs."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 4));
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah! Good! A list of debtors from Groktan. I'll rule out their names one after another... when I'm done with 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("nachricht");
talkEntry:addTrigger("brief");
talkEntry:addTrigger("Botschaft");
talkEntry:addTrigger("Schriftrolle");
talkEntry:addTrigger("Pergament");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Die Erinnerung II: Du �berbringst Miggs die Nachricht von Groktan Flintsplit."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 4));
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah! Gut! Eine Liste der Schuldner von Groktan. Ich werde einen Namen nach dem anderen durchstreichen... wenn ich mit ihnen fertig bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Groktan");
talkEntry:addTrigger("Flintsplit");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest status] The Reminder II: You deliver the message from Groktan Flintsplit to Miggs."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 4));
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah! Good! A list of debtors from Groktan. I'll rule out their names one after another... when I'm done with 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 3));
talkEntry:addCondition(npc.base.condition.quest.quest(712, "=", 5));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Groktan");
talkEntry:addTrigger("Flintsplit");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Queststatus] Die Erinnerung II: Du �berbringst Miggs die Nachricht von Groktan Flintsplit."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 4));
talkEntry:addConsequence(npc.base.consequence.quest.quest(712, "=", 6));
talkEntry:addResponse("Ah! Gut! Eine Liste der Schuldner von Groktan. Ich werde einen Namen nach dem anderen durchstreichen... wenn ich mit ihnen fertig bin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 1));
talkEntry:addResponse("Blasted slime! The Don wants me to keep the streets clean, but dirty slimes seem to emerge from the sewers over and over again. Climb down and slay at least ten of those annoyances! Here, have this torch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 1));
talkEntry:addResponse("Verdammter Schleim! Der Don w�nscht sich saubere Stra�en, aber dieser Schleim steigt ein ums andere Mal aus der Kanalisation auf. Nehmt diese Fackel, steigt hinab und erschlagt wenigstens zehn dieser Plagegeister.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 1));
talkEntry:addResponse("Blasted slime! The Don wants me to keep the streets clean, but dirty slimes seem to emerge from the sewers over and over again. Climb down and slay at least ten of those annoyances! Here, have this torch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 1));
talkEntry:addResponse("Verdammter Schleim! Der Don w�nscht sich saubere Stra�en, aber dieser Schleim steigen ein ums andere Mal aus der Kanalisation auf. Nehmt diese Fackel, steigt hinab und erschlagt wenigstens zehn dieser Plagegeister.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins. You advance in Don Valerio Guilianni's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me hands over a small purse, 'Good job. Now I owe you one, but those slimes were only the beginning of the tasks I have for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 12));
talkEntry:addResponse("#me hands over a small purse: 'Good job. Now I owe you one. But those slimes were only the beginning of tasks I have for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke. Dein Ansehen bei Don Valerio Guilianni steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me �berreicht eine kleine Geldb�rse: 'Gut gemacht, ihr habt einen gut bei mir. Aber dieser Schleim war erst der Anfang der Auftr�ge, die ich f�r euch habe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 11));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 12));
talkEntry:addResponse("#me �berreicht eine kleine Geldb�rse: 'Gut gemacht, ihr habt einen gut bei mir. Aber dieser Schleim war erst der Anfang der Auftr�ge, die ich f�r euch habe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I see them everywhere. Go back to the sewers and smite as many slimes as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 11));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich seh sie �berall! Geht zur�ck in die Kanalisation und erschlagt so viele Schleime wie m�glich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 11));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("I see them everywhere. Go back to the sewers and smite as many slimes as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 11));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich seh sie �berall! Geht zur�ck in die Kanalisation und erschlagt so viele Schleime wie m�glich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 13));
talkEntry:addResponse("Did you ever notice this... moaning in the night? I don't know why, but smelly mummies haunt the sewers. Smite at least five of them for a small reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 12));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 13));
talkEntry:addResponse("Habt ihr jemals dieses Wehklagen in der Nacht vernommen? Ich wei� nicht warum, aber stinkende Gullimumien spuken in der Kanalisation. Erschlagt wenigstens f�nf von ihnen f�r eine kleine Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 12));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 13));
talkEntry:addResponse("Did you ever notice this... moaning in the night? I don't know why, but smelly mummies haunt the sewers. Smite at least five of them for a small reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 12));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 13));
talkEntry:addResponse("Habt ihr jemals dieses Wehklagen in der Nacht vernommen? Ich wei� nicht warum, aber stinkende Gullimumien spuken in der Kanalisation. Erschlagt wenigstens f�nf von ihnen f�r eine kleine Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and an ornate dagger. You advance in Don Valerio Guilianni's favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(190, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkEntry:addResponse("Each bad day for the undead is a good for the living. Here, have this dagger as compensation for your favour.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and an ornate dagger."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(190, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 19));
talkEntry:addResponse("Each bad day for the undead is a good for the living. Here, have this dagger as compensation for your favour.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 18));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und einen verzierten Dolch. Dein Ansehen bei Don Valerio Guilianni steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(190, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkEntry:addResponse("Jeder schlechte Tag f�r die Untoten ist ein guter f�r die Lebenden. Hier, nehmt diesen Dolch als Ausgleich f�r eure Gef�lligkeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 18));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und einen verzierten Dolch."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(190, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 19));
talkEntry:addResponse("Jeder schlechte Tag f�r die Untoten ist ein guter f�r die Lebenden. Hier, nehmt diesen Dolch als Ausgleich f�r eure Gef�lligkeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Those undead bastards in the sewers scare away customers. Help Galmair and our traders, slay as many as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 18));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Diese untoten Bastarde in der Kanalisation verschrecken die Kundschaft. Helft Galmair und seinen H�ndlern, erschlagt so viele wie m�glich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 18));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Those undead bastards in the sewers scare away customers. Help Galmair and our traders, slay as many as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 18));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Diese untoten Bastarde in der Kanalisation verschrecken die Kundschaft. Helft Galmair und seinen H�ndlern, erschlagt so viele wie m�glich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 20));
talkEntry:addResponse("The Don has a special assignment for you. The leader of a bunch of halfling thieves who dared to steal from the Don is suspected to hide in the sewers. End his life!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 19));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 20));
talkEntry:addResponse("Der Don hat einen Spezialauftrag f�r euch. Der Anf�hrer eine Bande von Halblingdieben, die sich erdreisteten, den Don zu bestehlen, versteckt sich wohl in der Kanalisation. Beendet sein Leben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 19));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Galmair Sewers III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 20));
talkEntry:addResponse("The Don has a special assignment for you. The leader of a bunch of halfling thieves who dared to steal from the Don is suspected to hide in the sewers. End his life!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 19));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Die Kanalisation von Galmair III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 20));
talkEntry:addResponse("Der Don hat einen Spezialauftrag f�r euch. Der Anf�hrer eine Bande von Halblingdieben, die sich erdreisteten, den Don zu bestehlen, versteckt sich wohl in der Kanalisation. Beendet sein Leben!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a pair of steel gloves. You advance in Don Valerio Guilianni's favour."));
talkEntry:addConsequence(npc.base.consequence.item.item(325, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Blasted halfers! You taught them a lesson, very good. To make your punch matter even more, have these steel gloves, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a pair of steel gloves."));
talkEntry:addConsequence(npc.base.consequence.item.item(325, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 22));
talkEntry:addResponse("Blasted halfers! You taught them a lesson, very good. To make your punch matter even more, have these steel gloves, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 21));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein Paar Stahlhandschuhe. Dein Ansehen bei Don Valerio Guilianni steigt."));
talkEntry:addConsequence(npc.base.consequence.item.item(325, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Verdammte Halblinge! Denen habt ihr es gezeigt. Damit ihr noch mehr Wumms in den F�usten kriegt, nehmt diese Stahlhandschuhe, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 21));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst ein Paar Stahlhandschuhe."));
talkEntry:addConsequence(npc.base.consequence.item.item(325, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(77, "=", 22));
talkEntry:addResponse("Verdammte Halblinge! Denen habt ihr es gezeigt. Damit ihr noch mehr Wumms in den F�usten kriegt, nehmt diese Stahlhandschuhe, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The halfling thieves continue to steal from clients of the Don. Track down their leader and execute him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 21));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Halblingdiebe bestehlen weiterhin die Klientel des Dons. Sp�rt ihren Anf�hrer auf und erledigt ihn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 21));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("The halfling thieves continue to steal from clients of the Don. Track down their leader and execute him.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(77, "<", 21));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Die Halblingdiebe bestehlen weiterhin die Klientel des Dons. Sp�rt ihren Anf�hrer auf und erledigt ihn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 22));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I thank you for what you did for Galmair. I owe you a favour. So, if you need help, come to Don Valerio, for he is your godfather.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 22));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich danke euch f�r alles, was ihr f�r Galmair getan habt. Ihr habt einen gut bei mir. Wenn ihr je Hilfe braucht, geht zu Don Valerio, denn er ist euer Pate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 22));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("I thank you for what you did for Galmair. I owe you a favour. So, if you need help, come to Don Valerio, for he is your godfather.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(77, "=", 22));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich danke euch f�r alles, was ihr f�r Galmair getan habt. Ihr habt einen gut bei mir. Wenn ihr je Hilfe braucht, geht zu Don Valerio, denn er ist euer Pate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Some call me a henchman. I work for the Don, and I am good at what I do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Manche nennen mich einen Handlanger. Ich arbeite f�r den Don; und ich bin gut darin, was ich mache.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("Some call me a henchman. I work for the Don, and I am good at what I do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Manche nennen mich einen Handlanger. Ich arbeite f�r den Don; und ich bin gut darin, was ich mache.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("castle");
talkEntry:addResponse("Some say, this castle was once built by dwarves. I don't care at all!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Burg");
talkEntry:addResponse("Manche behaupten, diese Burg wurde einst von Zwergen erbaut. Das ist mir sowas von egal!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("trader");
talkEntry:addTrigger("merchant");
talkEntry:addTrigger("collegue");
talkEntry:addTrigger("vendor");
talkEntry:addTrigger("market");
talkEntry:addResponse("In Galmair, you may trade whatever you want, with whoever you want, whenever you want.");
talkEntry:addResponse("The market place is a good place to trade. It is outside. So... get out!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("h�ndler");
talkEntry:addTrigger("kollege");
talkEntry:addTrigger("h�ker");
talkEntry:addTrigger("markt");
talkEntry:addResponse("In Galmair k�nnt ihr Handel treiben, was immer ihr wollt, mit wem ihr wollt und wann ihr es wollt.");
talkEntry:addResponse("Der Marktplatz ist ein guter Ort, um Handeln zu treiben. Er ist drau�en. Also... raus mit euch!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ruffian? You call me a ruffian? You're so right!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Grobian? Ihr nennt mich einen Grobian? Recht habt ihr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Who cares!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Na und!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("henchman");
talkEntry:addTrigger("henchman");
talkEntry:addTrigger("thug");
talkEntry:addResponse("I'm not a simple henchman. I'm a convincer, with irresistible arguments.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halfling");
talkEntry:addResponse("Blasted halfers! They pickpocket all day long. Nothing wrong with that, but they should know from whom they may take.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("hobbit");
talkEntry:addResponse("Blasted halfers! They pickpocket all day long. Nothing wrong with that, but they should know from whom they may take.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ratmen");
talkEntry:addTrigger("rat");
talkEntry:addResponse("Blasted ratmen! They squeak all day long. Nothing wrong with that, but they should know who they annoy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mummy");
talkEntry:addTrigger("mummies");
talkEntry:addResponse("Blasted mummies! They moan all day long. Nothing wrong with that, but they should know who not to moan about.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addTrigger("dwarves");
talkEntry:addResponse("So, you think us dwarves kneel to a king, drink beer and dig for pebbles all day long? Bad guess!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("protection");
talkEntry:addTrigger("fee");
talkEntry:addResponse("Protection can be paid for with money. The more money, the more protection. No money... bad idea.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("favour");
talkEntry:addTrigger("favor");
talkEntry:addResponse("Everyone in Galmair owes the Don a favour, some more than one. The Don helps everyone, he is our godfather.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Handlanger");
talkEntry:addTrigger("Gauner");
talkEntry:addResponse("Ich bin kein einfacher Handlanger. Ich bin ein �berzeugungsk�nstler - mit schlagenden Argumenten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("halbling");
talkEntry:addResponse("Verdammte Halblinge! Sie stibitzen den ganzen Tag aus allen m�glichen Taschen. Das w�re alleine nicht schlimm, doch sollten sie wissen, aus welchen Taschen sie ihre Finger raushalten sollten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hobbit");
talkEntry:addResponse("Verdammte Halblinge! Sie stibitzen den ganzen Tag aus allen m�glichen Taschen. Das w�re alleine nicht schlimm, doch sollten sie wissen, aus welchen Taschen sie ihre Finger raushalten sollten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ratte");
talkEntry:addResponse("Verdammte Rattenmenschen! Sie quieken den ganzen Tag. Das alleine w�re nicht schlimm, doch sollten sie wissen, wen sie besser nicht nerven sollten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mumie");
talkEntry:addResponse("Verdammte Mumien! Sie st�hnen den ganzen Tag. Das alleine w�re nicht schlimm, doch sollten sie wissen, �ber was sie besser nicht st�hnen sollten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwerg");
talkEntry:addResponse("So, ihr denkt also, wir Zwerge knien vor einem K�nig, saufen Bier und buddeln den ganzen Tag nach Kieselsteinen? Falsch gedacht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schutz");
talkEntry:addTrigger(" geld");
talkEntry:addTrigger("geb�hr");
talkEntry:addResponse("Sicherheit kann man erkaufen. Je mehr Geld, desto mehr Schutz. Kein Geld... Schlechte Idee.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gefallen");
talkEntry:addTrigger("Gef�lligkeit");
talkEntry:addResponse("Jeder Galmair schuldet dem Don einen Gefallen, manche mehr als einen. Denn der Don hilft jedem, er ist unser Pate.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rules");
talkEntry:addResponse("1. The Don protects you if you pay the fee. - 2. Pay the toll and the interest and no harm will be done. - 3. Trade freely, stay and depart as you wish. - 4. Come to the Don if you need help. He is your godfather. - 5. A deal with the Don is a deal with your fate. - 6. If you did harm, compensate generously twice the damage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Regel");
talkEntry:addResponse("1. Der Don besch�tzt euch, wenn ihr die Geb�hr bezahlt. - 2. Zahlt den Zoll und den Zins und kein Leid wird euch zugef�gt. - 3. Handelt frei, kommt und geht, wie es euch beliebt. - . Kommt zum Don, wenn ihr Hilfe braucht. Er ist euer Pate. - 5. Ein Handel mit dem Don ist ein Handel mit dem Schicksal. - 6. Habt ihr Schaden verursacht, gleicht den Schaden zweifach aus.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Hiding behind books, fighting with words; that is not the way of a man. The Archmage of Runewick can't be a true man!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Sich hinter B�chern verstecken und mit Worten zu k�mpfen; das ziemt sich nicht f�r einen Mann. Der Erzmagier von Runewick kann kein echter Mann sein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Hiding behind books, fighting with words; that is not the way of a man. The Archmage of Runewick can't be a true man!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Sich hinter B�chern verstecken und mit Worten zu k�mpfen; das ziemt sich nicht f�r einen Mann. Der Erzmagier von Runewick kann kein echter Mann sein!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick is ruled by an elf... by Elvaine Morgan. I'd never follow such a weak person. I have no explanation of how he gathered so many followers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick wird von einem Mann... von Elvaine Morgan regiert. Ich w�rde nie so einer schwachen Pers�nlichkeit gehorchen. Ich habe keine Erkl�rung daf�r, wie er so viele Anh�nger gewinnen konnte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("The Don made up some very clear rules. Obey them and you'll have a good time in Galmair.");
talkEntry:addResponse("The Don is a good man. If you owe him a favour, never forget about that in your life. He won't!");
talkEntry:addResponse("One bad word about the Don and a knife in the dark could make you stop spreading lies. Keep that in mind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Der Don hat einige einfache Regeln aufgestellt. Befolgt sie und ihr werdet eine gute Zeit in Galmair haben.");
talkEntry:addResponse("Der Don ist ein guter Mann. Wenn ihr ihm einen Gefallen schuldet, so vergesst dies niemals. Er wird es jedenfalls nicht.");
talkEntry:addResponse("Ein falsches Wort �ber den Don und ein Messer in der Dunkelheit k�nnte eure L�gen ein f�r alle mal beenden. Denkt immer daran.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair is the only town in this region where the word 'freedom' still has meaning.");
talkEntry:addResponse("When I first came to Galmair, I was a poor dwarf with no hope. The Don gave me hope and I pay back all the favours he granted.");
talkEntry:addResponse("If you like good beer, a good tavern brawl and good business, Galmair is the place to you should be.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair ist die einzige Stadt in dieser Region, wo das Wort 'Freiheit' noch eine Bedeutung hat.");
talkEntry:addResponse("Als ich nach Galmair kam, war ich ein armer Zwerg ohne Hoffnung. Der Don gab mir Hoffnung und ich zahle all seine Gef�lligkeiten gerne zur�ck.");
talkEntry:addResponse("Wenn ihr ein gutes Bier, eine gute Tavernenschl�gerei und ein gutes Gesch�ft sch�tzt, dann ist Galmair der Ort f�r euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Rosaline Guilianni; sounds good, eh?");
talkEntry:addResponse("The Don once proposed marriage to the Queen of Cadomyr. She refused; she'd better beg that he asks a second time!");
talkEntry:addResponse("I somehow adore Queen Rosaline; she knows how to rule a kingdom. As Queen... a Queendom, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Rosaline Guilianni; klingt gut, oder?");
talkEntry:addResponse("Der Don hat der K�nigin von Cadomyr einst einen Heiratsantrag gemacht. Sie hat ihn abgelehnt; sie sollte darum betteln, dass er es noch ein zweites mal macht.");
talkEntry:addResponse("Ich bewundere K�nigin Rosaline irgendwie. Sie wei�, wie man ein K�nigreich regiert. Als K�nigin. Ein K�niginnenreich, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Rosaline Guilianni; sounds good, eh?");
talkEntry:addResponse("The Don once proposed marriage to the Queen of Cadomyr. She refused; she'd better beg that he asks a second time!");
talkEntry:addResponse("I somehow adore Queen Rosaline; she knows how to rule a kingdom. As Queen... A Queendom, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Rosaline Guilianni; klingt gut, oder?");
talkEntry:addResponse("Der Don hat der K�nigin von Cadomyr einst einen Heiratsantrag gemacht. Sie hat ihn abgelehnt; sie sollte darum betteln, dass er es noch ein zweites mal macht.");
talkEntry:addResponse("Ich bewundere K�nigin Rosaline irgendwie. Sie wei�, wie man ein K�nigreich regiert. Als K�nigin. Ein K�niginnenreich, har, har.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("I ask myself how they survive in that barren desert. Cadomyr is proud, but it has to rely on food deliveries. This might turn out... violent one day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich frage mich, wie sie in dieser trockenen W�ste �berleben. Cadomyr ist stolz, doch ist es von Nahrungslieferungen abh�ngig. Das k�nnte mal recht... blutig ausgehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("In Albar, they don't obey women. I'd obey Rosaline Edwards of Cadomyr if she'd be the Don's wife; she is of Albarian origin, though. Strange, isn't it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("In Albar gehorcht man keinem Weibe. Ich aber w�rde Rosaline Edwards von Cadomyr gehorchen wenn sie die Ehefrau des Dons w�re. Sie ist von albarischem Gebl�t; merkw�rdig, oder?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Honestly, I've never been to Gynk, but I was told it is like Galmair... just bigger.");
talkEntry:addResponse("Gynk is the home of Don Valerio, so, you had better not say it is filthy!");
talkEntry:addResponse("If I ever depart from Galmair, I'd move to Gynk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Ehrlich gesagt war ich noch nie in Gynk, aber man sagt, es sei wie Galmair... nur gr��er.");
talkEntry:addResponse("Gynk ist die Heimat von Don Valerio. Also sollte ihr besser nicht behaupten, es sei dreckig!");
talkEntry:addResponse("Wenn ich jemals Galmair verlasse, dann ziehe ich nach Gynk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Oh, Salk... what was that? I've never heard of that place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Oh Salk... wie bitte? Ich hab noch nie von solch einem Ort geh�rt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Ha! Then tell me all the names of the Gods! At once! Quick!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ha! Na dann z�hlt mal alle G�tter auf! Los, zack, zack!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Well, well, well. You think I am a criminal and hence, I pray to Ronagan, right? Right. Except for the 'criminal'.");
talkEntry:addResponse("Ronagan is the patron saint of Galmair. So... hail Ronagan!");
talkEntry:addResponse("Do you have the slightest clue what Ronagan did for Illarion? No? If you knew, you'd pray to him all day long.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ja, ja, ja. Ihr denkt also, ich bin ein Gauner und deshalb bete ich zu Ronagan, richtig? Richtig. Au�er das mit dem 'Gauner'.");
talkEntry:addResponse("Ronagan ist der Schutzgott Galmairs. Also... lobet Ronagan!");
talkEntry:addResponse("Habt ihr die geringste Ahnung davon, was Ronagan f�r Illarion getan hat? Nein? Wenn ihr es w��tet, w�rdet ihr ihn den ganzen Tag lang anbeten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("All dwarves worship Irmorom - that is as false as the statement that all dwarves are greedy bastards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Dass alle Zwerge Irmorom anhimmeln ist so falsch wie dass alle Zwerge geizige Bastarde sind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Sirani, Sirani... The Don mentioned something about Sirani. Better ask him about Sirani.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sirani");
talkEntry:addResponse("Sirani, Sirani... der Don erw�hnte irgendwas �ber Sirani. Fragt ihn besser selbst.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("I'm not a trader. You can give me your money, though.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich bin kein H�ndler. Ihr k�nnt mir aber trotzdem euer Gold geben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Let me tell you something: Never mess with the Don. Messing with him is just as bad as messing with me.");
talkEntry:addResponse("Do you see any campfire here? No? So, no tales for you.");
talkEntry:addResponse("Leave me alone.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Lasst euch das gesagt sein: Legt euch nie mit dem Don an. Das w�rde bedeuten, ihr bekommt es mit mir zu tun.");
talkEntry:addResponse("Seht ihr hier irgendwo ein Lagerfeuer? Nein? Also, keine M�rchen f�r euch!");
talkEntry:addResponse("Haut ab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("privateer");
talkEntry:addResponse("Did Mr Lynch send you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Freibeuter");
talkEntry:addResponse("Schickt euch Mr. Lynch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Miggs");
talkEntry:addResponse("Aye?");
talkEntry:addResponse("Shut it!");
talkEntry:addResponse("What!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Miggs");
talkEntry:addResponse("Ja?");
talkEntry:addResponse("Schnauze!");
talkEntry:addResponse("Was!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Interesting. Now stop talking to me unless you want to work for the Don.");
talkEntry:addResponse("Ah. So, what?");
talkEntry:addResponse("You are a 'yes-man', aren't you? We need such people here in Galmair.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Interessant. Nun haltet den Schnabel, es sei denn, ihr wollt f�r den Don arbeiten.");
talkEntry:addResponse("Ah. Und nun?");
talkEntry:addResponse("Ihr seid wohl ein Jasager. Gut, solche Leute k�nnen wir hier in Galmair gebrauchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Shall I... 'convince' you?");
talkEntry:addResponse("Whatever.");
talkEntry:addResponse("If you say 'no' to the Don, you say 'no' to your... security.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Soll ich euch... '�berzeugen'?");
talkEntry:addResponse("Wie auch immer.");
talkEntry:addResponse("Sagt ihr 'nein' zum Don, sagt ich 'nein' zu eurer... Unversehrtheit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Knochen, Knochen, Knochen. Ich wei� schon gar nicht mehr, wie viele ich gebrochen habe.", "Bones, bones, bones. Can't count how many I broke.");
talkingNPC:addCycleText("Ihr wollt nicht mit mir reden, denn ich will nicht mit euch reden.", "You don't wanna talk to me, 'cause I don't wanna talk to you.");
talkingNPC:addCycleText("Wollt ihr, dass ich euch rausschleppe und euch beibringe, wie man ins Gras bei�t?", "You want me to take you outside and teach you how to eat grass?");
talkingNPC:addCycleText("Schonmal eure Z�hne gesehen? Nasewei�en zeige ich sie gerne, von ganz nahem.", "Ever seen your teeth? Keep wise crackin' and I'll show them to ya... up-close, like.");
talkingNPC:addCycleText("Wenn euch der Don eine Gef�lligkeit getan hat, seid besser dankbar, solange ihr noch laufen k�nnt.", "If the Don did you a favour, better get grateful quick like... while you can still walk.");
talkingNPC:addCycleText("Der Don m�chte, dass ich den Leuten einfache Dinge erkl�re. Ich bringe sie dazu, zuzuh�ren und zu verstehen.", "The Don usually wants me to explain simple things to people. I make them listen and understand.");
talkingNPC:addCycleText("#me spielt mit seinem Goldkettchen.", "#me plays with a golden chain around his neck.");
talkingNPC:addCycleText("Verdammt!", "Blast!");
talkingNPC:addCycleText("Ich halte die Stra�en sauber... von den falschen Leuten.", "I keep the town clean... of the wrong people.");
talkingNPC:addCycleText("Was guckt ihr!?", "What are ye lookin' at!?");
talkingNPC:addCycleText("Macht den Mund zu, es zieht!", "Shut your mouth, there's a terrible draught!");
talkingNPC:addCycleText("Unsere Vorr�te an Teppichen gehen zur Neige, ich sollte welche ordern.", "We're running low on carpets, I should order some.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(2);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Miggs, der Handlanger von Don Valerio.", "This NPC is Miggs, the henchman of Don Valerio.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 362);
mainNPC:setEquipment(11, 194);
mainNPC:setEquipment(5, 230);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 459);
mainNPC:setEquipment(10, 326);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END