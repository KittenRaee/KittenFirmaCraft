// Author : Alice in Game
// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : -
// Scripts required : TFC Metal Block CT

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;

//Add oreDict value to block
<ore:blockBismuth>.add(<contenttweaker:blockbismuth>);
<ore:blockBismuth_Bronze>.add(<contenttweaker:blockbismuth_bronze>);
<ore:blockBlackBronze>.add(<contenttweaker:blockblack_bronze>);
<ore:blockBrass>.add(<contenttweaker:blockbrass>);
<ore:blockBronze>.add(<contenttweaker:blockbronze>);
<ore:blockCopper>.add(<contenttweaker:blockcopper>);
<ore:blockGold>.add(<contenttweaker:blockgold>);
<ore:blockLead>.add(<contenttweaker:blocklead>);
<ore:blockNickel>.add(<contenttweaker:blocknickel>);
<ore:blockRoseGold>.add(<contenttweaker:blockrose_gold>);
<ore:blockSilver>.add(<contenttweaker:blocksilver>);
<ore:blockTin>.add(<contenttweaker:blocktin>);
<ore:blockZinc>.add(<contenttweaker:blockzinc>);
<ore:blockSterlingSilver>.add(<contenttweaker:blocksterling_silver>);
<ore:blockWroughtIron>.add(<contenttweaker:blockwrought_iron>);
<ore:blockSteel>.add(<contenttweaker:blocksteel>);
<ore:blockPlatinum>.add(<contenttweaker:blockplatinum>);
<ore:blockBlackSteel>.add(<contenttweaker:blockblack_steel>);
<ore:blockBlueSteel>.add(<contenttweaker:blockblue_steel>);
<ore:blockRedSteel>.add(<contenttweaker:blockred_steel>);
<ore:blockAnyBronze>.add(<contenttweaker:blockbismuth_bronze>,<contenttweaker:blockblack_bronze>,<contenttweaker:blockbronze>);

// Add metal value to melt block
ItemRegistry.registerItemMetal(<contenttweaker:blockbismuth>, "BISMUTH", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockbismuth_bronze>, "BISMUTH_BRONZE", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockblack_bronze>, "BLACK_BRONZE", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockbrass>, "BRASS", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockbronze>, "BRONZE", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockcopper>, "COPPER", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockgold>, "GOLD", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocklead>, "LEAD", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocknickel>, "NICKEL", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockrose_gold>, "ROSE_GOLD", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocksilver>, "SILVER", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocktin>, "TIN", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockzinc>, "ZINC", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocksterling_silver>, "STERLING_SILVER", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockwrought_iron>, "WROUGHT_IRON", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blocksteel>, "STEEL", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockplatinum>, "PLATINUM", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockblack_steel>, "BLACK_STEEL", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockblue_steel>, "BLUE_STEEL", 800, true);
ItemRegistry.registerItemMetal(<contenttweaker:blockred_steel>, "RED_STEEL", 800, true);

//Add block size
ItemRegistry.registerItemSize(<contenttweaker:blockbismuth>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockbismuth_bronze>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockblack_bronze>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockbrass>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockbronze>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockcopper>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockgold>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocklead>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocknickel>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockrose_gold>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocksilver>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocktin>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockzinc>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocksterling_silver>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockwrought_iron>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blocksteel>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockplatinum>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockblack_steel>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockblue_steel>, "LARGE", "MEDIUM");
ItemRegistry.registerItemSize(<contenttweaker:blockred_steel>, "LARGE", "MEDIUM");

//Add recipe : Weld two double sheets
Welding.addRecipe("blockbismuth", <tfc:metal/double_sheet/bismuth_bronze>, <tfc:metal/double_sheet/bismuth_bronze>, <contenttweaker:blockbismuth_bronze>, 0);
Welding.addRecipe("blockbismuth_bronze", <tfc:metal/double_sheet/black_bronze>, <tfc:metal/double_sheet/black_bronze>, <contenttweaker:blockblack_bronze>, 1);
Welding.addRecipe("blockblack_bronze", <tfc:metal/double_sheet/brass>, <tfc:metal/double_sheet/brass>, <contenttweaker:blockbrass>, 1);
Welding.addRecipe("blockbrass", <tfc:metal/double_sheet/bronze>, <tfc:metal/double_sheet/bronze>, <contenttweaker:blockbronze>, 0);
Welding.addRecipe("blockbronze", <tfc:metal/double_sheet/copper>, <tfc:metal/double_sheet/copper>, <contenttweaker:blockcopper>, 1);
Welding.addRecipe("blockcopper", <tfc:metal/double_sheet/gold>, <tfc:metal/double_sheet/gold>, <contenttweaker:blockgold>, 0);
Welding.addRecipe("blockgold", <tfc:metal/double_sheet/lead>, <tfc:metal/double_sheet/lead>, <contenttweaker:blocklead>, 0);
Welding.addRecipe("blocklead", <tfc:metal/double_sheet/nickel>, <tfc:metal/double_sheet/nickel>, <contenttweaker:blocknickel>, 0);
Welding.addRecipe("blocknickel", <tfc:metal/double_sheet/rose_gold>, <tfc:metal/double_sheet/rose_gold>, <contenttweaker:blockrose_gold>, 0);
Welding.addRecipe("blockrose_gold", <tfc:metal/double_sheet/silver>, <tfc:metal/double_sheet/silver>, <contenttweaker:blocksilver>, 0);
Welding.addRecipe("blocksilver", <tfc:metal/double_sheet/tin>, <tfc:metal/double_sheet/tin>, <contenttweaker:blocktin>, 0);
Welding.addRecipe("blocktin", <tfc:metal/double_sheet/zinc>, <tfc:metal/double_sheet/zinc>, <contenttweaker:blockzinc>, 0);
Welding.addRecipe("blockzinc", <tfc:metal/double_sheet/sterling_silver>, <tfc:metal/double_sheet/sterling_silver>, <contenttweaker:blocksterling_silver>, 0);
Welding.addRecipe("blocksterling_silver", <tfc:metal/double_sheet/wrought_iron>, <tfc:metal/double_sheet/wrought_iron>, <contenttweaker:blockwrought_iron>, 0);
Welding.addRecipe("blockwrought_iron", <tfc:metal/double_sheet/steel>, <tfc:metal/double_sheet/steel>, <contenttweaker:blocksteel>, 2);
Welding.addRecipe("blocksteel", <tfc:metal/double_sheet/platinum>, <tfc:metal/double_sheet/platinum>, <contenttweaker:blockplatinum>, 3);
Welding.addRecipe("blockplatinum", <tfc:metal/double_sheet/black_steel>, <tfc:metal/double_sheet/black_steel>, <contenttweaker:blockblack_steel>, 4);
Welding.addRecipe("blockblack_steel", <tfc:metal/double_sheet/blue_steel>, <tfc:metal/double_sheet/blue_steel>, <contenttweaker:blockblue_steel>, 4);
Welding.addRecipe("blockblue_steel", <tfc:metal/double_sheet/red_steel>, <tfc:metal/double_sheet/red_steel>, <contenttweaker:blockred_steel>, 5);