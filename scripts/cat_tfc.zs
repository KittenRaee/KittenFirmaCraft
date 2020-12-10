#author KittenRaee
#priority 10
#modloaded tfc
#modloaded tfctech
#modloaded tfcmedicinal
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Quern;
import mods.unidict.api.newShapedRecipeTemplate;

furnace.removeAll();

// CAST IRON
    <minecraft:iron_ingot>.displayName = "Cast Iron Ingot";
    recipes.replaceAllOccurences(<minecraft:iron_ingot>, <tfc:metal/ingot/wrought_iron>);

// Coal coke in forge
    ItemRegistry.registerFuel(<ore:fuelCoke>, 3600, 1550, true, true);

// Add Glowstone
    Quern.addRecipe("glowstoneGrind", <ore:glowOre>, <minecraft:glowstone_dust> * 4);

// Remove blocks
    recipes.removeShapeless(<immersiveengineering:metal:*>, [<immersiveengineering:storage:*>]); 
    // ingots
    recipes.replaceAllOccurences(<minecraft:iron_block>, <tfc:metal/double_ingot/wrought_iron>); 
    // iron
    recipes.replaceAllOccurences(<immersiveengineering:storage:2>, <tfc:metal/double_ingot/lead>); 
    // lead
    recipes.replaceAllOccurences(<railcraft:metal:5>, <tfc:metal/double_ingot/lead>);
    // leadRC
    recipes.replaceAllOccurences(<immersiveengineering:storage:0>, <tfc:metal/double_ingot/copper>); 
    // copper
    recipes.replaceAllOccurences(<immersiveengineering:storage:8>, <tfc:metal/double_ingot/steel>);  
    // steel

// Remove Nuggets
# TODO

# Add blocks back in
#    newShapedRecipeTemplate("block", 1,
#        [
#            ["doubleIngot", "doubleIngot"],
#            ["doubleIngot", "doubleIngot"]        
#        ]
#    );
#    newShapedRecipeTemplate("ingot", 8,
#        [
#            ["block"]
#        ]
#    );

// TFC Medicinal mortar and pestle fix
    recipes.remove(<tfcmedicinal:mpestle>);
    recipes.addShapeless("medicinalMortarAndPestleIntrusive", <tfcmedicinal:mpestle>, [<ore:rockIgneousIntrusive>, <ore:chisel>, <ore:stoneIgneousIntrusive>, <ore:hammer>]);
    recipes.addShapeless("medicinalMortarAndPestleExtrusive", <tfcmedicinal:mpestle>, [<ore:rockIgneousExtrusive>, <ore:chisel>, <ore:stoneIgneousExtrusive>, <ore:hammer>]);
#    recipes.addShapeless("medicinalMortarAndPestleAny", <tfcmedicinal:mpestle>, [<ore:rockIgneousAny>, <ore:chisel>, <ore:rawIgneousAny>, <ore:hammer>]);
   

// Random TFC Fixes
    recipes.replaceAllOccurences(<tfc:brass_mechanisms>, <tfctech:metal/brass_gear>);
    recipes.replaceAllOccurences(<tfc:metal/rod/wrought_iron>, <ore:stickIron>);

// Anvil
    recipes.addShaped("tfc_anvilVanilla", <minecraft:anvil>, [
        [<tfc:metal/double_sheet/steel>, <tfc:metal/double_sheet/steel>, <tfc:metal/double_sheet/steel>],
        [null, <tfc:metal/double_ingot/wrought_iron>, null],
        [<tfc:metal/double_ingot/wrought_iron>, <tfc:metal/double_ingot/wrought_iron>, <tfc:metal/double_ingot/wrought_iron>]
    ]);
    recipes.remove(<railcraft:anvil>);
    recipes.addShaped("tfc_anvilRailcraft", <railcraft:anvil>, [
        [<tfc:metal/double_sheet/black_steel>, <tfc:metal/double_sheet/black_steel>, <tfc:metal/double_sheet/black_steel>],
        [null, <tfc:metal/double_ingot/steel>, null],
        [<tfc:metal/double_ingot/steel>, <tfc:metal/double_ingot/steel>, <tfc:metal/double_ingot/steel>]
    ]);

// Fishbones Fix
    recipes.removeShapeless(<minecraft:dye:15>, [<jaff:fish_bones>]);
    Quern.addRecipe("quern_fishBones", <jaff:fish_bones>, <minecraft:dye:15> * 2);

// Add alt mud recipe
#    for i, name in scripts.lists.rocks.TFC_namesList {
#        Barrel.removeRecipe(scripts.lists.rocks.TFC_wetMudList[i], null);
#        Barrel.addRecipe(
#            "mud_gravel_" + name,
#            scripts.lists.rocks.TFC_gravelList[i] * 4, <liquid:fresh_water> * 250,
#            scripts.lists.rocks.TFC_wetMudList[i] * 4, null, 8
#        );
#        Barrel.addRecipe(
#            "mud_dirt_" + name,
#            scripts.lists.rocks.TFC_dirtList[i] * 4, <liquid:fresh_water> * 250,
#            scripts.lists.rocks.TFC_wetMudList[i] * 4, null, 8
#        );
#    }

// Add moss recipes
    for type, item in scripts.lists.rocks_new.geoTypes {
        Barrel.removeRecipe(item["cobbleMoss"], <liquid:fresh_water> * 50);
        Barrel.removeRecipe(item["bricksMoss"], <liquid:fresh_water> * 50);
        Barrel.addRecipe(
            "mossify_cobble_" + type,
            item["cobble"] * 4, <liquid:fresh_water> * 250,
            item["cobbleMoss"] * 4, null,
            8
        );
        Barrel.addRecipe(
            "mossify_bricks_" + type,
            item["bricks"] * 4, <liquid:fresh_water> * 250,
            item["bricksMoss"] * 4, null,
            8
        );
        recipes.addShapeless("testtest_" + type, <minecraft:diamond>, [item["cobbleMoss"]]);
    }

#    for i, name in scripts.lists.rocks.TFC_namesList {
#        Barrel.removeRecipe(scripts.lists.rocks.TFC_cobbleMossList[i], <liquid:fresh_water> * 50);
#        Barrel.removeRecipe(scripts.lists.rocks.TFC_bricksMossList[i], <liquid:fresh_water> * 50);
#        Barrel.addRecipe(
#            "moss_cobble_" + name,
#            scripts.lists.rocks.TFC_cobbleList[i] * 4, <liquid:fresh_water> * 250,
#            scripts.lists.rocks.TFC_cobbleMossList[i] * 4, null, 8
#        );
#        Barrel.addRecipe(
#            "moss_bricks_" + name,
#            scripts.lists.rocks.TFC_bricksList[i] * 4, <liquid:fresh_water> * 250,
#            scripts.lists.rocks.TFC_bricksMossList[i] * 4, null, 8
#        );
#    }

// Borax fix
    Quern.removeRecipe(<tfc:metal/dust/boron>);
    Quern.addRecipe("tfc_boraxFluxFix", <tfc:ore/borax>, <tfc:powder/flux> * 4);

// Red Juice
    Barrel.addRecipe(
        "red_juice_powder",
        <minecraft:redstone>, <liquid:hot_water> * 50,
        <liquid:red_juice> * 50, 1
    );
    Barrel.addRecipe(
        "red_juice_block",
        <minecraft:redstone_block>, <liquid:hot_water> * 500,
        <liquid:red_juice> * 500, 1
    );
