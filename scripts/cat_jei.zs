#author KittenRaee
#priority 1
#modloaded jei
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

// Vanilla
    val vanillaHide = [
        <minecraft:stone:*>,
        <minecraft:grass>,
        <minecraft:dirt:*>,
        <minecraft:cobblestone>,
        <minecraft:planks:*>,
        <minecraft:sand:*>,
        <minecraft:gravel>,
        <minecraft:gold_ore>,
        <minecraft:iron_ore>,
        <minecraft:coal_ore>,
        <minecraft:log:*>,
        <minecraft:sponge:*>,
        <minecraft:lapis_ore>,
        <minecraft:sandstone:*>,
        <minecraft:gold_block>,
        <minecraft:iron_block>,
        <minecraft:stone_slab:*>,
        <minecraft:bookshelf>,
        <minecraft:mossy_cobblestone>,
        <minecraft:oak_stairs>,
        <minecraft:diamond_ore>,
        <minecraft:stone_stairs>,
        <minecraft:redstone_ore>,
        <minecraft:pumpkin>,
        <minecraft:soul_sand>,
        <minecraft:lit_pumpkin>,
        <minecraft:stonebrick:*>,
        <minecraft:melon_block>,
        <minecraft:stone_brick_stairs>,
        <minecraft:mycelium>,
        <minecraft:end_stone>,
        <minecraft:wooden_slab:*>,
        <minecraft:sandstone_stairs>,
        <minecraft:emerald_ore>,
        <minecraft:spruce_stairs>,
        <minecraft:birch_stairs>,
        <minecraft:jungle_stairs>,
        <minecraft:quartz_ore>,
        <minecraft:quartz_block:*>,
        <minecraft:quartz_stairs>,
        <minecraft:log2:*>,
        <minecraft:acacia_stairs>,
        <minecraft:dark_oak_stairs>,
        <minecraft:red_sandstone:*>,
        <minecraft:end_bricks>,
        <minecraft:red_nether_brick>,
        <minecraft:sapling:*>,
        <minecraft:leaves:*>,
        <minecraft:tallgrass:*>,
        <minecraft:deadbush>,
        <minecraft:yellow_flower>,
        <minecraft:red_flower:*>,
        <minecraft:brown_mushroom>,
        <minecraft:red_mushroom>,
        <minecraft:chest>,
        <minecraft:furnace>,
        <minecraft:cactus>,
        <minecraft:fence>,
        <minecraft:monster_egg:*>,
        <minecraft:spruce_fence>,
        <minecraft:birch_fence>,
        <minecraft:jungle_fence>,
        <minecraft:dark_oak_fence>,
        <minecraft:acacia_fence>,
        <minecraft:fence_gate>,
        <minecraft:spruce_fence_gate>,
        <minecraft:birch_fence_gate>,
        <minecraft:jungle_fence_gate>,
        <minecraft:dark_oak_fence_gate>,
        <minecraft:acacia_fence_gate>,
        <minecraft:double_plant:*>,
        <minecraft:white_shulker_box>,
        <minecraft:orange_shulker_box>,
        <minecraft:magenta_shulker_box>,
        <minecraft:light_blue_shulker_box>,
        <minecraft:yellow_shulker_box>,
        <minecraft:lime_shulker_box>,
        <minecraft:pink_shulker_box>,
        <minecraft:gray_shulker_box>,
        <minecraft:silver_shulker_box>,
        <minecraft:cyan_shulker_box>,
        <minecraft:purple_shulker_box>,
        <minecraft:blue_shulker_box>,
        <minecraft:brown_shulker_box>,
        <minecraft:green_shulker_box>,
        <minecraft:red_shulker_box>,
        <minecraft:black_shulker_box>,
        <minecraft:end_crystal>,
        <minecraft:end_rod>,
        <minecraft:chorus_flower>,
        <minecraft:chorus_fruit>,
        <minecraft:chorus_plant>,

        <minecraft:shulker_shell>
    ] as IItemStack[];
// Bibliocraft
    val biblioHide = [

    ]as IItemStack[];
// Bountiful Baubles
    val bountifulHide = [
        <bountifulbaubles:modifierbook>,
        <bountifulbaubles:trinketshulkerheart>
    ]as IItemStack[];
// Comforts
    val comfortsHide = [

    ]as IItemStack[];
// Debark
    val debarkHide = [
        <debark:debarked_log_minecraft_log>,
        <debark:debarked_log_minecraft_log2>
    ]as IItemStack[];
// Engineer's Decor
    val engineersDecorHide = [

    ]as IItemStack[];
// Fairy Lights
    val fairyLightsHide = [

    ]as IItemStack[];
// Immersive Engineering
    val immersiveEngineeringHide = [

    ]as IItemStack[];
// Immersive Petroleum
    val immersivePetroleumHide = [

    ]as IItemStack[];
// Immersive Posts
    val immersivePostsHide = [

    ]as IItemStack[];
// Immersive Tech
    val immersiveTechHide = [

    ]as IItemStack[];
// JAFF
    val jaffHide = [
        <jaff:iron_hook>,
        <jaff:wooden_fishing_rod>,
        <jaff:iron_fishing_rod>,
        <jaff:golden_fishing_rod>,
        <jaff:diamond_fishing_rod>
    ]as IItemStack[];
// Quark
    val quarkHide = [

    ]as IItemStack[];
// Railcraft
    val railcraftHide = [

    ]as IItemStack[];
// Signpost
    val signpostHide = [

    ]as IItemStack[];
// TFC Aged Drinks
    val tfcAgedHide = [

    ]as IItemStack[];
// TFC Decoration
    val tfcDecorationHide = [

    ]as IItemStack[];
// TFC Medicinal
    val tfcMedicinalHide = [

    ]as IItemStack[];
// TFC Storage
    val tfcStorageHide = [

    ]as IItemStack[];
// TFC Tech
    val tfcTechHide = [

    ]as IItemStack[];
// TFC 
    val tfcHide = [

    ]as IItemStack[];
// TFC Things
    val tfcThingsHide = [

    ]as IItemStack[];
// TFC Waterflasks
    val tfcWaterflasksHide = [

    ]as IItemStack[];
// loops
    for i in vanillaHide {
    #   JEI.removeAndHide(i);
        JEI.hide(i);    
    }

    for i in jaffHide {
        JEI.removeAndHide(i);
    #   JEI.hide(i);    
    }
