--[[
Effect to keep track of the arena monster.

lte ID = 18

author: Lillian
]]

require("base.common")
require("base.arena")


module("lte.arena", package.seeall)

function addEffect(arenaEffect, User)
    found, level=arenaEffect:findValue("level");
	found, arena=arenaEffect:findValue("arenaID");
    if not found then
        return false;
    end
	if isValidChar(User) then
		base.arena.spawnMonster(User, level, arena);
		return true;
	end
end

function callEffect(arenaEffect, User)
    if (User:increaseAttrib("hitpoints",0) == 0) then
        base.common.InformNLS( User,
        "Ihr habt den Kampf verloren. Ihr bekommt keine Punkte.",
        "You lost the fight. You gained no points.");
        return false;
    end

    arenaEffect.nextCalled = 30;

    local found;
    local arena;
	local level;
	
	found, arena = arenaEffect:findValue("arenaID");
	found, level = arenaEffect:findValue("level");
	
    if not found then
        return false;      -- no monster
    end

    if base.arena.checkMonster( User ) then
        base.common.InformNLS( User,
        "Ihr habt Euren Gegner geschlagen und Punkte verdient.",
        "You defeated your enemy and gained points for it.");
		base.arena.setArenastats(User, arena, base.arena.monsterIDsByLevel[level].points);
		local quest = base.arena.arenaInformation[arena].quest;
		base.arena.getReward(User, quest)
		local town = base.arena.arenaInformation[arena].town;
		local arenaListName = "ArenaList"..town;
		local points = User:getQuestProgress(quest);
		base.ranklist.setRanklist(User, arenaListName, points);

		
		if base.arena.arenaInformation[arena].newPlayerPos ~= nil then
			User:warp(base.arena.arenaInformation[arena].newPlayerPos);
		end
        return false;
    end
	
	if arenaEffect.numberCalled==300 then
        base.common.InformNLS( User,
        "Ihr habt zulange gebraucht, um das Monster zu besiegen.",
        "It took you too long to defeat the monster.");
        return false;
    end
	
    return true;
end

function removeEffect(arenaEffect, User)
    base.arena.killMonster( User );
    return false;
end

function loadEffect(arenaEffect, User)
    return false;
end
