#loader contenttweaker
#modloaded thaumcraft

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ResourceLocation;

var tc = VanillaFactory.createItem("thaumiccrystal");
tc.maxStackSize = 64;
//tc.creativeTab = <creativetab:thaumcraft>;
tc.glowing = true;
tc.register();
