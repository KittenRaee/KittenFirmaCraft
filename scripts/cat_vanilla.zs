#author KittenRaee
#priority 0

import mods.dropt.Dropt;

// Block fixes
    // Lapis
        recipes.addShapeless(
            "catFix_lapisBlock",
            <tfc:ore/lapis_lazuli> * 9,
            [<minecraft:lapis_block>]
        );
    // Diamond Block
        <ore:gemDiamond>.remove(<minecraft:diamond>);
        recipes.removeShapeless(
            <minecraft:diamond_block>,
            [<minecraft:diamond>]
        );
    // Ice
        val ore_sawAdvanced = <ore:sawAdvanced>;
        ore_sawAdvanced.add(<tfc:metal/saw/zircaloy>,
        <tfc:metal/saw/tungsten_steel>,
        <tfc:metal/saw/tungsten>,
        <tfc:metal/saw/titanium>,
        <tfc:metal/saw/osmium>,
        <tfc:metal/saw/beryllium_copper>,
        <tfc:metal/saw/manyullyn>,
        <tfc:metal/saw/red_steel>,
        <tfc:metal/saw/blue_steel>,
        <tfc:metal/saw/black_steel>,
        <tfc:metal/saw/steel>);

        Dropt.list("iceHarvest_fresh")    
            .add(Dropt.rule()
                .matchBlocks(["minecraft:ice"])
                .matchHarvester(Dropt.harvester()
                    .type("PLAYER")
                    .mainHand("WHITELIST", [
                        <tfc:metal/saw/zircaloy>,
                        <tfc:metal/saw/tungsten_steel>,
                        <tfc:metal/saw/tungsten>,
                        <tfc:metal/saw/titanium>,
                        <tfc:metal/saw/osmium>,
                        <tfc:metal/saw/beryllium_copper>,
                        <tfc:metal/saw/manyullyn>,
                        <tfc:metal/saw/red_steel>,
                        <tfc:metal/saw/blue_steel>,
                        <tfc:metal/saw/black_steel>,
                        <tfc:metal/saw/steel>
                    ], "0;-1")
                )
                .replaceStrategy("REPLACE")
                .addDrop(Dropt.drop()
                    .items([<minecraft:ice>])
                )
          );
