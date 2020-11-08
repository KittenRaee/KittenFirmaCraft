#modloaded bountifulbaubles
import crafttweaker.potions.IPotion;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Welding;

val recallPot = <bountifulbaubles:potionrecall>;
val wormholePot = <bountifulbaubles:potionwormhole>;

Anvil.addRecipe("bountiful_ironRing", <tfctech:metal/wrought_iron_long_rod>, <bountifulbaubles:ringiron>, 3, "general", "SHRINK_NOT_LAST", "BEND_NOT_LAST", "BEND_LAST");
Welding.addRecipe("bountiful_cobaltShield", <tfc:metal/shield/cobalt>, <tfc:metal/double_ingot/electrum>, <bountifulbaubles:shieldcobalt>.withTag({HideFlags: 2}), 3);
