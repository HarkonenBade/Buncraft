#loader contenttweaker
#modloaded chickens chisel morechickens thaumcraft

import crafttweaker.item.IItemStack;
import mods.contenttweaker.ChickenFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.ResourceLocation;



function spawn_chicken(name as string,
					   layItem as IItemStack,
					   eggFG as string,
					   eggBG as string,
					   spawntype as string)
{
	val chicken = ChickenFactory.createChicken(name, Color.fromHex(eggBG), layItem);
	chicken.setForegroundColor(Color.fromHex(eggFG));
	chicken.setSpawnType(spawntype);
	chicken.register();
}

function bred_chicken(name as string,
					  layItem as IItemStack,
					  eggFG as string,
					  eggBG as string,
					  parent1 as string,
					  parent2 as string)
{
	val chicken = ChickenFactory.createChicken(name, Color.fromHex(eggBG), layItem);
	chicken.setForegroundColor(Color.fromHex(eggFG));
	chicken.setSpawnType("NONE");
	chicken.setParentOne(ResourceLocation.create(parent1));
	chicken.setParentTwo(ResourceLocation.create(parent2));
	chicken.register();
}

spawn_chicken("stonechicken", <item:minecraft:stone:0>, "8d8d8d", "727272", "NORMAL");
spawn_chicken("dirtchicken", <item:minecraft:dirt:0>, "b78359", "563821", "NORMAL");
spawn_chicken("netherrackchicken", <item:minecraft:netherrack>, "ad271d", "540702", "HELL");

bred_chicken("granitechicken", <item:minecraft:stone:1>, "664334", "9e6956", "contenttweaker:stonechicken", "chickens:redchicken");
bred_chicken("dioritechicken", <item:minecraft:stone:3>, "dae0e1", "c4cacb", "contenttweaker:stonechicken", "chickens:whitechicken");
bred_chicken("andesitechicken", <item:minecraft:stone:5>, "77776b", "5f5f60", "contenttweaker:stonechicken", "chickens:graychicken");

bred_chicken("basaltchicken", <item:chisel:basalt2:7>, "3b3b3b", "2c2c2c", "contenttweaker:granitechicken", "chickens:lavachicken");
bred_chicken("marblechicken", <item:chisel:marble2:7>, "d8dcdd", "cfd4d6", "contenttweaker:dioritechicken", "chickens:waterchicken");

bred_chicken("brickchicken", <item:minecraft:brick>, "af9d97", "7c4536", "chickens:claychicken", "chickens:coalchicken");

spawn_chicken("thaumiumchicken", <item:thaumcraft:ingot>, "6a588c", "6a588c", "NONE");
spawn_chicken("thaumiccrystalchicken", <item:contenttweaker:thaumiccrystal>, "cccccc", "b0b0b0", "NONE");

bred_chicken("electrotinechicken", <item:projectred-core:resource_item:105>, "3db0ef", "0e73aa", "chickens:redstonechicken", "chickens:bluechicken");

