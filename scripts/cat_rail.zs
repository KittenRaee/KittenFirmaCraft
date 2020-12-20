#author KittenRaee
#priority 9
#modloaded railcraft
#modloaded tfc
#modloaded tfctech
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.StoneKnapping;
import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;

// Arrays
    // Tools
    var rcTools = [
        <railcraft:tool_whistle_tuner>,
        <railcraft:tool_crowbar_iron>,
        <railcraft:tool_crowbar_steel>,
        <railcraft:tool_charge_meter>,
        <railcraft:tool_signal_surveyor>,
        <railcraft:tool_signal_tuner>,
    ] as IItemStack[];

    // Rails
    var rcRails = {
        standardRail : <railcraft:rail:0>,
        advancedRail : <railcraft:rail:1>,
        highspeedRail : <railcraft:rail:3>,
        reinforcedRail : <railcraft:rail:4>,
        electricRail : <railcraft:rail:5>,
    } as IItemStack[string];
    JEI.removeAndHide(<railcraft:rail:2>, true);

    recipes.replaceAllOccurences(<minecraft:furnace>, <tfctech:smeltery_firebox>);

// Stone Tie
    StoneKnapping.addRecipe("stoneTie_single", [<railcraft:tie:1>], ["all"], "xxxxx");
    StoneKnapping.addRecipe("stoneTie_double", [<railcraft:tie:1>*2], ["all"], "xxxxx", "     ", "xxxxx");
    StoneKnapping.addRecipe("stoneTie_tripple", [<railcraft:tie:1>*3], ["all"], "xxxxx", "     ", "xxxxx", "     ", "xxxxx");
    MetalPress.addRecipe(<railcraft:tie:1>, <ore:rock>, <immersiveengineering:mold:2>, 20);

// Wooden Tie
    recipes.remove(
        <railcraft:tie:0>, 
        true
    );
    Barrel.addRecipe("creosote_tie", <ore:lumber> * 4, <liquid:creosote> * 250, <railcraft:tie:0> * 4, 8);

// Removes
    JEI.removeAndHide(<railcraft:gear:*>);
    recipes.removeByRecipeName("railcraft:cart_steel");
    recipes.removeByRecipeName("railcraft:cart_bronze");

// Replace RC bronze with any bronze
    recipes.replaceAllOccurences(<railcraft:gear:2>, <ore:gearSteel>);
    recipes.replaceAllOccurences(<tfctech:metal/bronze_gear>, <ore:gearAnyBronze>);
    recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotAnyBronze>);
    recipes.replaceAllOccurences(<ore:sheetBronze>, <ore:sheetAnyBronze>);

// Carts
    recipes.addShaped(
        "railcraft_chestCart",
        <minecraft:chest_minecart>,
        [
            [<ore:chest>],
            [<minecraft:minecart>]
        ]
    );
    recipes.remove(<railcraft:bore>);

// Tools
    recipes.remove(<railcraft:tool_crowbar_iron>);
    recipes.remove(<railcraft:tool_crowbar_steel>);
    Anvil.addRecipe(
        "railcraft_crowbarIron",
        <tfc:metal/double_ingot/wrought_iron>,
        <railcraft:tool_crowbar_iron>,
        3,
        "tools",
        "BEND_LAST",
        "HIT_NOT_LAST",
        "DRAW_NOT_LAST"
    );
    Anvil.addRecipe(
        "railcraft_crowbarsTEEL",
        <tfc:metal/double_ingot/steel>,
        <railcraft:tool_crowbar_steel>,
        4,
        "tools",
        "BEND_LAST",
        "HIT_NOT_LAST",
        "DRAW_NOT_LAST"
    );
