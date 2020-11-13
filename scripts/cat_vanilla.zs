#author KittenRaee
#priority 89
#modloaded tfc
import mods.terrafirmacraft.ItemRegistry;

// Register fish
	ItemRegistry.registerItemHeat(<minecraft:fish>, 0.55, 480, true);
	ItemRegistry.registerItemHeat(<minecraft:fish:1>, 0.55, 480, true);
	ItemRegistry.registerItemHeat(<minecraft:fish:2>, 0.55, 480, true);
	ItemRegistry.registerItemHeat(<minecraft:fish:3>, 0.55, 480, true);
	ItemRegistry.registerItemHeat(<minecraft:cooked_fish>, 0.35, 480, true);
	ItemRegistry.registerItemHeat(<minecraft:cooked_fish:1>, 0.35, 480, true);

    ItemRegistry.registerFood(<minecraft:fish>,          0.25, 1.0, 0, 12.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:1>,        0.25, 1.0, 0, 12.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:2>,       -2.00, 1.0, 0, 12.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:3>,      -10.00,-5.0, 0, 12.5, 0, 0, 0, 2.0, 0);
    ItemRegistry.registerFood(<minecraft:cooked_fish>,   3.00, 0.0, 1, 15.0, 0, 0, 0, 2.0, 0);
    ItemRegistry.registerFood(<minecraft:cooked_fish:1>, 4.00, 0.0, 2, 15.0, 0, 0, 0, 2.5, 0);

// Cooked fish recipes
    mods.terrafirmacraft.Heating.addRecipe("tfc_cod", <minecraft:fish>, <minecraft:cooked_fish>, 190, 480);
	mods.terrafirmacraft.Heating.addRecipe("tfc_salmon", <minecraft:fish:1>, <minecraft:cooked_fish:1>, 190, 480);


