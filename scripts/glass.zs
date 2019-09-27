#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;

var hardened_glass = VanillaFactory.createFluid("hardened_glass", Color.fromHex("5c5678"));
hardened_glass.density = 2000;
hardened_glass.luminosity = 10;
hardened_glass.temperature = 1000;
hardened_glass.viscosity = 10000;
hardened_glass.register();

