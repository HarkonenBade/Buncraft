#modloaded chickens
#modloaded tconstruct

furnace.setFuel(<chickens:liquid_egg:1>, 20000);

mods.tconstruct.Melting.addRecipe(<liquid:lava> * 1000, <chickens:liquid_egg:1>, 200);

recipes.addShapeless("CTLavaEggBucket", <minecraft:lava_bucket>, [<chickens:liquid_egg:1>, <minecraft:bucket>]);

mods.tconstruct.Melting.addRecipe(<liquid:water> * 1000, <chickens:liquid_egg:0>, 100);

recipes.addShapeless("CTWaterEggBucket", <minecraft:water_bucket>, [<chickens:liquid_egg:0>, <minecraft:bucket>]);