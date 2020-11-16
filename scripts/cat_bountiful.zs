#author KittenRaee
#modloaded bountifulbaubles
#modloaded tfc
#modloaded tfctech
import crafttweaker.potions.IPotion;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.ItemRegistry;
import mods.dropt.Dropt;

val recallPot = <bountifulbaubles:potionrecall>;
val wormholePot = <bountifulbaubles:potionwormhole>;
val spectralSilt = <bountifulbaubles:spectralsilt>;

// TODO
# Miner's Ring          ✓
# Balloon               ✓
# Reforging Station     ✓

// Iron Ring
    Anvil.addRecipe("bountiful_ironRing", <tfctech:metal/wrought_iron_long_rod>, <bountifulbaubles:ringiron>, 3, "general", "SHRINK_NOT_LAST", "BEND_NOT_LAST", "BEND_LAST");
// Miner's Ring
    Welding.addRecipe("bountiful_minerBauble", <bountifulbaubles:ringiron>, <tfc:metal/pick_head/wrought_iron>, <baubles:ring>, 3);
// Cobalt Shield
    Welding.addRecipe("bountiful_cobaltShield", <tfc:metal/shield/cobalt>, <tfc:metal/double_ingot/electrum>, <bountifulbaubles:shieldcobalt>.withTag({HideFlags: 2}), 3);
// Obsidian Skull
    Anvil.addRecipe("bountiful_obsidianSkull", <minecraft:obsidian>, <bountifulbaubles:trinketobsidianskull>, 5, "general", "HIT_THIRD_LAST", "HIT_SECOND_LAST", "PUNCH_LAST");
// Obsidian Shield
    Welding.addRecipe("bountiful_obsidianShield", <bountifulbaubles:shieldcobalt>, <bountifulbaubles:trinketobsidianskull>, <bountifulbaubles:shieldobsidian>, 5);
// Sunglasses
    recipes.addShaped("bountiful_sunglasses", <bountifulbaubles:trinketmagiclenses>, [
        [<ore:paneGlassBlack>, <ore:stickGold>, <ore:paneGlassBlack>]
    ]);
// Forbidden Fruit
    recipes.addShapedMirrored("bountiful_forbiddenFruit", <bountifulbaubles:trinketapple>, [
        [<ore:categoryFruit>,       <ore:categoryBread>,        <ore:categoryVegetable>],
        [null,                      <minecraft:golden_apple>,   null],
        [<ore:categoryDairy>,   <ore:categoryGrain>,        <ore:categoryCookedMeat>]
    ]);
// Vitamins
    recipes.addShapeless("bountiful_vitamins", <bountifulbaubles:trinketvitamins>, [<tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "acuity_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "death_sickness_antidote", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "nourishing_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "rejuvenating_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "stomach_strength_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "lung_strength_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "keen_sight_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "health_boost_concoction", Amount: 100}}), <tfcmedicinal:medicine_vial>.withTag({Fluid: {FluidName: "salt_water", Amount: 100}})
]);
// Ring of Overclocking
    Welding.addRecipe("bountiful_ringOC", <bountifulbaubles:ringiron>, <tfctech:metal/cobalt_gear>, <bountifulbaubles:ringoverclocking>, 4);
// Ring of Free Action
    Welding.addRecipe("bountiful_ringFree", <bountifulbaubles:ringoverclocking>, <tfctech:metal/blue_steel_gear>, <bountifulbaubles:ringfreeaction>, 6);
// Bezoar
    val cinnabarList = [
        "tfc:ore/cinnabar/granite",
        "tfc:ore/cinnabar/diorite",
        "tfc:ore/cinnabar/gabbro",
        "tfc:ore/cinnabar/shale",
        "tfc:ore/cinnabar/claystone",
        "tfc:ore/cinnabar/rocksalt",
        "tfc:ore/cinnabar/limestone",
        "tfc:ore/cinnabar/conglomerate",
        "tfc:ore/cinnabar/dolomite",
        "tfc:ore/cinnabar/chert",
        "tfc:ore/cinnabar/chalk",
        "tfc:ore/cinnabar/rhyolite",
        "tfc:ore/cinnabar/basalt",
        "tfc:ore/cinnabar/andesite",
        "tfc:ore/cinnabar/dacite",
        "tfc:ore/cinnabar/quartzite",
        "tfc:ore/cinnabar/slate",
        "tfc:ore/cinnabar/phyllite",
        "tfc:ore/cinnabar/schist",
        "tfc:ore/cinnabar/gneiss",
        "tfc:ore/cinnabar/marble",
        "tfc:ore/cinnabar/blaimorite",
        "tfc:ore/cinnabar/boninite",
        "tfc:ore/cinnabar/carbonatite",
        "tfc:ore/cinnabar/foidolite",
        "tfc:ore/cinnabar/arkose",
        "tfc:ore/cinnabar/jaspillite",
        "tfc:ore/cinnabar/travertine",
        "tfc:ore/cinnabar/wackestone",
        "tfc:ore/cinnabar/blueschist",
        "tfc:ore/cinnabar/greenschist",
        "tfc:ore/cinnabar/cataclasite",
        "tfc:ore/cinnabar/mylonite"
    ] as string[];

    for i in cinnabarList {
        Dropt.list("bountiful_bezoar")    
          .add(Dropt.rule()
              .matchBlocks([i])
              .replaceStrategy("ADD")
              .addDrop(Dropt.drop()
                  .selector(Dropt.weight(187)) // drops nothing if selected
              )
              .addDrop(Dropt.drop()
                  .selector(Dropt.weight(13))
                  .items([<bountifulbaubles:trinketbezoar>])
              )
          );
    }
// Ankh Charm  
    recipes.addShapeless("bountiful_ankhCharm", <bountifulbaubles:trinketankhcharm>, [<bountifulbaubles:trinketmagiclenses>, <bountifulbaubles:trinketapple>, <bountifulbaubles:trinketvitamins>, <bountifulbaubles:ringfreeaction>, <bountifulbaubles:trinketbezoar>, spectralSilt, spectralSilt]);
// Ankh Shield
    recipes.addShapedMirrored("bountiful_ankhShield", <bountifulbaubles:shieldankh>, [[<bountifulbaubles:trinketankhcharm>, spectralSilt, <bountifulbaubles:shieldobsidian>]]);
// Flywheel
    recipes.addShapedMirrored("bountiful_LV", <bountifulbaubles:ringflywheel>, [
        [null, <immersiveengineering:metal_device0>, null],
        [<tfctech:metal/cobalt_gear>, spectralSilt, <tfctech:metal/rose_gold_gear>]
    ]);
// Flywheel Advanced
    recipes.addShapedMirrored("bountiful_HV", <bountifulbaubles:ringflywheeladvanced>, [
        [null, <immersiveengineering:metal_device0:2>, null],
        [<tfctech:metal/cobalt_gear>, spectralSilt, <tfctech:metal/rose_gold_gear>],
        [null, <immersiveengineering:metal_device0:2>, null]
    ]);
// Magic Mirror
    recipes.addShapedMirrored("bountiful_recallMirror", <bountifulbaubles:magicmirror>, [
        [recallPot, <tfc:metal/sheet/silver>, spectralSilt],
        [null, <ore:stickWood>, null]
    ]);
// Wormhole Mirror
    recipes.addShaped("bountiful_wormholeMirror", <bountifulbaubles:wormholemirror>, [
        [wormholePot, spectralSilt, wormholePot],
        [wormholePot, <bountifulbaubles:magicmirror>, wormholePot]
    ]);
// Lucky Horseshoe
    Welding.addRecipe("bountiful_horseshoe", spectralSilt, <tfctech:metal/gold_long_rod>, <bountifulbaubles:trinketluckyhorseshoe>, 4);
// Glutony
    Welding.addRecipe("bountiful_glutonyPendant", <bountifulbaubles:amuletsinempty>, <tfc:metal/hoe/steel>, <bountifulbaubles:amuletsingluttony>, 4);
// Pride
    Welding.addRecipe("bountiful_pridePendant", <bountifulbaubles:amuletsinempty>, <tfc:metal/ingot/rose_gold>, <bountifulbaubles:amuletsinpride>, 4);
// Wrath
    Welding.addRecipe("bountiful_wrathPendant", <bountifulbaubles:amuletsinempty>, <tfc:metal/sword/steel>, <bountifulbaubles:amuletsinwrath>, 4);
// Broken Heart
    Welding.addRecipe("bountiful_heartPendant", <bountifulbaubles:amuletsinempty>, <tfc:metal/ingot/red_steel>, <bountifulbaubles:trinketbrokenheart>, 4);
// Cross Neclace
    Welding.addRecipe("bountiful_crossPendant", <bountifulbaubles:amuletsinempty>, <tfctech:metal/gold_long_rod>, <bountifulbaubles:amuletcross>, 4);
// Sin
    Welding.addRecipe("bountiful_emptyPendant", spectralSilt, <tfctech:metal/silver_strip>, <bountifulbaubles:amuletsinempty>, 4);
// Disintegration Tablet
    recipes.remove(<bountifulbaubles:disintegrationtablet>);
    recipes.addShaped("bountiful_tablet", <bountifulbaubles:disintegrationtablet>, [
        [<tfc:rock/basalt>, <minecraft:blaze_powder>, <tfc:rock/basalt>],
        [<minecraft:blaze_powder>, <minecraft:redstone>, <minecraft:blaze_powder>],
        [<tfc:rock/basalt>, <minecraft:blaze_powder>, <tfc:rock/basalt>]
    ]);
// Recall Pot
    brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:mundane"}), <minecraft:quartz>);
    brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <tfc:powder/saltpeter>, recallPot);
// Golden apple
    recipes.addShaped("bountiful_goldenApple", <minecraft:golden_apple:0>, [
        [<tfc:metal/sheet/gold>],
        [spectralSilt],
        [<tfc:food/red_apple>]
    ]);
// Enchanted apple
    recipes.addShaped("bountiful_goldenApple2", <minecraft:golden_apple:1>, [
        [spectralSilt, <tfc:metal/double_sheet/gold>, spectralSilt],
        [<tfc:metal/double_sheet/gold>, <minecraft:golden_apple:0>, <tfc:metal/double_sheet/gold>],
        [spectralSilt, <tfc:metal/double_sheet/gold>, spectralSilt]
    ]);
// Golden Carrot
    recipes.addShaped("bountiful_goldenCarrot", <minecraft:golden_carrot>, [
        [<tfc:metal/sheet/gold>],
        [spectralSilt],
        [<tfc:food/carrot>]
    ]);
// Baloon
    recipes.addShaped("bountiful_baloon", <bountifulbaubles:trinketballoon>, [
        [<tfc:glue>, <minecraft:leather>, <tfc:glue>],
        [<minecraft:leather>, spectralSilt, <minecraft:leather>],
        [<tfc:glue>, <minecraft:leather>, <tfc:glue>]
    ]);
// Reforging Station
    recipes.addShapeless("bountiful_station", <bountifulbaubles:reforger>, [
        <tfc:metal/anvil/wrought_iron>, <ore:craftingTableWood>, <tfc:ceramics/fired/large_vessel>, spectralSilt
    ]);
