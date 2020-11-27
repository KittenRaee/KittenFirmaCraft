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
    <contenttweaker:blockantimony>,
    <contenttweaker:blocklithium>,
    <contenttweaker:blockconstantan>,
    <contenttweaker:blockelectrum>,
    <contenttweaker:blocknickel_silver>,
    <contenttweaker:blockred_alloy>,
    <contenttweaker:blockmithril>,
    <contenttweaker:blockinvar>,
    <contenttweaker:blockaluminium>,
    <contenttweaker:blockaluminium_brass>,
    <contenttweaker:blockmagnesium>,
    <contenttweaker:blockmanganese>,
    <contenttweaker:blockboron>,
    <contenttweaker:blockmagnesium_diboride>,
    <contenttweaker:blockthorium>,
    <contenttweaker:blockuranium>,
    <contenttweaker:blockardite>,
    <contenttweaker:blockcobalt>,
    <contenttweaker:blockmanyullyn>,
    <contenttweaker:blockhsla_steel>,
    <contenttweaker:blockferroboron>,
    <contenttweaker:blockberyllium>,
    <contenttweaker:blockberyllium_copper>,
    <contenttweaker:blockosmium>,
    <contenttweaker:blocktitanium>,
    <contenttweaker:blocktungsten>,
    <contenttweaker:blocktungsten_steel>,
    <contenttweaker:blockzirconium>,
    <contenttweaker:blockzircaloy>,
    <contenttweaker:blocktough>
] as IItemStack[];

val doubleIngots = [
    <tfc:metal/double_ingot/antimony>,
    <tfc:metal/double_ingot/lithium>,
    <tfc:metal/double_ingot/constantan>,
    <tfc:metal/double_ingot/electrum>,
    <tfc:metal/double_ingot/nickel_silver>,
    <tfc:metal/double_ingot/red_alloy>,
    <tfc:metal/double_ingot/mithril>,
    <tfc:metal/double_ingot/invar>,
    <tfc:metal/double_ingot/aluminium>,
    <tfc:metal/double_ingot/aluminium_brass>,
    <tfc:metal/double_ingot/magnesium>,
    <tfc:metal/double_ingot/manganese>,
    <tfc:metal/double_ingot/boron>,
    <tfc:metal/double_ingot/magnesium_diboride>,
    <tfc:metal/double_ingot/thorium>,
    <tfc:metal/double_ingot/uranium>,
    <tfc:metal/double_ingot/ardite>,
    <tfc:metal/double_ingot/cobalt>,
    <tfc:metal/double_ingot/manyullyn>,
    <tfc:metal/double_ingot/hsla_steel>,
    <tfc:metal/double_ingot/ferroboron>,
    <tfc:metal/double_ingot/beryllium>,
    <tfc:metal/double_ingot/beryllium_copper>,
    <tfc:metal/double_ingot/osmium>,
    <tfc:metal/double_ingot/titanium>,
    <tfc:metal/double_ingot/tungsten>,
    <tfc:metal/double_ingot/tungsten_steel>,
    <tfc:metal/double_ingot/zirconium>,
    <tfc:metal/double_ingot/zircaloy>,
    <tfc:metal/double_ingot/tough>
] as IItemStack[];

val oreDicts = [
    <ore:blockantimony>,
    <ore:blocklithium>,
    <ore:blockconstantan>,
    <ore:blockelectrum>,
    <ore:blocknickel_silver>,
    <ore:blockred_alloy>,
    <ore:blockmithril>,
    <ore:blockinvar>,
    <ore:blockaluminium>,
    <ore:blockaluminium_brass>,
    <ore:blockmagnesium>,
    <ore:blockmanganese>,
    <ore:blockboron>,
    <ore:blockmagnesium_diboride>,
    <ore:blockthorium>,
    <ore:blockuranium>,
    <ore:blockardite>,
    <ore:blockcobalt>,
    <ore:blockmanyullyn>,
    <ore:blockhsla_steel>,
    <ore:blockferroboron>,
    <ore:blockberyllium>,
    <ore:blockberyllium_copper>,
    <ore:blockosmium>,
    <ore:blocktitanium>,
    <ore:blocktungsten>,
    <ore:blocktungsten_steel>,
    <ore:blockzirconium>,
    <ore:blockzircaloy>,
    <ore:blocktough>
] as IOreDictEntry[];

val metals = [
    "antimony",
    "lithium",
    "constantan",
    "electrum",
    "nickel_silver",
    "red_alloy",
    "mithril",
    "invar",
    "aluminium",
    "aluminium_brass",
    "magnesium",
    "manganese",
    "boron",
    "magnesium_diboride",
    "thorium",
    "uranium",
    "ardite",
    "cobalt",
    "manyullyn",
    "hsla_steel",
    "ferroboron",
    "beryllium",
    "beryllium_copper",
    "osmium",
    "titanium",
    "tungsten",
    "tungsten_steel",
    "zirconium",
    "zircaloy",
    "tough"
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
