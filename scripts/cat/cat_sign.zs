#norun
#modloaded signpost

//#REMOVE Recipes
  recipes.remove(<signpost:blockbase>);
  recipes.remove(<signpost:blockbasemodel0>);
  recipes.remove(<signpost:blockbasemodel1>);
  recipes.remove(<signpost:blockbasemodel2>);
  recipes.remove(<signpost:blockbasemodel3>);
  recipes.remove(<signpost:blockbasemodel4>);
  recipes.remove(<signpost:itembrush>);
  recipes.remove(<signpost:itemcalibratedwrench>);
  recipes.remove(<signpost:itemwrench>);

// ================================================================================
//#ADD SHAPED
    recipes.addShaped(
        "signpost_itemwrenchrecipe", <signpost:itemwrench>, 
               [[<tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>],
                [<tfc:metal/ingot/wrought_iron>, <minecraft:stick:*>], 
                [<minecraft:stick:*>, null]]
    );
    recipes.addShaped(
        "signpost_itemwbrushrecipe", <signpost:itembrush>,
               [[<minecraft:wool:*>],
                [<tfc:metal/ingot/wrought_iron>], 
                [<minecraft:stick:*>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipestone", <signpost:blockpoststone> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<ore:stone>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipespruce", <signpost:blockpostspruce> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:wood/log/spruce>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipeoak", <signpost:blockpostoak> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:wood/log/oak>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipejungle", <signpost:blockpostjungle> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:wood/log/chestnut>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipeiron", <signpost:blockpostiron> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:metal/ingot/wrought_iron>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipebirch", <signpost:blockpostbirch> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:wood/log/birch>]]
        );
    recipes.addShaped(
        "signpost_blockpostpostrecipeacacia", <signpost:blockpostacacia> * 4, [[<minecraft:sign:*>], [<minecraft:sign:*>], [<tfc:wood/log/kapok>]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipestone", <signpost:blockbigpoststone> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <ore:stone>, null]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipespruce", <signpost:blockbigpostspruce> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <tfc:wood/log/spruce>, null]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipeoak", <signpost:blockbigpostoak> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <tfc:wood/log/oak>, null]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipejungle", <signpost:blockbigpostjungle> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <tfc:wood/log/chestnut>, null]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipeiron", <signpost:blockbigpostiron> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <ore:ingotIron>, null]]
        );
    recipes.addShaped(
        "signpost_blockbigpostrecipebirch", <signpost:blockbigpostbirch> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <tfc:wood/log/birch>, null]]
        ); 
    recipes.addShaped(
        "signpost_blockbigpostrecipeacacia", <signpost:blockbigpostacacia> * 4, [[<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [<minecraft:sign:*>, <minecraft:sign:*>, <minecraft:sign:*>], [null, <tfc:wood/log/kapok>, null]]
        );    
// ================================================================================
//#ADD SHAPELESS
  recipes.addShapeless("signpost_itemcalibratedwrenchrecipe", <signpost:itemcalibratedwrench>, [<signpost:itemwrench:*>, <minecraft:compass:*>]);