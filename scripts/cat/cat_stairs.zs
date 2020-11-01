#modloaded immersiveengineering;
#modloaded engineersdecor;
import crafttweaker.item.IItemStack;

val stairsFour = [
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
    <immersiveengineering:aluminum_scaffolding_stairs2>
] as IItemStack[];

val stairsSix = [
    <engineersdecor:clinker_brick_stairs>,
    <engineersdecor:clinker_brick_stained_stairs>,
    <engineersdecor:slag_brick_stairs>,
    <engineersdecor:rebar_concrete_stairs>,
    <engineersdecor:rebar_concrete_tile_stairs>,
    <engineersdecor:gas_concrete_stairs>
] as IItemStack[];

for item in stairsFour {
    recipes.remove(item);
}
for item in stairsSix {
    recipes.remove(item);
}
