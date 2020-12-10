#author KittenRaee
#norun
#priority 99
#modloaded tfc
#modloaded tfctech

import crafttweaker.item.IItemStack;

static metalsUseful as IItemStack[string][string] = {
    "bismuth" : {},
    "bismuth_bronze" : {},
    "black_bronze" : {},
    "brass" : {},
    "bronze" : {},
    "copper" : {},
    "gold" : {},
    "lead" : {},
    "nickel" : {},
    "rose_gold" : {},
    "silver" : {},
    "tin" : {},
    "zinc" : {},
    "sterling_silver" : {},
    "wrought_iron" : {},
    "steel" : {},
    "platinum" : {},
    "black_steel" : {},
    "blue_steel" : {},
    "red_steel" : {},
    "unknown" : {}
} as IItemStack[string][string];

static metalsUseless as IItemStack[string][string] = {
    "pig_iron" : {},
    "weak_steel" : {},
    "weak_blue_steel" : {},
    "weak_red_steel" : {},
    "high_carbon_steel" : {},
    "high_carbon_blue_steel" : {},
    "high_carbon_red_steel" : {},
    "high_carbon_black_steel" : {}
} as IItemStack[string][string];
