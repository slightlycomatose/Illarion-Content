--------------------------------------------------------------------------------
-- NPC Name: Hook Gowan                                                  None --
-- NPC Job:  trader                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  706, 308, 0            --
-- NPC Sex:  male                       NPC Direction: southwest              --
--                                                                            --
-- Author:   Rincewind                                                        --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 706, 308, 0, 5, 'Hook Gowan', 'npc.hook_gowan', 0, 1, 2, 28, 24, 23, 108, 65, 33);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.hook_gowan", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("Ah, so you are interested in my wares.");
talkEntry:addResponse("Take your time to look around.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kauf");
talkEntry:addTrigger("waren");
talkEntry:addTrigger("preis");
talkEntry:addTrigger("Handel");
talkEntry:addTrigger("ver�u�er");
talkEntry:addTrigger("erwerb");
talkEntry:addResponse("Ah, dann interessiert Ihr Euch also f�r meine Waren.");
talkEntry:addResponse("Schaut Euch ruhig in Ruhe um.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Hook Gowan a trader of The Hemp Necktie Inn . Keywords: buy, sell, trade, Nubris, Ronagan, King Edwards, tell something"));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Hook Gowan ein H�ndler im Gasthof zur Hanfschlinge. Schl�sselw�rter: kaufe, verkaufe, Handel, Nubris, Ronagan, K�nig Edwards, erz�hl etwas"));
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
talkEntry:addResponse("With one foot in the shadows, be greeted.");
talkEntry:addResponse("Good day, do you need something? I buy and sell exquisite third hand equipment.");
talkEntry:addResponse("Be greeted and take a look at my goods.");
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
talkEntry:addResponse("Mit einem Fu� im Schatten, zum Gru�e.");
talkEntry:addResponse("Guten Tag, braucht ihr etwas? Ich kaufe und verkaufe erlesene G�ter aus dritter Hand.");
talkEntry:addResponse("Seid gegr��t und kauft bei mir ein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("With one foot in shadows, be greeted.");
talkEntry:addResponse("Good day, do you need something? I buy and sell exquisite third hand equipment.");
talkEntry:addResponse("Be greeted and take a look at my goods.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Mit einem Fu� im Schatten, zum Gru�e.");
talkEntry:addResponse("Guten Tag, braucht ihr etwas? Ich kaufe und verkaufe erlesene G�ter aus dritter Hand.");
talkEntry:addResponse("Seid gegr��t und kauft bei mir ein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("May the shadows shelter you, adieu!");
talkEntry:addResponse("Good bye.");
talkEntry:addResponse("Safe travels, see you soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Die Schatten sollen Euch verbergen, lebt wohl.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("M�gen Euch die G�tter sch�tzen. Bis bald.");
talkEntry:addResponse("Sichere Reise, bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("May the shadows shelter you, adieu!");
talkEntry:addResponse("Good bye.");
talkEntry:addResponse("Safe travels, see you soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Die Schatten sollen Euch verbergen, lebt wohl.");
talkEntry:addResponse("Auf Wiedersehen.");
talkEntry:addResponse("M�gen Euch die G�tter sch�tzen. Bis bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("I'm alright, thanks,");
talkEntry:addResponse("The nobility sinks in decadence and the poor are hungry. Thanks to Ronagan, for sheltering our kind.");
talkEntry:addResponse("Hrmpf. Today I woke up having dreamt my hand was back, then I realised it was just a bad dream sent by Nargun.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befinden");
talkEntry:addResponse("Einigerma�en. Danke, der Nachfrage.");
talkEntry:addResponse("Der Adel ist der Dekadenz verfallen und der Rand der Gesellschaft muss hungern! Gedankt sei's Ronagan, das er unser eins dennoch beh�tet.");
talkEntry:addResponse("Hrmpf - Heute bin ich aufgewacht und glaubte meine Hand w�re mir wiedergegeben. - Anstelle des h�sslichen Hakens! Doch dann wurde mir klar, es war ein �bler Traum, den mir wohl Nargun gesannt hatte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("#me winks and raises his hooked hand, 'They call me Hook Gowan.'");
talkEntry:addResponse("#me's eyes twinkle, 'I'm Hook, seller of third hand equipment...'");
talkEntry:addResponse("Gowan. May name is Gowan - Sometimes I wish everyone would just call me Gowan.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("#me winkt mit seiner Hakenhand: 'Mann nennt mich Hook Gowan.'");
talkEntry:addResponse("#me zwinkert: 'Ich bin Hook, H�ndler aus dritter Hand, wenn ihr versteht was ich damit meine.'");
talkEntry:addResponse("Gowan. Ich hei�e Gowan. - Manchmal w�nsch ich mir, die Leute w�rden mich einfach nur Gowan nennen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hm-h. Honestly, I've got plenty of people working for me, therefore I can't hire you, I'm deeply sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hm-h. Ehrlich gesagt, hab ich schon ausreichend Leute die f�r mich arbeiten. Euch kann ich also nicht brauchen, tut mir Leid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Hm-h. Honestly, I've got plenty of people working for me, therefore I can't hire you, I'm deeply sorry.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Hm-h. Ehrlich gesagt, hab ich schon ausreichend Leute die f�r mich arbeiten. Euch kann ich also nicht brauchen, tut mir Leid.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("Once I was a thief myself. I stole whatever I needed to live, but nowadays I just sell the stuff and nobody in this great inn will ever try to forbid it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Fr�her stahl ich noch selbst meinen Lebensunterhalt zusammen. Aber heute verschachere ich das Zeug nur noch. Und hier im Gasthof kann mir auch keiner Verbieten das ganz offen zu sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("Once I was a thief myself. I stole whatever I needed to live, but nowadays I just sell the stuff and nobody in this great inn will ever try to forbid it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Fr�her stahl ich noch selbst meinen Lebensunterhalt zusammen. Aber heute verschachere ich das Zeug nur noch. Und hier im Gasthof kann mir auch keiner Verbieten das ganz offen zu sagen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("An old friend of mine lived on Gobaith once, but I haven't seen him in ages. Anyway... I do not think there are many people left living on Gobaith.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Ein alter Freund von mir lebte derweilen auf Gobaith. Aber ich hab ihn schon ewig nicht gesehen. Und ich glaub auch nicht das jetzt noch Leute dort leben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Alright, do you wish to buy something?");
talkEntry:addResponse("Well then, listen, if you don't ask any questions I will not lie to you. Agreed?");
talkEntry:addResponse("Superb!");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Alles klar. Wollt Ihr etwas ver�u�ern oder einkaufen?");
talkEntry:addResponse("In Ordnung. H�rt her - Ihr stellt keine Fragen und ich werde Euch nicht bel�gen.");
talkEntry:addResponse("Ausgezeichnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("third");
talkEntry:addTrigger("three");
talkEntry:addTrigger("goods");
talkEntry:addResponse("Goods from third hand! Aye. That means these things are used already.");
talkEntry:addResponse("#me laughs quietly, 'The third hand is mine, the second is the hand of the person who sold it to me and the first is the hand of the property owner.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("king");
talkEntry:addResponse("#me smirks with a hint of sadness, 'Years ago, I succeeded in stealing the nightdress of King Edwards. Soon they caught me though and the King ordered my hand to be chopped off and I was banned. That's why I'm here now and everyone calls me Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("edwards");
talkEntry:addResponse("#me smirks with a hint of sadness, 'Years ago, I succeeded in stealing the nightdress of King Edwards. Soon they caught me though and the King ordered my hand to be chopped off and I was banned. That's why I'm here now and everyone calls me Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Nubris");
talkEntry:addResponse("Well, my father lived in Nubris. I moved from Nubris, the golden jewel of the south, like they say in Salkamar. Many people there have a dark skin.");
talkEntry:addResponse(" Nubris! Well let me tell about my far away home... there lives an animal named Kawaaru, a giant lizard with a calm mind, used to lift and bear heavy goods.");
talkEntry:addResponse("I tend to say, kind of subjectively of course, Nubris is the most beautiful town of Illarion. The dome-shaped roofs can be seen from far away as they glow in the desert sun. A Circle of Elders are charged with ruling the town.");
talkEntry:addResponse("In Nubris it's too hot for heavy armour. Instead they use armours made of hard wood and thin stones.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("drei");
talkEntry:addTrigger("dritter");
talkEntry:addTrigger("dritt");
talkEntry:addTrigger("wahre");
talkEntry:addTrigger("g�ter");
talkEntry:addResponse("Wahre aus dritter Hand. Aye. Das hei�t die Sachen sind schon Mal benutzt worden.");
talkEntry:addResponse("#me lacht leise: 'Die dritte Hand ist meine, die Zweite geh�rt meinem Verk�ufer und die Erste dem Eigent�mer.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nig");
talkEntry:addResponse("#me schmunzelt traurig: 'Vor vielen Jahren gelang es mit das Nachthemd von K�nig Edwards zu stehlen. Doch man fasste mich kurz darauf, der K�nig lie� mir die Hand abhacken und verbannte mich. Nun bin ich hier und man nennt mich Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("edwards");
talkEntry:addResponse("#me schmunzelt traurig: 'Vor vielen Jahren gelang es mit das Nachthemd von K�nig Edwards zu stehlen. Doch man fasste mich kurz darauf, der K�nig lie� mir die Hand abhacken und verbannte mich. Nun bin ich hier und man nennt mich Hook Gowan.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("nubris");
talkEntry:addResponse("Tja, mein Vater lebte noch direkt in Nubris. Ich bin ausgezogen... Nurbis, das goldene Juwel des S�dens, wie es in Salkamar genannt wird. Viele Menschen dort, haben eine dunkle Haut.");
talkEntry:addResponse("In Nubris, lasst mich von meiner weit entfernten Heimat erz�hlen... - dort gibts es ein Tier, es hei�t Kawaaru. Eine riesige Echse mit sanften Gem�t. Welche zum tragen von schweren G�tern gen�tzt wird.");
talkEntry:addResponse("Ich will ganz subjektiv meinen Nubris ist die sch�nste Stadt Illarions. Weithin sind die vergoldeten Kuppeld�cher und die pr�chtigen goldgelben Granitbauten sichtbar. Au�erdem regiert ein �ltestenrat die Stadt.");
talkEntry:addResponse("In Nubris ist es viel zu hei� f�r hinderliche Lederr�stungen oder gar Stahl. Stattdessen verwendet man haupts�chlich leichte R�stplatten aus hartem Holz oder Schuppenpanzer aus stabilen Steinsorten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Those treehugers, looking like females, every single one of them. Are you able to differ elf and elfess?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Diese Baumkuschler, sehen alle aus wie Weibsvolk. F�llt mir immer schwer n' Elfen von ner Elfin zu unterscheiden. - Alle so Weibisch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Those treehugers, looking like females, every single one of them. Are you able to differ elf and elfess?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addTrigger("archmage");
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Diese Baumkuschler, sehen alle aus wie Weibsvolk. F�llt mir immer schwer n' Elfen von ner Elfin zu unterscheiden. - Alle so Weibisch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Hmm, let me think. I'm wanted in Runewick for three different crimes, so well, no more trips to the four towers for the man called Hook.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Hm-h, lasst mich nachdenken. In Runewick werde ich wegen drei verschiedener Verst��e gesucht. - Ich denke ich werde mich erst einmal eine Weile von dort fern halten. Ihr nicht auch?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ha! That tiny lecher should get a red cap so you can't oversee him while walking through grass anymore.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Ha! Diesem zu klein geratenen Lustmolch sollte man eine rote M�tze aufsetzen, damit man ihn nicht mehr so leicht �bersieht wenn er durchs Gras l�uft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Hui-ui! Galmair? Not even ten Ogres can make me go there again. I owe the Don a large amount of gold. Once he was forced to lend it out of his private treasury.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Hui-ui! Nach Galmair bringen mich keine zehn Oger! Ich schulde dem Don Guilianni eine beachtliche Summe Gold. Er hat es mir einst unfreiwilliger Weise aus seiner privaten Schatzkammer geliehen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("I won't guarantee it but they say the Queen is even more strict than her father. The old King, ordered my hand to be chopped off...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich kann es Euch nicht genau sagen, doch es hei�t Rosaline sei noch strikter als ihr Vater. Der alte K�nig, lie� mir ja einst die Hand abhacken...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("I won't guarantee it but they say the Queen is even more strict than her father. The old King, ordered my hand to be chopped off...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("k�nigin");
talkEntry:addTrigger("queen");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich kann es Euch nicht genau sagen, doch es hei�t Rosaline sei noch strikter als ihr Vater. Der alte K�nig, lie� mir ja einst die Hand abhacken...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("I was banned from Cadomyr years ago. I loved the town, after all I called it my home, but that's the way life goes, isn't it?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Ich bin vor vielen Jahren aus Cadomyr verbannt worden. Es war mir lieb, schlie�lich war die Stadt meine Heimat. Aber so l�uft das nun Mal.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Well Albar... I know some Albarians but each single one of them is a doltish louts or blockheads.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Ach Albar... Ich kenne einige Albarer, aber es sind allesamt dumme R�pel und Bauernk�pfe.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("The swamplands stink, Gynk stinks and Gnykese stink as well... Isn't that obvious?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Die Sumpflande stinken, Gynk stinkt und Gynkesen stinken ebenso. - Wie k�nnte es auch anders sein?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("In Salkamar the sun shines every single month of the year someone told me, of course not out of the sky but rather out of the buttocks of the Salkamarians!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("In Salkamar soll das liebe lange Jahr die Sonne scheinen, hat man mir gesagt. Allerdings nicht vom Himmel herab, sondern aus den Hinterteilen der Salkamarer.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("I would love to speak about Ronagan, so feel free to ask me about the Shadow Lord, whatever you want to know.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Ich will mit Euch �ber Ronagan sprechen, wenn ihr mehr �ber unseren Schattenherrn wissen wollt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan, the God of thieves and shadows! He promises shelter to everyone who lives in the shadow of so called high society");
talkEntry:addResponse("They say there is a shrine for the Shadow Lord somwhere in Galmair but when I went there I didn't find it.");
talkEntry:addResponse("My Lord despises the authority of the nobility, and like Ronagan himself, it's my aim to play tricks on them.");
talkEntry:addResponse("Sometimes he appears as a dark haired and clothed charming man, guarding those who are in need of a helping hand. He seems quite good humoured to me.");
talkEntry:addResponse("Ronagan dislikes betrayal. To betray a partner is a terrible deed and for sure the Shadow Lord will not overlook it.");
talkEntry:addResponse("They say there are traders who sacrifice part of their earnings to Ronagan, so he will shelter their goods.");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ronagan");
talkEntry:addResponse("Ronagan, Gott der Diebe und Schatten! Er beh�tet jene die im Schatten der Reichen und feinen Gesellschaft leben m�ssen.");
talkEntry:addResponse("Es hei�t es g�be einen Schrein f�r den Schattenherrn irgendwo in Galmair. Allerdings konnte ich nichts finden als ich danach suchte.");
talkEntry:addResponse("Mein Herr, verachtet die Autorit�t des Adels. Und wie er, lebe ich um Schabernak mit der dekadenten Obrigkeit zu treiben. ");
talkEntry:addResponse("Manch mal erscheint er als junger Galan, verkleidet, Vagabunden oder Landstreichern. Er soll durchaus humorvoll sein.");
talkEntry:addResponse("Ronagan verabscheut Vertrauensbruch oder Verrat. Einem Partner zu hintergehen ist eine schlimme Tat, f�r unsereins und der Schattenherr wird es gewiss nicht �bersehen.");
talkEntry:addResponse("Ich h�rte es gibt H�ndler die dem Schattenherrn opfern, damit sie nicht beraubt werden und er die Langfinger fern h�lt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("Stop questioning, nobody likes a snoopy one.");
talkEntry:addResponse("#me starts to smile broadly, 'Let me tell you I'm a bad lad. Years ago I stole the nightdress of old King Edwards.'");
talkEntry:addResponse("Once I was citizen of Cadomyr, then I got banned, obviously right after chopping my hand off.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("H�rt auf Fragen zu stellen, das sieht hier niemand gern.");
talkEntry:addResponse("#me setzt ein l�cheln auf und prahlt: 'Lasst Euch sagen, ich bin ein �bler Bursche. Vor langer Zeit stahl ich das Nachthemd K�nig Edwards.'");
talkEntry:addResponse("Einst war ich B�rger Cadomyrs, doch man hat mich verbannt. Zuvor verga� man allerdings nicht mir die Hand abzuhacken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Hook");
talkEntry:addTrigger("hand");
talkEntry:addResponse("Yes, I've got a hook instead of a hand. What's the matter?");
talkEntry:addResponse("No I'm not a pirate, I don't even like the sea... Too much sway and swinging... makes me sick.");
talkEntry:addResponse("The old King of Cadomyr chopped my hand off. True Story, lad.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gowan");
talkEntry:addTrigger("Hook");
talkEntry:addResponse("Ja, ich hab einen Haken an der Hand. Was wollt Ihr?");
talkEntry:addResponse("Nein ich bin kein Pirat. Ich mag nicht mal das Meer, von zu viel Geschaukle wird mir n�mlich immer �bel.");
talkEntry:addResponse("Der alte K�nig, Cadomyrs hat mir damals noch die Hand abgehackt. Ist wahr - ist wahr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("haken");
talkEntry:addTrigger("hand");
talkEntry:addResponse("Ja, ich hab einen Haken an der Hand. Was wollt Ihr?");
talkEntry:addResponse("Nein ich bin kein Pirat. Ich mag nicht mal das Meer, von zu viel Geschaukle wird mir n�mlich immer �bel.");
talkEntry:addResponse("Der alte K�nig, Cadomyrs hat mir damals noch die Hand abgehackt. Ist wahr - ist wahr.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Awesome, that's in my interest.");
talkEntry:addResponse("Yes! Yes-yes. There we go.");
talkEntry:addResponse("Superb!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Fein! Das kommt mir eigentlich ganz gelegen.");
talkEntry:addResponse("Ja! Ja-ja, so machen wir das.");
talkEntry:addResponse("Ausgezeichnet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("Aye.");
talkEntry:addResponse("Are you sure?");
talkEntry:addResponse("Really? Is that true?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Aye.");
talkEntry:addResponse("Seid ihr sicher?");
talkEntry:addResponse("Tats�chlich?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Listen, if you don't ask any questions I will not lie to you. Agreed?");
talkEntry:addResponse("Aha? Good to know.");
talkEntry:addResponse("Oh, that's quite interesting.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addTrigger(".*");
talkEntry:addResponse("Wenn Ihr keine Fragen stellt, werde ich Euch auch nicht bel�gen.");
talkEntry:addResponse("Soso? - Gut zu wissen.");
talkEntry:addResponse("Oh, das ist ja interessant.");
talkEntry:addResponse("Ein Schritt im Schatten und Einer �ber die Rinne...");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("#me hebt seine Hakenhand und kratzt sich mit der Spitze des Hakens am Hinterkopf. Er kneift die Augen zusammen und scheint einen Moment nachzudenken.", "#me raises his hook and scratches the back of his head. He narrows his eyes and seems to think for a moment.");
talkingNPC:addCycleText("#me h�ngt seinen Haken in den Gurt einer seiner Ledertaschen und hebt sie hoch, mit kritischem Blick mustert er die Tasche von allen Seiten.", "#me takes a leather bag with his hook and examines it closely.");
talkingNPC:addCycleText("#me betastet abwesend blickend, mit seiner gesunden Hand den Haken an seinem rechten Arm. ", "#me touches the hook replacing his right hand unconsciously with his healthy hand.");
talkingNPC:addCycleText("#me legt seinen Kopf schief.", "#me scratches his neck.");
talkingNPC:addCycleText("#me r�uspert sich unauff�llig.", "#me clears his throat quietly.");
talkingNPC:addCycleText("#me g�hnt ausgiebig und h�lt sich dabei den gl�nzenden Haken vor den Mund.", "#me yawns copiously, covering his mouth with his hook.");
talkingNPC:addCycleText("#me stemmt seine Arme in die Seiten und blickt mit zweifelnder Mimik durch den Raum.", "#me braces his arms akimbo and glances doubtfully across the room.");
talkingNPC:addCycleText("#me lehnt sich ein wenig zur�ck und atmet l�chelnd aus.", "#me leans back slightly and breaths out with a smile.");
talkingNPC:addCycleText("#me murmelt: 'Ein Schritt im Schatten und Einer �ber die Rinne, der Diebe Stern verbirgt sich am Gestirne.'", "#me mumbles, 'A step into the shadow and one over the roadside ditch, the thieves star is hiding upon the sky.'");
talkingNPC:addCycleText("#me wirft einen ungeduldigen Blick aus dem n�chst liegenden Fenster.", "#me eyes the window next to him, seemingly quite impatient.");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(7,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(27,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(49,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(55,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(183,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(363,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(369,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2295,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2445,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2664,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(3051,"sell"));
tradingNPC:addNotEnoughMoneyMsg("Oh, ich f�rchte Ihr k�nnt Euch das nicht leisten.", "Oh, I fear, you can not afford that.");
tradingNPC:addDialogClosedMsg("Vielen Dank, beehrt mich bald wieder!", "Thank you, please come again!");
tradingNPC:addDialogClosedNoTradeMsg("Auf Bald!", "Farewell!");
tradingNPC:addWrongItemMsg("Das kaufe ich nicht.", "I'm not buying this.");
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Ein verschmitzt drein blickender Mann mit Hakenhand. Er spricht mit hei�erer, kratziger Stimme.", "A astute man with a hook instead of a hand, gazes ahead, speaking with an hoarse, craggy voice.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 810);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 823);
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