-- script to put lights on and off
-- off items: save old wear value in data (+1000)
--				if data is <1000, set to default wear or keep current (if there's no requirement, e.g. for a torch)
-- on items: save old wear value in data (+500)
--				if data is <500, set wear to 255 or default portable wear
-- special data for on items: 2 => do not give anything back (e.g. a night watchman has put it on)
require("base.common")
require("base.lookat")

module("item.lights", package.seeall)

-- UPDATE common SET com_script='item.lights' WHERE com_itemid IN (92, 397, 393, 394, 2856, 2855, 391, 392, 401, 402, 403, 404, 2851, 2852, 2853, 2854, 399, 400, 395, 396);

PORTABLE_WEAR = 10; -- default wear value for portable items, when put off
DEFAULT_WEAR = 10; -- default wear value for light sources, when put on

LightsOff = {};
LightsOn = {};
-- torch
LightsOff[391] = { on = 392 };
LightsOn[392] = { off = 391, portable = true };
-- torch holder
LightsOff[401] = { on = 402, req = { id = 392, num = 1 } }; -- facing south
LightsOn[402] = { off = 401, back = 392 };
LightsOff[403] = { on = 404, req = { id = 392, num = 1 } }; -- facing west
LightsOn[404] = { off = 403, back = 392 };
-- candles
LightsOff[2853] = { on = 2851, req = { id = 43, num = 3 } }; -- facing south
LightsOn[2851] = { off = 2853 };
LightsOff[2854] = { on = 2852, req = { id = 43, num = 3 } }; -- facing west
LightsOn[2852] = { off = 2854 };
-- candle
LightsOff[399] = { on = 400, req = { id = 43, num = 1 } };
LightsOn[400] = { off = 399, portable = true };
-- oil lamp
LightsOff[92] = { on = 397, req = { id = 390, num = 1 } };
LightsOn[397] = { off = 92, portable = true };
-- oil lamp holder
LightsOff[395] = { on = 396, req = { id = 390, num = 1 } };
LightsOn[396] = { off = 395 };
-- lantern
LightsOff[393] = { on = 394, req = { id = 43, num = 1 } }; -- black, portable
LightsOn[394] = { off = 393, portable = true };
LightsOff[2856] = { on = 2855, req = { id = 43, num = 1 } }; -- grey, static
LightsOn[2855] = { off = 2856 };

ReqTexts = {};
ReqTexts.german = { [392] = "Fackeln", [43] = "Kerzen", [390] = "Lampen�l" };
ReqTexts.english = { [392] = "torches", [43] = "candles", [390] = "lamp oil" };

function UseItem(User, SourceItem, ltstate)

	if SourceItem:getType()==1 or SourceItem:getType()==2 then
		base.common.InformNLS(User,
			"Nimm die Lichtquelle in die Hand oder lege sie am G�rtel ab.",
			"Take the light source into your hand or put it on your belt.");
		return;
	end
	
	if SourceItem.number > 1 then
	    User:inform("Du kannst immer nur eine Lichtquelle auf einmal anz�nden.",
					"You can only light up one light source at once.")
		return
	end

--Noobia addition by Estralis: Lighting a torch is a task of NPC Aldania

    if User:getQuestProgress(310)==4 and SourceItem.id==391 and User:isInRangeToPosition((position (52,24,100)),20) then --only invoked if the user has the quest, uses a torch and is in range of the NPC
		User:setQuestProgress(310,5); --Connection to easyNPC
		NPCList=world:getNPCSInRangeOf(position(52,24,100),1); --Let's be tolerant, the NPC might move a tile.
		for i, Aldania in pairs(NPCList) do
		    base.common.TalkNLS(Aldania, Character.say, "Die Finsternis verhei�t meist nichts Gutes. Du solltest immer eine Lichtquelle dabei haben, wenn du in die Dunkelheit hinaus reist oder alte Gem�uer untersuchst. Hier trennen sich nun unsere Wege, lauf einfach weiter die Stra�e hinunter zu diesem Wilden, Groknar. Er wird dich in die Kriegskunst einf�hren.", "The darkness can be a real obstacle in Illarion. You should remember to carry a light source when travelling by night, and when exploring caves and dungeons. Well, this is where we part company. Run along to that savage, Groknar, down the road. He will train you in the art of combat.");
		end
	end

--Noobia end
	local this = LightsOff[SourceItem.id];
	if this then
		local ok, wear = checkReq(User,SourceItem,this)
		if ok then

            --Quest 105: NPC Gregor Remethar "A light at the end of the tunnel"

            if SourceItem.id == 395 and (SourceItem.pos == position (906, 823, -3) or SourceItem.pos == position (906, 825, -3) ) and User:getQuestProgress(105) == 1 then
                base.common.InformNLS(User, "[Queststatus] Du entfachst die Ehrenfeuer von Runewick. Kehre zu Gregor Remethar zur�ck, um deine Belohnung einzufordern.", "[Quest status] You lit the lights of honour of Runewick. Return to Gregor Remethar to claim your reward.")
                User:setQuestProgress(105,2);
				putOn(SourceItem,math.random(20,60),false); --these lights burn quite long
            else

            --Quest end, default below

			    putOn(SourceItem,wear,false);

			end
			
		elseif this.req then
			base.common.InformNLS(User,
				"Daf�r brauchst du ".. ReqTexts.german[this.req.id] .. " in der Hand oder im G�rtel.",
				"You need ".. ReqTexts.english[this.req.id] .. " in your belt or hands to do that.");
		end
	elseif LightsOn[SourceItem.id] then
	
	--Issue #6881: Estralis removed the option to put out lights. Reason: New rot system restores wear value after moving the item. Could be abused.
	--[[	this = LightsOn[SourceItem.id];
		if this.back then
			giveBack(User,SourceItem,this)
		end
		putOff(SourceItem,this);]]
	
	--Replacement: An inform. Remove this if you re-enable putting out fires.
	base.common.InformNLS(User,"Du verbrennst dir die Finger beim Versuch, das Feuer zu ersticken.","You burn your fingers while trying to extinguish the flames.");
	--Issue #6881 END
	
	end
end

function checkReq(User, Item, this)
	local wear = -1;
	if getLightData(Item)>=1000 then
		-- item has already been used and old wear is saved in data
		wear = getLightData(Item)-1000;
	elseif this.req then
		-- there's a requirement, check on body and belt
		if ( User:countItemAt("body", this.req.id) + User:countItemAt("belt", this.req.id) >= this.req.num ) then
			wear = 0;
			local myItem;
			local itemRest = this.req.num;
			for i=1,17 do
				myItem = User:getItemAt( i );
				if ( myItem.id == this.req.id ) then
					wear = wear + myItem.wear; -- save wear for torches
					world:erase( myItem, math.min( itemRest, myItem.number ) );
					itemRest = itemRest - math.min( itemRest, myItem.number );
					if itemRest == 0 then
						break;
					end
				end
			end
			if this.req.id~=392 then
				-- use default wear for all non-torch-requirements
				wear = DEFAULT_WEAR;
			end
		end
	else
		-- no requirement
		wear = Item.wear;
	end
	return (wear>=0), wear;
end

-- CURRENTLY DEACTIVATED
-- give something back
function giveBack(User, Item, this)
	if tonumber(Item:getData("lightData"))==2 then -- a night watchman has put on that light, give nothing back
		base.common.InformNLS(User,
			"Das Licht erlischt in dem Moment, als du danach greifst.",
			"The light goes off in the very moment you reach out for it.")
		return;
	end
	local myItem=nil;
	local finalItem = nil;
	if User:createItem(this.back,1,333,15734) == 0 then
		for i=1,17 do
			myItem = User:getItemAt( i );
			if ( myItem.id == this.back and tonumber(myItem:getData("lightData"))==15734 ) then
				finalItem = myItem;
				break;
			end
			myItem = nil;
		end
		if not finalItem then
			-- item is in backpack. Erase it and create an unlit item with proper data value
			local theBackpack=User:getBackPack();
			if theBackpack~=nil then
				local i = 0;
				local worked = true;
				local thisCont;
				repeat
					i = i + 1;
					worked,myItem,thisCont=theBackpack:viewItemNr(i);
					if worked then
						if ( myItem.id == this.back and tonumber(myItem:getData("lightData"))==15734 ) then
							theBackpack:takeItemNr(i,1);
							User:createItem(LightsOn[this.back].off,1,333,Item.wear+1000);
							break;
						end
					end
				until not worked;
			end
		end
	else
		finalItem = world:createItemFromId(this.back,1,User.pos,true,333,1);
	end
    if finalItem then
        finalItem:setData("lightData", 1);
        finalItem.wear = Item.wear;
        world:changeItem(finalItem);
    end

end

function putOn(Item, newWear, noBack)

	if noBack then
		setLightData(Item, 2); -- give nothing back
	else
		setLightData(Item, Item.wear + 500); -- save old wear value
	end
	Item.id = LightsOff[Item.id].on;
	Item.wear = newWear;
	world:changeItem(Item);
end

function putOff(Item, this)
	local oldWear = Item.wear;
	if getLightData(Item) >= 500 then
		-- item has already been used and old wear value is saved in data
		Item.wear = getLightData(Item) - 500;
	elseif this.portable then
		Item.wear = PORTABLE_WEAR;
	else
		Item.wear = 255;
	end
	if this.back then
		-- old wear value is already saved, as we've given a torch to the user
		setLightData(Item, 0);
	else
		-- save old wear value in data
		setLightData(Item, oldWear + 1000);
	end
	Item.id = this.off;
	world:changeItem(Item);
end

function MoveItemAfterMove(User,SourceItem,TargetItem)
	-- Quest 305: we burn a tabacco plantaion
    
	if User:getQuestProgress(305) == 2 then
		if (TargetItem.pos.x >= 3) and (TargetItem.pos.x <= 6) and (TargetItem.pos.y >= 565) and (TargetItem.pos.y <= 571) and (TargetItem.pos.z <= 0) then
		    local spawnFire = function(posi) 
				world:createItemFromId(359,1,posi,true,333,nil)
			end
			world:makeSound(7,position(5,568,0))
			world:createItemFromId(359,1,position(5,568,0),true,333,nil)
			base.common.CreateCircle(position(5,568,0), 1, spawnFire)
			base.common.CreateCircle(position(5,568,0), 2, spawnFire)
			User:setQuestProgress(305,3)
			User:inform("Du hast das Tabakfeld zerst�rt. Gut gemacht. Spreche nun mit Tobis Vunu.","You destroyed the tabacco field. Well done. Talk to Tobis Vunu now.")
	    end
	end	
	
	-- I comment the following out, because In think it is not neccessary to actually delete the plants
	-- furthermore, if we just spawn fire and let it rot, we don't have to replace the plants by using a scheduled script. Merung
	--[[
	 local fld=world:getField(TargetItem.pos);
	local cnt=fld:countItems();
	
	if (SourceItem.id == 392 ) then
		if User:getQuestProgress(305) == 2 then
			if ((3 <= TargetItem.pos.x) or (TargetItem.pos.x <= 6)) and ((565 <= TargetItem.pos.y) or (TargetItem.pos.y <= 571)) and (TargetItem.pos.z == 0) then -- is it the right plantaion?
				for i=0, cnt-1 do
					TheItem=fld:getStackItem(i);
					if (TheItem.id==775) then -- did the torch landed on a tobacco plant?
						world:erase(TargetItem,1)
						for j=1,4 do 
							PositionX = 3 + j - 1
							for k=1,12 do
								PositionY = 565 + k - 1
								TheItem = world:getItemOnField(position(PositionX,PositionY,0))
								if TheItem.id == 775 then
									world:erase(TheItem,1)
								end
							end	
						end
					end
				end
			end
	    end
	end   ]]
return
end
   
function LookAtItem(User, Item)
	local ItemName = world:getItemName(Item.id, User:getPlayerLanguage());
	local TimeLeftI;
	if(LightsOn[Item.id]) then
		TimeLeftI = Item.wear;
	elseif (LightsOff[Item.id]) then
		if (getLightData(Item) >= 1000) then
			TimeLeftI = getLightData(Item) - 1000;
		else
			TimeLeftI = PORTABLE_WEAR;
		end
	end
	
	if(TimeLeftI == 255) then
		TimeLeft = base.common.GetNLS(User, "Sie wird nie ausbrennen.", "It will never burn down.");
	elseif (TimeLeftI == 0) then
		TimeLeft = base.common.GetNLS(User, "Sie wird sofort ausbrennen.", "It will burn down immediately.");
	elseif (TimeLeftI == 1) then
		TimeLeft = base.common.GetNLS(User, "Sie wird demn�chst ausbrennen.", "It will burn down anytime soon.");
	elseif (TimeLeftI == 2) then
		TimeLeft = base.common.GetNLS(User, "Sie wird bald ausbrennen.", "It will burn down soon.");	
	elseif (TimeLeftI <= 4) then
		TimeLeft = base.common.GetNLS(User, "Sie wird nach einer Weile ausbrennen.", "It will burn down in a while.");
	elseif (TimeLeftI <= PORTABLE_WEAR) then
		TimeLeft = base.common.GetNLS(User, "Sie wird nicht allzu bald ausbrennen.", "It will not burn down anytime soon.");
	elseif (TimeLeftI >= PORTABLE_WEAR) then
		TimeLeft = base.common.GetNLS(User, "Sie wird nach langer Zeit ausbrennen.", "It will burn down in a long time.");
	end	
	
	base.lookat.SetSpecialDescription(Item, TimeLeft, TimeLeft);
	world:itemInform(User, Item, base.lookat.GenerateLookAt(User, Item, base.lookat.NONE));
end

-- dirty quick fix for old data
function getLightData(Item)
  local str = Item:getData("lightData");
  if (str == "") then
    setLightData(Item, 0);
    return 0;
  end
  return tonumber(str);
end

function setLightData(Item, Num)
  Item:setData("lightData", "" .. Num);
end
