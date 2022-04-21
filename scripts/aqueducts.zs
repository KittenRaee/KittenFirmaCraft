#author KittenRaee
#priority 0

#modloaded tfc

recipes.remove(<aqueducts:aqueduct>);

val clayBlock = <minecraft:clay>;
val stoneBricks = <ore:stoneBrick>;
recipes.addShaped(
    "catFix_aqueduct",
    <aqueducts:aqueduct> * 6,
    [
        [clayBlock,     clayBlock,                  clayBlock],
        [stoneBricks,   <minecraft:nether_brick>,   stoneBricks]
    ]
);
