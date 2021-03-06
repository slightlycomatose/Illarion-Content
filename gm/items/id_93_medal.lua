
-- UPDATE common SET com_script='gm.items.id_93_medal' WHERE com_itemid=93;

require("base.common")
module("gm.items.id_93_medal", package.seeall)

function UseItemWithField(User,SourceItem,TargetPos)

	-- First check for mode change
	if (string.find(User.lastSpokenText, "setmode")~=nil) then
		local modes = {"Monster", "GFX", "SFX", "Avatar changes"}
		local cbSetMode = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			SourceItem:setData("mode", modes[dialog:getSelectedIndex()+1]);
			world:changeItem(SourceItem);
		end
		local sd = SelectionDialog("Set the mode of this medal.", "To which mode do you want to change it?", cbSetMode);
		for _,m in ipairs(modes) do 
			sd:addOption(0,m);
		end
		User:requestSelectionDialog(sd);
		return;
	end

	if (string.find(User.lastSpokenText, "help")) then
		User:inform("To change the mode of this medal, say \"setmode\" and use it.");
	end
	
	--Additions to circumvent the absence of the counter

	local a, _, number = string.find(User.lastSpokenText, "(%d+)");
    if number then
	    Counter = 1 * number;
	else
		Counter=1;
	end
	
	--Additions end
	
	if (SourceItem:getData("mode")=="Monster") then
	
		local cbInputDialog = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local inputNumber = dialog:getInput();
						
			if (string.find(inputNumber,"(%d+) (%d+) (%d+) (%d+) (%d+)") ~= nil) then
				a, b, number, ammount, radius, gfxId, sfxId = string.find(inputNumber,"(%d+) (%d+) (%d+) (%d+) (%d+)");
				number = tonumber(number);
				ammount = tonumber(ammount);
				radius = tonumber(radius);
				gfxId = tonumber(gfxId);
				sfxId = tonumber(sfxId);
				
			elseif (string.find(inputNumber,"(%d+) (%d+) (%d+) (%d+)") ~= nil) then
				a, b, number, ammount, radius, gfxId = string.find(inputNumber,"(%d+) (%d+) (%d+) (%d+)");
				number = tonumber(number);
				ammount = tonumber(ammount);
				radius = tonumber(radius);
				gfxId = tonumber(gfxId);
				sfxId = 0;
			
			elseif (string.find(inputNumber,"(%d+) (%d+) (%d+)") ~= nil) then
				a, b, number, ammount, radius = string.find(inputNumber,"(%d+) (%d+) (%d+)");
				number = tonumber(number);
				ammount = tonumber(ammount);
				radius = tonumber(radius);
				gfxId = 0;
				sfxId = 0;
				
			elseif (string.find(inputNumber,"(%d+) (%d+)") ~= nil) then
				a, b, number, ammount = string.find(inputNumber,"(%d+) (%d+)");
				number = tonumber(number);
				ammount = tonumber(ammount);
				radius = 0;
				gfxId = 0;
				sfxId = 0;
			
			elseif (string.find(inputNumber,"(%d+)") ~= nil) then
				a, b, number = string.find(inputNumber,"(%d+)");
				number = tonumber(number);
				ammount = 1;
				radius = 0;
				gfxId = 0;
				sfxId = 0;
								
			else
				User:inform("No number");
			end
				
			if ammount > 100 then
			ammount = 100;
			end
						
			for i = 1,ammount
			do	
				monPos=getFreePos( TargetPos, radius );
				local monster = world:createMonster(number,monPos,20);
				
				if gfxId ~= 0 then
					world:gfx(gfxId,monPos);
				end
				
			end
			
			User:inform("Creating "..ammount.. " monsters with ID "..number);
			
			if sfxId ~= 0 then
				world:makeSound(sfxId,TargetPos);
			end
			
			
		end
		User:requestInputDialog(InputDialog("Spawn a monster.", "Usage enter: MonsterID [ammount] [radius] [GFX] [SFX]" ,false, 255, cbInputDialog))
	
	
	elseif (SourceItem:getData("mode")=="GFX") then
		local cbInputDialog = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local inputNumber = dialog:getInput();
			if (string.find(inputNumber,"(%d+)") ~= nil) then
				a, b, number = string.find(inputNumber,"(%d+)");
				number = tonumber(number);
				world:gfx(number,TargetPos);
			else
				User:inform("No number");
			end
		end
		User:requestInputDialog(InputDialog("Play a graphics effect.", "Usage: Type in graphic effects id. Will be played in front of character." ,false, 255, cbInputDialog))
		
	elseif (SourceItem:getData("mode")=="SFX") then		
		local cbInputDialog = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local inputNumber = dialog:getInput();
			if (string.find(inputNumber,"(%d+)") ~= nil) then
				a, b, number = string.find(inputNumber,"(%d+)");
				number = tonumber(number);
				world:makeSound(number,TargetPos);
			else
				User:inform("No number");
			end
		end
		User:requestInputDialog(InputDialog("Play a sound effect.", "Usage: Type in sound effects id." ,false, 255, cbInputDialog))
		
	elseif (SourceItem:getData("mode")=="Avatar changes") then			
		local playersTmp = world:getPlayersInRangeOf(User.pos, 4);
		local players = {User};
		for _,player in pairs(playersTmp) do 
			if (player.id ~= User.id) then 
				table.insert(players, player);
			end
		end
			
		local cbChoosePlayer = function (dialog)
			if (not dialog:getSuccess()) then
				return;
			end
			local chosenPlayer = players[dialog:getSelectedIndex()+1];
			local cbInputDialog = function (dialog)
				local inputString = dialog:getInput();
				if (string.find(inputString,"(%a+) (%d+) (%d+) (%d+)") ~= nil) then
					a, b, modifier, red, green, blue = string.find(inputString,"(%a+) (%d+) (%d+) (%d+)");
					red = tonumber(red);
					green = tonumber(green);
					blue = tonumber(blue);
					if modifier == "haircolor" then
						chosenPlayer:setHairColor(red, green, blue);
					elseif modifier == "skincolor" then
						chosenPlayer:setSkinColor(red, green, blue);
					end
				elseif (string.find(inputString,"(%a+) (%d+)") ~= nil) then
					a, b, modifier, id = string.find(inputString,"(%a+) (%d+)");
					id = tonumber(id);
					if modifier == "race" then
						chosenPlayer:setRace(id);
					elseif modifier == "beard" then
						chosenPlayer:setBeard(id);
					elseif modifier == "hair" then
						chosenPlayer:setHair(id);
					end
				else
					User:inform("Sorry, I didn't understand you.");
					User:requestInputDialog(InputDialog("Change the appearance for the selected character.", "Usage: race <id>, beard <id>, hair <id>, haircolor <red> <green> <blue>, skincolor <red> <green> <blue>" ,false, 255, cbInputDialog))
				end
			end
			User:requestInputDialog(InputDialog("Change the appearance for the selected character.", "Usage: race <id>, beard <id>, hair <id>, haircolor <red> <green> <blue>, skincolor <red> <green> <blue>" ,false, 255, cbInputDialog))
		end
		--Dialog to choose the player
		local sdPlayer = SelectionDialog("Change the avatar of ...", "First choose a victim:", cbChoosePlayer);
		local raceNames = {"Human", "Dwarf", "Halfling", "Elf", "Orc", "Lizardman", "Other"}
        for _,player in ipairs(players) do 
			local race = math.min(player:getRace()+1, table.getn(raceNames));
			sdPlayer:addOption(0,player.name .. " (" .. raceNames[race] .. ") " .. player.id);
        end		
		User:requestSelectionDialog(sdPlayer);		
	else
        User:inform("To set a mode type 'setmode' and use the medal.");
    end
end 

function UseItem(User, SourceItem)
    UseItemWithField(User,SourceItem,base.common.GetFrontPosition(User));
end

function LookAtItem(User,Item)
    if (Item:getData("mode")=="Monster") then
		base.lookat.SetSpecialName(Item, "Medallie (Monster)","Medal (Monster)")
		base.lookat.SetSpecialDescription(Item, "Sag die Monster ID und lass den Spa� beginnen.", "Say the monster ID and let the fun begin.");
    elseif (Item:getData("mode")=="test") then
        base.lookat.SetSpecialName(Item, "Medallie (test)","Medal (test)");
		base.lookat.SetSpecialDescription(Item, "Testen neuer Funktionen.", "Testing new item functions.");		
    elseif (Item:getData("mode")=="GFX") then
        base.lookat.SetSpecialName(Item, "Medallie (GFX)","Medal (GFX)");
		base.lookat.SetSpecialDescription(Item, "Sag die GFX ID und lass den Spa� beginnen.", "Say the GFX ID and let the fun begin.");
	elseif (Item:getData("mode")=="SFX") then
        base.lookat.SetSpecialName(Item, "Medallie (SFX)","Medal (SFX)");
		base.lookat.SetSpecialDescription(Item, "Sag die SFX ID und lass den Spa� beginnen.", "Say the SFX ID and let the fun begin.");
	elseif (Item:getData("mode")=="Avatar changes") then
        base.lookat.SetSpecialName(Item, "Medallie (Avatar �nderungen)","Medal (Avatar changes)");
		base.lookat.SetSpecialDescription(Item, "�ndert das Aussehen eines Charakters. Benutze die Medaille.", "Changes appearance of a character. Use the medal.");	
	else
		base.lookat.SetSpecialDescription(Item, "Um einen Modus zu setzen sage 'setmode' und benutzt die Medaille.", "To set a mode type 'setmode' and use the medal.");
        base.lookat.SetSpecialName(Item, "Medaille", "Medal");
    end
	world:itemInform(User,Item,base.lookat.GenerateLookAt(User, Item, base.lookat.METAL));
end

function getFreePos( CenterPos, Rad )
    local tarPos;
	local countPos = 0;
    while true do
        tarPos = position(CenterPos.x+math.random(-Rad,Rad),CenterPos.y+math.random(-Rad,Rad),CenterPos.z);
        if not world:isItemOnField( tarPos ) and not world:isCharacterOnField( tarPos ) then
            tileID = world:getField( tarPos ):tile();
            if tileID ~= 0 and tileID ~= 5 and tileID ~= 6 and tileID~=42 and tileID ~= 43 and tileID~= 34 then --no inpassable tiles
				countPos = 0;
                return tarPos;
			else
				countPos = countPos +1;
				if countPos > 150 then
					countPos = 0;
					return CenterPos;
				end
            end
        end
    end
end