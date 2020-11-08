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

// Iron Ring
    Anvil.addRecipe("bountiful_ironRing", <tfctech:metal/wrought_iron_long_rod>, <bountifulbaubles:ringiron>, 3, "general", "SHRINK_NOT_LAST", "BEND_NOT_LAST", "BEND_LAST");
// Cobalt Shield
    Welding.addRecipe("bountiful_cobaltShield", <tfc:metal/shield/cobalt>, <tfc:metal/double_ingot/electrum>, <bountifulbaubles:shieldcobalt>.withTag({HideFlags: 2}), 3);
// Obsidian Skull
    ItemRegistry.registerItemHeat(<minecraft:obsidian>, 0.0125, 1700, true);
    Anvil.addRecipe("bountiful_obsidianSkull", <minecraft:obsidian>, <bountifulbaubles:trinketobsidianskull>, 5, "general", "HIT_THIRD_LAST", "HIT_SECOND_LAST", "PUNCH_LAST");
// Obsidian Shield
    ItemRegistry.registerItemHeat(<bountifulbaubles:trinketobsidianskull>, 0.0125, 1700, true);
    ItemRegistry.registerItemHeat(<bountifulbaubles:shieldcobalt>, 0.375, 1500, true);
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
    ItemRegistry.registerItemHeat(<bountifulbaubles:ringiron>, 0.35, 1600, true);
    Welding.addRecipe("bountiful_ringOC", <bountifulbaubles:ringiron>, <tfctech:metal/cobalt_gear>, <bountifulbaubles:ringoverclocking>, 4);
// Ring of Free Action
    ItemRegistry.registerItemHeat(<bountifulbaubles:ringoverclocking>, 0.35, 1600, true);
    Welding.addRecipe("bountiful_ringFree", <bountifulbaubles:ringoverclocking>, <tfctech:metal/blue_steel_gear>, <bountifulbaubles:ringfreeaction>, 6);
// Bezoar

// Ankh Charm  

// Ankh Shield

// Flywheel

// Flywheel Advanced

// Magic Mirror

// Wormhole Mirror

// Lucky Horseshoe

// Glutony

// Pride

// Wrath

// Broken Heart

// Cross Neclace

// Recall Pot

// Wormhole Pot

