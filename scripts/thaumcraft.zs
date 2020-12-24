#modloaded thaumcraft
#modloaded chickens

import scripts.chicken_util.chicken;
import scripts.chicken_util.maxed;

import mods.thaumcraft.Infusion;

var iron_chicken = chicken("chickens:ironchicken");
var thaumium_chicken = chicken("contenttweaker:thaumiumchicken");

var praecantatio_crystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]});

Infusion.registerRecipe("thaumium_chicken",
                        "INFUSION",
                        thaumium_chicken,
                        10,
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