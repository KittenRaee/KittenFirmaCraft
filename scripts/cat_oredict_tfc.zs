#author KittenRaee
#priority 99
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

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

// TFC rods to stick oredict
    val stickIron = <ore:stickIron>;
    stickIron.addAll(<ore:stickWroughtIron>);
    stickIron.addAll(<ore:rodIron>);
    stickIron.add(<tfc:metal/rod/wrought_iron>);

    val stickGold = <ore:stickGold>;
    stickGold.addAll(<ore:rodGold>);
    stickGold.add(<immersiveposts:metal_rods:0>);
    stickIron.add(<tfc:metal/rod/gold>);

    val stickSteel = <ore:stickSteel>;
    stickSteel.addAll(<ore:rodSteel>);
    stickIron.add(<tfc:metal/rod/steel>);

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

// Igneous any
    val smoothIgneousAny = <ore:smoothIgneousAny>;
    val cobbleIgnousAny = <ore:cobbleIgnousAny>;
    val rockIgneousAny = <ore:rockIgneousAny>;
    val brickIgneousAny = <ore:brickIgneousAny>;
    val rawIgneousAny = <ore:rawIgneousAny>;

    smoothIgneousAny.addAll(<ore:smoothIgneousExtrusive>);
    smoothIgneousAny.addAll(<ore:smoothIgneousIntrusive>);

    cobbleIgnousAny.addAll(<ore:cobbleIgneousExtrusive>);
    cobbleIgnousAny.addAll(<ore:cobbleIgneousIntrusive>);  

    rockIgneousAny.addAll(<ore:rockIgneousExtrusive>);
    rockIgneousAny.addAll(<ore:rockIgneousIntrusive>);

    brickIgneousAny.addAll(<ore:brickIgneousExtrusive>);
    brickIgneousAny.addAll(<ore:brickIgneousIntrusive>);

    rawIgneousAny.addAll(<ore:stoneIgneousExtrusive>);
    rawIgneousAny.addAll(<ore:stoneIgneousIntrusive>);


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

// Remove vanilla Sand from oredict
    val oreDictSand = <ore:sand>;
    oreDictSand.remove(
        <minecraft:sand:*>
    );

// Remove vanilla Gravel from oredict
    val oreDictGravel = <ore:gravel>;
    oreDictGravel.remove(
        <minecraft:gravel>
    );

// Remove vanilla Chest from oredict
    val oreDictChest = <ore:chest>;
    oreDictChest.remove(
        <minecraft:chest>
    );
        val oreDictChest2 = <ore:chestWood>;
    oreDictChest2.remove(
        <minecraft:chest>
    );


// Add Glowstone
    val oreIngotRadioactive = <ore:ingotRadioactive>;
    val oreGlowOre = <ore:glowOre>;

    oreIngotRadioactive.add(
        <tfc:metal/ingot/thorium>, 
        <tfc:metal/ingot/uranium>
    );
    oreGlowOre.add(
        <tfc:ore/carobbiite>,
        <tfc:ore/rhodochrosite>,
        <tfc:ore/arsenic>
    );
