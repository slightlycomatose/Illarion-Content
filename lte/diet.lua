-- Long Time Effect Script: Diet System
-- Effect ID: 12

require("item.food");
require("base.common");

module("lte.diet", package.seeall)

GermanAttributes = {
  ["constitution"] = "Ausdauer",
  ["strength"] = "St�rke",
  ["dexterity"] = "Geschicklichkeit",
  ["agility"] = "Schnelligkeit",
  ["intelligence"] = "Intelligenz",
  ["willpower"] = "Willenskraft",
  ["perception"] = "Wahrnehmung",
  ["essence"] = "Essenz"
};

function addEffect(dietEffect,Character)
  InformPlayer(dietEffect,Character);
end

function callEffect(dietEffect,Character)
	local curStamp = base.common.GetCurrentTimestamp();
  local foundExpire, buffExpireStamp = dietEffect:findValue("buffExpireStamp");
  if (not foundExpire) then
    Character:inform("[ERROR] No expire stamp found in callEffect. Removing buff. Please inform a developer.");
    return false;
  end
  if (curStamp >= buffExpireStamp) then
    return false;
  end
  dietEffect.nextCalled = (buffExpireStamp - curStamp)*10;
  return true;
end

function removeEffect(dietEffect,Character)
  -- inform the player that the buff ends
  base.common.InformNLS(Character,
  "[Ern�hrung] Die Wirkung des guten Essens vergeht.",
  "[Diet] The effect of the good food vanishes.");
  local foundBuff, buffType = dietEffect:findValue("buffType");
  if (foundBuff) then
    local foundBuffAmount, buffAmount = dietEffect:findValue("buffAmount");
    if (not foundBuffAmount) then
      -- should not happen
      Character:inform("[ERROR] Found buffType, but no buffAmount. Set to 1. Please inform a developer.");
      buffAmount = 1;
    end
    -- reset again the attributes
    for i=1,buffAmount do 
      local attrib = item.food.BUFFS[buffType][i];
      Character:setAttrib(attrib,math.max(1,Character:increaseAttrib(attrib,0)-1));
    end
  end
end

function loadEffect(dietEffect,Character)
  -- check for old values and remove them
  if dietEffect:findValue("constMod") then
    dietEffect:removeValue("constMod");
    dietEffect.nextCalled = 5;
  end
  if dietEffect:findValue("dom") then
    dietEffect:removeValue("dom");
    dietEffect.nextCalled = 5;
  end
  
  local foundBuff, buffType = dietEffect:findValue("buffType");
  if (foundBuff) then
    local foundBuffAmount, buffAmount = dietEffect:findValue("buffAmount");
    if (not foundBuffAmount) then
      -- should not happen
      Character:inform("[ERROR] Found buffType, but no buffAmount. Set to 1. Please inform a developer.");
      buffAmount = 1;
    end
    -- add 1 for each attribute of this buff
    for i=1,buffAmount do 
      local attrib = item.food.BUFFS[buffType][i];
      Character:setAttrib(attrib,Character:increaseAttrib(attrib,0)+1);
    end
  else
    dietEffect.nextCalled = 5;
  end
end

function InformPlayer(dietEffect, Character)
  local foundBuff, buffType = dietEffect:findValue("buffType");
  if (foundBuff) then
    local foundBuffAmount, buffAmount = dietEffect:findValue("buffAmount");
    if (not foundBuffAmount) then
      -- should not happen
      Character:inform("[Error] Found buffType, but no buffAmount. Set to 1. Please inform a developer.");
      buffAmount = 1;
    end
    if (buffAmount == 1) then
      local attrib = item.food.BUFFS[buffType][1];
	  Character:setAttrib(attrib,Character:increaseAttrib(attrib,0)+1);
      local gText = "[Ern�hrung] Durch das gute Essen erh�ht sich vor�bergehend folgendes Attribut um 1: ";
      if (GermanAttributes[attrib] ~= nil) then
        gText = gText .. GermanAttributes[attrib];
      else
        gText = gText .. attrib;
      end
      local eText = "[Diet] Due to your good food, the following attribute is temporarily increased by 1: " .. attrib;
      base.common.InformNLS(Character,gText,eText);
    else
      local attrib = item.food.BUFFS[buffType];
      local gText = "[Ern�hrung] Durch das gute Essen erh�hen sich vor�bergehend folgende Attribute um 1: ";
      local eText = "[Diet] Due to your good food, the following attributes are temporarily increased by 1: ";
      local attrib = item.food.BUFFS[buffType][1];
	  Character:setAttrib(attrib,Character:increaseAttrib(attrib,0)+1);
      eText = eText .. attrib;
      if (GermanAttributes[attrib] ~= nil) then
        gText = gText .. GermanAttributes[attrib];
      else
        gText = gText .. attrib;
      end
      attrib = item.food.BUFFS[buffType][2];
	  Character:setAttrib(attrib,Character:increaseAttrib(attrib,0)+1);
      eText = eText .. " and " .. attrib;
      if (GermanAttributes[attrib] ~= nil) then
        gText = gText .. " und " .. GermanAttributes[attrib];
      else
        gText = gText .. " und " .. attrib;
      end
      base.common.InformNLS(Character,gText,eText);
    end
  end
end