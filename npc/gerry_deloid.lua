--------------------------------------------------------------------------------
-- NPC Name: Gerry Deloid                                             Cadomyr --
-- NPC Job:  Candle maker                                                     --
--                                                                            --
-- NPC Race: human                      NPC Position:  126, 572, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Zot                                                              --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 126, 572, 0, 4, 'Gerry Deloid', 'npc.gerry_deloid', 0, 3, 4, 216, 33, 29, 191, 139, 97);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.quest")
require("npc.base.talk")
module("npc.gerry_deloid", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Gerry Deloid the candle maker. Keywords: quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Gerry Deloid der Kerzenmacher. Schl�sselw�rter: Quest"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good Evening");
talkEntry:addResponse("Hello, can I help you?");
talkEntry:addResponse("Nice to meet you, I'm Gerry Deloid.");
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
talkEntry:addResponse("Hallo, kann ich Euch helfen?");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Gerry Deloid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hello, can I help you?");
talkEntry:addResponse("Nice to meet you, I'm Gerry Deloid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Hallo, kann ich Euch helfen?");
talkEntry:addResponse("Freut mich, Euch zu treffen. Ich bin Gerry Deloid");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("I wish you a nice day.");
talkEntry:addResponse("I hope we meet again, goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addResponse("Ich w�nsche Euch noch einen sch�nen Tag.");
talkEntry:addResponse("Ich hoffe wir sehen uns wieder, auf bald!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("I wish you a nice day.");
talkEntry:addResponse("I hope we meet again, goodbye.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Ich w�nsche Euch noch einen sch�nen Tag.");
talkEntry:addResponse("Ich hoffe wir sehen uns wieder, auf bald!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I feel fine, thank you for asking.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Mir geht es gut, danke f�r die Nachfrage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I'm Gerry Deloid, who are you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Gerry Deloid, wer bist du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I'm a candle maker, I'm responsible for the city lights.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin Kerzenmacher, ich k�mmere mich um die Beleuchtung unserer sch�nen Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I'm a candle maker, I'm responsible for the city lights.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin Kerzenmacher, ich k�mmere mich um die Beleuchtung unserer sch�nen Stadt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 1));
talkEntry:addResponse("A task..well, you could gather honeycombs for me, you will need them to make wax anyway. There are two beehives right there on the tables, so please collect twenty honeycombs for me and I'll teach you how to make wax from them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 1));
talkEntry:addResponse("Eine Aufgabe..nun, Ihr k�nntet mir erstmal einige Honigwaben bringen, diese sind sehr wichtig f�r das Kerzenmachen. Ihr k�nnt welche bei den Bienenst�cken gleich da vorne bei den Tischen finden. Bringt mir 20 Waben und ich zeige Euch wie man Wachs herstellt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 1));
talkEntry:addResponse("A task..well, you could gather honeycombs for me, you will need them to make wax anyway. There are two beehives right there on the tables, so please collect twenty honeycombs for me and I'll teach you how to make wax from them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 1));
talkEntry:addResponse("Eine Aufgabe..nun, Ihr k�nntet mir erstmal einige Honigwaben bringen, diese sind sehr wichtig f�r das Kerzenmachen. Ihr k�nnt welche bei den Bienenst�cken gleich da vorne bei den Tischen finden. Bringt mir 20 Waben und ich zeige Euch wie man Wachs herstellt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("honey");
talkEntry:addTrigger("comb");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 2));
talkEntry:addResponse("Well done, thank you. Please keep the honeycombs for your next task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("honig");
talkEntry:addTrigger("wabe");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 2));
talkEntry:addResponse("Gut gemacht, danke. Bitte behaltet die Honigwaben f�r Eure n�chste Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 2));
talkEntry:addResponse("Well done, thank you. Please keep the honeycombs for your next task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 2));
talkEntry:addResponse("Gut gemacht, danke. Bitte behaltet die Honigwaben f�r Eure n�chste Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I want twenty honeycombs from you, you can collect them from the beehives right there on the tables.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(2529, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ihr sollt mir 20 Honigwaben bringen, Ihr k�nnt welche bei den Bienenst�cken gleich da vorne auf den Tischen finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2751, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 3));
talkEntry:addResponse("Very well, now we can start to make wax out of the honeycombs. You will need crucible-pincers for that, here I will give you my old ones. Go to the chandler table and make twenty pieces of wax for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(2751, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 3));
talkEntry:addResponse("Wunderbar, nun sollten wir aus den Waben Wachs machen. Dazu braucht Ihr eine Tiegelzange, die gebe ich Euch zum �ben. Geht r�ber zum Kerzenziehertisch und versucht etwas Wachs herzustellen. Bringt mir 20 St�ck von dem Wachs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(2751, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 3));
talkEntry:addResponse("Very well, now we can start to make wax out of the honeycombs. You will need crucible-pincers for that, here I will give you my old ones. Go to the chandler table and make twenty pieces of wax for me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 2));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(2751, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 3));
talkEntry:addResponse("Wunderbar, nun sollten wir aus den Waben Wachs machen. Dazu braucht Ihr eine Tiegelzange, die gebe ich Euch zum �ben. Geht r�ber zum Kerzenziehertisch und versucht etwas Wachs herzustellen. Bringt mir 20 St�ck von dem Wachs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("wax");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(431, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 4));
talkEntry:addResponse("Well done, that wax looks pretty good. Please keep the wax for your next task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("wachs");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(431, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 4));
talkEntry:addResponse("Gut gemacht, das Wachs sieht sehr gut aus. Bitte behaltet das Wachs f�r Eure n�chste Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(431, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 4));
talkEntry:addResponse("Well done, that wax looks pretty good. Please keep the wax for your next task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(431, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 4));
talkEntry:addResponse("Gut gemacht, das Wachs sieht sehr gut aus. Bitte behaltet das Wachs f�r Eure n�chste Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I want twenty pieces of wax, please come back once you are done with this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(431, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ihr sollt mir 20 St�ck Wachs bringen. Kommt wieder wenn Ihr die Aufgabe erf�llt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(429, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 5));
talkEntry:addResponse("Alright, now we can start producing the candles. Go to the chandler table again and bring me ten candles back. I'll give you my old candle mould, you will need one to make the candles. If you need more moulds, just ask a carpenter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(429, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 5));
talkEntry:addResponse("Jetzt wo wir das Wachs haben k�nnen wir endlich die Kerzen herstellen. Geht zu dem Kerzenziehertisch und stellt zehn Kerzen her bitte. Ich gebe Euch meine alte Kerzenform, damit k�nnt Ihr die richtigen Kerzen herstellen, falls Ihr weitere Kerzenformen braucht fragt doch einfach einen Schreiner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(429, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 5));
talkEntry:addResponse("Alright, now we can start producing the candles. Go to the chandler table again and bring me ten candles back. I'll give you my old candle mould, you will need one to make the candles. If you need more moulds, just ask a carpenter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 4));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(429, 1, 555, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 5));
talkEntry:addResponse("Jetzt wo wir das Wachs haben k�nnen wir endlich die Kerzen herstellen. Geht zu dem Kerzenziehertisch und stellt zehn Kerzen her bitte. Ich gebe Euch meine alte Kerzenform, damit k�nnt Ihr die richtigen Kerzen herstellen, falls Ihr weitere Kerzenformen braucht fragt doch einfach einen Schreiner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("candle");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(43, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 6));
talkEntry:addResponse("Well done, the candles look perfect. If you have some time left, I can give you one last task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("kerze");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(43, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 6));
talkEntry:addResponse("Gut gemacht, die Kerzen sehen sehr gut aus. Wenn Ihr noch etwas Zeit habt, h�tte ich noch eine letzte Aufgabe f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(43, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 6));
talkEntry:addResponse("Well done, the candles look perfect. If you have some time left, I can give you one last task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(43, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 6));
talkEntry:addResponse("Gut gemacht, die Kerzen sehen sehr gut aus. Wenn Ihr noch etwas Zeit habt, h�tte ich noch eine letzte Aufgabe f�r Euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Well, it looks like you haven't solved this task yet. I was looking for ten candles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(43, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Wie ich sehe habt Ihr die zehn Kerzen noch nicht zusammen. Kommt wieder wenn Ihr die Aufgabe erf�llt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 7));
talkEntry:addResponse("Ah..yes of course. Well now we are going to produce some lamp oil. It's very easy to make oil, you just need black thistles. You can find them on rocky ground if you search amongst the grass tussocks. Please collect four thistles and bring me two bottles of oil. The oil press is next me. Take this sickle to gather the thistles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 7));
talkEntry:addResponse("Ah..ja nat�rlich. Nun wollen wir etwas Lampen�l machen, dass ist sehr einfach. Ihr braucht dazu lediglich schwarze Disteln, diese k�nnt Ihr auf felsigem Boden auf Grasb�scheln finden. Sammelt vier Disteln und bringt mir 2 Flaschen �l mit wenn Ihr fertig seid. Die �lpresse steht gleich neben mir. Hier habt Ihr meine alte Sichel um die Disteln zu sammeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 7));
talkEntry:addResponse("Ah..yes of course. Well now we are going to produce some lamp oil. It's very easy to make oil, you just need black thistles. You can find them on rocky ground if you search amongst the grass tussocks. Please collect four thistles and bring me two bottles of oil. The oil press is next me. Take this sickle to gather the thistles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 6));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 777, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 7));
talkEntry:addResponse("Ah..ja nat�rlich. Nun wollen wir etwas Lampen�l machen, dass ist sehr einfach. Ihr braucht dazu lediglich schwarze Disteln, diese k�nnt Ihr auf felsigem Boden auf Grasb�scheln finden. Sammelt vier Disteln und bringt mir 2 Flaschen �l mit wenn Ihr fertig seid. Die �lpresse steht gleich neben mir. Hier habt Ihr meine alte Sichel um die Disteln zu sammeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("oil");
talkEntry:addTrigger("lamp");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(390, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 8));
talkEntry:addResponse("Well done, thank you very much. I hope I was able to teach you the basic things about candle making.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("�l");
talkEntry:addTrigger("lampe");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(390, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 8));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ich hoffe ich konnte Euch die Grundlagen des Kerzenmachens beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(390, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 8));
talkEntry:addResponse("Well done, thank you very much. I hope I was able to teach you the basic things about candle making.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", ">", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(390, 2, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(706, "=", 8));
talkEntry:addResponse("Gut gemacht, vielen Dank. Ich hoffe ich konnte Euch die Grundlagen des Kerzenmachens beibringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("I want two bottles of lamp oil, please come back once you are done with this task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(390, "all", "<", 2, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addResponse("Ich wollte zwei Flaschen mit Lampen�l, bitte kommt wieder wenn Ihr fertig seid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I don't have anything more for you to do. Thank you for the help though!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich habe nichts weiter f�r Euch zu tun. Aber danke nochmals f�r Eure Hilfe!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "<", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addResponse("I could use some help, just ask me for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(706, "<", 8));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ich k�nnte etwas Hilfe gebrauchen, fragt mich ruhig nach einer Aufgabe. Ich habe sicher etwas f�r Euch zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("You are not a citizen of Cadomyr. I don't have anything for you to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ihr scheint kein B�rger Cadomyr zu sein. Ich habe nichts f�r Euch zu tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me schaut sich gelangweilt um.", "#me looks around bored.");
talkingNPC:addCycleText("#me kratzt sich am Kopf.", "#me scratches his head.");
talkingNPC:addCycleText("Wenn ihr Hilfe beim kerzenmachen braucht dann fragt nur mich!", "If you need any help candle making, just ask me!");
talkingNPC:addCycleText("#me g�hnt verhalten.", "#me yawns restrained.");
talkingNPC:addCycleText("#me schaut sich kurz um und kratzt sich anschlie�end an seinem Hintern.", "#me looks around briefly and scratches his bum.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("", "");
mainNPC:setUseMessage("Fass mich nicht an!", "Hands off!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 458);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 183);
mainNPC:setEquipment(10, 53);
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