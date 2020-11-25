// Author : Alice in Game
// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : -
// Scripts required : TFC Metal Block CT

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;



val blocks = [
    <contenttweaker:blockbismuth>,
    <contenttweaker:blockbismuth_bronze>,
    <contenttweaker:blockblack_bronze>,
    <contenttweaker:blockbrass>,
    <contenttweaker:blockbronze>,
    <contenttweaker:blockcopper>,
    <contenttweaker:blockgold>,
    <contenttweaker:blocklead>,
    <contenttweaker:blocknickel>,
    <contenttweaker:blockrose_gold>,
    <contenttweaker:blocksilver>,
    <contenttweaker:blocktin>,
    <contenttweaker:blockzinc>,
    <contenttweaker:blocksterling_silver>,
    <contenttweaker:blockwrought_iron>,
    <contenttweaker:blocksteel>,
    <contenttweaker:blockplatinum>,
    <contenttweaker:blockblack_steel>,
    <contenttweaker:blockblue_steel>,
    <contenttweaker:blockred_steel>,
    <contenttweaker:blockunknown>
] as IItemStack[];

val doubleIngots = [
    <tfc:metal/double_ingot/bismuth>,
    <tfc:metal/double_ingot/bismuth_bronze>,
    <tfc:metal/double_ingot/black_bronze>,
    <tfc:metal/double_ingot/brass>,
    <tfc:metal/double_ingot/bronze>,
    <tfc:metal/double_ingot/copper>,
    <tfc:metal/double_ingot/gold>,
    <tfc:metal/double_ingot/lead>,
    <tfc:metal/double_ingot/nickel>,
    <tfc:metal/double_ingot/rose_gold>,
    <tfc:metal/double_ingot/silver>,
    <tfc:metal/double_ingot/tin>,
    <tfc:metal/double_ingot/zinc>,
    <tfc:metal/double_ingot/sterling_silver>,
    <tfc:metal/double_ingot/wrought_iron>,
    <tfc:metal/double_ingot/steel>,
    <tfc:metal/double_ingot/platinum>,
    <tfc:metal/double_ingot/black_steel>,
    <tfc:metal/double_ingot/blue_steel>,
    <tfc:metal/double_ingot/red_steel>,
    <minecraft:nether_star>
] as IItemStack[];

val oreDicts = [
    <ore:blockbismuth>,
    <ore:blockBismuthbronze>,
    <ore:blockBlack_bronze>,
    <ore:blockBrass>,
    <ore:blockBronze>,
    <ore:blockCopper>,
    <ore:blockGold>,
    <ore:blockLead>,
    <ore:blockNickel>,
    <ore:blockRoseGold>,
    <ore:blockSilver>,
    <ore:blockTin>,
    <ore:blockZinc>,
    <ore:blockSterlingSilver>,
    <ore:blockWroughtIron>,
    <ore:blockSteel>,
    <ore:blockPlatinum>,
    <ore:blockBlackSteel>,
    <ore:blockBlueSteel>,
    <ore:blockRedSteel>,
    <ore:blockUnknown>
] as IOreDictEntry[];

val metals = [
    "bismuth",
    "bismuth_bronze",
    "black_bronze",
    "brass",
    "bronze",
    "copper",
    "gold",
    "lead",
    "nickel",
    "rose_gold",
    "silver",
    "tin",
    "zinc",
    "sterling_silver",
    "wrought_iron",
    "steel",
    "platinum",
    "black_steel",
    "blue_steel",
    "red_steel",
    "unknown"
] as string[];

for i, block in blocks {
    oreDicts[i].add(block);
    ItemRegistry.registerItemMetal(block, metals[i], 800, true);
    ItemRegistry.registerItemSize(block, "LARGE", "MEDIUM");
    recipes.addShaped("tfc_block" + metals[i], block, [
        [doubleIngots[i], doubleIngots[i]],
        [doubleIngots[i], doubleIngots[i]]
    ]);
}

<ore:blockAnyBronze>.add(<contenttweaker:blockbismuth_bronze>, <contenttweaker:blockblack_bronze>,<contenttweaker:blockbronze>);

#val metals = {
#    "bismuth": {
#        "oreDict" : <ore:blockbismuth>,
#        "block" : <contenttweaker:blockbismuth>,
#        "doubleIngot" : <tfc:metal/double_ingot/bismuth>
#    },
#    "bismuth_bronze": {
#        "oreDict" : <ore:blockbismuth_bronze>,
#        "block" : <contenttweaker:blockbismuth_bronze>,
#        "doubleIngot" : <tfc:metal/double_ingot/bismuth_bronze>
#    },
#    "black_bronze": {
#        "oreDict" : <ore:blockblack_bronze>,
#        "block" : <contenttweaker:blockblack_bronze>,
#        "doubleIngot" : <tfc:metal/double_ingot/black_bronze>
#    },
#    "brass": {
#        "oreDict" : <ore:blockbrass>,
#        "block" : <contenttweaker:blockbrass>,
#        "doubleIngot" : <tfc:metal/double_ingot/brass>
#    },
#    "bronze": {
#        "oreDict" : <ore:blockbronze>,
#        "block" : <contenttweaker:blockbronze>,
#        "doubleIngot" : <tfc:metal/double_ingot/bronze>
#    },
#    "copper": {
#        "oreDict" : <ore:blockcopper>,
#        "block" : <contenttweaker:blockcopper>,
#        "doubleIngot" : <tfc:metal/double_ingot/copper>
#    },
#    "gold": {
#        "oreDict" : <ore:blockgold>,
#        "block" : <contenttweaker:blockgold>,
#        "doubleIngot" : <tfc:metal/double_ingot/gold>
#    },
#    "lead": {
#        "oreDict" : <ore:blocklead>,
#        "block" : <contenttweaker:blocklead>,
#        "doubleIngot" : <tfc:metal/double_ingot/lead>
#    },
#    "nickel": {
#        "oreDict" : <ore:blocknickel>,
#        "block" : <contenttweaker:blocknickel>,
#        "doubleIngot" : <tfc:metal/double_ingot/nickel>
#    },
#    "rose_gold": {
#        "oreDict" : <ore:blockrose_gold>,
#        "block" : <contenttweaker:blockrose_gold>,
#        "doubleIngot" : <tfc:metal/double_ingot/rose_gold>
#    },
#    "silver": {
#        "oreDict" : <ore:blocksilver>,
#        "block" : <contenttweaker:blocksilver>,
#        "doubleIngot" : <tfc:metal/double_ingot/silver>
#    },
#    "tin": {
#        "oreDict" : <ore:blocktin>,
#        "block" : <contenttweaker:blocktin>,
#        "doubleIngot" : <tfc:metal/double_ingot/tin>
#    },
#    "zinc": {
#        "oreDict" : <ore:blockzinc>,
#        "block" : <contenttweaker:blockzinc>,
#        "doubleIngot" : <tfc:metal/double_ingot/zinc>
#    },
#    "sterling_silver": {
#        "oreDict" : <ore:blocksterling_silver>,
#        "block" : <contenttweaker:blocksterling_silver>,
#        "doubleIngot" : <tfc:metal/double_ingot/sterling_silver>
#    },
#    "wrought_iron": {
#        "oreDict" : <ore:blockwrought_iron>,
#        "block" : <contenttweaker:blockwrought_iron>,
#        "doubleIngot" : <tfc:metal/double_ingot/wrought_iron>
#    },
#    "steel": {
#        "oreDict" : <ore:blocksteel>,
#        "block" : <contenttweaker:blocksteel>,
#        "doubleIngot" : <tfc:metal/double_ingot/steel>
#    },
#    "platinum": {
#        "oreDict" : <ore:blockplatinum>,
#        "block" : <contenttweaker:blockplatinum>,
#        "doubleIngot" : <tfc:metal/double_ingot/platinum>
#    },
#    "black_steel": {
#        "oreDict" : <ore:blockblack_steel>,
#        "block" : <contenttweaker:blockblack_steel>,
#        "doubleIngot" : <tfc:metal/double_ingot/black_steel>
#    },
#    "blue_steel": {
#        "oreDict" : <ore:blockblue_steel>,
#        "block" : <contenttweaker:blockblue_steel>,
#        "doubleIngot" : <tfc:metal/double_ingot/blue_steel>
#    },
#    "red_steel": {
#        "oreDict" : <ore:blockred_steel>,
#        "block" : <contenttweaker:blockred_steel>,
#        "doubleIngot" : <tfc:metal/double_ingot/red_steel>
#    },
#    "unknown": {
#        "oreDict" : <ore:blockunknown>,
#        "block" : <contenttweaker:blockunknown>,
#        "doubleIngot" : <minecraft:nether_star>
#    }
#} as IItemStack[string][string];

#for metal, item in metals {
#    item["oreDict"].add(item["block"]);
#    ItemRegistry.registerItemMetal(item["block"], metal, 800, true);
#    ItemRegistry.registerItemSize(item["block"], "LARGE", "MEDIUM");
#    recipes.addShaped("tfc_block" + metal, item["block"], [
#        [item["doubleIngot"], item["doubleIngot"]],
#        [item["doubleIngot"], item["doubleIngot"]]
#    ]);
#}

#//Add oreDict value to block
#<ore:blockBismuth>.add(<contenttweaker:blockblockbismuth>);
#<ore:blockBismuth_Bronze>.add(<contenttweaker:blockblockbismuth_bronze>);
#<ore:blockBlackBronze>.add(<contenttweaker:blockblockblack_bronze>);
#<ore:blockBrass>.add(<contenttweaker:blockblockbrass>);
#<ore:blockBronze>.add(<contenttweaker:blockblockbronze>);
#<ore:blockCopper>.add(<contenttweaker:blockblockcopper>);
#<ore:blockGold>.add(<contenttweaker:blockblockgold>);
#<ore:blockLead>.add(<contenttweaker:blockblocklead>);
#<ore:blockNickel>.add(<contenttweaker:blockblocknickel>);
#<ore:blockRoseGold>.add(<contenttweaker:blockblockrose_gold>);
#<ore:blockSilver>.add(<contenttweaker:blockblocksilver>);
#<ore:blockTin>.add(<contenttweaker:blockblocktin>);
#<ore:blockZinc>.add(<contenttweaker:blockblockzinc>);
#<ore:blockSterlingSilver>.add(<contenttweaker:blockblocksterling_silver>);
#<ore:blockWroughtIron>.add(<contenttweaker:blockblockwrought_iron>);
#<ore:blockSteel>.add(<contenttweaker:blockblocksteel>);
#<ore:blockPlatinum>.add(<contenttweaker:blockblockplatinum>);
#<ore:blockBlackSteel>.add(<contenttweaker:blockblockblack_steel>);
#<ore:blockBlueSteel>.add(<contenttweaker:blockblockblue_steel>);
#<ore:blockRedSteel>.add(<contenttweaker:blockblockred_steel>);
#<ore:blockAnyBronze>.add(<contenttweaker:blockblockbismuth_bronze>,<contenttweaker:blockblockblack_bronze>,<contenttweaker:blockblockbronze>);
#
#// Add metal value to melt block
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockbismuth>, "BISMUTH", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockbismuth_bronze>, "BISMUTH_BRONZE", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockblack_bronze>, "BLACK_BRONZE", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockbrass>, "BRASS", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockbronze>, "BRONZE", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockcopper>, "COPPER", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockgold>, "GOLD", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocklead>, "LEAD", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocknickel>, "NICKEL", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockrose_gold>, "ROSE_GOLD", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocksilver>, "SILVER", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocktin>, "TIN", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockzinc>, "ZINC", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocksterling_silver>, "STERLING_SILVER", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockwrought_iron>, "WROUGHT_IRON", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblocksteel>, "STEEL", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockplatinum>, "PLATINUM", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockblack_steel>, "BLACK_STEEL", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockblue_steel>, "BLUE_STEEL", 800, true);
#ItemRegistry.registerItemMetal(<contenttweaker:blockblockred_steel>, "RED_STEEL", 800, true);
#
#//Add block size
#ItemRegistry.registerItemSize(<contenttweaker:blockblockbismuth>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockbismuth_bronze>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockblack_bronze>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockbrass>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockbronze>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockcopper>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockgold>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocklead>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocknickel>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockrose_gold>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocksilver>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocktin>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockzinc>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocksterling_silver>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockwrought_iron>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblocksteel>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockplatinum>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockblack_steel>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockblue_steel>, "LARGE", "MEDIUM");
#ItemRegistry.registerItemSize(<contenttweaker:blockblockred_steel>, "LARGE", "MEDIUM");
#
#//Add recipe : Weld two double sheets
#Welding.addRecipe("blockbismuth", <tfc:metal/double_sheet/bismuth_bronze>, <tfc:metal/double_sheet/bismuth_bronze>, <contenttweaker:blockblockbismuth_bronze>, 0);
#Welding.addRecipe("blockbismuth_bronze", <tfc:metal/double_sheet/black_bronze>, <tfc:metal/double_sheet/black_bronze>, <contenttweaker:blockblockblack_bronze>, 1);
#Welding.addRecipe("blockblack_bronze", <tfc:metal/double_sheet/brass>, <tfc:metal/double_sheet/brass>, <contenttweaker:blockblockbrass>, 1);
#Welding.addRecipe("blockbrass", <tfc:metal/double_sheet/bronze>, <tfc:metal/double_sheet/bronze>, <contenttweaker:blockblockbronze>, 0);
#Welding.addRecipe("blockbronze", <tfc:metal/double_sheet/copper>, <tfc:metal/double_sheet/copper>, <contenttweaker:blockblockcopper>, 1);
#Welding.addRecipe("blockcopper", <tfc:metal/double_sheet/gold>, <tfc:metal/double_sheet/gold>, <contenttweaker:blockblockgold>, 0);
#Welding.addRecipe("blockgold", <tfc:metal/double_sheet/lead>, <tfc:metal/double_sheet/lead>, <contenttweaker:blockblocklead>, 0);
#Welding.addRecipe("blocklead", <tfc:metal/double_sheet/nickel>, <tfc:metal/double_sheet/nickel>, <contenttweaker:blockblocknickel>, 0);
#Welding.addRecipe("blocknickel", <tfc:metal/double_sheet/rose_gold>, <tfc:metal/double_sheet/rose_gold>, <contenttweaker:blockblockrose_gold>, 0);
#Welding.addRecipe("blockrose_gold", <tfc:metal/double_sheet/silver>, <tfc:metal/double_sheet/silver>, <contenttweaker:blockblocksilver>, 0);
#Welding.addRecipe("blocksilver", <tfc:metal/double_sheet/tin>, <tfc:metal/double_sheet/tin>, <contenttweaker:blockblocktin>, 0);
#Welding.addRecipe("blocktin", <tfc:metal/double_sheet/zinc>, <tfc:metal/double_sheet/zinc>, <contenttweaker:blockblockzinc>, 0);
#Welding.addRecipe("blockzinc", <tfc:metal/double_sheet/sterling_silver>, <tfc:metal/double_sheet/sterling_silver>, <contenttweaker:blockblocksterling_silver>, 0);
#Welding.addRecipe("blocksterling_silver", <tfc:metal/double_sheet/wrought_iron>, <tfc:metal/double_sheet/wrought_iron>, <contenttweaker:blockblockwrought_iron>, 0);
#Welding.addRecipe("blockwrought_iron", <tfc:metal/double_sheet/steel>, <tfc:metal/double_sheet/steel>, <contenttweaker:blockblocksteel>, 2);
#Welding.addRecipe("blocksteel", <tfc:metal/double_sheet/platinum>, <tfc:metal/double_sheet/platinum>, <contenttweaker:blockblockplatinum>, 3);
#Welding.addRecipe("blockplatinum", <tfc:metal/double_sheet/black_steel>, <tfc:metal/double_sheet/black_steel>, <contenttweaker:blockblockblack_steel>, 4);
#Welding.addRecipe("blockblack_steel", <tfc:metal/double_sheet/blue_steel>, <tfc:metal/double_sheet/blue_steel>, <contenttweaker:blockblockblue_steel>, 4);
#Welding.addRecipe("blockblue_steel", <tfc:metal/double_sheet/red_steel>, <tfc:metal/double_sheet/red_steel>, <contenttweaker:blockblockred_steel>, 5);
