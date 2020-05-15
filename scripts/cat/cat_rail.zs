import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.terrafirmacraft.StoneKnapping;
import mods.terrafirmacraft.Barrel;
import mods.jei.JEI;

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
    mods.jei.JEI.removeAndHide(<railcraft:rail:2>, true);



// Stone Tie
    // Knapping

StoneKnapping.addRecipe("stoneTie_single", [<railcraft:tie:1>], ["all"], "xxxxx");
StoneKnapping.addRecipe("stoneTie_double", [<railcraft:tie:1>*2], ["all"], "xxxxx", "     ", "xxxxx");
StoneKnapping.addRecipe("stoneTie_tripple", [<railcraft:tie:1>*3], ["all"], "xxxxx", "     ", "xxxxx", "     ", "xxxxx");

    // IE Press

// Wooden Tie
    // Remove recipe

recipes.remove(
    <railcraft:tie:0>, 
    true
);

    // Barrel

Barrel.addRecipe("creosote_tie", <ore:lumber> * 3, <liquid:creosote> * 125, <railcraft:tie:0> * 3, 8);
