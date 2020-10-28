#priority 99
#modloaded tfc
#modloaded tfctech
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

// Smooth rocks by type
    val smoothIgneousExtrusive = <ore:smoothIgneousExtrusive>;
    val smoothIgneousIntrusive = <ore:smoothIgneousIntrusive>;
    val smoothSedimentary = <ore:smoothSedimentary>;
    val smoothMetamorphic = <ore:smoothMetamorphic>;

    smoothIgneousExtrusive.add(
        <tfc:smooth/carbonatite>,
        <tfc:smooth/boninite>,
        <tfc:smooth/blaimorite>,
        <tfc:smooth/dacite>,
        <tfc:smooth/andesite>,
        <tfc:smooth/basalt>,
        <tfc:smooth/rhyolite>
    );
    smoothIgneousIntrusive.add(
        <tfc:smooth/granite>,
        <tfc:smooth/diorite>,
        <tfc:smooth/gabbro>,
        <tfc:smooth/foidolite>
    );
    smoothSedimentary.add(
        <tfc:smooth/shale>,
        <tfc:smooth/claystone>,
        <tfc:smooth/rocksalt>,
        <tfc:smooth/limestone>,
        <tfc:smooth/conglomerate>,
        <tfc:smooth/dolomite>,
        <tfc:smooth/chert>,
        <tfc:smooth/chalk>,
        <tfc:smooth/arkose>,
        <tfc:smooth/jaspillite>,
        <tfc:smooth/travertine>,
        <tfc:smooth/wackestone>
    );
    smoothMetamorphic.add(
        <tfc:smooth/quartzite>,
        <tfc:smooth/slate>,
        <tfc:smooth/phyllite>,
        <tfc:smooth/schist>,
        <tfc:smooth/gneiss>,
        <tfc:smooth/marble>,
        <tfc:smooth/blueschist>,
        <tfc:smooth/greenschist>,
        <tfc:smooth/cataclasite>,
        <tfc:smooth/mylonite>
    );

// cobble by type
    val cobbleIgneousExtrusive = <ore:cobbleIgneousExtrusive>;
    val cobbleIgneousIntrusive = <ore:cobbleIgneousIntrusive>;
    val cobbleSedimentary = <ore:cobbleSedimentary>;
    val cobbleMetamorphic = <ore:cobbleMetamorphic>;

    cobbleIgneousExtrusive.add(
        <tfc:cobble/carbonatite>,
        <tfc:cobble/boninite>,
        <tfc:cobble/blaimorite>,
        <tfc:cobble/dacite>,
        <tfc:cobble/andesite>,
        <tfc:cobble/basalt>,
        <tfc:cobble/rhyolite>
    );
    cobbleIgneousIntrusive.add(
        <tfc:cobble/granite>,
        <tfc:cobble/diorite>,
        <tfc:cobble/gabbro>,
        <tfc:cobble/foidolite>
    );
    cobbleSedimentary.add(
        <tfc:cobble/shale>,
        <tfc:cobble/claystone>,
        <tfc:cobble/rocksalt>,
        <tfc:cobble/limestone>,
        <tfc:cobble/conglomerate>,
        <tfc:cobble/dolomite>,
        <tfc:cobble/chert>,
        <tfc:cobble/chalk>,
        <tfc:cobble/arkose>,
        <tfc:cobble/jaspillite>,
        <tfc:cobble/travertine>,
        <tfc:cobble/wackestone>
    );
    cobbleMetamorphic.add(
        <tfc:cobble/quartzite>,
        <tfc:cobble/slate>,
        <tfc:cobble/phyllite>,
        <tfc:cobble/schist>,
        <tfc:cobble/gneiss>,
        <tfc:cobble/marble>,
        <tfc:cobble/blueschist>,
        <tfc:cobble/greenschist>,
        <tfc:cobble/cataclasite>,
        <tfc:cobble/mylonite>
    );

// Remove logs from oredict
    val oreDictLog = <ore:logWood>;
    val oreDictDebark = <ore:debarkedLogWood>;
    val oreDictPlank = <ore:plankWood>;

    oreDictLog.remove(
        <minecraft:log:*>,
        <minecraft:log2:*>
    );
    oreDictDebark.remove(
        <debark:debarked_log_minecraft_log:*>
    );
    oreDictPlank.remove(
        <minecraft:planks:*>
    );

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

// Golden produce
    recipes.remove(<minecraft:golden_carrot>);
    Welding.addRecipe("goldenCarrotWeld", <tfc:food/carrot>, <tfc:metal/double_ingot/gold>,     <minecraft:golden_carrot>, 2);

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
