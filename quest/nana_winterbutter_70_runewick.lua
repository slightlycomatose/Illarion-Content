-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (70, 'quest.nana_winterbutter_70_runewick');
     
require("base.common")
module("quest.nana_winterbutter_70_runewick", package.seeall)
     
GERMAN = Player.german
ENGLISH = Player.english
     
	 
-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Eibenthal"
Title[ENGLISH] = "Yewdale"
     
-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Baue Getreide an und bringe Nana zehn Getreideb�ndel. S�he daf�r Getreide auf dem Feld an und ernte das fertige Getreide mit einer Sense."
Description[ENGLISH][1] = "Produce ten bundles of grain and bring them back to Nana. You can seed grain on the fields and harvest the ripe grain with a scythe."
Description[GERMAN][2] = "Kehre zur�ck zu Nana Winterbutter und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][2] = "Go back to Nana Winterbutter, she is sure to have another task for you." 
Description[GERMAN][3] = "Besorge zwanzig Tomaten und bringe sie Nana. Tomaten kann man am Feld anpflanzen und mit der Sichel ernten."
Description[ENGLISH][3] = "Produce twenty tomatoes and bring them back to Nana. You can plant tomato seeds on the fields and harvest the ripe plants with a sickle." 
Description[GERMAN][4] = "Kehre zur�ck zu Nana Winterbutter und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][4] = "Go back to Nana Winterbutter, she is sure to have another task for you."  
Description[GERMAN][5] = "Besorge f�nf Zwiebeln und bringe sie Nana. Zwiebeln kann man am Feld anpflanzen und mit der Sichel ernten."
Description[ENGLISH][5] = "Produce five onions and bring them back to Nana. You can plant onion seeds on the fields and harvest the ripe plants with a sickle."  
Description[GERMAN][6] = "Kehre zur�ck zu Nana Winterbutter und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][6] = "Go back to Nana Winterbutter, she is sure to have another task for you." 
Description[GERMAN][7] = "Besorge zehn Fische und bringe sie Nana. Stelle dich ans Wasser und benutze die Angel um Fische zu fangen."
Description[ENGLISH][7] = "Obtain ten fish and bring them back to Nana. To fish, place yourself next to the water and use a fishing rod."
Description[GERMAN][8] = "Du hast alle Aufgaben von Nana Winterbutter erf�llt."
Description[ENGLISH][8] = "You have fulfilled all the tasks for Nana Winterbutter." 


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {791, 798, 0}
 
-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(847, 828, 0), position (791, 798, 0)} -- Feld
QuestTarget[2] = {position(791, 798, 0)}
QuestTarget[3] = {position(847, 828, 0), position (791, 798, 0)} -- Feld
QuestTarget[4] = {position(791, 798, 0)} 
QuestTarget[5] = {position(847, 828, 0), position (791, 798, 0)} -- Feld
QuestTarget[6] = {position(791, 798, 0)} 
QuestTarget[7] = {position(833, 863, 0), position(791, 798, 0)} -- Angelpunkt
QuestTarget[8] = {position(791, 798, 0)}
     
-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 8
     
     
function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end
     
function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""
     
    return base.common.GetNLS(user, german, english)
end

function QuestStart()
    return Start
end
     
function QuestTargets(user, status)
    return QuestTarget[status]
end
     
function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end
