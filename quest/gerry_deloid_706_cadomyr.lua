-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (706, 'quest.gerry_deloid_706_cadomyr');

require("base.common")
require("base.factions")
module("quest.gerry_deloid_706_cadomyr", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Das Kerzenziehen"
Title[ENGLISH] = "Candle making"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel 20 Honigwaben f�r Gerry Deloid bei der Werkstatt von Cadomyr. Die Bienenst�cke stehen auf den Tischen vor ihm."
Description[ENGLISH][1] = "Collect twenty honeycombs for Gerry Deloid at the workshop in Cadomyr. The beehives are on the table in front of him."
Description[GERMAN][2] = "Geh zu Gerry Deloid bei der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][2] = "Go to Gerry Deloid at the workshop in Cadomyr, he is sure to have another task for you."
Description[GERMAN][3] = "Stell 20 St�ck Wachs beim Kerzenziehertisch her und zeig diese Gerry Deloid bei der Werkstatt von Cadomyr. Der Tisch befindet sich in der Werkstatt, neben den Glasschmelz�fen. Um das Wachs herzustellen musst du die Zange in die Hand nehmen und den Tisch anschlie�end benutzen."
Description[ENGLISH][3] = "Produce twenty pieces of wax at the chandler table in the workshop of Cadomyr and show these to Gerry Deloid. The table is in the workshop next to the glass melting ovens. To produce the wax you have to take the crucible-pincers in your hand and then use the table."
Description[GERMAN][4] = "Geh zu Gerry Deloid bei der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][4] = "Go to Gerry Deloid at the workshop in Cadomyr, he is sure to have another task for you."
Description[GERMAN][5] = "Stell mittels der Kerzenform zehn Kerzen beim Kerzenziehertisch in Cadomyr her und bringe diese zu Gerry Deloid bei der Werkstatt von Cadomyr. Um die Kerzen herzustellen musst du die Kerzenform in die Hand nehmen und diese benutzen."
Description[ENGLISH][5] = "Produce ten candles using the candle mould at the chandler table in the workshop for Gerry Deloid. To produce the candles you have to take the candle mold in your hand and use it whilst staying in front of the chandler table."
Description[GERMAN][6] = "Geh zu Gerry Deloid bei der Werkstatt von Cadomyr, er hat bestimmt noch eine Aufgabe f�r dich."
Description[ENGLISH][6] = "Go to Gerry Deloid at the workshop in Cadomyr, he is sure to have another task for you."
Description[GERMAN][7] = "Stell mittels schwarzer Disteln zwei Flaschen Lampen�l an der �lpresse in Cadomyr her und bring diese zu Gerry Deloid. Schwarze Disteln kannst du finden, wenn du auf felsigem Boden in Grasb�scheln mit der Sichel in der Hand suchst. Benutz dabei die Sichel in der Hand, w�hrend du vor dem Grass stehst. F�r eine Flasche Lampen�l brauchst du zwei schwarze Disteln."
Description[ENGLISH][7] = "Produce two bottles of lamp oil with black thistles at the press in Cadomyr and take them to Gerry Deloid. You can find black thistles if you search the patches of grass on rocky ground, whilst holding the sickle in your hand. Use the sickle in your hand whilst standing in front of the grass to gather the thistles. For one bottle of lamp oil you will need two black thistles."
Description[GERMAN][8] = "Du hast alle Aufgaben von Gerry Deloid erf�llt."
Description[ENGLISH][8] = "You have fulfilled all the tasks for Gerry Deloid."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {126, 572, 0}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(126, 572, 0), position(125, 574, 0)} -- Beehives
QuestTarget[2] = {position(126, 572, 0)} 
QuestTarget[3] = {position(126, 572, 0), position(138, 582, 0)} -- Chandler table
QuestTarget[4] = {position(126, 572, 0)} 
QuestTarget[5] = {position(126, 572, 0), position(138, 582, 0)} -- Chandler table
QuestTarget[6] = {position(126, 572, 0)} 
QuestTarget[7] = {position(126, 572, 0), position(87, 630, 0)} -- Grass
QuestTarget[8] = {position(126, 572, 0)} 

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

function QuestAvailability(user, status)
    if base.factions.isCadomyrCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end
