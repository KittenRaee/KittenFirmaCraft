#modloaded immersiveengineering
#modloaded engineersdecor
#modloaded quark
import crafttweaker.item.IItemStack;

// Remove stairs
    val stair = [
        <minecraft:brick_stairs>,
        <immersiveengineering:stone_decoration_stairs_hempcrete>,
        <immersiveengineering:stone_decoration_stairs_concrete>,
        <immersiveengineering:stone_decoration_stairs_concrete_leaded>,
        <immersiveengineering:stone_decoration_stairs_concrete_tile>,
        <immersiveengineering:treated_wood_stairs0>,
        <immersiveengineering:treated_wood_stairs1>,
        <immersiveengineering:treated_wood_stairs2>,
        <immersiveengineering:steel_scaffolding_stairs0>,
        <immersiveengineering:steel_scaffolding_stairs1>,
        <immersiveengineering:steel_scaffolding_stairs2>,
        <immersiveengineering:aluminum_scaffolding_stairs0>,
        <immersiveengineering:aluminum_scaffolding_stairs1>,
        <immersiveengineering:aluminum_scaffolding_stairs2>,
        <engineersdecor:clinker_brick_stairs>,
        <engineersdecor:clinker_brick_stained_stairs>,
        <engineersdecor:slag_brick_stairs>,
        <engineersdecor:rebar_concrete_stairs>,
        <engineersdecor:rebar_concrete_tile_stairs>,
        <engineersdecor:gas_concrete_stairs>
    ] as IItemStack[];

    for item in stair {
        recipes.remove(item);
    }

// Readd stairs
    val material = [
        <minecraft:brick_block>,
        <immersiveengineering:stone_decoration:4>, //hempcrete
        <immersiveengineering:stone_decoration:5>, //concrete
        <immersiveengineering:stone_decoration:7>, //concrete leaded        
        <immersiveengineering:stone_decoration:6>, //concrete tile
        <immersiveengineering:treated_wood>, //regular
        <immersiveengineering:treated_wood:1>, //vertical
        <immersiveengineering:treated_wood:2>, //ornate
        <immersiveengineering:metal_decoration1:1>, //steel scaffolding 1
        <immersiveengineering:metal_decoration1:2>, //steel scaffolding 2
        <immersiveengineering:metal_decoration1:3>, //steel scaffolding 3
        <immersiveengineering:metal_decoration1:5>, //aluminium scaffolding 1
        <immersiveengineering:metal_decoration1:6>, //aluminium scaffolding 2
        <immersiveengineering:metal_decoration1:7>, //aluminium scaffolding 3
        <engineersdecor:clinker_brick_block>,
        <engineersdecor:clinker_brick_stained_block>,
        <engineersdecor:slag_brick_block>,
        <engineersdecor:rebar_concrete>,
        <engineersdecor:rebar_concrete_tile>,
        <engineersdecor:gas_concrete>
    ] as IItemStack[];

    val name = [
        "brick",
        "hempcrete",
        "concrete",
        "concrete_leaded",
        "concrete_tile",
        "treated_planks",
        "treated_vertical",
        "treated_ornate",
        "steel_scaffolding1",
        "steel_scaffolding2",
        "steel_scaffolding3",
        "aluminium_scaffolding1",
        "aluminium_scaffolding2",
        "aluminium_scaffolding3",
        "clinker_brick",
        "clinker_stained",
        "slag_brick",
        "rebar_concrete",
        "rebar_tile",
        "gas_concrete"
    ] as string[];

    for i, item in stair {
        recipes.addShapedMirrored(name[i] + "_restaired", item * 8, [
            [material[i],   null,           null],
            [material[i],   material[i],    null],
            [material[i],   material[i],    material[i]]
        ]);
    }

    for i, item in material {
        recipes.addShapeless(name[i] + "_unstaired", item * 3, [
            stair[i], stair[i], stair[i], stair[i]
        ]);
    }

    for i, item in material {
        if (item.definition.id.startsWith("<engineersdecor:>")) {
            recipes.remove(item, [
                [stair[i], stair[i]],
                [stair[i], stair[i]]
            ]);
        }
    }

//    recipes.addShapedMirrored("brick_stairs",<minecraft:brick_stairs> * 8,[
//        [<minecraft:brick_block>, null, null],
//        [<minecraft:brick_block>, <minecraft:brick_block>, null],
//        [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]
//    ]);
//
//    recipes.addShapedMirrored("stone_decoration_stairs_hempcrete", //<immersiveengineering:stone_decoration_stairs_hempcrete> * 8,[
//        [<immersiveengineering:stone_decoration:4>, null, null],
//        [<immersiveengineering:stone_decoration:4>, <immersiveengineering:stone_decoration:4>, null],
//        [<immersiveengineering:stone_decoration:4>, <immersiveengineering:stone_decoration:4>, //<immersiveengineering:stone_decoration:4>]
//    ]);
//    recipes.addShapedMirrored("stone_decoration_stairs_concrete", //<immersiveengineering:stone_decoration_stairs_concrete> * 8,[
//        [<immersiveengineering:stone_decoration:5>, null, null],
//        [<immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, null],
//        [<immersiveengineering:stone_decoration:5>, <immersiveengineering:stone_decoration:5>, //<immersiveengineering:stone_decoration:5>]
//    ]);
//    recipes.addShapedMirrored("stone_decoration_stairs_concrete_leaded", //<immersiveengineering:stone_decoration_stairs_concrete_leaded> * 8,[
//        [<immersiveengineering:stone_decoration:7>, null, null],
//        [<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>, null],
//        [<immersiveengineering:stone_decoration:7>, <immersiveengineering:stone_decoration:7>, //<immersiveengineering:stone_decoration:7>]
//    ]);
//    recipes.addShapedMirrored("stone_decoration_stairs_concrete_tile", //<immersiveengineering:stone_decoration_stairs_concrete_tile> * 8,[
//        [<immersiveengineering:stone_decoration:6>, null, null],
//        [<immersiveengineering:stone_decoration:6>, <immersiveengineering:stone_decoration:6>, null],
//        [<immersiveengineering:stone_decoration:6>, <immersiveengineering:stone_decoration:6>, //<immersiveengineering:stone_decoration:6>]
//    ]);
// 
//    recipes.addShapedMirrored("treated_wood_stairs0", <immersiveengineering:treated_wood_stairs0> * //8,[
//        [<immersiveengineering:treated_wood>, null, null],
//        [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, null],
//        [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, //<immersiveengineering:treated_wood>]
//    ]);
//    recipes.addShapedMirrored("treated_wood_stairs1", <immersiveengineering:treated_wood_stairs1> * //8,[
//        [<immersiveengineering:treated_wood:1>, null, null],
//        [<immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>, null],
//        [<immersiveengineering:treated_wood:1>, <immersiveengineering:treated_wood:1>, //<immersiveengineering:treated_wood:1>]
//    ]);
//    recipes.addShapedMirrored("treated_wood_stairs2", <immersiveengineering:treated_wood_stairs2> * //8,[
//        [<immersiveengineering:treated_wood:2>, null, null],
//        [<immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>, null],
//        [<immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>, //<immersiveengineering:treated_wood:2>]
//    ]);
// 
//    recipes.addShapedMirrored("steel_scaffolding_stairs0", //<immersiveengineering:steel_scaffolding_stairs0> * 8,[
//        [<immersiveengineering:metal_decoration1:1>, null, null],
//        [<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration1:1>, //null],
//        [<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration1:1>, //<immersiveengineering:metal_decoration1:1>]
//    ]);
//    recipes.addShapedMirrored("steel_scaffolding_stairs1", //<immersiveengineering:steel_scaffolding_stairs1> * 8,[
//        [<immersiveengineering:metal_decoration1:2>, null, null],
//        [<immersiveengineering:metal_decoration1:2>, <immersiveengineering:metal_decoration1:2>, //null],
//        [<immersiveengineering:metal_decoration1:2>, <immersiveengineering:metal_decoration1:2>, //<immersiveengineering:metal_decoration1:2>]
//    ]);
//    recipes.addShapedMirrored("steel_scaffolding_stairs2", //<immersiveengineering:steel_scaffolding_stairs2> * 8,[
//        [<immersiveengineering:metal_decoration1:3>, null, null],
//        [<immersiveengineering:metal_decoration1:3>, <immersiveengineering:metal_decoration1:3>, //null],
//        [<immersiveengineering:metal_decoration1:3>, <immersiveengineering:metal_decoration1:3>, //<immersiveengineering:metal_decoration1:3>]
//    ]);
// 
//    recipes.addShapedMirrored("aluminum_scaffolding_stairs0", //<immersiveengineering:aluminum_scaffolding_stairs0> * 8,[
//        [<immersiveengineering:metal_decoration1:5>, null, null],
//        [<immersiveengineering:metal_decoration1:5>, <immersiveengineering:metal_decoration1:5>, //null],
//        [<immersiveengineering:metal_decoration1:5>, <immersiveengineering:metal_decoration1:5>, //<immersiveengineering:metal_decoration1:5>]
//    ]);
//    recipes.addShapedMirrored("aluminum_scaffolding_stairs1", //<immersiveengineering:aluminum_scaffolding_stairs1> * 8,[
//        [<immersiveengineering:metal_decoration1:6>, null, null],
//        [<immersiveengineering:metal_decoration1:6>, <immersiveengineering:metal_decoration1:6>, //null],
//        [<immersiveengineering:metal_decoration1:6>, <immersiveengineering:metal_decoration1:6>, //<immersiveengineering:metal_decoration1:6>]
//    ]);
//    recipes.addShapedMirrored("aluminum_scaffolding_stairs2", //<immersiveengineering:aluminum_scaffolding_stairs2> * 8,[
//        [<immersiveengineering:metal_decoration1:7>, null, null],
//        [<immersiveengineering:metal_decoration1:7>, <immersiveengineering:metal_decoration1:7>, //null],
//        [<immersiveengineering:metal_decoration1:7>, <immersiveengineering:metal_decoration1:7>, //<immersiveengineering:metal_decoration1:7>]
//    ]);
// 
//    recipes.addShapedMirrored("clinker_brick_stairs", <engineersdecor:clinker_brick_stairs> * 8,[
//        [<engineersdecor:clinker_brick_block>, null, null],
//        [<engineersdecor:clinker_brick_block>, <engineersdecor:clinker_brick_block>, null],
//        [<engineersdecor:clinker_brick_block>, <engineersdecor:clinker_brick_block>, //<engineersdecor:clinker_brick_block>]
//    ]);
//    recipes.addShapedMirrored("clinker_brick_stained_stairs", //<engineersdecor:clinker_brick_stained_stairs> * 8,[
//        [<engineersdecor:clinker_brick_stained_block>, null, null],
//        [<engineersdecor:clinker_brick_stained_block>, <engineersdecor:clinker_brick_stained_block>, //null],
//        [<engineersdecor:clinker_brick_stained_block>, <engineersdecor:clinker_brick_stained_block>, //<engineersdecor:clinker_brick_stained_block>]
//    ]);
//    recipes.addShapedMirrored("slag_brick_stairs", <engineersdecor:slag_brick_stairs> * 8,[
//        [<engineersdecor:slag_brick_block>, null, null],
//        [<engineersdecor:slag_brick_block>, <engineersdecor:slag_brick_block>, null],
//        [<engineersdecor:slag_brick_block>, <engineersdecor:slag_brick_block>, //<engineersdecor:slag_brick_block>]
//    ]);
//    recipes.addShapedMirrored("rebar_concrete_stairs", <engineersdecor:rebar_concrete_stairs> * 8,[
//        [<engineersdecor:rebar_concrete>, null, null],
//        [<engineersdecor:rebar_concrete>, <engineersdecor:rebar_concrete>, null],
//        [<engineersdecor:rebar_concrete>, <engineersdecor:rebar_concrete>, //<engineersdecor:rebar_concrete>]
//    ]);
//    recipes.addShapedMirrored("rebar_concrete_tile_stairs", //<engineersdecor:rebar_concrete_tile_stairs> * 8,[
//        [<engineersdecor:rebar_concrete_tile>, null, null],
//        [<engineersdecor:rebar_concrete_tile>, <engineersdecor:rebar_concrete_tile>, null],
//        [<engineersdecor:rebar_concrete_tile>, <engineersdecor:rebar_concrete_tile>, //<engineersdecor:rebar_concrete_tile>]
//    ]);
//    recipes.addShapedMirrored("gas_concrete_stairs", <engineersdecor:gas_concrete_stairs> * 8,[
//        [<engineersdecor:gas_concrete>, null, null],
//        [<engineersdecor:gas_concrete>, <engineersdecor:gas_concrete>, null],
//        [<engineersdecor:gas_concrete>, <engineersdecor:gas_concrete>, <engineersdecor:gas_concrete>]
//    ]);
//
//// Stairs to Blocks
//    recipes.addShapeless("gas_concrete", <engineersdecor:gas_concrete> * 3,[
//        <engineersdecor:gas_concrete_stairs>, <engineersdecor:gas_concrete_stairs>, //<engineersdecor:gas_concrete_stairs>, <engineersdecor:gas_concrete_stairs>
//    ]);
