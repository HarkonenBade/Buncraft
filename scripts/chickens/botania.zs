#modloaded botania
#modloaded chickens
#modloaded morechickens

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import scripts.chickens.chicken_util.chicken;
import scripts.chickens.chicken_util.maxed;

import mods.botania.Lexicon;
import mods.botania.RuneAltar;
import mods.botania.ElvenTrade;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.botaniatweaks.AgglomerationPage;


function boosted(chicken as IItemStack) as IItemStack
{
    return chicken.updateTag({Growth: 8,
                              Gain: 2,
                              Strength: 2});
}


var plat_chicken = chicken("morechickens:platinumchicken");
var mana_chicken = chicken("morechickens:manasteelchicken");
var terra_chicken = chicken("morechickens:terrasteelchicken");
var ele_chicken = chicken("morechickens:elementiumchicken");


Lexicon.addEntry("botania.entry.chickens", "botania.category.misc", chicken("minecraft:chicken"));
Lexicon.addTextPage("botania.page.chickens_intro","botania.entry.chickens",0);


RuneAltar.addRecipe(mana_chicken,
                    [maxed(plat_chicken),
                     <botania:storage>,
                     <botania:rune:8>,
                     <botania:storage>,
                     <botania:rune:4>],
                    12000);

Lexicon.addRunePage("botania.page.mana_chicken",
                    "botania.entry.chickens",
                    1,
                    [mana_chicken],
                    [[maxed(plat_chicken),
                      <botania:storage>,
                      <botania:rune:8>,
                      <botania:storage>,
                      <botania:rune:4>]],
                    [12000]);

Lexicon.addRecipeMapping(mana_chicken, "botania.entry.chickens", 1); 


ElvenTrade.addRecipe([ele_chicken],
                     [maxed(mana_chicken),
                      <botania:storage:2>*2,
                      <botania:manaresource:9>*2,
                      <botania:rune:11>]);

Lexicon.addElvenPage("botania.page.ele_chicken",
                     "botania.entry.chickens",
                     2,
                     [ele_chicken],
                     [[maxed(mana_chicken),
                       <botania:storage:2>*2,
                       <botania:manaresource:9>*2,
                       <botania:rune:11>]]);


var agg = AgglomerationRecipe.create()
                             .output(terra_chicken)
                             .inputs([maxed(ele_chicken),
                                      <botania:storage:1>,
                                      <botania:storage:1>,
                                      <botania:manaresource:5>,
                                      <botania:manaresource:5>] as IIngredient[])
                             .manaCost(4000000);

Agglomeration.addRecipe(agg);
AgglomerationPage.add("botania.page.terra_chicken", "botania.entry.chickens", 3, agg);


RuneAltar.addRecipe(boosted(mana_chicken),
                    [mana_chicken,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>],
                    25000);


RuneAltar.addRecipe(boosted(ele_chicken),
                    [ele_chicken,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>],
                    250000);


RuneAltar.addRecipe(boosted(terra_chicken),
                    [terra_chicken,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>,
                     <minecraft:wheat_seeds>],
                    1000000);

Lexicon.addTextPage("botania.page.chicken_grow_intro","botania.entry.chickens",3);
Lexicon.addRunePage("botania.page.chicken_growth",
                    "botania.entry.chickens",
                    4,
                    [boosted(mana_chicken),
                     boosted(ele_chicken),
                     boosted(terra_chicken)],
                    [[mana_chicken,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>],
                     [ele_chicken,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>],
                     [terra_chicken,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>,
                      <minecraft:wheat_seeds>]],
                    [25000,
                     250000,
                     1000000]);