#author KittenRaee
#priority 0
#modloaded tfc

// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : ~
// Scripts required : tfc_blocks_metal

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
