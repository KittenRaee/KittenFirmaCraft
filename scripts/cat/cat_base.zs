import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;

// CAST IRON
<minecraft:iron_ingot>.displayName = "Cast Iron Ingot";

// Coal coke in forge
ItemRegistry.registerFuel(<ore:fuelCoke>, 3600, 1550, true, true);

// Cloth "any"
val oreClothAny = <ore:clothAny>;
oreClothAny.add(<tfc:crop/product/burlap_cloth>,
<tfc:animal/product/wool_cloth>,
<tfc:animal/product/silk_cloth>);

// Remove blocks
recipes.removeShapeless(<immersiveengineering:metal:*>, [<immersiveengineering:storage:*>]);
recipes.replaceAllOccurences(<minecraft:iron_block>, <tfc:metal/double_ingot/wrought_iron>);
recipes.replaceAllOccurences(<immersiveengineering:storage:2>, <tfc:metal/double_ingot/lead>);
recipes.replaceAllOccurences(<railcraft:metal:5>, <tfc:metal/double_ingot/lead>);
recipes.replaceAllOccurences(<immersiveengineering:storage:0>, <tfc:metal/double_ingot/copper>);

// Golden produce
recipes.remove(<minecraft:golden_carrot>);
Welding.addRecipe("goldenCarrotWeld", <tfc:food/carrot>, <tfc:metal/double_ingot/gold>, <minecraft:golden_carrot>, 2);
