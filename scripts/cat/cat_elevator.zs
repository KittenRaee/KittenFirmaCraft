#norun

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;

// Arrays

var elevators = [
    <elevatorid:elevator_white>,
    <elevatorid:elevator_orange>,
    <elevatorid:elevator_magenta>,
    <elevatorid:elevator_light_blue>,
    <elevatorid:elevator_yellow>,
    <elevatorid:elevator_lime>,
    <elevatorid:elevator_pink>,
    <elevatorid:elevator_gray>,
    <elevatorid:elevator_silver>,
    <elevatorid:elevator_cyan>,
    <elevatorid:elevator_purple>,
    <elevatorid:elevator_blue>,
    <elevatorid:elevator_brown>,
    <elevatorid:elevator_green>,
    <elevatorid:elevator_red>,
    <elevatorid:elevator_black>,
] as IItemStack[];

var colours = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "light_gray",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black",
] as string[];

var wools = [
    <minecraft:wool>,
    <minecraft:wool:1>,
    <minecraft:wool:2>,
    <minecraft:wool:3>,
    <minecraft:wool:4>,
    <minecraft:wool:5>,
    <minecraft:wool:6>,
    <minecraft:wool:7>,
    <minecraft:wool:8>,
    <minecraft:wool:9>,
    <minecraft:wool:10>,
    <minecraft:wool:11>,
    <minecraft:wool:12>,
    <minecraft:wool:13>,
    <minecraft:wool:14>,
    <minecraft:wool:15>,
] as IItemStack[];

// Delete elevators

for item in elevators {
    val item_def = item.definition;
    for i in 0 to 6 {
        JEI.removeAndHide(item_def.makeStack(i));
    }
}

// Readd elevators

recipes.addShapedMirrored(
    colours + "elevator",
    elevators,
    [
        [wools, <tfc:animal/product/wool>, wools],
        [<tfctech:metal/cobalt_gear>, <minecraft:ender_pearl>, <tfctech:metal/rose_gold_gear>],
        [wools, <tfc:animal/product/wool>, wools]
    ]
);

