#author KittenRaee
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.terrafirmacraft.Barrel;

val ban_dye = [
    <minecraft:concrete_powder:*>,
    <minecraft:wool:*>,
    <minecraft:stained_glass:*>,
    <minecraft:stained_hardened_clay:*>,
    <minecraft:bed:*>,
    <tfc:ceramics/unfired/vessel_glazed:*>,
    <quark:colored_item_frame:*>,
    <railcraft:glass:*>,
    <railcraft:reinforced_concrete:*>,
    <railcraft:tank_iron_gauge:*>,
    <railcraft:tank_iron_valve:*>,
    <railcraft:tank_iron_wall:*>,
    <railcraft:tank_steel_gauge:*>,
    <railcraft:tank_steel_valve:*>,
    <railcraft:tank_steel_wall:*>,
] as IItemStack[];

val add_dye = [
    <quark:colored_item_frame:*>,
    <railcraft:glass:*>,
    <railcraft:reinforced_concrete:*>,
    <railcraft:tank_iron_gauge:*>,
    <railcraft:tank_iron_valve:*>,
    <railcraft:tank_iron_wall:*>,
    <railcraft:tank_steel_gauge:*>,
    <railcraft:tank_steel_valve:*>,
    <railcraft:tank_steel_wall:*>,
] as IItemStack[];

val dyesList = [
    <liquid:white_dye>,
    <liquid:orange_dye>,
    <liquid:magenta_dye>,
    <liquid:light_blue_dye>,
    <liquid:yellow_dye>,
    <liquid:lime_dye>,
    <liquid:pink_dye>,
    <liquid:gray_dye>,
    <liquid:light_gray_dye>,
    <liquid:cyan_dye>,
    <liquid:purple_dye>,
    <liquid:blue_dye>,
    <liquid:brown_dye>,
    <liquid:green_dye>,
    <liquid:red_dye>,
    <liquid:black_dye>
] as ILiquidStack[];
    
for item in ban_dye {
    for dye in <ore:dye>.items {
        recipes.removeShapeless(item, [dye], true);
        recipes.removeShaped(item,
        [[<*>,<*>,<*>],
         [<*>,dye,<*>],
         [<*>,<*>,<*>]]);
    }
}

for i, item in add_dye {
    var itemDef = item.definition;
    for d, dye in dyesList {
        var counter = (16 * i) + d;
        var counter2 = (16 * i) + d + 1000;
        Barrel.addRecipe(
            "dyed" + counter + "item",
            itemDef.makeStack(0), dye * 125,
            itemDef.makeStack(d), null,
            1
        );
    }
    Barrel.addRecipe(
        "undyed" + i + "item",
        item, <liquid:lye> * 125,
        itemDef.makeStack(0), null,
        1
    );
}

var vesselDef = <tfc:ceramics/unfired/vessel_glazed>.definition;
for d, dye in dyesList {
    Barrel.addRecipe(
        "dyed" + d + "vessel",
        <tfc:ceramics/unfired/vessel>, dye * 125,
        vesselDef.makeStack(15 - d), null,
        1
    );
}
Barrel.addRecipe(
    "undyed" + "vessel",
    <tfc:ceramics/unfired/vessel_glazed:*>, <liquid:lye> * 125,
    <tfc:ceramics/unfired/vessel>, null,
    1
);
