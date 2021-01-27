
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;

function dye_chicken_craft(dyeID as int, chicken as string) {
	var chicken_stick = <roost:catcher>.transformDamage();
	var dye = <minecraft:dye>.definition.makeStack(dyeID);
	var chk = <roost:chicken>.withTag({Growth: 1, Chicken: "chickens:" + chicken, Gain: 1, Strength: 1});
	recipes.addShaped(chicken + "_dye_egg_craft",
				 	  chk,
					  [[dye, <item:minecraft:wheat>, dye],
					  [<item:minecraft:wheat>, <item:minecraft:egg>, <item:minecraft:wheat>],
					  [dye, chicken_stick, dye]]);
}

dye_chicken_craft(0, "blackchicken");
dye_chicken_craft(1, "redchicken");
dye_chicken_craft(2, "greenchicken");
dye_chicken_craft(3, "brownchicken");
dye_chicken_craft(4, "bluechicken");
dye_chicken_craft(5, "purplechicken");
dye_chicken_craft(6, "cyanchicken");
dye_chicken_craft(7, "lightgreychicken");
dye_chicken_craft(8, "greychicken");
dye_chicken_craft(9, "pinkchicken");
dye_chicken_craft(10, "limechicken");
dye_chicken_craft(11, "yellowchicken");
dye_chicken_craft(12, "lightbluechicken");
dye_chicken_craft(13, "magentachicken");
dye_chicken_craft(14, "orangechicken");
dye_chicken_craft(15, "whitechicken");