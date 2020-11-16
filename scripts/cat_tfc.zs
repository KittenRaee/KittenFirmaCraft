#author KittenRaee
#priority 10
#modloaded tfc
#modloaded tfctech
#modloaded tfcmedicinal
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Quern;
import mods.unidict.api.newShapedRecipeTemplate;

val rockTypes = [
    "granite",
    "diorite",
    "gabbro",
    "shale",
    "claystone",
    "rocksalt",
    "limestone",
    "conglomerate",
    "dolomite",
    "chert",
    "chalk",
    "rhyolite",
    "basalt",
    "andesite",
    "dacite",
    "quartzite",
    "slate",
    "phyllite",
    "schist",
    "gneiss",
    "marble",
    "blaimorite",
    "boninite",
    "carbonatite",
    "foidolite",
    "arkose",
    "jaspillite",
    "travertine",
    "wackestone",
    "blueschist",
    "greenschist",
    "cataclasite",
    "mylonite",
] as string[]; 

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
