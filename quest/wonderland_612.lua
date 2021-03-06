-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (612, 'quest.wonderland_612');

require("base.common")
module("quest.wonderland_612", package.seeall)

GERMAN = Player.german
ENGLISH = Player.english

-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Gefangen im Wunderland"
Title[ENGLISH] = "Trapped in the Wonderland"

-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Um zu entkommen lese dir sorgf�ltig die Anweisungen der Stimmen durch und achte darauf, aus welcher Himmelsrichtung sie kommen.\nEs empfiehlt sich ebenfalls erst zu �berlegen und dann zu agieren, anstelle wild und zufällig herumzulaufen."
Description[ENGLISH][1] = "In order to escape, you have to read the instructions given by the voices carefully and pay attention to the cardinal direction of the voice.\nIt is also recommended to think first and then to run instead of running mad and haphazardly."
Description[GERMAN][2] = "Du bist erfolgreich dem Geist entkommen. Gl�ckwunsch!\nWom�glich wirst du die Stimme des Geists noch einmal h�ren. Keine Angst, er wird dir nichts mehr anhaben."
Description[ENGLISH][2] = "You have successfully escaped. Congratulations!\nProbably, you will hear the voice of the ghost one more time. Don't worry, he is not going to harm you anymore."
Description[GERMAN][3] = "Du bist erfolgreich dem Geist entkommen. Gl�ckwunsch!"
Description[ENGLISH][3] = "You have successfully escaped. Congratulations!"

-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[2] = {{890,596,0}, {876,590,0}, {878,562,0}}

-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 3


function QuestTitle(user)
    return base.common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end

function QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""

    return base.common.GetNLS(user, german, english)
end

function QuestTargets(user, status)
    return QuestTarget[status]
end

function QuestFinalStatus()
    return FINAL_QUEST_STATUS
end
