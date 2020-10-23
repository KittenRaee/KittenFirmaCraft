import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.Quern;


// Register item as a fuel for fire pit 

ItemRegistry.registerFuel(<tfc:ore/petrified_wood>, 1000, 800, false, false);
ItemRegistry.registerFuel(<tfc:ore/jet>, 2000, 900, false, false);

// flux from olivine
Quern.addRecipe("olivine2flux", <ore:gemOlivine>, <tfc:powder/flux>);
// selenite is gypsum crystal
Quern.addRecipe("selenite2gypsum", <ore:gemSelenite>, <tfc:ore/gypsum>);
