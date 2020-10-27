#modloaded signpost
import mods.jei.JEI;

//#REMOVE Recipes
    recipes.remove(<signpost:blockbase>);
    JEI.removeAndHide(<signpost:blockbasemodel0>);
    JEI.removeAndHide(<signpost:blockbasemodel1>);
    JEI.removeAndHide(<signpost:blockbasemodel2>);
    JEI.removeAndHide(<signpost:blockbasemodel3>);
    JEI.removeAndHide(<signpost:blockbasemodel4>);
    recipes.remove(<signpost:itembrush>);
    recipes.remove(<signpost:blockpostoak>);
    JEI.removeAndHide(<signpost:blockpostspruce>);
    JEI.removeAndHide(<signpost:blockpostbirch>);
    JEI.removeAndHide(<signpost:blockpostjungle>);
    JEI.removeAndHide(<signpost:blockpostacacia>);
    JEI.removeAndHide(<signpost:blockpostbigoak>);
    JEI.removeAndHide(<signpost:blockpostiron>);
    JEI.removeAndHide(<signpost:blockpoststone>);
    recipes.remove(<signpost:blockbigpostoak>);
    JEI.removeAndHide(<signpost:blockbigpostspruce>);
    JEI.removeAndHide(<signpost:blockbigpostbirch>);
    JEI.removeAndHide(<signpost:blockbigpostjungle>);
    JEI.removeAndHide(<signpost:blockbigpostacacia>);
    JEI.removeAndHide(<signpost:blockbigpostbigoak>);
    JEI.removeAndHide(<signpost:blockbigpostiron>);
    JEI.removeAndHide(<signpost:blockbigpoststone>);

// ================================================================================
//#ADD SHAPED
    recipes.addShaped(
        "signpost_itemwbrushrecipe", <signpost:itembrush>, [
            [<ore:clothAny>],
            [<tfc:metal/ingot/wrought_iron>], 
            [<minecraft:stick:*>]]
        );
    recipes.addShapedMirrored(
        "signpost_blockbase", <signpost:blockbase>, [
            [<ore:smoothIgneousExtrusive>,<ore:smoothIgneousExtrusive>,<ore:smoothIgneousExtrusive>],
            [<tfctech:metal/cobalt_gear>, <minecraft:ender_pearl>,   <tfctech:metal/rose_gold_gear>],
            [<ore:smoothIgneousExtrusive>,<ore:smoothIgneousExtrusive>,<ore:smoothIgneousExtrusive>]
        ]
    );
    recipes.addShaped(
        "signpost_blockpostpostrecipeoak", <signpost:blockpostoak> * 4, [
            [<minecraft:sign:*>], 
            [<minecraft:sign:*>], 
            [<ore:logWood>]
        ] 
    );
    recipes.addShaped(
        "signpost_blockbigpostrecipeoak", <signpost:blockbigpostoak> * 4, [
            [<minecraft:sign:*>,    <minecraft:sign:*>,     <minecraft:sign:*>],
            [<minecraft:sign:*>,    <minecraft:sign:*>,     <minecraft:sign:*>],
            [null,                  <ore:logWood>,          null]
        ]  
    ); 
