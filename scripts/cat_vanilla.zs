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
                        // TIER IV - V
                        // TIER VI
                        <tfc:metal/saw/blue_steel>,
                        <tfc:metal/saw/osmium>,
                        <tfc:metal/saw/titanium>,
                        <tfc:metal/saw/tungsten>,
                        <tfc:metal/saw/tungsten_steel>,
                        <tfc:metal/saw/zircaloy>,
                        <tfc:metal/saw/red_steel>,
                        <tfc:metal/saw/beryllium_copper>
                    ], "0;-1")
                )
                .replaceStrategy("ADD")
                .addDrop(Dropt.drop()
                    .items([<minecraft:ice>])
                )
            );
        Dropt.list("iceHarvest_salt")    
            .add(Dropt.rule()
                .matchBlocks(["tfc:sea_ice"])
                .matchHarvester(Dropt.harvester()
                    .type("PLAYER")
                    .mainHand("WHITELIST", [
                        // TIER IV - V
                        // TIER VI
                        <tfc:metal/saw/blue_steel>,
                        <tfc:metal/saw/osmium>,
                        <tfc:metal/saw/titanium>,
                        <tfc:metal/saw/tungsten>,
                        <tfc:metal/saw/tungsten_steel>,
                        <tfc:metal/saw/zircaloy>,
                        <tfc:metal/saw/red_steel>,
                        <tfc:metal/saw/beryllium_copper>
                    ], "0;-1")
                )
                .replaceStrategy("ADD")
                .addDrop(Dropt.drop()
                    .items([<tfc:sea_ice>])
                )
            );
        Dropt.list("iceHarvest_packed")    
            .add(Dropt.rule()
                .matchBlocks(["minecraft:packed_ice"])
                .matchHarvester(Dropt.harvester()
                    .type("PLAYER")
                    .mainHand("WHITELIST", [
                        // TIER IV - V
                        <tfc:metal/saw/steel>,
                        <tfc:metal/saw/black_steel>,
                        <tfc:metal/saw/manyullyn>,
                        // TIER VI
                        <tfc:metal/saw/blue_steel>,
                        <tfc:metal/saw/osmium>,
                        <tfc:metal/saw/titanium>,
                        <tfc:metal/saw/tungsten>,
                        <tfc:metal/saw/tungsten_steel>,
                        <tfc:metal/saw/zircaloy>,
                        <tfc:metal/saw/red_steel>,
                        <tfc:metal/saw/beryllium_copper>
                    ], "0;-1")
                )
                .replaceStrategy("ADD")
                .addDrop(Dropt.drop()
                    .items([<minecraft:packed_ice>])
                )
            );
        recipes.addShapedMirrored(
            "catFix_packedIce",
            <minecraft:packed_ice>,
            [[<minecraft:ice>, <tfc:sea_ice>],
            [<tfc:sea_ice>, <minecraft:ice>]]
        );
    // Glowstone
        val glowdust = <minecraft:glowstone_dust>;
        recipes.addShaped(
            "catFix_glowstone1",
            <minecraft:glowstone>,
            [[glowdust, glowdust],
            [glowdust, glowdust]]
        );

print("lava: " + (<liquid:lava>.luminosity));
