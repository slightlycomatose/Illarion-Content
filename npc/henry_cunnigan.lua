--------------------------------------------------------------------------------
-- NPC Name: Henry Cunnigan                                              None --
-- NPC Job:  Tutor                                                            --
--                                                                            --
-- NPC Race: human                      NPC Position:  37, 21, 100            --
-- NPC Sex:  male                       NPC Direction: west                   --
--                                                                            --
-- Authors:  Rincewind                                                        --
--           Estralis Seborian                                                --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 37, 21, 100, 6, 'Henry Cunnigan', 'npc.henry_cunnigan', 0, 2, 5, 123, 62, 9, 245, 180, 137);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.talkmode")
require("npc.base.consequence.inform")
require("npc.base.consequence.quest")
require("npc.base.consequence.warp")
require("npc.base.talk")
module("npc.henry_cunnigan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] This NPC is the tutor Henry Cunnigan. Keywords: Hello, Help, Skip tutorial."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Dieser NPC ist der Tutor Henry Cunnigan. Schl�sselw�rter: Hallo, Hilfe, Tutorial �berspringen."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("skip");
talkEntry:addTrigger("cancel");
talkEntry:addTrigger("abort");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] You have decided to skip the tutorial. Please choose a realm to be the home for your character by stepping through the corresponding portal on one of the three islands to the south."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(36, 94, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("�berspring");
talkEntry:addTrigger("abbrech");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Du hast entschieden, das Tutorial zu �berspringen. Bitte w�hle ein Reich als Heimat deines Charakters aus, indem du durch das entsprechende Portal auf einer der drei Inseln im S�den trittst."));
talkEntry:addConsequence(npc.base.consequence.warp.warp(36, 94, 100));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "<", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] To shout, please hit the return key to activate the chatbox. Type '#s' in front of the words you wish to shout and then hit return again to make your character shout them."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 2));
talkEntry:addResponse("Welcome to the tutorial, %CHARNAME. Henry Cunnigan, harbourmaster, at your service. I will teach you how to communicate with other characters. Since you clearly already know how to talk, I will show you how to shout. Please shout out something for me to hear. Perhaps your name, for example!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "<", 2));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Um zu schreien, aktiviere bitte durch das Dr�cken der Enter-Taste die Chatbox. Schreibe '#s' vor die Worte, die du rufen m�chtest und dr�cke erneut die Enter-Taste, um deinen Charakter schreien zu lassen."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 2));
talkEntry:addResponse("Willkommen zu diesem Tutorial, %CHARNAME. Henry Cunnigan, Hafenmeister, zu Diensten. Ich werde dir beibringen, mit anderen Charakteren zu kommunizieren. Da du offensichtlich schon herausgefunden hast, wie man spricht, werde ich dir nun zeigen, wie man schreit. Bitte schreie etwas f�r mich, vielleicht deinen Namen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.talkmode.talkmode("yell"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Whispering works a lot like shouting. Activate your chatbox again and write '#w' in front of the words you want to whisper."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 3));
talkEntry:addResponse("My, but you have a powerful voice! Shouting can be heard over quite some distance and is useful for communicating with large crowds or people that are far away. Sometimes, however, you don't want people eavesdropping into your private conversations. Please whisper some secret words for my ears only.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 2));
talkEntry:addCondition(npc.base.condition.talkmode.talkmode("yell"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Fl�stern funktioniert fast wie Schreien. Aktiviere erneut deine Chatbox und schreibe '#w' vor die zu fl�sternden Worte."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 3));
talkEntry:addResponse("Ui, du hast aber eine kraftvolle Stimme! Schreien kann man auch in einiger Entfernung noch h�ren und es ist n�tzlich zur Kommunikation mit gro�en Gruppen oder Personen, die weit weg sind. Manchmal will man allerdings nicht von anderen bei einer privaten Unterhaltung belauscht werden. Bitte fl�ster mir ein paar geheime Worte zu, die nur f�r meine Ohren bestimmt sind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 2));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] To shout, please hit the return key to activate the chatbox. Type '#s' in front of the words you wish to say and then hit return again to make your character shout them."));
talkEntry:addResponse("You already know how to talk, but shouting can help you to find your lost friends in lonely woods or dark dungeons. Please shout some words at will. Let your voice be heard! I shan't take offence, honest!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 2));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Um zu schreien, aktiviere bitte durch das Dr�cken der Enter-Taste die Chatbox. Schreibe '#s' vor die Worte, die du rufen m�chtest und dr�cke erneut die Enter-Taste, um deinen Charakter schreien zu lassen."));
talkEntry:addResponse("Du wei�t bereits wie man spricht, aber Schreien kann dir helfen deine Freunde in einsamen W�ldern oder dunklen Verliesen wiederzufinden. Bitte ruf etwas. Lass uns deine Stimme h�ren! Ich werd auch nicht beleidigt sein, versprochen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.talkmode.talkmode("whisper"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Emoting is done by placing a '#me' in front of your action."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 4));
talkEntry:addResponse("Sometimes, silence is golden. Use whispers to communicate with those immediately around you. But there will be times when you do not wish to speak at all. To perform actions as your character you can use emotes. Emotes cannot affect the game world or other characters but are a good way to add some flavour to your roleplaying. Please emote an action!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 3));
talkEntry:addCondition(npc.base.condition.talkmode.talkmode("whisper"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Zum Emoten muss man einfach '#me' vor die Handlung schreibt."));
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 4));
talkEntry:addResponse("Manchmal ist Schweigen Gold. Fl�stere, um mit denen, die dich direkt umgeben zu kommunizieren. Aber es wird Zeiten geben, wenn du nicht reden willst. Mit Hilfe von Emotes kannst du Handlungen als dein Charakter auszuf�hren. Emotes haben keinen Einfluss auf die Spielwelt oder andere Charaktere, aber sie sind ein guter Weg um etwas Spannung in dein Rollenspiel zu bringen. Bitte emote eine Handlung!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 3));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Whispering works a lot like shouting. Activate your chatbox again and write '#w' in front of the words you want to whisper."));
talkEntry:addResponse("Not every member of the town guard should hear about your twisted plans. Nor should the local thugs hear you talking about your purse. Please try to whisper once more.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 3));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Fl�stern funktioniert fast wie Schreien. Aktiviere erneut deine Chatbox und schreibe '#w' vor die zu fl�sternden Worte."));
talkEntry:addResponse("Nicht jedes Mitglied der Stadtwache sollte deine krummen Pl�ne h�ren. Auch sollte der ortans�ssige Strolch dich nicht �ber deinen Reichtum reden h�ren. Bitte versuch nochmals zu fl�stern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("#me");
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 5));
talkEntry:addResponse("Very good! You have learned all of the things that I can teach you. Have fun with the rest of the tutorial, %CHARNAME. Now, follow the road to the next lesson on items.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 4));
talkEntry:addTrigger("#me");
talkEntry:addConsequence(npc.base.consequence.quest.quest(309, "=", 5));
talkEntry:addResponse("Sehr gut! Du hast nun alles gelernt, was ich dir beibringen kann. Viel Spa� bei dem Rest des Tutorials, %CHARNAME. Nun folge der Stra�e zur n�chsten Lektion �ber Gegenst�nde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 4));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Emoting is done by placing a '#me' in front of your action."));
talkEntry:addResponse("Emoting is very important as it is the only way to show other players your character's actions that cannot be represented graphically. Please try to emote once more.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 4));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Tutorial] Zum Emoten muss man einfach '#me' vor die Handlung schreibt."));
talkEntry:addResponse("Emoten ist sehr wichtig - es ist die einzige M�glichkeit, um anderen Spielern zu zeigen, was dein Charakter gerade tut, wenn es nicht grafisch unterst�tzt wird. Bitte versuch erneut zu emoten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 5));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger(".*");
talkEntry:addResponse("You have learned everything that I can teach you. Have fun with the rest of the tutorial, %CHARNAME. Now, follow the road to the next lesson on items.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(309, "=", 5));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Du hast alles gelernt, was ich dir beibringen kann. Viel Spa� bei dem Rest des Tutorials, %CHARNAME. Nun folge der Stra�e zur n�chsten Lektion �ber Gegenst�nde.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Komm n�her und sag doch 'Hallo' zu mir.", "Come a little closer and say 'hello'.");
talkingNPC:addCycleText("Hast du vergessen, wie man sich bewegt? Benutz die linke Maustaste, die Pfeiltasten, den Ziffernblock oder WASD.", "Forgotten how to move? Use the left mouse button, the arrow keys, the num pad or WASD.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Das ist dein Tutor Henry Cunnigan.", "This is your tutorial guide Henry Cunnigan.");
mainNPC:setUseMessage("Finger weg!", "Do not touch me!");
mainNPC:setConfusedMessage("Bitte wechsle die Sprache deines Charakters zur Gemeinsprache mit dem Befehl '!l common'.", "Please switch the language of your character to the common tongue with the command '!l common'.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 101);
mainNPC:setEquipment(11, 2419);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 366);
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