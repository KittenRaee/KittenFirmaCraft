#modloaded comforts
#modloaded tfc
import mods.terrafirmacraft.Barrel;

recipes.remove(<comforts:hammock:*>, false);
recipes.remove(<comforts:sleeping_bag:*>, false);

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
var blue_dye = <ore:dyeBlue>;
recipes.addShapeless(
    "tfc_blue_hammock",
    <comforts:hammock:11>,
    [<comforts:hammock:0>, blue_dye]
);
recipes.addShapeless(
    "tfc_blue_sleepingbag",
    <comforts:sleeping_bag:11>,
    [<comforts:sleeping_bag:0>, blue_dye]
);


Barrel.addRecipe("tfc_hammock_clear", <comforts:hammock:*>, <liquid:lye> * 125, <comforts:hammock:0>, null, 2);
Barrel.addRecipe("tfc_bag_clear", <comforts:sleeping_bag:*>, <liquid:lye> * 125, <comforts:sleeping_bag:0>, null, 2);
