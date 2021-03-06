require("base.common")

module("item.drinks", package.seeall)

-- UPDATE common SET com_script='item.drinks' WHERE com_itemid IN (2189, 2188, 2187, 2186, 2059, 2058, 2057, 2056, 1910, 1909, 1907, 1906, 1861, 2502, 1841, 1842, 1843, 1844, 1853, 1854, 1855, 1856, 1857, 1859, 1860, 517, 1315, 1316, 1318,1319);

function InitDrinks()
    if ( drinkList == nil) then
        -- item ID,  food value,  leftover item, alcohol strength
        drinkList={};
        drinkList[2502] = {  800, 2498,   0}; -- bottle with sheep milk
        drinkList[1841] = {  100, 1840,   0}; -- goblet with water
        drinkList[1842] = {  800, 1840,  15}; -- goblet with wine
        drinkList[1843] = { 1000, 1840,  10}; -- goblet with mead
        drinkList[1844] = {  800, 1840,  20}; -- goblet with cider
        drinkList[1853] = { 1000, 1858,  10}; -- goblet with mead
        drinkList[1854] = {  100,  224,   0}; -- goblet with water
        drinkList[1855] = {  100, 1858,   0}; -- goblet with water
        drinkList[1856] = { 1000,  224,  10}; -- goblet with mead
        drinkList[1857] = {  800,  224,  15}; -- goblet with wine
        drinkList[1859] = {  800, 1858,  20}; -- goblet with cider
        drinkList[1860] = {  800, 1858,  15}; -- goblet with wine
        drinkList[1861] = {  800,  224,  20}; -- goblet with cider
        drinkList[1906] = {  200, 1908,  10}; -- beer mug
        drinkList[1907] = {  200, 1910,  10}; -- beer mug
        drinkList[1909] = {  200, 1907,  10}; -- beer mug
        drinkList[1910] = {  200, 1906,  10}; -- beer mug
        drinkList[2056] = {  500, 2055,  10}; -- goblet with mead
        drinkList[2057] = {  400, 2055,  15}; -- goblet with wine
        drinkList[2058] = {   50, 2055,   0}; -- goblet with water
        drinkList[2059] = {  400, 2055,  20}; -- goblet with cider
        drinkList[2186] = {  100, 2185,   0}; -- mug with water
        drinkList[2187] = {  800, 2185,  15}; -- mug with wine
        drinkList[2188] = { 1000, 2185,  10}; -- mug with mead
        drinkList[2189] = {  800, 2185,  20}; -- mug with cider
		drinkList[517] = {  400, 518,  35}; -- bottle of rum
		drinkList[1315] = {  400, 1317,  35}; -- bottle of berry booze
		drinkList[1316] = {  400, 1317,  35}; -- bottle of bear slayer
		drinkList[1318] = {  400, 1317,  35}; -- bottle of elven wine
		drinkList[1319] = {  400, 1317,  35}; -- bottle of cherry schnapps
		drinkList[783] = {500, 790, 0}; -- bottle of blackberry juice
		drinkList[784] = {500, 790, 0}; -- bottle of tangerine juice
		drinkList[785] = {500, 790, 0}; -- bottle of banana juice
		drinkList[786] = {500, 790, 0}; -- bottle of cabbage juice
		drinkList[787] = {500, 790, 0}; -- bottle of virgings weed tea
		drinkList[788] = {500, 790, 0}; -- bottle of carrot juice
		drinkList[789] = {500, 790, 0}; -- bottle of strawberry juice
		drinkList[791] = {500, 790, 0}; -- bottle of grape juice

    end
end

function UseItem(User, SourceItem)
    InitDrinks();
    if User.attackmode then
        base.common.InformNLS( User, "Du w�rdest alles versch�tten.", "You'd spill everything.");
        return -- Abbrechen wenn Spieler im Kampf ist
    end
    local food = drinkList[ SourceItem.id ];
    if (food == nil ) then
        User:inform("Unknown drinking Item: ID"..SourceItem.id.." Please Report this to a developer.");
        return
    end
	if (SourceItem:getType() ~= 4) then -- vessel in hand
		base.common.HighInformNLS( User,
		"Du musst das Trinkgef�� in der Hand haben!",
		"You have to hold the drinking vessel in your hand!" );
		return
	end
    foodLevel = User:increaseAttrib("foodlevel",0) + food[1]; -- Foodlevel anheben
    world:makeSound(12,User.pos); -- Trinkger�uusch machen

	if ( math.random( 50 ) <= 1 ) then -- 1/50 das die Flasche zerbricht
        base.common.InformNLS( User, "Das alte Geschirr ist nicht mehr brauchbar.", "The old dishes are no longer usable.");
		world:erase(SourceItem, 1);
    else
	    world:swap(SourceItem, food[2], 333);
	end

    if ( foodLevel > 40000 ) then
        base.common.InformNLS( User, "Du hast genug getrunken.", "You have had enough to drink.");
    elseif ( foodLevel > 40000 ) then
        base.common.InformNLS( User, "Du schaffst es nicht noch mehr zu trinken.", "You cannot drink anything else.");
        foodLevel = foodLevel - food[1];
    end

    if ( User:increaseAttrib("foodlevel",0) ~= foodLevel ) then -- Pr�fen ob Nahrungspunkte ge�ndert wurden
        User:increaseAttrib("foodlevel",-(User:increaseAttrib("foodlevel",0)-foodLevel)); -- �nderung durchf�hren
    end
end


function LookAtItem(User, Item)
    InitDrinks();
    local food = drinkList[ Item.id ];

    if food == nil then
        User:inform("unkown drink item ID"..Item.id);
        return
    end

    world:itemInform(User, Item, base.lookat.GenerateLookAt(User, Item, base.lookat.NONE))
end
