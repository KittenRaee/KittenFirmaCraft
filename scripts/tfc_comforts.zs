#author KittenRaee
#priority 0
#modloaded tfc
#modloaded comforts

// Crates recipes for comforts.
// Mod required : comforts
// Scripts required : ~

import mods.terrafirmacraft.Barrel;
import crafttweaker.liquid.ILiquidStack;



// remove vanilla comforts
recipes.remove(<comforts:hammock:*>, false);
recipes.remove(<comforts:sleeping_bag:*>, false);

// plain copmforts
    recipes.addShaped(
        "tfc_sleepingbag",
        <comforts:sleeping_bag>,
        [
            [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
        ]
    );

    recipes.addShaped(
        "tfc_hammock",
        <comforts:hammock>,
        [
            [<ore:stickWood>, <ore:string>, <ore:stickWood>],
            [<ore:stickWood>, <ore:clothHighQuality>, <ore:stickWood>],
            [<ore:stickWood>, <ore:string>, <ore:stickWood>]
        ]
    );

// remove dye
    Barrel.addRecipe(
        "tfc_hammock_clear",
        <comforts:hammock:*>, <liquid:lye> * 125,
        <comforts:hammock:0>, null,
        1
    );
    Barrel.addRecipe(
        "tfc_bag_clear",
        <comforts:sleeping_bag:*>, <liquid:lye> * 125,
        <comforts:sleeping_bag:0>, null,
        1
    );

// dyeing
val colourList = [
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
    "black"    
] as string[];

val dyesList = [
    <liquid:white_dye>,
    <liquid:orange_dye>,
    <liquid:magenta_dye>,
    <liquid:light_blue_dye>,
    <liquid:yellow_dye>,
    <liquid:lime_dye>,
    <liquid:pink_dye>,
    <liquid:gray_dye>,
    <liquid:light_gray_dye>,
    <liquid:cyan_dye>,
    <liquid:purple_dye>,
    <liquid:blue_dye>,
    <liquid:brown_dye>,
    <liquid:green_dye>,
    <liquid:red_dye>,
    <liquid:black_dye>
] as ILiquidStack[];

    val hammockDef = <comforts:hammock>.definition;
    val bagDef = <comforts:sleeping_bag>.definition;

    for i, name in colourList {
        Barrel.addRecipe(
            "tfc_hammock_" + name,
            <comforts:hammock:0>, dyesList[i] * 125,
            hammockDef.makeStack(i), null,
            1
        );
        Barrel.addRecipe(
            "tfc_bag_" + name,
            <comforts:sleeping_bag:0>, dyesList[i] * 125,
            bagDef.makeStack(i), null,
            1
        );
    }
