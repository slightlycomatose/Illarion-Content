-- UPDATE common SET com_script='item.id_2830_chest' WHERE com_itemid=2830;

require("base.common")
require("base.treasure")

module("item.id_2830_chest", package.seeall)

function LookAtItem(User, Item)
    local TreasureName = base.treasure.GetTreasureName(tonumber(Item:getData("trsCat")), User:getPlayerLanguage(), false );
	base.lookat.SetSpecialDescription(Item,TreasureName, TreasureName);
	world:itemInform( User, Item, base.lookat.GenerateLookAt(User, Item, base.lookat.NONE) );
end

function UseItem(User,SourceItem)

    local level=tonumber(SourceItem:getData("trsCat"))
    local posi=SourceItem.pos;

    base.common.InformNLS(User, "Du �ffnest die Schatzkiste...", "You open the treasure chest...");
	world:erase(SourceItem,1);
	if (level ~= nil) and (level < 10) then
        world:gfx(16,posi);
        world:makeSound(13,posi);
        base.treasure.SpawnTreasure( level, posi );
	else	
        base.common.InformNLS(User, "...sie ist leer!", "...it is empty!");
    end

end

