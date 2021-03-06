-- sieve ( 727 )

-- coarse sand (726) --> quartz sand (316)

-- additional tool: wooden shovel ( 312 )

-- UPDATE common SET com_script='item.id_727_sieve' WHERE com_itemid IN (727);

require("base.common")
require("base.licence")

module("item.id_727_sieve", package.seeall)

function UseItem(User, SourceItem, ltstate)
	if base.licence.licence(User) then --checks if user is citizen or has a licence 
		return -- avoids crafting if user is neither citizen nor has a licence
	end

	content.gathering.InitGathering();
	local sieving = content.gathering.sieving;

	base.common.ResetInterruption( User, ltstate );
	if ( ltstate == Action.abort ) then -- work interrupted
		if (User:increaseAttrib("sex",0) == 0) then
			gText = "seine";
			eText = "his";
		else
			gText = "ihre";
			eText = "her";
		end
		User:talk(Character.say, "#me unterbricht "..gText.." Arbeit.", "#me interrupts "..eText.." work.")
		return
	end

	if not base.common.CheckItem( User, SourceItem ) then -- security check
		return
	end
	
	-- additional tool item is needed
	if (User:countItemAt("all",312)==0) then
		base.common.HighInformNLS( User,
		"Du brauchst eine Holzkelle um Sand zu sieben.", 
		"You need a wooden shovel for sieving sand." );
		return
	end
	local toolItem = User:getItemAt(5);
	if ( toolItem.id ~= 312 ) then
		toolItem = User:getItemAt(6);
		if ( toolItem.id ~= 312 ) then
			base.common.HighInformNLS( User,
			"Du musst die Holzkelle in der Hand haben!",
			"You have to hold the wooden shovel in your hand!" );
			return
		end
	end

	if not base.common.FitForWork( User ) then -- check minimal food points
		return
	end

	if not base.common.IsLookingAt( User, SourceItem.pos ) then -- check looking direction
		base.common.TurnTo( User, SourceItem.pos ); -- turn if necessary
	end
	
	-- any other checks?

	if (User:countItemAt("all",726)==0) then -- check for items to work on
		base.common.HighInformNLS( User, 
		"Du brauchst groben Sand um ihn zu sieben.", 
		"You need coarse sand for sieving it." );
		return;
	end
	
	if ( ltstate == Action.none ) then -- currently not working -> let's go
		sieving.SavedWorkTime[User.id] = sieving:GenWorkTime(User,toolItem);
		User:startAction( sieving.SavedWorkTime[User.id], 0, 0, 0, 0);
		User:talk(Character.say, "#me beginnt Sand zu sieben.", "#me starts to sieve sand.")
		return
	end

	-- since we're here, we're working

	if sieving:FindRandomItem(User) then
		return
	end

	User:learn( sieving.LeadSkill, sieving.SavedWorkTime[User.id], sieving.LearnLimit);
	User:eraseItem( 726, 1 ); -- erase the item we're working on
	local amount = 1; -- set the amount of items that are produced
	local notCreated = User:createItem( 316, amount, 333, nil ); -- create the new produced items
	if ( notCreated > 0 ) then -- too many items -> character can't carry anymore
		world:createItemFromId( 316, notCreated, User.pos, true, 333, nil );
		base.common.HighInformNLS(User,
		"Du kannst nichts mehr halten und der Rest f�llt zu Boden.",
		"You can't carry any more and the rest drops to the ground.");
	else -- character can still carry something
		if (User:countItemAt("all",726)>0) then  -- there are still items we can work on
			sieving.SavedWorkTime[User.id] = sieving:GenWorkTime(User,toolItem);
			User:startAction( sieving.SavedWorkTime[User.id], 0, 0, 0, 0);
		else -- no items left
			base.common.HighInformNLS(User,
			"Du hast keinen groben Sand mehr.",
			"You have no coarse sand anymore.");
		end
	end

	if base.common.GatheringToolBreaks( User, toolItem ) then -- damage and possibly break the tool
		base.common.HighInformNLS(User,
		"Deine alte Holzkelle zerbricht.",
		"Your old wooden shovel breaks.");
		return
	end
end
