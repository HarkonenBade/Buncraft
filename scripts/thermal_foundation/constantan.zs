#loader contenttweaker
#modloaded tconstruct
#modloaded thermalfoundation

val testMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("constantan");
testMat.color = 0xE3AE49;
testMat.craftable = false;
testMat.liquid = <liquid:constantan>;
testMat.castable = true;
testMat.representativeItem = <item:thermalfoundation:material:164>;
testMat.addHeadMaterialStats(350, 5.8f, 3.2f, 4);
testMat.addHandleMaterialStats(1.1, 40);
testMat.addExtraMaterialStats(150);
testMat.addMaterialTrait("established", null);
testMat.addMaterialTrait("aridiculous", "head");
testMat.addMaterialTrait("established", "head");

testMat.localizedName = "Constantan";

testMat.register();

