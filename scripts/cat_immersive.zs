#author KittenRaee
#priority 9
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
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Crusher;
import mods.unidict.api.newShapedRecipeTemplate;
import mods.immersiveengineering.CokeOven;

    recipes.remove(<minecraft:string>);

// Replace IE materials with TFC
    recipes.replaceAllOccurences(<immersiveengineering:material:3>, <tfctech:metal/aluminium_rod>);
    recipes.replaceAllOccurences(<immersiveengineering:material:1>, <tfctech:metal/wrought_iron_rod>);
    recipes.replaceAllOccurences(<immersiveengineering:material:4>, <tfc:crop/product/jute_fiber>);
    recipes.remove(<immersiveengineering:material:5>, false);
    recipes.replaceAllOccurences(<immersiveengineering:material:5>, <tfc:crop/product/burlap_cloth>);

// Wrought Iron to Steel
    BlastFurnace.addRecipe(<tfc:metal/ingot/steel>, <ore:ingotWroughtIron>, 2000, <immersiveengineering:material:7>);

// Bitum coal to coke
    CokeOven.removeRecipe(<immersiveengineering:material:6>);
    CokeOven.addRecipe(<immersiveengineering:material:6>, 2, <tfc:ore/bituminous_coal>, 2000);

// Remove IE tools
    recipes.remove(<immersiveengineering:pickaxe_steel>, false);
    recipes.remove(<immersiveengineering:shovel_steel>, false);
    recipes.remove(<immersiveengineering:axe_steel>, false);
    recipes.remove(<immersiveengineering:hoe_steel>, false);
    recipes.remove(<immersiveengineering:sword_steel>, false);

// IE tools to TFC
    recipes.remove(<immersiveengineering:tool:0>, false);
    recipes.remove(<immersiveengineering:tool:1>, false);

    recipes.addShapeless(
        "tfc_cot_stick",
        <contenttweaker:engineeredstick>,
        [<ore:stickWood>, <ore:leather>]
    );

    recipes.addShaped(
        "tfc_ie_hammer",
        <immersiveengineering:tool:0>,
        [
            [<tfc:metal/hammer_head/wrought_iron>],
            [<contenttweaker:engineeredstick>]
        ]
    );
    recipes.addShaped(
        "tfc_ie_cutters",
        <immersiveengineering:tool:1>,
        [[<tfc:metal/knife_blade/wrought_iron>, <tfc:metal/knife_blade/wrought_iron>],
         [<contenttweaker:engineeredstick>, <contenttweaker:engineeredstick>]]
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

// Bricks
    val fireBrick = <tfc:ceramics/fired/fire_brick>;

    recipes.remove(<immersiveengineering:stone_decoration>);
    recipes.addShaped("coke_brick_tfc", <immersiveengineering:stone_decoration>, [
        [fireBrick,  <tfc:mortar>,            fireBrick],
        [<tfc:mortar>,              <ore:stoneMetamorphic>,  <tfc:mortar>],
        [fireBrick,  <tfc:mortar>,            fireBrick]
    ]);

    recipes.remove(<immersiveengineering:stone_decoration:1>);
    recipes.addShaped("blast_brick_tfc", <immersiveengineering:stone_decoration:1>, [
        [fireBrick,  <tfc:mortar>,          fireBrick],
        [<tfc:mortar>,              <tfc:fire_bricks>,     <tfc:mortar>],
        [fireBrick,  <tfc:mortar>,          fireBrick]
    ]);

    recipes.remove(<immersiveengineering:stone_decoration:10>);
    recipes.addShaped("kiln_brick_tfc", <immersiveengineering:stone_decoration:10>, [
        [<tfc:ceramics/fire_clay>, <ore:brickSedimentary>],
        [<ore:brickSedimentary>, <tfc:ceramics/fire_clay>]
    ]);

// Remove Gunpowder
    recipes.removeByRecipeName("immersiveengineering:material/gunpowder0");
    recipes.removeByRecipeName("immersiveengineering:material/gunpowder1");

// Concrete to TFC
    recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete");
    recipes.removeByRecipeName("immersiveengineering:stone_decoration/concrete2");

// Fix Vanilla Crusher
    Crusher.removeRecipe(<minecraft:sand>);
    Crusher.removeRecipe(<minecraft:gravel>);

// Alloy Kiln
    val recipesToRemoveAlloySmelter = [
        <tfc:metal/ingot/constantan>,
        <tfc:metal/ingot/electrum>,
        <tfc:metal/ingot/invar>,
        <tfc:metal/ingot/bronze>,
        <tfc:metal/ingot/brass>,
        <tfc:metal/ingot/red_alloy>,
        <immersiveengineering:metal:7>,
        <immersiveengineering:metal:6>
    ] as IItemStack[];

    for output in recipesToRemoveAlloySmelter {
        AlloySmelter.removeRecipe(output);
    }

    val recipesToAddAlloySmelter = {
        "sleeve" : {
            "unfired" : <tfctech:ceramics/unfired/sleeve>,
            "fired" : <tfctech:ceramics/mold/sleeve>
        },
        "rackwheel_piece" : {
            "unfired" : <tfctech:ceramics/unfired/rackwheel_piece>,
            "fired" : <tfctech:ceramics/mold/rackwheel_piece>
        },
        "glass_block" : {
            "unfired" : <tfctech:ceramics/unfired/glass_block>,
            "fired" : <tfctech:ceramics/mold/glass_block>
        },
        "glass_pane" : {
            "unfired" : <tfctech:ceramics/unfired/glass_pane>,
            "fired" : <tfctech:ceramics/mold/glass_pane>
        },
        "ingot" : {
            "unfired" : <tfc:ceramics/unfired/mold/ingot>,
            "fired" : <tfc:ceramics/fired/mold/ingot>
        },
        "pick_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/pick_head>,
            "fired" : <tfc:ceramics/fired/mold/pick_head>
        },
        'shovel_head' : {
            "unfired" : <tfc:ceramics/unfired/mold/shovel_head>,
            "fired" : <tfc:ceramics/fired/mold/shovel_head>
        },
        "axe_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/axe_head>,
            "fired" : <tfc:ceramics/fired/mold/axe_head>
        },
        "hoe_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/hoe_head>,
            "fired" : <tfc:ceramics/fired/mold/hoe_head>
        },
        "chisel_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/chisel_head>,
            "fired" : <tfc:ceramics/fired/mold/chisel_head>
        },
        "sword_blade" : {
            "unfired" : <tfc:ceramics/unfired/mold/sword_blade>,
            "fired" : <tfc:ceramics/fired/mold/sword_blade>
        },
        "mace_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/mace_head>,
            "fired" : <tfc:ceramics/fired/mold/mace_head>
        },
        "saw_blade" : {
            "unfired" : <tfc:ceramics/unfired/mold/saw_blade>,
            "fired" : <tfc:ceramics/fired/mold/saw_blade>
        },
        "javelin_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/javelin_head>,
            "fired" : <tfc:ceramics/fired/mold/javelin_head>
        },
        "hammer_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/hammer_head>,
            "fired" : <tfc:ceramics/fired/mold/hammer_head>
        },
        "propick_head" : {
            "unfired" : <tfc:ceramics/unfired/mold/propick_head>,
            "fired" : <tfc:ceramics/fired/mold/propick_head>
        },
        "knife_blade" : {
            "unfired" : <tfc:ceramics/unfired/mold/knife_blade>,
            "fired" : <tfc:ceramics/fired/mold/knife_blade>
        },
        "scythe_blade" : {
            "unfired" : <tfc:ceramics/unfired/mold/scythe_blade>,
            "fired" : <tfc:ceramics/fired/mold/scythe_blade>
        },
        "large_vessel" : {
            "unfired" : <tfc:ceramics/unfired/large_vessel>,
            "fired" : <tfc:ceramics/fired/large_vessel>
        },
        "crucible" : {
            "unfired" : <tfc:ceramics/unfired/crucible>,
            "fired" : <tfc:crucible>
        },
        "vessel" : {
            "unfired" : <tfc:ceramics/unfired/vessel>,
            "fired" : <tfc:ceramics/fired/vessel>
        },
        "vessel_glazed_white" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:15>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:15>
        },
        "vessel_glazed_orange" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:14>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:14>
        },
        "vessel_glazed_magenta" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:13>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:13>
        },
        "vessel_glazed_light_blue" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:12>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:12>
        },
        "vessel_glazed_yellow" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:11>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:11>
        },
        "vessel_glazed_lime" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:10>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:10>
        },
        "vessel_glazed_pink" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:9>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:9>
        },
        "vessel_glazed_gray" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:8>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:8>
        },
        "vessel_glazed_light_gray" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:7>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:7>
        },
        "vessel_glazed_cyan" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:6>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:6>
        },
        "vessel_glazed_purple" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:5>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:5>
        },
        "vessel_glazed_blue" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:4>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:4>
        },
        "vessel_glazed_brown" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:3>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:3>
        },
        "vessel_glazed_green" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:2>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:2>
        },
        "vessel_glazed_red" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:1>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:1>
        },
        "vessel_glazed_black" : {
            "unfired" : <tfc:ceramics/unfired/vessel_glazed:0>,
            "fired" : <tfc:ceramics/fired/vessel_glazed:0>
        },
        "pot" : {
            "unfired" : <tfc:ceramics/unfired/pot>,
            "fired" : <tfc:ceramics/fired/pot>
        },
        "bowl" : {
            "unfired" : <tfc:ceramics/unfired/bowl>,
            "fired" : <tfc:ceramics/fired/bowl>
        },
        "plate" : {
            "unfired" : <tfc:ceramics/unfired/bowl>.withTag({item: "dinner_plate", display: {Name: "Unfired Plate"}}),
            "fired" : <bibliocraft:dinnerplate>
        },
        "spindle" : {
            "unfired" : <tfc:ceramics/unfired/spindle>,
            "fired" : <tfc:ceramics/fired/spindle>
        },
        "fire_brick" : {
            "unfired" : <tfc:ceramics/unfired/fire_brick>,
            "fired" : <tfc:ceramics/fired/fire_brick>
        },
        "jug" : {
            "unfired" : <tfc:ceramics/unfired/jug>,
            "fired" : <tfc:ceramics/fired/fire_brick>
        },
        "brick" : {
            "unfired" : <tfc:ceramics/unfired/clay_brick>,
            "fired" : <minecraft:brick>
        },
        "flower_pot" : {
            "unfired" : <tfc:ceramics/unfired/clay_flower_pot>,
            "fired" : <minecraft:flower_pot>
        },
        "prohammer_head" : {
            "unfired" : <tfcthings:mold/unfired/prospectors_hammer_head>,
            "fired" : <tfcthings:mold/prospectors_hammer_head>
        }
    } as IItemStack[string][string];

    for item, state in recipesToAddAlloySmelter {
        AlloySmelter.addRecipe(state["fired"], state["unfired"], <tfc:powder/flux> * 2, 1200);
    }
