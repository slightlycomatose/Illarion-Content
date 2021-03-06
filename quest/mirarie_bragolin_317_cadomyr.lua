-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (317, 'quest.mirarie_bragolin_317_cadomyr');

require("base.common")
require("base.factions")
module("quest.mirarie_bragolin_317_cadomyr", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Geschichte schreiben"
Title[ENGLISH] = "Writing History"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Besorge f�nf Wasserflaschen und bringe sie Mirarie. Du kannst sie bei einem H�ndler kaufen oder gro�e leere Flaschen an einem Brunnen oder Gew�sser f�llen."
Description[ENGLISH][1] = "Get five bottles of water and bring them to Mirarie. You can buy them from a merchant or fill a large empty bottle from a fountain, stream, or lake."
Description[GERMAN][2] = "Geh zu Mirarie Bragolin in Cadomyr. Sie hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go back to Mirarie Bragolin in Cadomyr, she certainly has another task for you."
Description[GERMAN][3] = "Sprich Thomas Dalenus auf dem Marktplatz von Cadomyr wegen des Briefes an."
Description[ENGLISH][3] = "Talk to Thomas Dalenus on the market place of Cadomyr concerning the letter."
Description[GERMAN][4] = "Kehre zu Mirarie zur�ck."
Description[ENGLISH][4] = "Return to Mirarie."
Description[GERMAN][5] = "Geh zu Mirarie Bragolin in Cadomyr. Sie hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][5] = "Go back to Mirarie Bragolin in Cadomyr, she certainly has another task for you."
Description[GERMAN][6] = "Sprich Grakamesh an der Mauer von Cadomyr wegen der Nachricht an."
Description[ENGLISH][6] = "Talk to Grakamesh, just outside the walls of Cadomyr, concerning the message."
Description[GERMAN][7] = "Kehre zu Mirarie zur�ck."
Description[ENGLISH][7] = "Return to Mirarie."
Description[GERMAN][8] = "Geh zu Mirarie Bragolin in Cadomyr. Sie hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][8] = "Go back to Mirarie Bragolin in Cadomyr, she certainly has another task for you."
Description[GERMAN][9] = "Sprich William Daloire, einem Kr�uterkundigen aus Runewick, wegen der Nachricht an."
Description[ENGLISH][9] = "Talk to William Daloire, an herbalist in Runewick, concerning the message."
Description[GERMAN][10] = "Kehre zu Mirarie zur�ck."
Description[ENGLISH][10] = "Return to Mirarie."
Description[GERMAN][11] = "Geh zu Mirarie Bragolin in Cadomyr. Sie hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][11] ="Go back to Mirarie Bragolin in Cadomyr, she certainly has another task for you."
Description[GERMAN][12] = "Sprich Valerio Guilianni, den Don von Galmair, wegen der Nachricht an."
Description[ENGLISH][12] = "Talk to Don Valerio Guilianni in Galmair concerning the message."
Description[GERMAN][13] = "Kehre zu Mirarie zur�ck."
Description[ENGLISH][13] = "Return to Mirarie."
Description[GERMAN][14] = "Du hast alle Aufgaben von Mirarie Bragolin erf�llt."
Description[ENGLISH][14] = "You have fulfilled all the tasks for Mirarie Bragolin."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {128, 621, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(128, 621, 0), position(113, 574, 0), position(117, 607, 0)} 
QuestTarget[2] = {position(128, 621, 0)} 
QuestTarget[3] = {position(128, 621, 0), position(113, 611, 0)} 
QuestTarget[4] = {position(128, 621, 0)} 
QuestTarget[5] = {position(128, 621, 0)} 
QuestTarget[6] = {position(128, 621, 0), position(133, 638, 0)}
QuestTarget[7] = {position(128, 621, 0)} 
QuestTarget[8] = {position(128, 621, 0)} 
QuestTarget[9] = {position(128, 621, 0), position(897, 794, 1)} 
QuestTarget[10] = {position(128, 621, 0)} 
QuestTarget[11] = {position(128, 621, 0)}
QuestTarget[12] = {position(128, 621, 0), position(337, 215, 0)} 
QuestTarget[13] = {position(128, 621, 0)}
QuestTarget[14] = {position(128, 621, 0)}

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 14


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

function QuestAvailability(user, status)
    if base.factions.isCadomyrCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end
