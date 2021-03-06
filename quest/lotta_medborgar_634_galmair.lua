-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (634, 'quest.lotta_medborgar_634_galmair');

require("base.common")
module("quest.lotta_medborgar_634_galmair", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Sibanac f�r Lotta Medborgar in Galmair"
Title[ENGLISH] = "Sibanac for Lotta Medborgar in Galmair"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Finde Lotta Medborgar in Galmair und bringe ihr die Sibanacbl�tter, um deine Belohnung zur erhalten."
Description[ENGLISH][1] = "Try to find Lotta Medborgar in Galmair and take her the sibanac leaves to get your reward."
Description[GERMAN][2] = "Du hast Lotta gefunden. Wenn du m�chtest, kannst du nun mit ihr sprechen. Frage sie nach 'Hilfe' wenn du nicht wei�t, wonach du fragen sollst!\nSie kann dir einiges �ber die nordwestliche Karte von Illarion verraten."
Description[ENGLISH][2] = "You have found Lotta. If you like, you can talk with her now. Ask for 'help' if you do not know what to say!\nShe can provide you with information about the north-western part of Illarion."


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {}


-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(344, 249, 0)} -- entrance taverne (Scoria Mine)
--QuestTarget[1] = {position(393, 326, -5)} -- Lotta (If set active, it would confuse a newbie because the lower levels of Galmair are not on the same spot as the surface level)

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 2


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
