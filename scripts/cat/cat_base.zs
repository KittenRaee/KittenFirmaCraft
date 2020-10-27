import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.unidict.api.newShapedRecipeTemplate;

// CAST IRON
<minecraft:iron_ingot>.displayName = "Cast Iron Ingot";
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <tfc:metal/ingot/wrought_iron>);

// Coal coke in forge
ItemRegistry.registerFuel(<ore:fuelCoke>, 3600, 1550, true, true);

// Cloth "any"
val oreClothAny = <ore:clothAny>;
oreClothAny.add(<tfc:crop/product/burlap_cloth>,
<tfc:animal/product/wool_cloth>,
<tfc:animal/product/silk_cloth>);

// Bronze "any"
val gearAnyBronze = <ore:gearAnyBronze>;
gearAnyBronze.addAll(<ore:gearBronze>);
gearAnyBronze.addAll(<ore:gearBismuthBronze>);
gearAnyBronze.addAll(<ore:gearBlackBronze>);
recipes.replaceAllOccurences(<tfctech:metal/bronze_gear>, <ore:gearAnyBronze>);

recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotAnyBronze>);
recipes.replaceAllOccurences(<ore:sheetBronze>, <ore:sheetAnyBronze>);

//recipes.replaceAllOccurences(<ore:sheetBronze>, <ore:sheetAnyBronze>);

// Remove blocks
recipes.removeShapeless(<immersiveengineering:metal:*>, [<immersiveengineering:storage:*>]); //ingots
recipes.replaceAllOccurences(<minecraft:iron_block>, <tfc:metal/double_ingot/wrought_iron>); //iron
recipes.replaceAllOccurences(<immersiveengineering:storage:2>, <tfc:metal/double_ingot/lead>); //lead
recipes.replaceAllOccurences(<railcraft:metal:5>, <tfc:metal/double_ingot/lead>); //leadRC
recipes.replaceAllOccurences(<immersiveengineering:storage:0>, <tfc:metal/double_ingot/copper>); //copper
recipes.replaceAllOccurences(<immersiveengineering:storage:8>, <tfc:metal/double_ingot/steel>); //steel

// Golden produce
recipes.remove(<minecraft:golden_carrot>);
Welding.addRecipe("goldenCarrotWeld", <tfc:food/carrot>, <tfc:metal/double_ingot/gold>, <minecraft:golden_carrot>, 2);

// Add blocks back in
newShapedRecipeTemplate("block", 1,
    [
        ["doubleIngot", "doubleIngot"],
        ["doubleIngot", "doubleIngot"]        
    ]
);
newShapedRecipeTemplate("doubleIngot", 4,
    [
        ["block"]
    ]
);
