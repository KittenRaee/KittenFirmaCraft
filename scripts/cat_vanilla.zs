#author KittenRaee
#author Alice in Game (inspirataion from original script)
#priority 89
#modloaded tfc
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;

// Register fish
    ItemRegistry.registerItemHeat(<minecraft:fish>, 0.85, 480, false);
    ItemRegistry.registerItemHeat(<minecraft:fish:1>, 0.85, 480, false);
    ItemRegistry.registerItemHeat(<minecraft:fish:2>, 0.85, 480, false);
    ItemRegistry.registerItemHeat(<minecraft:fish:3>, 0.85, 480, false);
    ItemRegistry.registerItemHeat(<minecraft:cooked_fish>, 0.31, 480, true);
    ItemRegistry.registerItemHeat(<minecraft:cooked_fish:1>, 0.31, 480, true);

    ItemRegistry.registerFood(<minecraft:fish>,          0, 1.0, 0.0, 7.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:1>,        0, 1.0, 0.0, 7.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:2>,        0, 1.0, 0.0, 7.5, 0, 0, 0, 1.0, 0);
    ItemRegistry.registerFood(<minecraft:fish:3>,        0, 1.0, 0.0, 7.5, 0, 0, 0, 2.0, 0);
    ItemRegistry.registerFood(<minecraft:cooked_fish>,   3, 0.0, 1.0, 2.5, 0, 0, 0, 2.0, 0);
    ItemRegistry.registerFood(<minecraft:cooked_fish:1>, 4, 0.0, 1.5, 2.5, 0, 0, 0, 2.5, 0);

// Cooked fish recipes
    Heating.addRecipe("tfc_cod", <minecraft:fish>, <minecraft:cooked_fish>, 190, 480);
    Heating.addRecipe("tfc_salmon", <minecraft:fish:1>, <minecraft:cooked_fish:1>, 190, 480);
