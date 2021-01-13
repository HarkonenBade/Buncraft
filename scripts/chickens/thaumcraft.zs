#modloaded thaumcraft
#modloaded chickens

import crafttweaker.item.IItemStack;
import thaumcraft.aspect.CTAspectStack;

import scripts.chickens.chicken_util.chicken;
import scripts.chickens.chicken_util.maxed;

import mods.thaumcraft.Infusion;

function aspect_crystal(type as string) as IItemStack
{
    return <item:thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: type}]});
}

var iron_chicken = chicken("chickens:ironchicken");
var thaumium_chicken = chicken("contenttweaker:thaumiumchicken");

var praecantatio_crystal = aspect_crystal("praecantatio");

Infusion.registerRecipe("thaumium_chicken",
                        "INFUSION",
                        thaumium_chicken,
                        8,
                        [<aspect:praecantatio>*50,
                         <aspect:permutatio>*50,
                         <aspect:bestia>*100],
                        maxed(iron_chicken),
                        [<thaumcraft:metal_thaumium>,
                         <thaumcraft:salis_mundus>,
                         praecantatio_crystal,
                         <thaumcraft:salis_mundus>,
                         <thaumcraft:metal_thaumium>,
                         <thaumcraft:salis_mundus>,
                         praecantatio_crystal,
                         <thaumcraft:salis_mundus>]);

<roost:chicken>.setAspects([<aspect:bestia>*5,
                            <aspect:volatus>*5,
                            <aspect:aer>*5,
                            <aspect:fabrico>*5]);


var max_glass_chicken = maxed(chicken("chickens:glasschicken"));
Infusion.registerRecipe("thaumiccrystalinfusion",
                        "CRYSTALFARMER",
                        chicken("contenttweaker:thaumiccrystalchicken"),
                        1,
                        [<aspect:praecantatio>*10,
                         <aspect:permutatio>*10,
                         <aspect:bestia>*20,
                         <aspect:aer>*5,
                         <aspect:aqua>*5,
                         <aspect:ignis>*5,
                         <aspect:ordo>*5,
                         <aspect:perditio>*5,
                         <aspect:terra>*5],
                        max_glass_chicken,
                        [<thaumcraft:salis_mundus>,
                         <thaumcraft:crystal_aer>,
                         <thaumcraft:crystal_ignis>,
                         <thaumcraft:crystal_aqua>,
                         <thaumcraft:salis_mundus>,
                         <thaumcraft:crystal_ordo>,
                         <thaumcraft:crystal_perditio>,
                         <thaumcraft:crystal_terra>]);


var tc = <item:contenttweaker:thaumiccrystal>;
recipes.addShaped("aerthaumiccrystal",
                  aspect_crystal("aer")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("aer"),tc],
                   [tc, tc, tc]]);
recipes.addShaped("aquathaumiccrystal",
                  aspect_crystal("aqua")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("aqua"),tc],
                   [tc, tc, tc]]);
recipes.addShaped("ignisthaumiccrystal",
                  aspect_crystal("ignis")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("ignis"),tc],
                   [tc, tc, tc]]);
recipes.addShaped("ordothaumiccrystal",
                  aspect_crystal("ordo")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("ordo"),tc],
                   [tc, tc, tc]]);
recipes.addShaped("perditiothaumiccrystal",
                  aspect_crystal("perditio")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("perditio"),tc],
                   [tc, tc, tc]]);
recipes.addShaped("terrathaumiccrystal",
                  aspect_crystal("terra")*9,
                  [[tc, tc, tc],
                   [tc, aspect_crystal("terra"),tc],
                   [tc, tc, tc]]);