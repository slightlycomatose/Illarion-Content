--------------------------------------------------------------------------------
-- NPC Name: Simeon Ureses                                            Cadomyr --
-- NPC Job:  Armourer                                                         --
--                                                                            --
-- NPC Race: human                      NPC Position:  133, 581, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 133, 581, 0, 4, 'Simeon Ureses', 'npc.simeon_ureses', 0, 1, 3, 180, 35, 35, 160, 80, 45);
---]]

require("npc.base.basic")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.talk")
require("npc.base.consequence.repair")
module("npc.simeon_ureses", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Simeon Ureses the royal armourer. Keywords: Hello, armourer, dwarves, Irmorom, repair."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Simeon Ureses der k�nigliche Waffenmeister. Schl�sselw�rter: Hallo, Waffenmeister, Zwerge, Irmorom, reparieren."));
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
talkEntry:addResponse("Good day. Shall I repair your equipment?");
talkEntry:addResponse("Hello. Come with broken things and you will go with fixed ones.");
talkEntry:addResponse("Pardon me, could you come back in a minute or two? I have to fix this first.");
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
talkEntry:addResponse("Guten Tag. Soll ich eure Ausr�stung reparieren?");
talkEntry:addResponse("Hallo. Kommt zu mir mit Zerbrochenem und geht mit Repariertem.");
talkEntry:addResponse("Entschuldigt, k�nnt ihr in ein bis zwei Minuten nochmal wiederkommen? Ich muss dies hier erst reparieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Good day. Shall I repair your equipment?");
talkEntry:addResponse("Hello. Come with broken things and you will go with fixed ones.");
talkEntry:addResponse("Pardon me, could you come back in a minute or two? I have to fix this first.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Guten Tag. Soll ich eure Ausr�stung reparieren?");
talkEntry:addResponse("Hallo. Kommt zu mir mit Zerbrochenem und geht mit Repariertem.");
talkEntry:addResponse("Entschuldigt, k�nnt ihr in ein bis zwei Minuten nochmal wiederkommen? Ich muss dies hier erst reparieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Good bye. And do some adventures for me.");
talkEntry:addResponse("Farewell and come back soon.");
talkEntry:addResponse("I bid you farewell.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Auf Wiedersehen. Und erlebt ein paar Abenteuer f�r mich mit.");
talkEntry:addResponse("Gehabt euch wohl und kommt bald wieder.");
talkEntry:addResponse("Ich w�nsche euch was.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Auf Wiedersehen. Und erlebt ein paar Abenteuer f�r mich mit.");
talkEntry:addResponse("Gehabt euch wohl und kommt bald wieder.");
talkEntry:addResponse("Ich w�nsche euch was.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Auf Wiedersehen. Und erlebt ein paar Abenteuer f�r mich mit.");
talkEntry:addResponse("Gehabt euch wohl und kommt bald wieder.");
talkEntry:addResponse("Ich w�nsche euch was.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("Good. I just got a new rasp.");
talkEntry:addResponse("Did you know why a raspberry is called raspberry? Take a rasp and a raspberry and feel the surface...");
talkEntry:addResponse("I need to work, sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Gut. Ich habe gerade eine neue Feile bekommen.");
talkEntry:addResponse("Wu�tet ihr, dass eine Erdbeere gar keine Beere sondern eine Nussart ist?");
talkEntry:addResponse("Ich muss arbeiten, entschuldigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Simeon Ureses, the royal armourer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Simeon Ureses, der k�nigliche Waffenmeister.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("repair");
talkEntry:addTrigger("fix");
talkEntry:addResponse("Let's have a look at this.");
talkEntry:addConsequence(npc.base.consequence.repair.repair());
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("reparieren");
talkEntry:addTrigger("instand");
talkEntry:addTrigger("heile");
talkEntry:addResponse("Schauen wir nach, was wir hier haben.");
talkEntry:addConsequence(npc.base.consequence.repair.repair());
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Do I look like I'd issue quests?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sehe ich aus wie einer, der Befehle verteilt?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Do I look like I'd issue quests?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Sehe ich aus wie einer, der Befehle verteilt?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am the royal armourer. So, whenever your sword turns blunt, come to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der k�nigliche Waffenmeister. Wenn also euer Schwert stumpf wird, kommt zu mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am the royal armourer. So, whenever your sword turns blunt, come to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der k�nigliche Waffenmeister. Wenn also euer Schwert stumpf wird, kommt zu mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dwarf");
talkEntry:addTrigger("dwarv");
talkEntry:addResponse("Yes, indeed, I am the royal armourer and I am not a dwarf. Do you think only dwarves can forge and smith?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("armourer");
talkEntry:addTrigger("armorer");
talkEntry:addResponse("As royal armourer, it is my responsibility that the equipment of the knights of Cadomyr is in a perfect condition.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Hush! Not in public.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zwerg");
talkEntry:addResponse("F�rwahr, ich bin der k�nigliche Waffenmeister und kein Zwerg. Denkt ihr etwa, nur Zwerge k�nnen schmieden?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Waffenmeister");
talkEntry:addResponse("Als k�niglicher Waffenmeister ist es meine Pflicht, daf�r zu sorgen, dass die Ausr�stung der Ritter Cadomyrs in bester Verfassung ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hastings");
talkEntry:addTrigger("Baron");
talkEntry:addResponse("Still! Doch nicht in der �ffentlichkeit!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addResponse("I am not a trader but I can repair your items.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addResponse("Ich bin kein H�ndler aber ich kann eure Gegenst�nde reparieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Irmorom, the god of crafting, is the only god I really pray to. I respect them all, though. Even Oldra!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Irmorom, der Gott des Handwerkes, ist der einzige Gott, zu dem ich bete. Ich respektiere sie aber alle, sogar Oldra!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Br�gon grants me the fire for forging but he does not grant the hammer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addTrigger("Br�gon");
talkEntry:addResponse("Br�gon gibt mir das Schmiedefeuer, doch gibt er mir nicht den Schmiedehammer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Irmorom");
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Irmorom, the god of crafting, is the only god I really pray to. I respect them all, though. Even Oldra!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addTrigger("Oldra");
talkEntry:addResponse("Irmorom, der Gott des Handwerkes, ist der einzige Gott, zu dem ich bete. Ich respektiere sie aber alle, sogar Oldra!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("So, I am with Cadomyr so I have to pray to Malach�n? You need to learn a lot...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("So, ich bin also aus Cadomyr, also muss ich zu Malach�n beten? Ihr m��t noch eine Menge lernen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I serve the queen because she is the queen. Did I make myself clear?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich diene der K�nigin, weil sie die K�nigin ist. Habe ich mich klar ausgedr�ckt?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("I serve the queen because she is the queen. Did I make myself clear?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich diene der K�nigin, weil sie die K�nigin ist. Habe ich mich klar ausgedr�ckt?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("The wellbeing of Cadomyr is my only concern. I will not do anything against Cadomyr, regardless of my personal opinion.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Das Wohlergehen Cadomyrs ist mein einziger Lebensinhalt. Ich werde nichts zum Schaden Cadomyrs tun, unabh�ngig davon, was meine eigentliche Meinung ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Ja, ich schaff das.", "Yes, I can!");
talkingNPC:addCycleText("Ihr da! Sehe ich da eine Schramme in eurer R�stung?", "Lo! Is that a scratch in your armour?");
talkingNPC:addCycleText("Die Ritter Cadomyrs sollten nur in strahlenden R�stungen in die Schlacht ziehen.", "The knights of Cadomyr should go to battle only in shiny armour.");
talkingNPC:addCycleText("Ein gebrochenes Herz? Das kann ein Bier von Severus helfen. Ein zerbrochenes Schwert? Da kann ich helfen!", "A broken heart? A beer from Severus might help. A broken sword? I can help!");
talkingNPC:addCycleText("Dies ist... Cadomyr!", "This is... Cadomyr!");
talkingNPC:addCycleText("#me poliert eine Panzerplatte.", "#me polishes a plate armour.");
talkingNPC:addCycleText("Ein zerbrochener Bogen t�tet genau noch ein Opfer: Den Idioten mit der Sehne in der Hand.", "A broken bow kills just one victim: The idiot holding the string.");
talkingNPC:addCycleText("Ich kenne einen Ort mit B�umen in der W�ste... Nicht einfach nur ein paar verschrumpelte Palmen sondern richtig B�ume mit Bl�ttern!", "I know a place with trees in the desert... not just some ordinary palm trees but real trees with leaves!");
talkingNPC:addCycleText("Guten Tag.", "Good day.");
talkingNPC:addCycleText("Ich hoffe, alles l�uft zu eurer Zufriedenheit?", "I hope all is well?");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Simeon Ureses der k�nigliche Waffenmeister.", "This NPC is Simeon Ureses the royal armourer.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 363);
mainNPC:setEquipment(11, 195);
mainNPC:setEquipment(5, 23);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 48);
mainNPC:setEquipment(9, 459);
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