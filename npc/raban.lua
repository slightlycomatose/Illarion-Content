--------------------------------------------------------------------------------
-- NPC Name: Raban                                                       None --
-- NPC Job:  Hermit                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  819, 104, 0            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                       easyNPC Parser v1.23 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 819, 104, 0, 6, 'Raban', 'npc.raban', 0, 2, 3, 204, 144, 2, 186, 133, 91);
---]]

require("npc.base.basic")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.skill")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.skill")
require("npc.base.talk")
module("npc.raban", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is the hermit Raban. Keywords: Hello, quest, sickle, herbs."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist der Einsiedler Raban. Schl�sselw�rter: Hallo, Quest, Sichel, Kr�uter."));
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
talkEntry:addResponse("Ah, yes, an unsettled soul. Welcome to my grove.");
talkEntry:addResponse("Who's there? Pardon me, I am not used to visitors.");
talkEntry:addResponse("So, after all these summers, somebody comes here. I hope your intentions are good.");
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
talkEntry:addResponse("Ach ja, wieder eine rastlose Seele. Willkommen in meinem Hain.");
talkEntry:addResponse("Wer ist da! Entschuldigt, ich bin es nicht gewohnt, Besucher zu empfangen.");
talkEntry:addResponse("Nun, nach all diesen Sommern sucht wieder jemand diesen Ort auf. Ich hoffe, eure Absichten sind ehrbar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Ah, yes, an unsettled soul. Welcome to my grove.");
talkEntry:addResponse("Who's there? Pardon me, I am not used to visitors.");
talkEntry:addResponse("So, after all these summers, somebody comes here. I hope your intentions are good.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Ach ja, wieder eine rastlose Seele. Willkommen in meinem Hain.");
talkEntry:addResponse("Wer ist da! Entschuldigt, ich bin es nicht gewohnt, Besucher zu empfangen.");
talkEntry:addResponse("Nun, nach all diesen Sommern sucht wieder jemand diesen Ort auf. Ich hoffe, eure Absichten sind ehrbar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Ushara may guide your way.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("While leaving, do not stomp on any seedlings, will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("M�ge Ushara deinen Weg begleiten.");
talkEntry:addResponse("Gehabt euch wohl.");
talkEntry:addResponse("Wenn ihr geht, m�gt ihr Acht geben, nicht auf Setzlinge zu treten?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("Ushara may guide your way.");
talkEntry:addResponse("Farewell.");
talkEntry:addResponse("While leaving, do not stomp on any seedlings, will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addResponse("M�ge Ushara deinen Weg begleiten.");
talkEntry:addResponse("Gehabt euch wohl.");
talkEntry:addResponse("Wenn ihr geht, m�gt ihr Acht geben, nicht auf Setzlinge zu treten?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I always feel pacified when surrounded by plants and trees.");
talkEntry:addResponse("I'd feel much better if everyone honours the woods. Aren't these trees lovely?");
talkEntry:addResponse("I cannot complain. My trees grow and this little fellow over here just turned ten years. I remember planting him like it was yesterday.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addResponse("Umgeben von Pflanzen und B�umen f�hle ich mich immer beruhigt.");
talkEntry:addResponse("Es w�rde mir weit besser gehen, wenn ein Jeder die W�lder achten w�rde. Sind diese B�ume nicht wunderbar?");
talkEntry:addResponse("Ich kann mich nicht beklagen. Meine B�ume wachsen wunderbar und der kleine dort ist gerade zehn geworden. Ich erinnere mich, wie ich ihn gepflanzt habe, als wenn es gestern w�re.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("They used to call me Raban when people still came here.");
talkEntry:addResponse("Raban.");
talkEntry:addResponse("I am an old man without use for a name. The trees and plants have their own word for me. You may call me Raban.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Sie haben mich Raban genannt, damals, als noch von Zeit zu Zeit Leute hierher kamen.");
talkEntry:addResponse("Raban.");
talkEntry:addResponse("Ich bin ein alter Mann, ohne Bedarf f�r einen Namen. Die B�ume und Pflanzen haben ihre eigene Bezeichnung f�r mich. Du kannst mich hingegen Raban nennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove I"));
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 1));
talkEntry:addResponse("So, you want to help me and the forest? Here, take this sickle and bring me ten fir tree seedling from the trees around.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain I"));
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 1));
talkEntry:addResponse("So, so, du willst mir und dem Wald also helfen? Nimm doch diese Sichel und bringe mir zehn Setzlinge von den Fichten des Hains.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove I"));
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 1));
talkEntry:addResponse("So, you want to help me and the forest? Here, take this sickle and bring me ten fir tree seedling from the trees around.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain I"));
talkEntry:addConsequence(npc.base.consequence.item.item(126, 1, 399, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 1));
talkEntry:addResponse("So, so, du willst mir und dem Wald also helfen? Nimm doch diese Sichel und bringe mir zehn Setzlinge von den Fichten des Hains.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(149, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five silver coins and your herb lore skill increases."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(149, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 2));
talkEntry:addResponse("Thank you very much for the fir tree seedlings. Here, have these shiny discs, I have no use for them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(149, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(149, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 2));
talkEntry:addResponse("Thank you very much for the fir tree seedlings. Here, have these shiny discs, I have no use for them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(149, "all", ">", 9, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke und deine Kr�uterkundefertigkeit steigt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(149, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 2));
talkEntry:addResponse("Habt besten Dank f�r die Fichtensetzlinge. Nehmt diese gl�nzenden Scheiben, ich habe keinen Bedarf an ihnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(149, "all", ">", 9, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(149, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 2));
talkEntry:addResponse("Habt besten Dank f�r die Fichtensetzlinge. Nehmt diese gl�nzenden Scheiben, ich habe keinen Bedarf an ihnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("So, how is your progress in finding ten fir tree seedlings?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Und, wie kommt ihr voran mit dem Finden von zehn Fichtensetzlingen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("So, how is your progress in finding ten fir tree seedlings?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Und, wie kommt ihr voran mit dem Finden von zehn Fichtensetzlingen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 3));
talkEntry:addResponse("How kind of you that you want to assist me one more time. Could you gather twenty blackberries, sweet gifts of Oldra?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 3));
talkEntry:addResponse("Wie aufmerksam, dass ihr mir ein weiteres mal helfen wollt. K�nntet ihr so nett sein und zwanzig Brombeeren sammeln, s��e Geschenke der Oldra?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 3));
talkEntry:addResponse("How kind of you that you want to assist me one more time. Could you gather twenty blackberries, sweet gifts of Oldra?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain II"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 3));
talkEntry:addResponse("Wie aufmerksam, dass ihr mir ein weiteres mal helfen wollt. K�nntet ihr so nett sein und zwanzig Brombeeren sammeln, s��e Geschenke der Oldra?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(147, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and your herb lore skill increases."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(147, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 4));
talkEntry:addResponse("I am grateful for the twenty blackberries you brought me. Have this small reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(147, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(147, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 4));
talkEntry:addResponse("I am grateful for the twenty blackberries you brought me. Have this small reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(147, "all", ">", 19, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kr�uterkundefertigkeit steigt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(147, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 4));
talkEntry:addResponse("Ich bin dankbar f�r die zwanzig Brombeeren, die ihr dargebracht habt. Nehmt diese kleine Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(147, "all", ">", 19, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(147, 20, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 4));
talkEntry:addResponse("Ich bin dankbar f�r die zwanzig Brombeeren, die ihr dargebracht habt. Nehmt diese kleine Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("You can find the twenty blackberries I asked for in the hedge over there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ihr k�nnt die zwanzig Brombeeren, die ich erbat, an der Hecke dort dr�ben finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("You can find the twenty blackberries I asked for in the hedge over there.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ihr k�nnt die zwanzig Brombeeren, die ich erbat, an der Hecke dort dr�ben finden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 5));
talkEntry:addResponse("It is honourable that you help me and the Godess. For now, I desire five champignons to spread life on the soil.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 4));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 5));
talkEntry:addResponse("Es ehrt euch, dass ihr mir und der G�ttin erneut helfen wollt. Nun ben�tige ich f�nf Champignons, um Leben auf dem Erdboden zu s�hen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 4));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 5));
talkEntry:addResponse("It is honourable that you help me and the Godess. For now, I desire five champignons to spread life on the soil.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 4));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain III"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 5));
talkEntry:addResponse("Es ehrt euch, dass ihr mir und der G�ttin erneut helfen wollt. Nun ben�tige ich f�nf Champignons, um Leben auf dem Erdboden zu s�hen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(163, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins and your herb lore skill increases."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(163, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 6));
talkEntry:addResponse("Ah, you brought the five champignons. Long did I store this reward, now it is yours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(163, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(163, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 6));
talkEntry:addResponse("Ah, you brought the five champignons. Long did I store this reward, now it is yours.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(163, "all", ">", 4, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke und deine Kr�uterkundefertigkeit steigt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(163, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 6));
talkEntry:addResponse("Ah, ihr habt die f�nf Champignons mitgebracht. Lange habe ich diese Belohnung aufbewahrt, nun ist sie euer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(163, "all", ">", 4, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(163, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 6));
talkEntry:addResponse("Ah, ihr habt die f�nf Champignons mitgebracht. Lange habe ich diese Belohnung aufbewahrt, nun ist sie euer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Search for the five champignons at the mushroom circles you may find close to the trees.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sucht nach den f�nf Champignons in den Pilzkreisen, die ihr nahe der B�ume findet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Search for the five champignons at the mushroom circles you may find close to the trees.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 5));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Sucht nach den f�nf Champignons in den Pilzkreisen, die ihr nahe der B�ume findet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 6));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove IV"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 7));
talkEntry:addResponse("Now I need something special. The soil here is too wet for some plants to grow. I need ten shovels of coarse sand. Please go to my old friend Rutrus at the Oasis of Stars and fetch some, will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 6));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain IV"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 7));
talkEntry:addResponse("Nun ben�tige ich etwas besonderes. Der Mutterboden hier ist ein wenig zu feucht, damit gewisse Pflanzen hier wachsen k�nnen. Ich ben�tige zehn Schaufeln voll groben Sand. Bitte geht zu meinem alten Freund Rutrus zur Sternenoase und holt mir welchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 6));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New quest] Raban's Grove IV"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 7));
talkEntry:addResponse("Now I need something special. The soil here is too wet for some plants to grow. I need ten shovels of coarse sand. Please go to my old friend Rutrus at the Oasis of Stars and fetch some, will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 6));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Rabans Hain IV"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 7));
talkEntry:addResponse("Nun ben�tige ich etwas besonderes. Der Mutterboden hier ist ein wenig zu feucht, damit gewisse Pflanzen hier wachsen k�nnen. Ich ben�tige zehn Schaufeln voll groben Sand. Bitte geht zu meinem alten Freund Rutrus zur Sternenoase und holt mir welchen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(726, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 20 silver coins and your herb lore skill increases."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(726, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 8));
talkEntry:addResponse("I thank you so much for venturing to the Oasis. I hope my friend Rutrus is well? Here, have this reward in exchange for the coarse sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(726, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 20 silver coins."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(726, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 8));
talkEntry:addResponse("I thank you so much for venturing to the Oasis. I hope my friend Rutrus is well? Here, have this reward in exchange for the coarse sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.skill.skill(Character.herblore, "<", 90));
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(726, "all", ">", 9, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke und deine Kr�uterkundefertigkeit steigt."));
talkEntry:addConsequence(npc.base.consequence.skill.skill(Character.herblore, "+", 1));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(726, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 8));
talkEntry:addResponse("Ich danke euch vielmals f�r die Reise zur Oase. Ich hoffe, meinem Freund Rutrus geht es gut? Hier, nehmt diese Belohnung f�r den groben Sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(726, "all", ">", 9, nil));
talkEntry:addTrigger(".+");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 20 Silberst�cke."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(726, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(66, "=", 8));
talkEntry:addResponse("Ich danke euch vielmals f�r die Reise zur Oase. Ich hoffe, meinem Freund Rutrus geht es gut? Hier, nehmt diese Belohnung f�r den groben Sand.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Head to the Oasis of Stars in order to find ten shovels of coarse sand. You get there when you head south and turn west when you reach the ocean.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Geht zur Sternenoase um zehn Schaufeln voll grobem Sand zu finden. Ihr gelangt dorthin, indem ihr euch in s�dlicher Richtung auf den Weg macht und euch dann westlich haltet, wenn ihr zum Meer kommt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Head to the Oasis of Stars in order to find ten shovels of coarse sand. You get there by heading south and then turning west when you reach the ocean.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 7));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Geht zur Oase der Offnung um zehn Schaufeln voll grobem Sand zu finden. Ihr gelangt dorthin, indem ihr euch in s�dlicher Richtung auf den Weg macht und euch dann westlich haltet, wenn ihr zum Meer kommt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 8));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("There is nothing you can do for me, just leave me alone. Maybe you can visit my old friend Rutrus at the Oasis again?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 8));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Es gibt nichts, was ihr noch f�r mich tun k�nntet. Lasst mich einfach alleine, vielleicht wollt ihr meinen Freund Rutrus bei der Oase erneut aufsuchen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 8));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("There is nothing you can do for me, just leave me alone. Maybe you can visit my old friend Rutrus at the Oasis again?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 8));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Es gibt nichts, was ihr noch f�r mich tun k�nntet. Lasst mich einfach alleine, vielleicht wollt ihr meinen Freund Rutrus bei der Oase erneut aufsuchen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("One could call me a hermit, or a forester, or a ranger... I do not care anymore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Man k�nnte sagen, ich bin ein Einsiedler. Oder ein Waldh�ter. Oder ein F�rster. Es ist mir einerlei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("One could call me a hermit, or a forester, or a ranger... I do not care anymore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Man k�nnte sagen, ich bin ein Einsiedler. Oder ein Waldh�ter. Oder ein F�rster. Es ist mir einerlei.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addResponse("I've been to Gobaith, but that was long ago.");
talkEntry:addResponse("I do not want to talk about this with you, I hope you respect that.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addResponse("Ich war einst auf Gobaith, aber das ist schon lange her.");
talkEntry:addResponse("Dar�ber m�chte ich mit euch nicht sprechen. Ich hoffe, ihr respektiert das.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Names have lost their meaning to me. Behold the trees and ask for their names...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Namen haben ihre Bedeutung f�r mich verloren. Sehet euch die B�ume an und fragt sie nach ihrem Namen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("hermit");
talkEntry:addTrigger("forester");
talkEntry:addTrigger("ranger");
talkEntry:addTrigger("gardener");
talkEntry:addResponse("Nature can offer much more joy to me than any place made of cold stone.");
talkEntry:addResponse("I plant trees and watch them grow. Can you imagine anything more... relaxing?");
talkEntry:addResponse("I enjoy the silence here. A branch in the wind can sing wonderful songs.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Einsiedler");
talkEntry:addTrigger("F�rster");
talkEntry:addTrigger("Waldh�ter");
talkEntry:addTrigger("Wildh�ter");
talkEntry:addTrigger("G�rtner");
talkEntry:addResponse("Die Natur bietet mir mehr Freuden als irgendein Ort aus kaltem Stein.");
talkEntry:addResponse("Ich pflanze B�ume und bewundere, wie sie wachsen. Kann sich irgendetwas... entspannenderes vorstellen?");
talkEntry:addResponse("Ich genie�e die Stille hier. Ein Ast im Winde kann ein wunderbares Lied singen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("shrine");
talkEntry:addTrigger("grove");
talkEntry:addResponse("Isn't this a lovely place? Most trees, I planted myself.");
talkEntry:addResponse("Honour Ushara for this site is her gift.");
talkEntry:addResponse("Welcome to the place where nature embraces you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schrein");
talkEntry:addTrigger("Hain");
talkEntry:addResponse("Ist dies nicht ein bewundernswerter Ort? Die meisten B�ume habe ich selbst gepflanzt.");
talkEntry:addResponse("Ehret Ushara, denn all dies ist ihr Geschenk.");
talkEntry:addResponse("Willkommen an dem Ort, wo die Natur dich umarmt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("D�rre");
talkEntry:addResponse("Einst, zu einer Zeit, als die es die Erde d�rstete, kamen die V�lker an diesem Ort zusammen und beteten um Erl�sung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("drought");
talkEntry:addResponse("Once upon a time, when the soil suffered from thirst, the people came to this place and prayed for revelation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("oasis");
talkEntry:addResponse("At the Oasis of Stars, my good friend Rutrus has found his peace. Maybe you want to visit him?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("oase");
talkEntry:addResponse("Bei der Sternenoase hat mein guter Freund Rutrus seinen Frieden gefunden. Vielleicht wollt ihr ihn ja mal besuchen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Rutrus");
talkEntry:addResponse("At the Oasis of Stars, my good friend Rutrus has found his peace. Maybe you want to visit him?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rutrus");
talkEntry:addResponse("Bei der Sternenoase hat mein guter Freund Rutrus seinen Frieden gefunden. Vielleicht wollt ihr ihn ja mal besuchen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bruno");
talkEntry:addResponse("That name sounds familiar, but living in solitude, I forget about names with time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bruno");
talkEntry:addResponse("Der Name klingt vertraut, aber hier in der Einsamkeit vergi�t man Namen mit der Zeit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("herbs");
talkEntry:addResponse("You can gather herbs with a sickle. But do not cut too many... Ushara won't be pleased if you plunder her treasury.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kr�uter");
talkEntry:addResponse("Ihr k�nnt Kr�uter mit einer Sichel sammeln. Aber schneidet nicht zu viele ab - Ushara wird nicht erfreut sein, wenn ihr ihren Garten pl�ndert.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addTrigger("sickle");
talkEntry:addResponse("With sickles, you can cut fir tree seedlings to plant new trees. If you want to help me, ask me for a task.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(66, "=", 0));
talkEntry:addTrigger("Sichel");
talkEntry:addResponse("Mit einer Sichel k�nnt ihr Fichtensetzlinge schneiden um neue B�ume zu pflanzen. Wenn ihr mir dabei helfen wollt, fragt mich nach einem Auftrag.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sickle");
talkEntry:addResponse("In case you need a new sickle, ask for William in Runewick. If he is still alive after all these years we didn't meet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Sichel");
talkEntry:addResponse("Wenn du einen neue Sichel ben�tigst, fragt nach William in Runewick. Ich hoffe, er ist nach all diesen Jahren, die wir uns nicht sahen, noch am Leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("virgin");
talkEntry:addResponse("Virgin's weed only grows in rocky terrain, so you'll have to head for the mountains if you need any.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Jungfer");
talkEntry:addResponse("Jungfernkraut w�chst nur in felsigem Gel�nde; ihr werdet also in die Berge gehen m�ssen, wenn ihr welches ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Once, I called the Archmage of Runewick a friend of mine, but we disagreed on too many things, so I left Runewick for good.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Einst nannte ich den Erzmagier Runewicks einen Freund. Aber wir stritten �ber zu viele Dinge, so dass ich Runewick f�r immer verlie�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Once, I called the Archmage of Runewick a friend of mine, but we disagreed on too many things, so I left Runewick for good.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Einst nannte ich den Erzmagier Runewicks einen Freund. Aber wir stritten �ber zu viele Dinge, so dass ich Runewick f�r immer verlie�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("The only place where you can find peace is Runewick, but I still prefer the forest.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Der einzige Ort, wo es Frieden gibt ist Runewick. Dennoch ziehe ich den Wald vor.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("I give thanks for every moment of life, not having to deal with that greedy dwarf.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ich bin f�r jede Minute meines Lebens dankbar, in der ich mich nicht mit gierigen Zwergen herumplagen muss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair? A pool of sins, it is!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair? Ein S�ndenpfuhl ist das!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("Isn't Cadomyr's sovereign King Reginald Edwards?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Hei�t der Herrscher Cadomyrs nicht K�nig Reginald Edwards?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Isn't Cadomyr's sovereign King Reginald Edwards?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Hei�t der Herrscher Cadomyrs nicht K�nig Reginald Edwards?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr is a rough place to the south. I wonder how Rutrus can stand this place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr ist ein w�ster Ort im S�den. Ich frage mich, wie Rutrus es dort aush�lt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("I stopped caring about things that happen abroad long ago, be it Albar, Gynk or Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ich habe aufgeh�rt mich um Dinge zu sorgen, die weit entfernt geschehen, egal of Albar, Gynk oder Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("I stopped caring about things that happen abroad long ago, be it Albar, Gynk or Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Ich habe aufgeh�rt mich um Dinge zu sorgen, die weit entfernt geschehen, egal of Albar, Gynk oder Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("I stopped caring about things that happen abroad long ago, be it Albar, Gynk or Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ich habe aufgeh�rt mich um Dinge zu sorgen, die weit entfernt geschehen, egal of Albar, Gynk oder Salkamar.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("In the solitude of the forest, one starts to think a lot about the Gods... without conclusion so far.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("In der Einsamkeit des Waldes denkt man viel �ber sich und die G�tter nach - doch bin ich noch zu keinem Schluss gekommen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Honour the Goddess!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ushara");
talkEntry:addResponse("Ehret die G�ttin!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Oldra... I am sure I saw her one day, dancing at dawn on the grass.");
talkEntry:addResponse("Oldra now takes care of all the wonders Ushara has left on the land.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Oldra... Ich bin mir sicher, ich habe sie einst auf dem taufeuchtem Grass im Morgenlicht tanzen sehen.");
talkEntry:addResponse("Oldra pflegt nun all die Wunder, die uns Ushara auf dem Land hinterlassen hat.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Darlok");
talkEntry:addResponse("Could you please not mention that name in front of me?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Darlok");
talkEntry:addResponse("M�gt ihr diesen Namen bitte nicht in meiner Gegenwart erw�hnen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Falkner");
talkEntry:addResponse("What did you say?");
talkEntry:addResponse("That's not my name... anymore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Falkner");
talkEntry:addResponse("Wie bitte?");
talkEntry:addResponse("So hei�e ich nicht... mehr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Is money all that matters to you? I abstained from bartering decades ago and have never missed it a single day.");
talkEntry:addResponse("I have no use for money, so I do not want yours.");
talkEntry:addResponse("I am not a merchant. Maybe you want to help me in a quest?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ist denn Gold alles, was f�r euch z�hlt? Ich entsagte ihm schon vor langer Zeit und habe es nicht an einem einzelnen Tag vermi�t.");
talkEntry:addResponse("Ich brauche kein Gold, also handele ich auch nicht.");
talkEntry:addResponse("Ich bin kein H�ndler. Aber vielleicht kannst du mir bei einem Auftrag helfen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Once upon a time, when the soil suffered from thirst, the people came to this place and prayed for revelation.");
talkEntry:addResponse("I did not make this place, nature did, but few honour the wonders of Ushara and Oldra.");
talkEntry:addResponse("Tales of old I never witnessed. Seldom, travellers come here to tell me about foreign lands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Einst, zu einer Zeit, als die es die Erde d�rstete, kamen die V�lker an diesem Ort zusammen und beteten um Erl�sung.");
talkEntry:addResponse("Ich habe diesen Ort nicht geschaffen. Die Natur tat es. Aber nur wenige ehren die Wunder von Ushara und Oldra.");
talkEntry:addResponse("Die Legenden alter Zeiten habe ich nie erlebt. Und nur selten kommen Wanderer hierher, um aus anderen L�ndern zu berichten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Raban");
talkEntry:addResponse("Raban... yes, that's what they used to call me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Raban");
talkEntry:addResponse("Raban... ja, so hat man mich mal genannt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Yes?");
talkEntry:addResponse("Probably.");
talkEntry:addResponse("I thought so.");
talkEntry:addResponse("Are you sure?");
talkEntry:addResponse("Maybe.");
talkEntry:addResponse("What makes you so sure about this?");
talkEntry:addResponse("Definitely.");
talkEntry:addResponse("Whatever...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Ja?");
talkEntry:addResponse("Wahrscheinlich.");
talkEntry:addResponse("Hab ich mir gedacht.");
talkEntry:addResponse("Seid ihr sicher?");
talkEntry:addResponse("Vielleicht.");
talkEntry:addResponse("Was macht euch so sicher?");
talkEntry:addResponse("Sicherlich.");
talkEntry:addResponse("Wie auch immer...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("No?");
talkEntry:addResponse("But on the other hand...");
talkEntry:addResponse("Well...");
talkEntry:addResponse("Maybe you should reconsider this?");
talkEntry:addResponse("Is that all you have to say about this?");
talkEntry:addResponse("I disagree.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Nein?");
talkEntry:addResponse("Aber andererseits...");
talkEntry:addResponse("Nun...");
talkEntry:addResponse("Vielleicht �ndert ihr eure Meinung noch einmal?");
talkEntry:addResponse("Ist das alles, was ihr dazu sagen wollt?");
talkEntry:addResponse("Ich muss widersprechen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me klopft die Erde um einen frisch gepflanzten Setzling glatt.", "#me flattens the soil around a newly planted seedling.");
talkingNPC:addCycleText("Wachst und gedeiht, meine Kinder.", "Grow and prosper, my children.");
talkingNPC:addCycleText("#me streicht sachte �ber die Bl�tter eines Strauches und seufzt.", "#me gently strokes the leaves of a bush and sighs.");
talkingNPC:addCycleText("#me fl�stert kaum h�rbar zu einer Fichte. Man kann sich einbilden, die �ste des Baumes w�rden antwortend im Wind rauschen.", "#me whispers, barely audibly, to a fir tree. One could imagine the branches of the tree rustling in the wind in response.");
talkingNPC:addCycleText("Waren wir noch l�ngst nicht geboren, saht ihr auf alles herab. Sind wir l�ngst gegangen, geh�rt euch das Land erneut.", "When we weren't even born, you could look down and behold it all. When we are long gone, the land will be yours again.");
talkingNPC:addCycleText("Ich habe etwas geh�rt.", "I heard something.");
talkingNPC:addCycleText("Shh! Wenn ihr ganz still seid, k�nnt ihr dem Klang der Stille lauschen.", "Shh! If you're quiet, you can listen to the sound of silence.");
talkingNPC:addCycleText("#me schaut sich um und nickt zufrieden.", "#me looks around and nods with satisfaction.");
talkingNPC:addCycleText("Wer wagt es, meine Ruhe zu st�ren?", "Who dares to disturb me?");
talkingNPC:addCycleText("Willkommen in meinem Hain.", "Welcome to my grove.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist der Einsiedler Raban.", "This NPC is the hermit Raban.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 829);
mainNPC:setEquipment(3, 365);
mainNPC:setEquipment(11, 2419);
mainNPC:setEquipment(5, 207);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 34);
mainNPC:setEquipment(10, 369);
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