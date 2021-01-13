#modloaded thermalfoundation
#modloaded tconstruct

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

Alloy.addRecipe(<liquid:hardened_glass>*288, [<liquid:obsidian>*144, <liquid:lead>*144, <liquid:glass>*1000]);

Casting.addBasinRecipe(<thermalfoundation:glass:3>, null, <liquid:hardened_glass>, 288);