--------------------------------------------------------------------------------
-- NPC Name: Grimlug                                                  Galmair --
-- NPC Job:  Shaman                                                           --
--                                                                            --
-- NPC Race: orc                        NPC Position:  385, 176, -6           --
-- NPC Sex:  male                       NPC Direction: southwest              --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (4, 385, 176, -6, 5, 'Grimlug', 'npc.grimlug', 0, 2, 5, 23, 6, 3, 137, 123, 60);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.condition.state")
require("npc.base.consequence.inform")
require("npc.base.consequence.state")
require("npc.base.talk")
module("npc.grimlug", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Grimlug the Shaman. Keywords: tell something, Olokwa, creation, gods."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Grimlug der Schamane. Schl�sselw�rter: erz�hl was, Olokwa, Sch�pfung, G�tter."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
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
talkEntry:addResponse("Greebas! How, the shaman's able to help you?");
talkEntry:addResponse("Hurr! What's your desire?");
talkEntry:addResponse("Hullo! Greets to you.");
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
talkEntry:addResponse("Greebas! Wie kann dir der Schamane helfigen?");
talkEntry:addResponse("Hurr! Was issigt dein Begehr?");
talkEntry:addResponse("Hullo! Sei gegr��igt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas! How, the shaman's able to help you?");
talkEntry:addResponse("Hurr! What's your desire?");
talkEntry:addResponse("Hullo! Greets to you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Greebas! Wie kann dir der Schamane helfigen?");
talkEntry:addResponse("Hurr! Was issigt dein Begehr?");
talkEntry:addResponse("Hullo! Sei gegr��igt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Farebas!");
talkEntry:addResponse("Blessings to you.");
talkEntry:addResponse("Good spirits shall guide your ways.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Farebas!");
talkEntry:addResponse("Segen �ber dich.");
talkEntry:addResponse("Gute Geister soll'n �ber deine Wege wachigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebas!");
talkEntry:addResponse("Blessings to you.");
talkEntry:addResponse("Good spirits shall guide your ways.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Farebas!");
talkEntry:addResponse("Segen �ber dich.");
talkEntry:addResponse("Gute Geister soll'n �ber deine Wege wachigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("#me nods slowly. 'I'm finest. Yubba honoured the gods today?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("#me nickt langsam. 'Ich binne bestens. Hast du heute die G�tter geehret?'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Grimlug. Who be you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich binne Grimlug. Wer seist du?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The shaman has no quests for you, right now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Der Schamane hat keinige Aufgaben f�r dich - im Moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The shaman has no quests for you, right now.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Der Schamane hat keinige Aufgaben f�r dich - im Moment.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Hurr, the isle made the Gods angry, now it have to bear it's destiny. Tagtha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Gobaith! Hurr, die Insel hat erz�rnt die G�tter. Nun es sein Schicksal tragen mu�. Tagtha.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("The Gods warmly pleasured to welcome you here.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Die G�tter warmlich geerht, dich willkommen zu hei�en.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("stop");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Hrm, Grimlug should tell another tale?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("stop");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Hrm, Grimlug soll erz�hligen etwas anderes?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 0));
talkEntry:addTrigger("continue");
talkEntry:addResponse("Which tale mes should tell?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 0));
talkEntry:addTrigger("weiter");
talkEntry:addResponse("Welche Geschichte Grimlug, soll erz�hlen?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Creation");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("A long time ago, the Gods became bored. Bragon, older brother of Moshran, went to him and had his arm chopped off. They collected the blood and formed the sun with it...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkEntry:addResponse("...Dha arm dropped down, and become dha land. Wibh dha hand ob Bragon dhat beh left, Bragon took H'ref, the sun, and whipped it ober dha arm, G'rak, like it beh child...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkEntry:addResponse("...Furthermore dha odha gods took parts of dham and creatad dha folk. Dheh dhrew dham on G'rak to see ib dheh beh worthy. The folk beh cold and lifeless like G'rak...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 4));
talkEntry:addResponse("...But dha Faddha hab some of Bragon's blood left, so he spilled all ob it ober G'rak. Dhen dha folk become warm in dhea bodehs. But some folk he forgot, so dheh beh still cold...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 4));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...When dha Faddha slept his former female Cherga, dha iceh witch, she bewitched G'rak, whub Moshran alwahs took whib him. G'rak budges and strains and dha iceh witch received him so dha spirit infest dha folk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schoepfung");
talkEntry:addTrigger("Sch�pfung");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 1));
talkEntry:addResponse("Vor lange Zeit, den G�ttern die Zeit zu lang wurde. Bragon, der �ltere Bruder Moshrans gegangen zu ihm und lie� sich seinen Arm abhacken. Sie sammelten das Blut und geformten die Sonne...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 1));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 2));
talkEntry:addResponse("...Der Arm fiel runter und gewurde zum Land. Mit der verbleibenden Hand nahmigte Bragon sie Sonne, H'ref und schaukelt sie, als gew�se sie sein Kind, �ber seinen Arm, G'rak...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 2));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 3));
talkEntry:addResponse("...Darauf hin gingigen die anderen G�tter her und nahmen Dinge von ihren K�rpern um die V�lker zu schaffen. Sie wurfen sie auf G'rak um zu besehen ob sie auch w�rding sind da zu sein...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 3));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 4));
talkEntry:addResponse("...Die V�lker waren kalt und leblo�ig. Wie G'rak. Aber Moshran behatte noch ein wenig von Bragons Blut �brig. Er versch�ttete alles �ber G'rak. Darauf hinig wurde den V�lkern wohlwarm in den K�rpern...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 4));
talkEntry:addTrigger("weiter");
talkEntry:addResponse("He iss the Don. That means he's the mightiest dwarf arround. Grockth�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 5));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...G'rak regte sich und reckte sich. Und die eisige Hexe empfing ihn. So wurden die V�lker vom Geist befallen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Grak");
talkEntry:addTrigger("Href");
talkEntry:addTrigger("G'rak");
talkEntry:addTrigger("H'ref");
talkEntry:addTrigger("G rak");
talkEntry:addTrigger("H ref");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 7));
talkEntry:addResponse("G'rak beh beauteful and strong, and H'ref chooses him. She became dha female ob him. Dheh neba leave each other, and in dha night, when H'ref beh nub able to see her male...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 7));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 8));
talkEntry:addResponse("...she use shineh mirror ob ore to hub a eye at G'rak. Dhat beh dha Moon. It rains when H'ref and G'rak lie dogetha. Ofta you hear dham gasp and yell. Dhat beh dha dhunda...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 8));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...In dhat way dheh beget spirits whub beh here, from now on. Dhat beh dha lightning bolts. And bolts beh dhea, whea dha power ob dha spirits beh bereh mighte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grak");
talkEntry:addTrigger("Href");
talkEntry:addTrigger("G'rak");
talkEntry:addTrigger("H'ref");
talkEntry:addTrigger("G rak");
talkEntry:addTrigger("H ref");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 7));
talkEntry:addResponse("G'rak warig sehr sch�n und stark. Und H'ref aussuchte ihn. Sie wurdigte sein Weib. Nie gehen sie weg von einander. Und in der Nacht, wenn H'ref ihren Mann nicht ansehen kann...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 7));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 8));
talkEntry:addResponse("...hielt sie einen gl�nzigen Spiegel aus Erz so das sie nicht von ihm lassen muss. Das ist der Mond. Es regnet wenn G'rak und H'ref zusammenliegen. Oft h�rt man sie keuchen und rufen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 8));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Das issigt der Donner. Und dabei zeugen sie Geister, die von nun an da sinnid. Das sind die Blitze. Und Blitze immer dort sind, wo die Kraft von Geistern besonders gro� ist.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("spirit");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 10));
talkEntry:addResponse("Nub all spirit be dha same. Most beh mixed. In Orc, dhea beh spirit of his ancestor. It is Moshran's spirit. It helps and protects broddhas and sistahs. It beh mighte, ib our skin honour to...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 10));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 11));
talkEntry:addResponse("...worship thea ancestors and dha Faddha. Ib it beh weak as Oomies, green skin earn resentment and bad luck. Furtha, in dha Orcs beh dha spirit ob Bragon. He makes dha bodeh warm...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 11));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 12));
talkEntry:addResponse("...Ib broddha or sistah dies, dha spirit beh brought ober dha eternal rift between G'rak and dha land ob dha ancestors. Dha Faddha's spirit beh leaved at G'rak, as long dha descendant praise dhea ancestors...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 12));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 13));
talkEntry:addResponse("...And in dhat waeh dha tie beh bindin. Beh broddha or sistha calling ancestors, dham beh able to hear and help. Broddhas and sisthas also hab dha Cherga's spirit. It beh dha voices yoo hear whispering in yoo...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 13));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Ib it beh berreh strong, dha broddha become shaman.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geist");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 10));
talkEntry:addResponse("Nicht alle Geister gleich sinnid. Viele sind vermischt. Im Ork ist der Geist von seinem Ahnen. Es ist Moshrans Geist. Er hilft, und besch�tzt den Ork. Stets ist er stark, wenn...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 10));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 11));
talkEntry:addResponse("...die Ahnen und Moshran geehrt werden. Ist er schwach, werden dem Ork Ungl�ck und Missgunst erfahren. Im Ork ist auch der Geist von Bragon. Er macht die W�rme im K�rper. Wenn ein Ork stibt, dieser...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 11));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 12));
talkEntry:addResponse("...Geist wird gebracht durch ewige Kluft zwischen G'rak und Land der Ahnen. Moshrans Geist verbleibt aber auf G'rak, solange er von seinen Erben bedacht wird. Und so das Seil verkn�pfigt ist...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 12));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Ruft ein Ork nach seinen Ahnen k�nnen sie ihn so h�ren und zuseite sein. Im Ork ist auch der Geist von Cherga. Es der Geist du h�rst fl�stern in dir. Ist er besonders stark, der Ork wird zum Schamane.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("shaman");
talkEntry:addTrigger("profession");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 15));
talkEntry:addResponse("Dha shaman knows about dha spirit in green skin, and use it. Shamans spirit beh huge and mighte. Dha ancestors listen to dha voice ob descendant...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 15));
talkEntry:addResponse("Dha shaman knows about dha spirit in green skin. And use it. Shamans spirit beh huge and mighte. Dha ancestors listen to dha voice ob descendant...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 15));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 16));
talkEntry:addResponse("...But onleh shamans beh able contact mighte and unkonwn spirits, so he helps ill broddhas and sisthas and dheafore shaman beh fulfilling his predestiantion...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 16));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...It beh important, dhat dha green skin spirit beh big and strong, and dha green skin will beh healthe and strong ib he praise dha ancestors and spirits beh surrounding us.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Schaman");
talkEntry:addTrigger("beruf");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 15));
talkEntry:addResponse("Der Schamane, wei� �ber die Geister im Ork. Und nutzt sie. Sein Geist ist gro� und stark. Die Ahnen h�ren die Stimme von ihren Erben. Aber nur Schamanen werdigen, m�chtige fremde Geister um Hilfe bittigen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 15));
talkEntry:addResponse("Der Schamane, wei� �ber die Geister im Ork. Und nutzt sie. Sein Geist ist gro� und stark. Die Ahnen h�ren die Stimme von ihren Erben. Aber nur Schamanen werdigen, m�chtige fremde Geister um Hilfe bittigen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 15));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 16));
talkEntry:addResponse("...Und so, er hilft kranke Orks. Und tut sein Wirken als Schamane.  So ist es wichtig, das die St�rke des Orkes Geist, ist gro�. Er wird gesund und stark sein wenn....");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 16));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Ork ehrt seine Ahnen und die Geister um ihn im herum.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("olokwa");
talkEntry:addResponse("Uh, Olokwa! Er alte blind Ork ist. Aba viel klugg. Viel Wei�.");
talkEntry:addResponse("Olokwa Seher ist. Yubba. Is beeindruckend... aba imma bisschen gruselig.");
talkEntry:addResponse("Wenn mir getroffen Olokwa, erstes mal, er erraten mein Name! Er gesehen hat. Ahnen, es ihm gefl�stert haben.");
talkEntry:addResponse("Olokwa gro�e Kraft von Wissenheit hatt. Von geistiges Aug. Er blindt. Aber sehen mehr als viele andere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("olokwa");
talkEntry:addResponse("Uh, Olokwa! He be old blind orc, is very smart 'nd prudent.");
talkEntry:addResponse("Olokwa be a seer. Yubba. As impressive is... it still kind ob scary.");
talkEntry:addResponse("First tjem mes met Olokwa, 'e guessed mes Name. He saw it...Tha ancestors told 'im.");
talkEntry:addResponse("Olokwa hab great powa ob wisdom. ob ghostly eye. Altough he blind, he see more than most othas.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("He's this wizard, this elf... Hurr! Me feel his powers from far away. Gosh.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 18));
talkEntry:addResponse("Cherga, dha iceh witch, escorts dha ghost drough dha nubbing, the eternal rift between dha worlds, into dha land ob dha ancestors...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("He's this wizard, this elf... Hurr! Me feel his powers from far away. Gosh.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Er dieser Zauberer ist, von den Elfen... Hurr! Ich sp�hre seine Kr�fte von weit weg, noch. G�sh.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ch�, in Runewick there's no good spirit. It's mashed by bad magjic and foolish things. Avoid travelin' there. is not good for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Ch�, in Runewick, dort sind keine guten Geister. Verseucht es ist, von b��er Magie und dummen Sachen. Geh dort nicht hin, nein. - Ist nicht gut f�r dich.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("He iss the Don, that means he's the mightiest dwarf around. Grockth�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Er issigt der Don. Dass meint, er ist der m�chtigste Zwerg hier. Grockth�.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Galmair! Actually it's the buildings above us heads, in fresh air. This - down here is just'n old mine, named Scoria Mine.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Er bekommt viele Diener und Sklaven. Die Weiber werden ihn lieben.  Wenn er schwach und feige war, wird er dort selbst dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The humanz and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit privileges to decide.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Die Menschenz und ihre K�nigens. Scheschnacks! Der st�rkste sollt der H�uptling sein! Nich einfach das Recht erben, nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The humanz and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit privileges to decide.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Die Menschenz und ihre K�nigens. Scheschnacks! Der st�rkste sollt der H�uptling sein! Nich einfach das Recht erben, nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("The humanz and their royalty. Scheschnacks! The strongest one should be the chief! Nub just inherit privileges to decide.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Die Menschenz und ihre K�nigens. Scheschnacks! Der st�rkste sollt der H�uptling sein! Nich einfach das Recht erben, nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("This is land of Oomies... Orcs don't have to care about such stuff. Better ask mes about Kroch'Gurak! Where Orcs come from!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Das is Menschnzland... Orks sich nicht k�mmern darum. Du besser fragst nach Kroch'Gurak! Wo Orks herkommen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("Scheschnacks! They say there are Orcs in Gynk as well, but mes say those monkeys aren't orcs when they never seen the Norbuk Plateau.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 21));
talkEntry:addResponse("Moshran. Er ist der Schlachtenw�terich. Der Knochenbrecher. Der Blutgott. Er ist der Vater von jedem Ork, gleich wie der Ork der die Mutter belegen hat...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("This is land of Oomies... Orcs don't have to care about such stuff. Better ask mes about Kroch'Gurak! Where Orcs come from!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Das is Menschnzland... Orks sich nicht k�mmern darum. Du besser fragst nach Kroch'Gurak! Wo Orks herkommen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("wo her");
talkEntry:addTrigger("kroch gurak");
talkEntry:addTrigger("Kroch'Gurak");
talkEntry:addResponse("Ich nix verkauf irgendwas, Schwachkopf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("where com");
talkEntry:addTrigger("kroch gurak");
talkEntry:addTrigger("Kroch'Gurak");
talkEntry:addResponse("Kroch'gruak! Ist, wo mei�te Orks von uns komme her von. Es das gro�e Winterlager vom Norbuk Plateau ist!");
talkEntry:addResponse("Kroch'Gurak ist im Westen von der Hochebene und im Winter viele St�mme versammeln sich dort. Es ist ne gro�e Stadt aus gegrabenen H�hln und nat�rlichn, bef�llt mit vieln Vor�tn.");
talkEntry:addResponse("D'Winter is ne gute Zeit f�r junge Orklinge. Sie machn Scheinshatz und Ringkampf und suchn sich Weiber! H�-h�!");
talkEntry:addResponse("Kroch'Gurak! Das's DIE Orkstadt! �berf�llt mit Orksen und Orkse und Ziegn und Schweine und noch viel mehr Orks! Du solltest h�ren wie die Trommln zum 'Bragg-Thu' schlagn!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Norbuk");
talkEntry:addResponse("Hurr, long time gone, orcs traveling to Norbuk, the 'Strong Land'. It's big plateau, splitted by the Black Current. - Cause his water is black in spring.");
talkEntry:addResponse("Once a falcon appeared and led Grubuk Thunderhand, seer of the Bloody Skull Clan down the path to the 'Strong Land'. Since these days, this land is orc land.");
talkEntry:addResponse("After spans of life of crusader, the old orc tribes found a big strong land. It's surrounded by Armon's Mountains. There's Kroch'Gurak the big winter camp.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Norbuk");
talkEntry:addResponse("Hurr, es lange her gewesen, da Ork wandern nach Norbuk das 'Starke Land'. Es ein gro�e Ebene ist, und es durschnitten vom Schwarzstrom. - Weil seine Wasser sind schwarz im Fr�hjahr.");
talkEntry:addResponse("Einst ein Falke ist erschienen und er wie� Grubuk Donnerhand, Seher des Bloody-Skull-Clans den Weg, hurr. Den Weg zum Starken Land. Seit diesen Tagen, das Land ein Orkland ist.");
talkEntry:addResponse("Nach Lebensspannen auf Wanderschaft, die alten Orkst�mme gefunden haben ein gro�es strakes Land. Es umkreist ist von Armon's Bergen. Dort liegt Kroch'Gurak, das gro�e Winterlager.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragg-Thu");
talkEntry:addTrigger("Bragg Thu");
talkEntry:addResponse("In winter orcs do the poetry! Growling tales about their ancestors! In rhythm to drums, the poet speaks, following plenty of complicated rules. This be called the Bragg-Thuu!");
talkEntry:addResponse("Bragg-Thuu is about rhythm of words, not about melody or rhyme. It's done according to heavy slow drums and tells about tales and legends of the ancestors.");
talkEntry:addResponse("Bragg-Thuu sounds easy to you, but mes never saw a non-orc doin it right. There's plenty of rules you have to follow. Yubba.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragg-Thu");
talkEntry:addTrigger("Bragg Thu");
talkEntry:addResponse("Im Winter Orks, widemen sich der Dichtung! Sie Lobges�nge gr�hlen auf ihre Vorfahren. Im Rythmus von Trommeln, d' Dichter folgt viele komplizierte Regeln. Das ist das Bragg-Thuu!");
talkEntry:addResponse("Bragg-Thuu, es geht um Rythmus von W�rter, nicht um Melodie und Reim. Es wird begeleited von gro�en schweren Trommeln und erz�hlt von Legenden und Taten der Ahnen.");
talkEntry:addResponse("Bragg-Thuu leicht aussehn mag, aber es gibt ungez�hlt viele regeln die man foglen muss. Yubba, hab noch nie nen nicht-Ork gesehn der's richtig hingekriegt hat.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("Grimlug talks about 'Cherga' and 'Moshran' and 'Bragon'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Grimlug erz�hlt von 'Cherga' und 'Moshran' und 'Bragon'.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cherga");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 18));
talkEntry:addResponse("Cherga, dha iceh witch, escorts dha ghost drough dha nubbing, the eternal rift between dha worlds, into dha land ob dha ancestors...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ice witch");
talkEntry:addTrigger("icy witch");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 18));
talkEntry:addResponse("Cherga, dha iceh witch, escorts dha ghost drough dha nubbing, the eternal rift between dha worlds, into dha land ob dha ancestors...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 18));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 19));
talkEntry:addResponse("...Ib a broddha or sistha hub smashed maneh enemies in dha battle and beh strong in dhea lifetime, dhea reputation will be vast and dhea ancestors will honour dham...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 19));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Like dhea honoured dham before. Dha broddha will hub maneh servants and slaves, and dha women will love him. Ib broddha or sistah beh weak and cowardly, dha broddha or sistha will serve.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cherga");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 18));
talkEntry:addResponse("Cherga, die eisige Hexe, bringlicht die Geister durch das Nichts, die ewige Kluft zwischen den Welten, in das Land der Ahnen. Wenn ein Ork viele Gegner im Kampf anbesiegt hat...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("eis Hex");
talkEntry:addTrigger("eisige Hexe");
talkEntry:addTrigger("eishex");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 18));
talkEntry:addResponse("Cherga, die eisige Hexe, bringlicht die Geister durch das Nichts, die ewige Kluft zwischen den Welten, in das Land der Ahnen. Wenn ein Ork viele Gegner im Kampf besiegt hat...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 18));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 19));
talkEntry:addResponse("...Und in seinem Leben stark war, ist sein Ansehen dort gro�. Seine Ahnen werden ihn ehren, wie er gehrt sie zuvorig...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 19));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Er bekommt viele Diener und Sklaven. Die Weiber werden ihn lieben.  Wenn er schwach und feige war, wird er dort selbst dienen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 21));
talkEntry:addResponse("Moshran, he beh dha war bringer, dha bone crusher, dha blood lord. He beh dha Faddher ob ebbreh Orc...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("bone crusher");
talkEntry:addTrigger("war bringer");
talkEntry:addTrigger("blood lord");
talkEntry:addTrigger("father");
talkEntry:addTrigger("Faddha");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 21));
talkEntry:addResponse("Moshran. He beh dha war bringer. Dha bone crusher. Dha blood lord. He beh dha Faddher ob ebbreh Orc...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 21));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 22));
talkEntry:addResponse("...Cause it beh dha Faddha's blood, inherited, which strengthen dha Orc and fortify dha spirit, his spirit beh in dha Orc, dha tie to ancestors...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 22));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...He will provide untamable blood frenzy in battle but he become also quick angreh, dhat reason for onle Shamans using his name.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Moshran");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 21));
talkEntry:addResponse("Moshran. Er ist der Schlachtenw�terich. Der Knochenbrecher. Der Blutgott. Er ist der Vater von jedem Ork, gleich wie der Ork der die Mutter belegen hat...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Knochbrecher");
talkEntry:addTrigger("Schlachtenw�ter");
talkEntry:addTrigger("Blutgott");
talkEntry:addTrigger("Vater");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 21));
talkEntry:addResponse("Moshran. Er ist der Schlachtenw�terich. Der Knochenbrecher. Der Blutgott. Er ist der Vater von jedem Ork, gleich wie der Ork der die Mutter belegen hat...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 21));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 22));
talkEntry:addResponse("...Denn es issigt Moshrans Blut, das ererbt, dem Ork st�rkt und den Geist kr�ftiget. Sein Geist ist im Ork. Er, ist das Seil zu den Ahnen...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 22));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Er bringigt dem Krieger den Blutrausch, in der Schlacht, doch ist er auch schnell erz�rnt. Dies der Grund ist,  nur Schamanen sprechen seinen Namen");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Bragon");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Say 'continue' to progress the tale or 'stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 24));
talkEntry:addResponse("Bragon, beh dha sun bringer, dha life provida. He beh strong in dummer, he rules ober dha strong and weak, he provide dha beautiful and precious...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 24));
talkEntry:addTrigger("continue");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("... Bragon beh god of holeh flames. His children beh dha dragons. Dragons standing whib green skin burn the incurable on dhea bodies.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Bragon");
talkEntry:addConsequence(npc.base.consequence.inform.inform("Sage 'weiter' um die Erz�hlung fortzusetzen oder 'Stop'."));
talkEntry:addConsequence(npc.base.consequence.state.state("=", 24));
talkEntry:addResponse("Bragon, ist der Sonnenbringer, der Lebenspender. Er ist Stark-im-Sommer.  Er gebietet �ber die Starken und Schwachen, er bringigt das Sch�ne und Edle...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.state.state("=", 24));
talkEntry:addTrigger("weiter");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("...Bragon ist Gott der heiligen Flammen. Seine Kinder sind die Drachen. Drachen die dem Ork zur Seite stehen, oder ihnen das Unheilbare auf den Leib brennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Mes don't sell anything, knucklehead!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Ich nix verkauf irgendwas, Schwachkopf!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Grimlug wissigt viele Geschichtens! Von der Sch�pfung, von G'rak und H'ref, von Geistern, von Schamanen oder den G�ttern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addConsequence(npc.base.consequence.state.state("=", 0));
talkEntry:addResponse("Ask Grimlug to tell about the Creation', G'rak and H'ref, the Spirits, Shamans or the gods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Grimlug");
talkEntry:addResponse("How, the shaman 's able to help you?");
talkEntry:addResponse("Hurr! What's your desire?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Grimlug");
talkEntry:addResponse("Wie kann dir der Schamane helfigen?");
talkEntry:addResponse("Hurr! Was issigt dein Begehr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("So shall it beings.");
talkEntry:addResponse("Well then...");
talkEntry:addResponse("Good - Mes feel the spirits arround you are kin of happy.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("So es sein solle.");
talkEntry:addResponse("Gut....");
talkEntry:addResponse("Ich sp�re die Geister um dich herum... sie heiter sind.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Hrmpf. Maybes you change your mind, eh?");
talkEntry:addResponse("Is that' so?");
talkEntry:addResponse("I don't think so.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Hrmpf. Vielleicht du �nderst deine Meinung, eh?");
talkEntry:addResponse("Ist das so'?");
talkEntry:addResponse("Das glaub ich nicht, nein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ch�. What you said?");
talkEntry:addResponse("#me grunts and nods. 'Mh-hm.'");
talkEntry:addResponse("Tagtha. - Tell mes more about that. Will you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Ch�. Was du gesagt hast?");
talkEntry:addResponse("#me grunzt und nickt. 'Mh-hm'");
talkEntry:addResponse("Tagtha. - Erz�hl mehr davon, tja-ha?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me streicht mit vernarbten Fingern �ber die Klinge seines Dolches.", "#me fondles his dagger with scarred fingers.");
talkingNPC:addCycleText("#me steckt seine Hand in einen Beutel voll Asche. Er l�sst ein wenig Asche in den schwachen Luftzug der H�hle davon riseln.", "#me puts his hand into a bag with ash. Next he allows weak draft inside of the cave to blow a little bit ash out of his hand.");
talkingNPC:addCycleText("#me nimmt einen Schluck aus einer kleinen schmuddeligen Flasche. Scharfer alkoholischer Dunst steigt in die Luft.", "#me takes a gulp from a grubby little bottle. A strong stench of alcohol fills the air.");
talkingNPC:addCycleText("#me steckt sich etwas Krraut zwischen die Z�hne und kaut darauf herum.", "#me puts some herbs into his mouth and champs on them.");
talkingNPC:addCycleText("#me fummelt etwas trockenes Baumharz aus seiner Manteltasche. Er reibt es zwischen den Fingern un df�r einen Moment ist dir als w�rde eine Flamme lodern. Dann macht sich ein wohliger, benebelnder Geruch breit.", "#me fumbles with some dried tree gum from inside his robe. He rubs it between his fingers and for a moment you think you saw a flame there, then a dazing haze appears.");
talkingNPC:addCycleText("#me r�ckt seine Kutte zurecht.", "#me adjusts his cowl.");
talkingNPC:addCycleText("#me bleckt seine Z�hne und leckt sich schmatzend �ber die Lippen.", "#me bares his teeth and licks with a smack of his lips.");
talkingNPC:addCycleText("Ehre die G�tter. Ehre den Vatha.", "Honour dha Gods. Honour dha Faddha.");
talkingNPC:addCycleText("#me streckt die Hand aus:'Ich f�hlige m�chtige Geister... um uns herum.'.", "#me holds his hand out, 'I feel mighte spirits...surrounding us.'");
talkingNPC:addCycleText("#me h�lt seine Hand �ber die Opferschale am Altar, diese beginnt augenblicklich merkw�rdig zu leuchten.", "#me places his hand upon the sacrificial basin. In the next moment it starts to glow in a strange way.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(5);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Grimlug der Schamane.", "This NPC is Grimlug the shaman.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 811);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 366);
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