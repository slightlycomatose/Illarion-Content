-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (79, 'quest.myrthe_mildthorn_79_runewick');
     
require("base.common")
module("quest.myrthe_mildthorn_79_runewick", package.seeall)
     
GERMAN = Player.german
ENGLISH = Player.english
     
-- Insert the quest title here, in both languages
Title = {}
Title[GERMAN] = "Eine H�hle im Wald"
Title[ENGLISH] = "A Cave in the Woods"
     
-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 10 W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][1] = "Go to the cave in the woods and kill ten wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][2] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 9 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][2] = "Go to the cave in the woods and kill nine more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][3] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 8 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][3] = "Go to the cave in the woods and kill eight more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][4] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 7 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][4] = "Go to the cave in the woods and kill seven more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][5] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 6 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][5] = "Go to the cave in the woods and kill six more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][6] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 5 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][6] = "Go to the cave in the woods and kill five more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][7] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 4 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][7] = "Go to the cave in the woods and kill four more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][8] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 3 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][8] = "Go to the cave in the woods and kill three more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][9] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 2 weitere W�lfe. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][9] = "Go to the cave in the woods and kill two more wolves in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][10] = "Gehe zur H�hle im Wald und t�te in ihrer N�he einen weiteren Wolf. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][10] = "Go to the cave in the woods and kill one more wolf in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][11] = "Kehre zur�ck zu Myrthe Mildthorn und berichte ihr von den W�lfen."
Description[ENGLISH][11] = "Return to Myrthe Mildthorn and tell her about the wolves."
Description[GERMAN][12] = "Kehre zur�ck zu Myrthe Mildthorn und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][12] = "Go back to Myrthe Mildthorn, she is sure to have another task for you." 
Description[GERMAN][13] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 5 Hunde. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][13] = "Go to the cave in the woods and kill five dogs in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][14] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 4 weitere Hunde. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][14] = "Go to the cave in the woods and kill four more dogs in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][15] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 3 weitere Hunde. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][15] = "Go to the cave in the woods and kill three more dogs in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][16] = "Gehe zur H�hle im Wald und t�te in ihrer N�he 2 weitere Hunde. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][16] = "Go to the cave in the woods and kill two more dogs in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][17] = "Gehe zur H�hle im Wald und t�te in ihrer N�he einen weiteren Hund. Kehre anchlie�end zu Myrthe Mildthorn zur�ck."
Description[ENGLISH][17] = "Go to the cave in the woods and kill one more dog in or near it. Return to Myrthe Mildthorn when you are done."
Description[GERMAN][18] =  "Kehre zur�ck zu Myrthe Mildthorn und berichte ihr von den Hunden."
Description[ENGLISH][18] = "Return to Myrthe Mildthorn and tell her about the dogs."
Description[GERMAN][19] = "Kehre zur�ck zu Myrthe Mildthorn und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][19] = "Go back to Myrthe Mildthorn, she is sure to have another task for you." 
Description[GERMAN][20] = "Gehe in den Wald und sucht die Spinne. Wenn man bedenkt dass Myrthe ein halbling ist wird diese riesige Spinne vielleicht doch nicht so gro� sein. Bedenke dass Spinnen sich auch etwas weiter n�rdlich zu suchen."
Description[ENGLISH][20] = "Go to woods and search for the spider. Considering Myrthe is a halfing this giant spider might not be that big. Keep in mind that spiders move about so you should probably search north of the web as well."
Description[GERMAN][21] = "Du hast alle Aufgaben von Myrthe Mildthorn erf�llt."
Description[ENGLISH][21] = "You have fulfilled all the tasks for Myrthe Mildthorn." 


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {785, 748, 0}

 
-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
QuestTarget = {}
QuestTarget[1] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[2] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[3] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[4] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[5] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[6] = {position(784, 772, 0), position (782, 711, 0)} -- Cave 
QuestTarget[7] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[8] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[9] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[10] = {position(784, 772, 0), position (782, 711, 0)} -- Cave
QuestTarget[11] = {position(784, 772, 0)}
QuestTarget[12] = {position(784, 772, 0)}
QuestTarget[13] = {position(784, 772, 0), position (753, 713, 0)} -- Cave
QuestTarget[14] = {position(784, 772, 0), position (753, 713, 0)} -- Cave
QuestTarget[15] = {position(784, 772, 0), position (753, 713, 0)} -- Cave
QuestTarget[16] = {position(784, 772, 0), position (753, 713, 0)} -- Cave
QuestTarget[17] = {position(784, 772, 0), position (753, 713, 0)} -- Cave
QuestTarget[18] = {position(784, 772, 0)}
QuestTarget[19] = {position(784, 772, 0)}
QuestTarget[20] = {position(785, 748, 0)}
QuestTarget[21] = {position(785, 748, 0)}


-- Insert the quest status which is reached at the end of the quest
FINAL_QUEST_STATUS = 22
     
     
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
