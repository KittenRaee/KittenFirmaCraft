#loader contenttweaker
#norun
import mods.contenttweaker.VanillaFactory as ctVF;
import mods.contenttweaker.Item;



ctVF.createItem(sheet_castiron);
ctVF.createItem(doubleingot_castiron);
ctVF.createItem(doublesheet_castiron);

var zsItem = VanillaFactory.createItem("zs_item");
zsItem.maxStackSize = 8;
zsItem.rarity = "rare";
zsItem.beaconPayment = true;
};
zsItem.register();