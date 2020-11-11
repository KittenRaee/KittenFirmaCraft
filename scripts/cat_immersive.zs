#author KittenRaee
#modloaded immersiveengineering
#modloaded immersiveposts
#modloaded tfc
#modloaded tfctech
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Heating;
import mods.immersiveengineering.BlastFurnace;
import mods.unidict.api.newShapedRecipeTemplate;

    recipes.remove(<minecraft:string>);

// Fix oredict
    val oreDictWire = <ore:wireAluminium>;
    val oreDictRod = <ore:stickAluminium>;

    oreDictWire.addAll(<ore:wireAluminum>);
    oreDictRod.addAll(<ore:stickAluminum>);

// Replace IE materials with TFC
    recipes.replaceAllOccurences(<immersiveengineering:material:3>, <tfctech:metal/aluminium_rod>);
    recipes.replaceAllOccurences(<immersiveengineering:material:1>, <tfctech:metal/wrought_iron_rod>);
    recipes.replaceAllOccurences(<immersiveengineering:material:4>, <tfc:crop/product/jute_fiber>);
    recipes.remove(<immersiveengineering:material:5>, false);
    recipes.replaceAllOccurences(<immersiveengineering:material:5>, <tfc:crop/product/burlap_cloth>);

// Wrought Iron to Steel
    mods.immersiveengineering.BlastFurnace.addRecipe(<tfc:metal/ingot/steel>, <ore:ingotWroughtIron>, 2000, <immersiveengineering:material:7>);

// Remove IE tools
    recipes.remove(<immersiveengineering:pickaxe_steel>, false);
    recipes.remove(<immersiveengineering:shovel_steel>, false);
    recipes.remove(<immersiveengineering:axe_steel>, false);
    recipes.remove(<immersiveengineering:hoe_steel>, false);
    recipes.remove(<immersiveengineering:sword_steel>, false);

// IE tools to TFC
    recipes.remove(<immersiveengineering:tool:0>, false);
    recipes.remove(<immersiveengineering:tool:1>, false);

    recipes.addShaped(
        "tfc_ie_hammer",
        <immersiveengineering:tool:0>,
        [
            [<tfc:metal/hammer_head/wrought_iron>],
            [<ore:stickTreatedWood>]
        ]
    );
    recipes.addShaped(
        "tfc_ie_cutters",
        <immersiveengineering:tool:1>,
        [[<tfc:metal/knife_blade/wrought_iron>, <tfc:metal/knife_blade/wrought_iron>],
         [<ore:stickTreatedWood>, <ore:stickTreatedWood>]]
    );

// Remove IE wires
    recipes.replaceAllOccurences(<immersiveengineering:material:22>, <tfctech:metal/aluminium_wire>);
    JEI.removeAndHide(<immersiveengineering:material:22>);

// Epandable post
    recipes.remove(<immersiveposts:postbase>);
    recipes.addShaped("immersive_post_base", <immersiveposts:postbase>, [
        [<ore:brick>,   null,               <ore:brick>],
        [<ore:brick>,   <ore:cobblestone>,  <ore:brick>],
        [<ore:brick>,   <ore:cobblestone>,  <ore:brick>]
    ]);
    #<immersiveposts:postbase>  <ore:brick>  <ore:cobblestone>

// Coke brick
    recipes.remove(<immersiveengineering:stone_decoration>);
    recipes.addShaped("coke_brick_tfc", <immersiveengineering:stone_decoration>, [
        [<tfc:ceramics/fire_clay>,  <tfc:mortar>,            <tfc:ceramics/fire_clay>],
        [<tfc:mortar>,              <ore:stoneMetamorphic>,  <tfc:mortar>],
        [<tfc:ceramics/fire_clay>,  <tfc:mortar>,            <tfc:ceramics/fire_clay>]
    ]);

    recipes.remove(<immersiveengineering:stone_decoration:1>);
    recipes.addShaped("blast_brick_tfc", <immersiveengineering:stone_decoration:1>, [
        [<tfc:ceramics/fire_clay>,  <tfc:mortar>,          <tfc:ceramics/fire_clay>],
        [<tfc:mortar>,              <tfc:fire_bricks>,     <tfc:mortar>],
        [<tfc:ceramics/fire_clay>,  <tfc:mortar>,          <tfc:ceramics/fire_clay>]
    ]);

// Remove Gunpowder
recipes.removeByRecipeName("immersiveengineering:material/gunpowder0");
recipes.removeByRecipeName("immersiveengineering:material/gunpowder1");

// Concrete to TFC
    recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete");
    recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete2");
