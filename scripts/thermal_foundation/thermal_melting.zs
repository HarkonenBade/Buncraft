#modloaded tconstruct
#modloaded thermalfoundation

mods.tconstruct.Melting.addRecipe(<liquid:redstone> * 800, <minecraft:redstone_ore>, 500);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:redstone_block>, null, <liquid:redstone>, 900);
mods.tconstruct.Casting.addTableRecipe(<item:minecraft:redstone>, null, <liquid:redstone>, 100);

mods.tconstruct.Casting.addBasinRecipe(<minecraft:glowstone>, null, <liquid:glowstone>, 1000);
mods.tconstruct.Casting.addTableRecipe(<item:minecraft:glowstone_dust>, null, <liquid:glowstone>, 250);

mods.tconstruct.Casting.addTableRecipe(<item:minecraft:ender_pearl>, null, <liquid:ender>, 250);

mods.tconstruct.Melting.addRecipe(<liquid:aerotheum> * 250, <item:thermalfoundation:material:1026>, 350);
mods.tconstruct.Casting.addTableRecipe(<item:thermalfoundation:material:1026>, null, <liquid:aerotheum>, 250);

mods.tconstruct.Melting.addRecipe(<liquid:cryotheum> * 250, <item:thermalfoundation:material:1025>, 50);
mods.tconstruct.Casting.addTableRecipe(<item:thermalfoundation:material:1025>, null, <liquid:cryotheum>, 250);

mods.tconstruct.Melting.addRecipe(<liquid:petrotheum> * 250, <item:thermalfoundation:material:1027>, 350);
mods.tconstruct.Casting.addTableRecipe(<item:thermalfoundation:material:1027>, null, <liquid:petrotheum>, 250);

mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 250, <item:thermalfoundation:material:1024>, 350);
mods.tconstruct.Casting.addTableRecipe(<item:thermalfoundation:material:1024>, null, <liquid:pyrotheum>, 250);
