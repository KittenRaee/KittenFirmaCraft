#author KittenRaee
#priority 0

// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : ~
// Scripts required : tfc_blocks_metal

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

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


for item in metals {
    var blockfactory = VanillaFactory.createBlock("block" + item, <blockmaterial:iron>);
    blockfactory.setBlockHardness(5.0);
    blockfactory.setBlockResistance(5.0);
    blockfactory.setToolClass("pickaxe");
    blockfactory.setToolLevel(0);
    blockfactory.setBlockSoundType(<soundtype:metal>);
    blockfactory.register();
}
