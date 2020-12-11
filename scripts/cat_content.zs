#author KittenRaee
#loader contenttweaker
#priority 99

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var engineeredstick = VanillaFactory.createItem("engineeredstick");
engineeredstick.register();
var backpacksiding = VanillaFactory.createItem("backpacksiding");
backpacksiding.register();
var backpackshell = VanillaFactory.createItem("backpackshell");
backpackshell.register();
var redjuice = VanillaFactory.createFluid("red_juice", Color.fromHex("AD1111"));
redjuice.luminosity = 4;
redjuice.density = 10;
redjuice.register();
