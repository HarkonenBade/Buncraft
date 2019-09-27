#modloaded thaumcraft
#modloaded chickens

import mods.thaumcraft.Infusion;

var iron_chicken = <roost:chicken>.withTag({Growth: 10, Chicken: "chickens:ironchicken", Gain: 10, Strength: 10});
var thaumium_chicken = <roost:chicken>.withTag({Growth: 1, Chicken: "contenttweaker:thaumiumchicken", Gain: 1, Strength: 1});
var praecantatio_crystal = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "praecantatio"}]});

Infusion.registerRecipe("thaumium_chicken", "INFUSION", thaumium_chicken, 10, [<aspect:praecantatio>*50, <aspect:permutatio>*50, <aspect:bestia>*100], iron_chicken, [<thaumcraft:metal_thaumium>, <thaumcraft:salis_mundus>, praecantatio_crystal, <thaumcraft:salis_mundus>, <thaumcraft:metal_thaumium>, <thaumcraft:salis_mundus>, praecantatio_crystal, <thaumcraft:salis_mundus>]);

<roost:chicken>.setAspects([<aspect:bestia>*5, <aspect:volatus>*5, <aspect:aer>*5, <aspect:fabrico>*5]);