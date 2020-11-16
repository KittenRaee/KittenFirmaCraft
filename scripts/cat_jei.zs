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
    ] as IItemStack[];
// Bibliocraft

// Bountiful Baubles
    JEI.hide(<bountifulbaubles:modifierbook>);
// Comforts

// Debark

// Engineer's Decor

// Fairy Lights

// Immersive Engineering

// Immersive Petroleum

// Immersive Posts

// Immersive Tech

// JAFF

// Quark

// Railcraft

// Signpost

// TFC Aged Drinks

// TFC Decoration

// TFC Medicinal

// TFC Storage

// TFC Tech

// TFC 

// TFC Things

// TFC Waterflasks

for i in vanillaHide {
#   JEI.removeAndHide(i);
    JEI.hide(i);    
}