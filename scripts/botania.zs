#modloaded botania
#modloaded chickens
#modloaded morechickens

import crafttweaker.item.IIngredient;
import mods.botania.Lexicon;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botaniatweaks.AgglomerationPage;


Lexicon.addEntry("botania.entry.chickens", "botania.category.misc", <roost:chicken>.withTag({Chicken: "minecraft:chicken"}));
Lexicon.addTextPage("botania.page.chickens_intro","botania.entry.chickens",0);


var plat_chicken = <roost:chicken>.withTag({Growth: 10, Chicken: "morechickens:platinumchicken", Gain: 10, Strength: 10});
var fresh_mana_chicken = <roost:chicken>.withTag({Growth: 1, Chicken: "morechickens:manasteelchicken", Gain: 1, Strength: 1});

RuneAltar.addRecipe(fresh_mana_chicken, [plat_chicken, <botania:storage>, <botania:rune:8>, <botania:storage>, <botania:rune:4>], 12000);

Lexicon.addRunePage("botania.page.mana_chicken","botania.entry.chickens",1,[fresh_mana_chicken],[[plat_chicken, <botania:storage>, <botania:rune:8>, <botania:storage>, <botania:rune:4>]],[12000]);
Lexicon.addRecipeMapping(fresh_mana_chicken, "botania.entry.chickens", 1); 



var mana_chicken = <roost:chicken>.withTag({Growth: 10, Chicken: "morechickens:manasteelchicken", Gain: 10, Strength: 10});
var fresh_terra_chicken = <roost:chicken>.withTag({Growth: 1, Chicken: "morechickens:terrasteelchicken", Gain: 1, Strength: 1});

var agg = AgglomerationRecipe.create()
							 .output(fresh_terra_chicken)
							 .inputs([mana_chicken,
							 		  <botania:storage:1>,
							 		  <botania:storage:1>,
							 		  <botania:rune:11>] as IIngredient[])
							 .manaCost(1000000);

Agglomeration.addRecipe(agg);
AgglomerationPage.add("botania.page.terra_chicken", "botania.entry.chickens", 2, agg);


var terra_chicken = <roost:chicken>.withTag({Growth: 10, Chicken: "morechickens:terrasteelchicken", Gain: 10, Strength: 10});
var fresh_ele_chicken = <roost:chicken>.withTag({Growth: 1, Chicken: "morechickens:elementiumchicken", Gain: 1, Strength: 1});

ElvenTrade.addRecipe([fresh_ele_chicken], [terra_chicken, <botania:storage:2>*2, <botania:manaresource:9>*2, <botania:manaresource:5>]);
Lexicon.addElvenPage("botania.page.ele_chicken", "botania.entry.chickens", 2, [fresh_ele_chicken], [[terra_chicken, <botania:storage:2>*2, <botania:manaresource:9>*2, <botania:manaresource:5>]]);


var grow_mana_chicken = <roost:chicken>.withTag({Growth: 8, Chicken: "morechickens:manasteelchicken", Gain: 2, Strength: 2});
RuneAltar.addRecipe(grow_mana_chicken, [fresh_mana_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>], 25000);
var grow_terra_chicken = <roost:chicken>.withTag({Growth: 8, Chicken: "morechickens:terrasteelchicken", Gain: 2, Strength: 2});
RuneAltar.addRecipe(grow_terra_chicken, [fresh_terra_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>], 250000);
var grow_ele_chicken = <roost:chicken>.withTag({Growth: 8, Chicken: "morechickens:elementiumchicken", Gain: 2, Strength: 2});
RuneAltar.addRecipe(grow_ele_chicken, [fresh_ele_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>], 1000000);

Lexicon.addTextPage("botania.page.chicken_grow_intro","botania.entry.chickens",3);
Lexicon.addRunePage("botania.page.chicken_growth","botania.entry.chickens",4,[grow_mana_chicken, grow_terra_chicken, grow_ele_chicken],[[fresh_mana_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>], [fresh_terra_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>], [fresh_ele_chicken, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>, <minecraft:wheat_seeds>]],[25000, 250000, 1000000]);