--------------------------------------------------------------------------------
-- NPC Name: Grakamesh                                                Cadomyr --
-- NPC Job:  Shaman                                                           --
--                                                                            --
-- NPC Race: orc                        NPC Position:  133, 638, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 133, 638, 0, 4, 'Grakamesh', 'npc.grakamesh', 0, 3, 0, 20, 80, 200, 131, 140, 84);
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
module("npc.grakamesh", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 22));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Error] Something went wrong, please inform a developer."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Grakamesh the shaman. Keywords: Greebas, quest, tomb, spook, Sir Reginald."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Schamane Grakamesh. Schl�sselw�rter: Greebas, Quest, Gruft, Spuk, Sir Reginald."));
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
talkEntry:addResponse("Greebas. Honour dem dead!");
talkEntry:addResponse("Hurr! Yoos look like yoos can help mes - mes dance fer salvation.");
talkEntry:addResponse("Greebs. Nub hab much time fer yoos, need to dance and sing more to scare away evil spooks.");
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
talkEntry:addResponse("Greebas. Ehre die Ahnen!");
talkEntry:addResponse("Hurr! Du sehst aus als kannst helfen mir - mirr tanzt f�r Heil von Seele.");
talkEntry:addResponse("Greebs. Grakamesh hat wenig Zeit f�r dich. Mirr muss tanzen und singt, zu vertreiben b�sen Spuk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas. Honour dem dead!");
talkEntry:addResponse("Hurr! Yoos look like yoos can help mes - mes dance fer salvation.");
talkEntry:addResponse("Greebs. Nub hab much time fer yoos, need to dance and sing more to scare away evil spooks.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas. Ehre die Ahnen!");
talkEntry:addResponse("Hurr! Du sehst aus als kannst helfen mir - mirr tanzt f�r Heil von Seele.");
talkEntry:addResponse("Greebs. Grakamesh hat wenig Zeit f�r dich. Mirr muss tanzen und singt, zu vertreiben b�sen Spuk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farebbas! Pray fer old oomie chief, Reginald, will yoos?");
talkEntry:addResponse("Gud hunt!");
talkEntry:addResponse("Can yoos bring mes sum bananas when yoos come back? Danks in advance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Farebbas! Du betest f�r alten H�uptling der Oomies, yubba?");
talkEntry:addResponse("Gute Jagd!");
talkEntry:addResponse("Kannst du mir bringen mit... Bananen? Gedankt sei dir schon jetzig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebbas! Pray fer old oomie chief, Reginald, will yoos?");
talkEntry:addResponse("Gud hunt!");
talkEntry:addResponse("Can yoos bring mes sum bananas when yoos come back? Danks in advance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebbas! Du betest f�r alten H�uptling der Oomies, yubba?");
talkEntry:addResponse("Gute Jagd!");
talkEntry:addResponse("Kannst du mir bringen mit... Bananen? Gedankt sei dir schon jetzig.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Dem gods, dey will hear mes singin'. Mes gottur dance and sing to scare away spooks from old oomie chief tomb.");
talkEntry:addResponse("Mes feel like dancin'.");
talkEntry:addResponse("Danks, but mes feel much better if all spooks be smashed and Reginald oomie can rest in peace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Die G�tta werden h�ren meine Gesang! Grakamesh wird singen und tanzen, alle b�ser Spuk.");
talkEntry:addResponse("Mirr f�hlt den Rhytmus!");
talkEntry:addResponse("Danks, aber mirr f�hlen besser vieles, wenn alle b�ser Spuk zerschlagen und zerhauen ist. Dann Reginald-Oomie wir druhen in Ruhe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("Me dat shaman Grakamesh. Mes know lots about spooks and stuff.");
talkEntry:addResponse("Grakamesh, dat shaman, at yoos service... after mes hab dance.");
talkEntry:addResponse("Hurr, Grakamesh mes be!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich binne der Schamane Grakamesh. Wei� vieles �ber Sachen und Spuk.");
talkEntry:addResponse("Grakamesh, der Schamane zu deiner Dienste... wenn mir getanzt fertig.");
talkEntry:addResponse("Hurr, ich binne Grakamesh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Ah Jakob sent yoos, but yoos have already asked me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Ah Jakob hat Euch geschickt aber Ihr habt mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Ah Jakob send yoos, but yoos have already asked me for something to do.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("Ah Jakob hat Euch geschickt aber Ihr habt mich bereits nach einer Aufgabe gefragt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("So, nub can dance but want to help mes? Reginald oomie nub can rest in peace. Scary mummies haunt tomb, dey moan all day long. Hab dis torch and smash as many as mes hab fingers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addTrigger("jakob");
talkEntry:addTrigger("lindorn");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("So, du kannst nix tanzen willst mir aber helfen? Oomie Reginald liegt nicht in Friede. Schreckliche Mumien spuken in seiner Gruft, den ganzen Tag lange. Nehme diese Fackel und zerhau sie zu St�cke. F�r jeden meiner Finger eine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("So, nub can dance but want to help mes? Reginald oomie nub can rest in peace. Scary mummies haunt tomb, dey moan all day long. Hab dis torch and smash as many as mes hab fingers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(703, "=", 3));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addConsequence(npc.base.consequence.quest.quest(703, "=", 4));
talkEntry:addResponse("So, du kannst nix tanzen willst mir aber helfen? Oomie Reginald liegt nicht in Friede. Schreckliche Mumien spuken in seiner Gruft, den ganzen Tag lange. Nehme diese Fackel und zerhau sie zu St�cke. F�r jeden meiner Finger eine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addResponse("So, nub can dance but want to help mes? Reginald oomie nub can rest in peace. Scary mummies haunt tomb, dey moan all day long. Hab dis torch and smash as many as mes hab fingers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addResponse("So, du kannst nix tanzen willst mir aber helfen? Oomie Reginald liegt nicht in Friede. Schreckliche Mumien spuken in seiner Gruft, den ganzen Tag lange. Nehme diese Fackel und zerhau sie zu St�cke. F�r jeden meiner Finger eine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addResponse("So, nub can dance but want to help mes? Reginald oomie nub can rest in peace. Scary mummies haunt tomb, dey moan all day long. Hab dis torch and smash as many as mes hab fingers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft I"));
talkEntry:addConsequence(npc.base.consequence.item.item(391, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 1));
talkEntry:addResponse("So, du kannst nix tanzen willst mir aber helfen? Oomie Reginald liegt nicht in Friede. Schreckliche Mumien spuken in seiner Gruft, den ganzen Tag lange. Nehme diese Fackel und zerhau sie zu St�cke. F�r jeden meiner Finger eine!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Gud! Yoos hab smash hauntin' mummies. Here, hab sum shinies - but mission to let Reginald oomie rest in peace nub completed...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 12));
talkEntry:addResponse("Gud! Yoos hab smash hauntin' mummies. Here, hab sum shinies - but mission to let Reginald oomie rest in peace nub completed...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 11));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 12));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Guut! Du hast die Mumien verjaget. Hier, nimmst du dieses Glitza - aber die Mission ist trotz allem noch nicht zu Ende gebracht, nein...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 11));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 12));
talkEntry:addResponse("Guut! Du hast die Mumien verjageht. Hier, nimmst du dieses Glitza - aber die Mission ist trotz allem noch nicht zu Ende gebracht, nein...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 11));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Dere be lotsa mummies dat haunt tomb op Reginald oomie. Dat be so disrespectful! Beat dem up so Reginald oomie can rest in peace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 11));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Viele Mumien spuken in der Gruft von Oomie Reginald. Dass ist respektlo�! Hau sie in kleine St�cke! So wird Reginald in Frieden liegen k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 11));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Dere be lotsa mummies dat haunt tomb op Reginald oomie. Dat be so disrespectful! Beat dem up so Reginald oomie can rest in peace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 0));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 11));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Viele Mumien spuken in der Gruft von Oomie Reginald. Dass ist respektlo�! Hau sie in kleine St�cke! So wird Reginald in Frieden liegen k�nnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 12));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 13));
talkEntry:addResponse("Hab yoo seen dem slimes in dat tomb? Dey be evil ghosts dat desecrate grave ob honourable chiefy. Crush one hand ob fingers ob dem!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 12));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 13));
talkEntry:addResponse("Sahst du die Schleime in der Gruft? Dies sinned b�se Geister, entheiligen das Grab des ehrenvollen alten Oomie-H�uptlings. Brich die Knochen! Eine Hand voll Fingern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 12));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 13));
talkEntry:addResponse("Hab yoo seen dem slimes in dat tomb? Dey be evil ghosts dat desecrate grave ob honourable chiefy. Crush one hand ob fingers ob dem!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 12));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 13));
talkEntry:addResponse("Sahst du die Schleime in der Gruft? Dies sinned b�se Geister, entheiligen das Grab des ehrenvollen alten Oomie-H�uptlings. Brich die Knochen! Eine Hand voll Fingern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and a skull staff. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(39, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkEntry:addResponse("Great! Yoos hab smash evil slimes, dem nub gonna haunt anymore. Here, hab dis staff fer more smashin'!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and a skull staff."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(39, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 19));
talkEntry:addResponse("Great! Yoos hab smash evil slimes, dem nub gonna haunt anymore. Here, hab dis staff fer more smashin'!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 18));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und einen Sch�delstab. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(39, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 19));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 10));
talkEntry:addResponse("Gro�artig! Zermatschte Schleime �bers�higen den heiligen Boden! Dein Lohn seis, dieser Stab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 18));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und einen Sch�delstab."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.item.item(39, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 19));
talkEntry:addResponse("Gro�artig! Zermatschte Schleime �bers�higen den heiligen Boden! Dein Lohn seis, dieser Stab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 18));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Dem evil slimes still haunt dat tomb ob old oomie chief. Dat be... blasphemy! Bring peace to tomb, smash 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 18));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die b�sen Schleime spuken weiternoch. Das ist... Ketzerei! Befriede die Gruft, zerhau sie!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 18));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Dem evil slimes still haunt dat tomb op old oomie chief. Dat be... blasphemy! Bring peace to tomb, smash 'em.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 12));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 18));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Die b�sen Schleime spuken weiternoch. Das ist... Ketzerei! Befriede die Gruft, zerhau sie!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 19));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 20));
talkEntry:addResponse("Cherga hab shown mes origin of all spooks while dancin'. Dere be restless ghost ob foe ob Reginald oomie, hauntin' in tomb, wantin' revenge or sumding. Banish dat and Reginald hab peace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 19));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 20));
talkEntry:addResponse("Cherga lie� mich den Ursprung allen Spukes sehen, w�hrend des Tanzes. Yubba. Dort ist ein rastloses Gespenst. Ein alter Feind, des verstorbenen H�uptlings, er nun sucht seine Rache oder sowie. Vertreibe das Ding und Reginald hat Friede.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 19));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Sir Reginald's Tomb III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 20));
talkEntry:addResponse("Cherga hab shown mes origin of all spooks while dancin'. Dere be restless ghost ob foe ob Reginald oomie, hauntin' in tomb, wantin' revenge or sumding. Banish dat and Reginald hab peace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 19));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Sir Reginalds Gruft III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 20));
talkEntry:addResponse("Cherga lie� mich den Ursprung allen Spukes sehen, w�hrend des Tanzes. Yubba. Dort ist ein rastloses Gespenst. Ein alter Feind, des verstorbenen H�uptlings, er nun sucht seine Rache oder sowie. Vertreibe das Ding und Reginald hat Friede.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a brown priest robe. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.item.item(2416, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Hurr! Yoos hab done dat! Now old oomie chief Reginald can rest in peace... fer a time. Mes hab reward fer yoos, robe ob ghost buster.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a brown priest robe."));
talkEntry:addConsequence(npc.base.consequence.item.item(2416, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 22));
talkEntry:addResponse("Awesome, yoos hab do dat! Now old oomie chief Reginald can rest in peace... fer a time. Mes hab reward fer yoos, robe ob ghost buster.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 21));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine braune Priesterrobe. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.item.item(2416, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 22));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 20));
talkEntry:addResponse("Ausgezeichigt, du hast es geschafft! Nun der alte H�uptling der Oomies Reginals wird in Frieden Liegen... f�r eine Weile. Dies issigt dein Lohn, die Robe eines Geisterj�gers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 21));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine braune Priesterrobe."));
talkEntry:addConsequence(npc.base.consequence.item.item(2416, 1, 799, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(78, "=", 22));
talkEntry:addResponse("Ausgezeichigt, du hast es geschafft! Nun der alte H�uptling der Oomies Reginals wird in Frieden liegen... f�r eine Weile. Dies issigt dein Lohn, die Robe eines Geisterj�gers!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 21));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Meh still feel evil presence ob ghost ob foe ob old chief ob Cadomyr. Expel dat from plane ob mortals!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 21));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich sp�re die Anwesenheit des Gespenstes, immernoch. Versto�e es von dem Land der Sterblichen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 21));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Meh still feel evil presence ob ghost ob foe ob old chief ob Cadomyr. Expel dat from plane ob mortals!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, ">", 19));
talkEntry:addCondition(npc.base.condition.quest.quest(78, "<", 21));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Ich sp�re die Anwesenheit des Gespenstes, immernoch. Versto�e es von dem Land der Sterblichen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 22));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Danks fer everyding yoos hab do. Reginald oomie can now rest in peace, until Hastings oomie does next mischief!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 22));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sei gedankt, f�r alle deine Taten. Reginald wird liegen in Friede, solange bis Oomie Hastings tut n�chste Misstat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 22));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addResponse("Danks fer everyding yoos hab do. Reginald oomie can now rest in peace, until Hastings oomie does next mischief!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(78, "=", 22));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addResponse("Sei gedankt, f�r alle deine Taten. Reginald wird liegen in Friede, solange bis Oomie Hastings tut n�chste Misstat!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Mirarie");
talkEntry:addTrigger("Bragolin");
talkEntry:addTrigger("letter");
talkEntry:addTrigger("message");
talkEntry:addConsequence(npc.base.consequence.quest.quest(317, "=", 7));
talkEntry:addResponse("Meh need to think about table manners. Hurr, hurr. Yoos go and tell Mirarie?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(317, "=", 6));
talkEntry:addTrigger("Mirarie");
talkEntry:addTrigger("Bragolin");
talkEntry:addTrigger("Brief");
talkEntry:addTrigger("Nachricht");
talkEntry:addConsequence(npc.base.consequence.quest.quest(317, "=", 7));
talkEntry:addResponse("Ich musse nachdenken �bers die Tischsitten. Hurr, hurr. Geh und sagst Mirarie, ja?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Me be Grakamesh, da shaman ob Cadomyr. Mes dance fer fallen ones.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich binne Grakamesh, der Schamane von Cadomyr. Ich tanze f�r die Gestorbenen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("Me be Grakamesh, da shaman ob Cadomyr. Mes dance fer fallen ones.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich binne Grakamesh, der Schamane von Cadomyr. Ich tanze f�r die Gestorbenen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Neva hab hear ob dat place, sorries.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Hab nie geh�rt von solche Ort. Nie, nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("And meh be Grakamesh. Mes shaman ob tribe ob Cadomyr orcis. Dancin' fer fallen, dat mes be doin'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Und mir ist Grakamesh. Der Schamane von Cadomyrs-Orks. Tanzen f�r die Toten, das ist meine Aufgabe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("shaman");
talkEntry:addResponse("Yubba, meh beh shaman. Mes prayin' fer der fallen oomies so dem can rest in peace.");
talkEntry:addResponse("Shaman beh important member ob orc society. Shaman beh religious leader! Meh beh shaman!");
talkEntry:addResponse("Whub want know about shamans? Meh be shaman. Meh can answer, meh dink.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tomb");
talkEntry:addResponse("Dat beh behind mes, dat beh tomb of Reginald Edwards. Mes dance so dat spooks goes away, but nub work.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Reginald");
talkEntry:addResponse("Old oomie chief dat beh. He be buried here, in dat tomb over dere, but dat haunts dere!");
talkEntry:addResponse("Meh was dere when old oomie chief was buried. Meh gib blessings! But blessings... nub hab work. Dat haunts!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("haunt");
talkEntry:addTrigger("spook");
talkEntry:addTrigger("ghost");
talkEntry:addTrigger("wraith");
talkEntry:addResponse("Tomb ob old oomie chief, Reginald, dere dat haunts. Will yoos do task fer meh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("orc");
talkEntry:addResponse("Orc society complicated. Meh nub dink dat everyone understand. Shaman dance important fer society and afterlife.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dance");
talkEntry:addTrigger("salvation");
talkEntry:addResponse("Dat dance mes be dancin', dat be dance ob death. When fallen ones nub can rest in peace, dancin' is all dat helps.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Hurr! Hastings oomie must be responsible fer spooks. Dat be unloyal, honourless oomie! Plans evil dings all day long.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schamane");
talkEntry:addResponse("Yubba, michse ist der Schamane. Ich bete f�r die Toten, damit sie ruhen in Friede.");
talkEntry:addResponse("Der Schamane ist wichtiger Teil von Orkische Gesellschaft. Der Schamane ist relig�ser Kopf. Ich binne der Schamane!");
talkEntry:addResponse("Was du wissen willst? Ich binne der Schamane. Wei� viel �ber Vieles.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gruft");
talkEntry:addResponse("Diese hinter mir, ist die Gruft von Reginald Edwards. Ich tanze, so der b��e Spuk wird vergehen");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Reginald");
talkEntry:addResponse("Er alte H�uptling der Oomies. Er bergraben ist, in dieser Gruft. Doch b�ser Spuk dort treibt es.");
talkEntry:addResponse("Ich war dort, als sie den alten H�uptling begrubigten. Mir gab heiligen Segen! Doch es war nicht Nutze. Es spukt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Spuk");
talkEntry:addTrigger("Geist");
talkEntry:addTrigger("Gespenst");
talkEntry:addResponse("Dort issigt ein b�ser Spuk in der Gruft von alten H�uptling Reginald. Wirst du mir bei einer Aufgabe helfigen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ork");
talkEntry:addResponse("Die Orkische Gesellschaft ist eine Komplizierte. Ich nicht glaube, dass jeder es versteht. So, der Tanz des Schamanen ist von Wichtigkeit f�r das Nachleben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tanz");
talkEntry:addTrigger("Erl�sung");
talkEntry:addResponse("Der Tanz, welchen ich tanzige, ist der Tanz der Toten. Wenn die toten nicht liegen in Friede, der Tanz alleine ist jener der Hilfe brignen kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hasting");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Hurr! Oomie Hastings tr�gt Schuld an dem Spuk, mit Sicherheit. Er ehrlos! Er unloyal! Er plant den ganzen Tag, bo�hafte Pl�ne.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("nvidia");
talkEntry:addResponse("Dem nub like Ati, mes dink!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nvidia");
talkEntry:addResponse("Uh, diese wohl nicht m�gen Ati, es mir d�nkt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Mulder");
talkEntry:addResponse("Dat be priddy spooky, too.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Mulder");
talkEntry:addResponse("Uh... der auch sch�n gruselig ist!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Yag!");
talkEntry:addResponse("Dat majik treehugger ob Runewick nub be gud, nub honour orcies, nub honour dem gods!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Yag!");
talkEntry:addResponse("Diese magische Baumkuschler von Runewick ist nicht gut. Er nicht ehrt Orks, er nicht ehrt deren G�tter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Yag!");
talkEntry:addResponse("Dat majik treehugger ob Runewick nub be gud, nub honour orcies, nub honour dem gods!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Yag!");
talkEntry:addResponse("Diese magische Baumkuschler von Runewick ist nicht gut. Er nicht ehrt Orks, er nicht ehrt deren G�tter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Nub hab faith in dat town ob Runewick, but impressive big tents dey hab. When nub dance enuff, gods will smash tents, mes dink.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Dort ist kein Glaube, in Stadt von Runewick. Aber beeindruckend gro�e Zelt haben sie. Wenn sie nicht gen�gend tanzen... werden die G�tter alles zerschlagen, denke ich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Groar!");
talkEntry:addResponse("Rargh!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Groar!");
talkEntry:addResponse("Grr!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Dem priddy stoopid in Galmair, dem nub understand how important faith be. Dey just pray to gold, like dem stumpies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("In Galmair, sie wirklich dumm sind. Niemand versteht die Wichtigkeit von Glaube, dort. Sie nur beten zum Gold, so wie es die Stumpfe tun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Dat female hab respect fer bruddahs. Orcies proud and hab honour. Bruddahs loyal to Queen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Diese Weib hat Respekt f�r die Orks �brig. Orks sind stolz und haben Ehre. Also Orcs stehen hinter der K�nigin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Dat female hab respect fer bruddahs. Orcies proud and hab honour. Bruddahs loyal to Queen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Diese Weib hat Respekt f�r die Orks �brig. Orks sind stolz und haben Ehre. Also Orcs stehen hinter der K�nigin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr be gud place fer orc warriors. All hab faith in dem gods and all hab honour. Dat's how it should be!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist ein guter Ort, f�r Krieger der Orks. Jeder hat Glaube in die G�tter und issigt ehrenhaft. So wie es sein sollte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Many oomies op Cadomyr be from Albar. Nub know dat place, but ib dat like Cadomyr, den dat gud place fer orc warriors. Even though oomies hab tell me dat nub true....");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Viele Oomies in Cadomyr kommen aus Albar. Ich nicht wei�, was dies f�r ein Ort ist, doch ist er so wie Cadomyr, ist er bestimmt ein guter Ort f�r Orks. Auch wenn sie mir sagen das dies nicht stimmig ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Gynk place wibout honour! Nub go dere, neva. When sumbody challenge yoos fer duel, yoo nub be sure dat udder oomie backstab yoos.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("In Gynk findet niemand Ehre. Geh nicht dort hin, nichtmals. Wenn du gefordert wirst zu einem Duell, du  nie in Sicherheit bist, der andere Oomie k�nnte in deinen R�cken fallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ah, mes hab hear lots bout Salkamar, proud realm, dat be. Mes dink also gud hunting dere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ah, mir hat viel geh�rt aus Salkamar. Stolzes Land, das ist es. Mirr denkt, dort ist gut Jagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Dere be lotsa gods, more den Grakamesh hab fingers. Mes honour dem all, but mes heart beats fer Br�gon, God op fire, alone.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Mehr als Grakamesh Finger hat, es G�tter gibt. Aber mein Herz schl�gt f�r Br�gon alleine, dem Gott der Feuer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Br�gon is dat Lord and dat everyding. Br�gon is creator! Look around, creator ob whub yoos see, dat be Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Br�gon ist der Herr. Der Erschaffer! Blick dich umher, der Erschaffer von alles was sehbar ist. Das ist Br�gon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Mes dance fer pleasin' Cherga, dat mes be doin'. Cherga beh lady ob afterlife, and yoos and mes both go afterlife one day, nub? Nub mess wib Cherga!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addResponse("Ich tanze um Cherga zu bittigen, das tuh ich. Cherga ist die Herrin des Nachlebens. Und du und ich, beide wollen wir eines Tages das Nachleben erleben, nicht wahr? Ver�rgere die eisige Hexe, Cherga nicht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("So, yoos dink dat all bruddahs dat nub pray to Moshran pray to Malach�n? Yoos hab lotsa learn, yoos hab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("So, du denken, dass alle Orks die nicht zu Moshran beten, zu Malachin beten indessen? Viel zu lernen du hast, hast du wirklich...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Yoos dink bruddahs all pray to Moshran? Yoos hab lotsa learn, yoos hab.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addResponse("Denkst du, alle Orks folgen Moshran? Viel zu lernen du hast, hast du wirklich...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Whub! Mes nub trade, mes dance and pray. Mes be shaman, nub hawker.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Wars? Mirr nix handelt, mir tanzt und betet! Mirr ist Schamane, nicht H�ker.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Hab hear dat legend ob Reginald oomie? Dat be old chief op Cadomyr, honourable oomie. Died and now daughter be Queen - nub usual, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Du geh�rt hast Legende von Oomie Reginald? Den alte H�uptling von Cadomyr. Ehrenhafter Oomie. Er gestorben, nun Tochter ist H�uptling - witzig, eh?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Grakamesh");
talkEntry:addResponse("Dat be mes, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grakamesh");
talkEntry:addResponse("Das sein mir, yubba!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("#me starts to dance wildly.");
talkEntry:addResponse("#me grunts: 'Whub?'");
talkEntry:addResponse("Whub?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("#me beginnt wild zu tanzen.");
talkEntry:addResponse("#me grunzt: 'Whas?'");
talkEntry:addResponse("Whas?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Whub now?");
talkEntry:addResponse("#me stomps on the ground rhythmically.");
talkEntry:addResponse("Mes gottur dance more so old oomie chief hab peace again.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Whas jetz'?");
talkEntry:addResponse("#me stampft rhytmisch auf den Boden.");
talkEntry:addResponse("Ich werdige tanzen, weiter f�r alte Oomie H�uptling.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me sch�ttelt eine Rassel und beginnt zu singen.", "#me starts to rattle and sings.");
talkingNPC:addCycleText("#me beginnt unrhythmisch zu tanzen.", "#me starts to dance arrhythmically.");
talkingNPC:addCycleText("#me schl�gt seine H�nde auf eine Trommel und singt: 'Heya, heya! Heya, heya!'", "#me slams his hands on a drum, singing, 'Heya, heya! Heya, heya!'");
talkingNPC:addCycleText("Hurrda, hurrda! Hurrda, hurrda!", "Hurrda, hurrda! Hurrda, hurrda!");
talkingNPC:addCycleText("Waka, waka, eh, eh!", "Waka, waka, eh, eh!");
talkingNPC:addCycleText("Ich will tanzen, tanzen, solange nichts zu mir f�llt, was besser w�re.", "Mes feel like dancin', dancin', even if mes find sumding bedduh to do.");
talkingNPC:addCycleText("Ich bin dein T�nzer! Ein T�nzer der G�tter, das ist es was sie von mir verlangigen.", "Mes be your faithful dancer, a dancer fer gods, dat whub yoos want me to do.");
talkingNPC:addCycleText("Dort ist b�ser Spuk in der Gruft! Tanzt mit mir und es wird vergehen!", "Dere be spooks in tomb! Come, dance wid mes to banish dat!");
talkingNPC:addCycleText("#me atmet laut aus.", "#me exhales loudly.");
talkingNPC:addCycleText("#me tanzt einen wilden, unkoordinierten Tanz und singt unverst�ndlich.", "#me dances a wild, uncoordinated dance, singing unintelligibly.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der Schamane Grakamesh.", "This NPC is Grakamesh the shaman.");
mainNPC:setUseMessage("Hand wech!", "Hands op!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 818);
mainNPC:setEquipment(11, 194);
mainNPC:setEquipment(5, 39);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 34);
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