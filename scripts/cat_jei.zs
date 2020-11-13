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
    ] as IItemStack[];
// Bibliocraft

// Bountiful Baubles

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