#author KittenRaee
#priority 0

// Add metal blocks of TFC metal, using TFC metal sheet texture
// Mod required : ~
// Scripts required : tfc_blocks_metal

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;

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
