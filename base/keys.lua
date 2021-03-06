require("base.doors")

module("base.keys", package.seeall)

--[[
    LockDoor
    Lock a door. This function checks if that item is a closed on that can be
    locked.
    It does not check if the player has a fitting key.
    @param ItemStruct - the item that is the closed door that shall be locked
    @return boolean - true in case the door got locked, false if anything went
    wrong
]]
function LockDoor(Door)
    if base.doors.CheckClosedDoor(Door.id) then
        if (Door:getData("doorLock") == "unlocked") then
			Door:setData("doorLock","locked")
			world:changeItem(Door);
            world:makeSound(19, Door.pos);
            return true;
		else
			return false;			
        end;
	else
		return false;
    end;
end;

--[[
    UnlockDoor
    Unlock a door. This function checks if the item is a closed locked door and
    unlocks it.
    It does not check if the player has a fitting key.
    @param ItemStruct - the item that is the closed door that shall be unlocked
    @return boolean - true in case the door got locked, false if anything went
    wrong
]]
function UnlockDoor(Door)
    if base.doors.CheckClosedDoor(Door.id) then
        if (Door:getData("doorLock") == "locked" or Door:getData("lockId")~="") then
			Door:setData("doorLock","unlocked")
			world:changeItem(Door);
            world:makeSound(20, Door.pos);
            return true;
		else
			return false;			
        end;
	else
		return false;
    end;
end;

--[[
    CheckKey
    Check if a key fits into a door. This function does not check if the item is
    really a key. It assumes that it is one and checks the lock that is encoded
    in the data value.
    How ever it checks if the door item is a opened or a closed door.
    @param ItemStruct - the item that is the key for a door
    @param ItemStruct - the item that is the door that shall be checked
	@param CharacterStruct - the user that has the key
    @return boolean - true in case the key item would fit to the door, false if
    it does not fit
]]
function CheckKey(Key, Door, User)
    if Door == nil then
	    return false
	end	
	if base.doors.CheckClosedDoor(Door.id) or base.doors.CheckOpenDoor(Door.id) then
        if (Key:getData("lockId") == Door:getData("lockId") and Door:getData("lockId") ~= "") or checkForMasterKey(User, Key) then
            return true;
        else
            return false;
        end;
    else
        return false;
    end;
end;

--[[ 
	Checks if the key is a master key and in the hands of an admin. A master key 
	can open and close all doors.
	@param User - character struct to check if the owner of the key is an admin
	@param key - ItemStruct of the key that shall be checked
	@return boolean - true in case of a master key else false
]]
function checkForMasterKey(User, key)

	if User:isAdmin() and key:getData("lockId")=="666" then
		return true;
	else
		return false;
	end
end
