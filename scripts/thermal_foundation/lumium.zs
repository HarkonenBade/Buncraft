#loader contenttweaker
#modloaded tconstruct
#modloaded thermalfoundation

val testMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("lumium");
testMat.color = 0xDDE389;
testMat.craftable = false;
testMat.liquid = <liquid:lumium>;
testMat.castable = true;
testMat.representativeItem = <item:thermalfoundation:material:166>;
testMat.addHeadMaterialStats(300, 10.0f, 7.0f, 5);
testMat.addHandleMaterialStats(1, 25);
testMat.addExtraMaterialStats(300);
testMat.addProjectileMaterialStats();
testMat.addMaterialTrait("holy", null);
testMat.addMaterialTrait("glowing", "head");
testMat.addMaterialTrait("holy", "head");

testMat.localizedName = "Lumium";

testMat.register();

