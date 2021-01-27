#loader contenttweaker
#modloaded tconstruct
#modloaded thermalfoundation

val testMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("enderium");
testMat.color = 0x0a5955;
testMat.craftable = false;
testMat.liquid = <liquid:enderium>;
testMat.castable = true;
testMat.representativeItem = <item:thermalfoundation:material:167>;
testMat.addHeadMaterialStats(800, 7.5f, 7.0f, 5);
testMat.addHandleMaterialStats(1.05, -5);
testMat.addExtraMaterialStats(65);
testMat.addArrowShaftMaterialStats(1, 12);
testMat.addProjectileMaterialStats();
testMat.addMaterialTrait("endspeed", "shaft");
testMat.addMaterialTrait("enderference", null);
testMat.addMaterialTrait("unnatural", "head");

testMat.localizedName = "Enderium";

testMat.register();

