// Author : Alice in Game
// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : -
// Scripts required : TFC Metal Block

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

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


for item in metals {
    var blockfactory = VanillaFactory.createBlock("block" + item, <blockmaterial:iron>);
    blockfactory.setBlockHardness(5.0);
    blockfactory.setBlockResistance(5.0);
    blockfactory.setToolClass("pickaxe");
    blockfactory.setToolLevel(0);
    blockfactory.setBlockSoundType(<soundtype:metal>);
    blockfactory.register();
}

#var blockbismuth = VanillaFactory.createBlock("blockbismuth", <blockmaterial:iron>);
#blockbismuth.setBlockHardness(5.0);
#blockbismuth.setBlockResistance(5.0);
#blockbismuth.setToolClass("pickaxe");
#blockbismuth.setToolLevel(0);
#blockbismuth.setBlockSoundType(<soundtype:metal>);
#blockbismuth.register();
#
#var blockbismuth_bronze = VanillaFactory.createBlock("blockbismuth_bronze", <blockmaterial:iron>);
#blockbismuth_bronze.setBlockHardness(5.0);
#blockbismuth_bronze.setBlockResistance(5.0);
#blockbismuth_bronze.setToolClass("pickaxe");
#blockbismuth_bronze.setToolLevel(0);
#blockbismuth_bronze.setBlockSoundType(<soundtype:metal>);
#blockbismuth_bronze.register();
#
#var blockblack_bronze = VanillaFactory.createBlock("blockblack_bronze", <blockmaterial:iron>);
#blockblack_bronze.setBlockHardness(5.0);
#blockblack_bronze.setBlockResistance(5.0);
#blockblack_bronze.setToolClass("pickaxe");
#blockblack_bronze.setToolLevel(0);
#blockblack_bronze.setBlockSoundType(<soundtype:metal>);
#blockblack_bronze.register();
#
#var blockbrass = VanillaFactory.createBlock("blockbrass", <blockmaterial:iron>);
#blockbrass.setBlockHardness(5.0);
#blockbrass.setBlockResistance(5.0);
#blockbrass.setToolClass("pickaxe");
#blockbrass.setToolLevel(0);
#blockbrass.setBlockSoundType(<soundtype:metal>);
#blockbrass.register();
#
#var blockbronze = VanillaFactory.createBlock("blockbronze", <blockmaterial:iron>);
#blockbronze.setBlockHardness(5.0);
#blockbronze.setBlockResistance(5.0);
#blockbronze.setToolClass("pickaxe");
#blockbronze.setToolLevel(0);
#blockbronze.setBlockSoundType(<soundtype:metal>);
#blockbronze.register();
#
#var blockcopper = VanillaFactory.createBlock("blockcopper", <blockmaterial:iron>);
#blockcopper.setBlockHardness(5.0);
#blockcopper.setBlockResistance(5.0);
#blockcopper.setToolClass("pickaxe");
#blockcopper.setToolLevel(0);
#blockcopper.setBlockSoundType(<soundtype:metal>);
#blockcopper.register();
#
#var blockgold = VanillaFactory.createBlock("blockgold", <blockmaterial:iron>);
#blockgold.setBlockHardness(5.0);
#blockgold.setBlockResistance(5.0);
#blockgold.setToolClass("pickaxe");
#blockgold.setToolLevel(0);
#blockgold.setBlockSoundType(<soundtype:metal>);
#blockgold.register();
#
#var blocklead = VanillaFactory.createBlock("blocklead", <blockmaterial:iron>);
#blocklead.setBlockHardness(5.0);
#blocklead.setBlockResistance(5.0);
#blocklead.setToolClass("pickaxe");
#blocklead.setToolLevel(0);
#blocklead.setBlockSoundType(<soundtype:metal>);
#blocklead.register();
#
#var blocknickel = VanillaFactory.createBlock("blocknickel", <blockmaterial:iron>);
#blocknickel.setBlockHardness(5.0);
#blocknickel.setBlockResistance(5.0);
#blocknickel.setToolClass("pickaxe");
#blocknickel.setToolLevel(0);
#blocknickel.setBlockSoundType(<soundtype:metal>);
#blocknickel.register();
#
#var blockrose_gold = VanillaFactory.createBlock("blockrose_gold", <blockmaterial:iron>);
#blockrose_gold.setBlockHardness(5.0);
#blockrose_gold.setBlockResistance(5.0);
#blockrose_gold.setToolClass("pickaxe");
#blockrose_gold.setToolLevel(0);
#blockrose_gold.setBlockSoundType(<soundtype:metal>);
#blockrose_gold.register();
#
#var blocksilver = VanillaFactory.createBlock("blocksilver", <blockmaterial:iron>);
#blocksilver.setBlockHardness(5.0);
#blocksilver.setBlockResistance(5.0);
#blocksilver.setToolClass("pickaxe");
#blocksilver.setToolLevel(0);
#blocksilver.setBlockSoundType(<soundtype:metal>);
#blocksilver.register();
#
#var blocktin = VanillaFactory.createBlock("blocktin", <blockmaterial:iron>);
#blocktin.setBlockHardness(5.0);
#blocktin.setBlockResistance(5.0);
#blocktin.setToolClass("pickaxe");
#blocktin.setToolLevel(0);
#blocktin.setBlockSoundType(<soundtype:metal>);
#blocktin.register();
#
#var blockzinc = VanillaFactory.createBlock("blockzinc", <blockmaterial:iron>);
#blockzinc.setBlockHardness(5.0);
#blockzinc.setBlockResistance(5.0);
#blockzinc.setToolClass("pickaxe");
#blockzinc.setToolLevel(0);
#blockzinc.setBlockSoundType(<soundtype:metal>);
#blockzinc.register();
#
#var blocksterling_silver = VanillaFactory.createBlock("blocksterling_silver", <blockmaterial:iron>);
#blocksterling_silver.setBlockHardness(5.0);
#blocksterling_silver.setBlockResistance(5.0);
#blocksterling_silver.setToolClass("pickaxe");
#blocksterling_silver.setToolLevel(0);
#blocksterling_silver.setBlockSoundType(<soundtype:metal>);
#blocksterling_silver.register();
#
#var blockwrought_iron = VanillaFactory.createBlock("blockwrought_iron", <blockmaterial:iron>);
#blockwrought_iron.setBlockHardness(5.0);
#blockwrought_iron.setBlockResistance(5.0);
#blockwrought_iron.setToolClass("pickaxe");
#blockwrought_iron.setToolLevel(0);
#blockwrought_iron.setBlockSoundType(<soundtype:metal>);
#blockwrought_iron.register();
#
#var blocksteel = VanillaFactory.createBlock("blocksteel", <blockmaterial:iron>);
#blocksteel.setBlockHardness(5.0);
#blocksteel.setBlockResistance(5.0);
#blocksteel.setToolClass("pickaxe");
#blocksteel.setToolLevel(0);
#blocksteel.setBlockSoundType(<soundtype:metal>);
#blocksteel.register();
#
#var blockplatinum = VanillaFactory.createBlock("blockplatinum", <blockmaterial:iron>);
#blockplatinum.setBlockHardness(5.0);
#blockplatinum.setBlockResistance(5.0);
#blockplatinum.setToolClass("pickaxe");
#blockplatinum.setToolLevel(0);
#blockplatinum.setBlockSoundType(<soundtype:metal>);
#blockplatinum.register();
#
#var blockblack_steel = VanillaFactory.createBlock("blockblack_steel", <blockmaterial:iron>);
#blockblack_steel.setBlockHardness(5.0);
#blockblack_steel.setBlockResistance(5.0);
#blockblack_steel.setToolClass("pickaxe");
#blockblack_steel.setToolLevel(0);
#blockblack_steel.setBlockSoundType(<soundtype:metal>);
#blockblack_steel.register();
#
#var blockblue_steel = VanillaFactory.createBlock("blockblue_steel", <blockmaterial:iron>);
#blockblue_steel.setBlockHardness(5.0);
#blockblue_steel.setBlockResistance(5.0);
#blockblue_steel.setToolClass("pickaxe");
#blockblue_steel.setToolLevel(0);
#blockblue_steel.setBlockSoundType(<soundtype:metal>);
#blockblue_steel.register();
#
#var blockred_steel = VanillaFactory.createBlock("blockred_steel", <blockmaterial:iron>);
#blockred_steel.setBlockHardness(5.0);
#blockred_steel.setBlockResistance(5.0);
#blockred_steel.setToolClass("pickaxe");
#blockred_steel.setToolLevel(0);
#blockred_steel.setBlockSoundType(<soundtype:metal>);
#blockred_steel.register();
