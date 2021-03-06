-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (69, 'quest.valandil_elensar_69_wilderness');

require("base.common")
module("quest.valandil_elensar_69_wilderness", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Elsbaumwald"
Title[ENGLISH] = "Elstree Forest"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel zehn Scheite Naldorholz und bringe diese Valandil Elensar. Um Holz zu sammeln, nimmst du das Beil in die Hand und benutzt es, w�hrend du vor einem Naldorbaum stehst."
Description[ENGLISH][1] = "Collect ten logs of naldor wood and take them back to Valandil Elensar. To collect the wood use the hatchet in your hand, whilst standing in front of a naldor tree."
Description[GERMAN][2] = "Geh zu Valandil Elensar im Elsbaumwald. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go back to Valandil Elensar in the Elstree Forest, he will certainly have another task for you."
Description[GERMAN][3] = "Sammel zwanzig Scheite Kirschholz und bringe diese Valandil Elensar. Um Holz zu sammeln, nimmst du das Beil in die Hand und benutzt es, w�hrend du vor einem Kirschbaum stehst."
Description[ENGLISH][3] = "Collect twenty logs of cherry wood and take them back to Valandil Elensar. To collect the wood use the hatchet in your hand, whilst standing in front of a cherry tree."
Description[GERMAN][4] = "Geh zu Valandil Elensar im Elsbaumwald. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go back to Valandil Elensar in the Elstree Forest, he will certainly have another task for you."
Description[GERMAN][5] = "Sammel f�nf Zweige und bringe diese Valandil Elensar. Um Zweige zu sammeln, nimmst du das Beil in die Hand und benutzt es, w�hrend du vor einem Kirschbaum stehst."
Description[ENGLISH][5] = "Collect five branches and take them back to Valandil Elensar. To collect branches use the hatchet in your hand, whilst standing in front of a cherry tree."
Description[GERMAN][6] = "Geh zu Valandil Elensar im Elsbaumwald. Er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Go back to Valandil Elensar in the Elstree Forest, he will certainly have another task for you."
Description[GERMAN][7] = "Besorge zehn B�ndel Getreide und bringe sie Valandil Elensar. Du kannst Getreide auf einem Feld anbauen und mit einer Sense ernten oder die Getreideb�ndel bei einem H�ndler kaufen."
Description[ENGLISH][7] = "Obtain ten bundles of grain and take them to Valandil Elensar. You can grow grain on a field and harvest it with a scythe or buy the bundles of grain from a merchant."
Description[GERMAN][8] = "Du hast alle Aufgaben von Valandil Elensar erf�llt."
Description[ENGLISH][8] = "You have fulfilled all the tasks for Valandil Elensar."

-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {840, 470, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(840, 470, 0), position(826, 464, 0)} -- Naldorbaum
QuestTarget[2] = {position(840, 470, 0)} 
QuestTarget[3] = {position(840, 470, 0), position(855, 463, 0)} -- Kirschbaum
QuestTarget[4] = {position(840, 470, 0)} 
QuestTarget[5] = {position(840, 470, 0), position(855, 463, 0)} -- Kirschbaum
QuestTarget[6] = {position(840, 470, 0)} 
QuestTarget[7] = {position(840, 470, 0), position(791, 798, 0), position(847, 828, 0), position(911, 798, 1), position(430, 261, 0), position(361, 266,0)} 
QuestTarget[8] = {position(840, 470, 0)} 

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
