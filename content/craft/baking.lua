require("item.base.crafts")

module("content.craft.baking", package.seeall)

baking = item.base.crafts.Craft:new{
                     craftEN = "baking",
                     craftDE = "Backen",
                     handTool = 121,
                     leadSkill = Character.cookingAndBaking,
                     defaultFoodConsumption = 100,
                   };
baking:addTool( 119 ); -- baking oven
baking:addTool( 120 ); -- baking oven

--------------------------------------------------------------------------------------------

local catId = baking:addCategory("Baked goods", "Backwaren")

---------------- BREAD ROLL - 191 ----------------------
local product = baking:addProduct(catId, 191, 0, 20, 5, 10)
product:addIngredient(2) -- Step 1: Flour (2) 1x
product:addIngredient(52)
product:addRemnant(51) -- Step 2: Bucket with water (52) 1x
-------------- BR�TCHEN - DONE ----------------

---------------- COOKIES - 453 ----------------------
product = baking:addProduct(catId, 453, 10, 30, 14, 28, 2)
product:addIngredient(2) -- Step 1: Flour (2) 1x
product:addIngredient(2529) -- Step 2: Honey(2529) 1x
product:addIngredient(52)
product:addRemnant(51) -- Step 3: Bucket with water (52) 1x
-------------- COOKIES - DONE ----------------

---------------- BREAD - 49 ----------------------
product = baking:addProduct(catId, 49, 25, 45, 22, 44)
product:addIngredient(2, 2) -- Step 1: Flour (2) 1x
product:addIngredient(52)
product:addRemnant(51) -- Step 2: Bucket with water (52) 1x
-------------- BREAD - DONE ----------------

---------------- MUFFIN - 454 ----------------------
product = baking:addProduct(catId, 454, 45, 65, 64, 128, 2)
product:addIngredient(2, 2) -- Step 1: Flour (2) 1x
product:addIngredient(2529) -- Step 2: Honey(2529) 1x
product:addIngredient(147, 5) -- Step 3: Blackberry(147) 5x
product:addIngredient(52)
product:addRemnant(51) -- Step 4: Bucket with water (52) 1x
-------------- MUFFIN - DONE ----------------

---------------- APPLE PIE - 353 ----------------------
product = baking:addProduct(catId, 353, 55, 75, 95, 190)
product:addIngredient(2, 2) -- Step 1: Flour (2) 1x
product:addIngredient(2529, 2) -- Step 2: Honey(2529) 2x
product:addIngredient(15, 10) -- Step 3: Apple(15) 5x
product:addIngredient(52)
product:addRemnant(51) -- Step 4: Bucket with water (52) 1x

-------------- APPLE PIE - DONE ----------------

---------------- CHERRY CAKE - 303 ----------------------
product = baking:addProduct(catId, 303, 70, 90, 132, 264)
product:addIngredient(2, 3) -- Step 1: Flour (2) 1x
product:addIngredient(2529, 2) -- Step 2: Honey(2529) 2x
product:addIngredient(302, 10) -- Step 3: Cherries(302) 5x
product:addIngredient(52)
product:addRemnant(51) -- Step 4: Bucket with water (52) 1x
-------------- CHERRY CAKE - DONE ----------------

---------------- STRAWBERRY CAKE - 354 ----------------------
product = baking:addProduct(catId, 354, 80, 100, 175, 350)
product:addIngredient(2, 4) -- Step 1: Flour (2) 1x
product:addIngredient(2529, 2) -- Step 2: Honey(2529) 2x
product:addIngredient(151, 10) -- Step 3: Strawberries(151) 5x
product:addIngredient(52)
product:addRemnant(51) -- Step 4: Bucket with water (52) 1x
-------------- STRAWBERRY CAKE - DONE ----------------

---------------- CUSTARD PIE - 1153 ----------------------
product = baking:addProduct(catId, 1153, 95, 100, 175, 350)
product:addIngredient(2, 3) -- Step 1: Flour (2) 3x
product:addIngredient(778, 2) -- Step 2: Sugar Cane (778) 2x
product:addIngredient(1149, 5) -- Step 3: Brown Egg (1149) 5x
product:addIngredient(765, 1) -- Step 4: Daydream (765) 1x
product:addIngredient(517) -- Step 5: Rum (517) 1x
product:addRemnant(518) -- Remnant: Empty Rum Bottle (518) 1x
product:addIngredient(2502) -- Step 6: Milk (2502) 1x
product:addRemnant(2498) -- Remnant: Empty Bottle (2498) 1x
product:addIngredient(52) -- Step 7: Bucket with water (52) 1x
product:addRemnant(51) -- Remnant: Empty Bucket (51) 1x
-- notyet: White Eggs (as alternative to brown eggs)
-------------- CUSTARD PIE - DONE ----------------
