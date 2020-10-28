import crafttweaker.item.IItemStack;
 
// In order of metadata for wool
var colours = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "silver",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black",
] as string[];
 
for i, colour in colours {
    var elevator as IItemStack = itemUtils.getItem("elevatorid:elevator_" + colour);
    var wool as IItemStack = <minecraft:wool>;
 
    if (i > 0) {
        wool = wool.definition.makeStack(i);
    }
 
    recipes.remove(elevator);
 
    recipes.addShapedMirrored(
        colour + "_elevator",
        elevator,
        [
            [wool, <tfc:animal/product/wool>, wool],
            [<tfctech:metal/cobalt_gear>, <minecraft:ender_pearl>, <tfctech:metal/rose_gold_gear>],
            [wool, <tfc:animal/product/wool>, wool]
        ]
    );
}