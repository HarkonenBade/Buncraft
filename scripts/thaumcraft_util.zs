#loader preinit
#priority 10

import crafttweaker.item.IItemStack;

function aspect_crystal(type as string) as IItemStack
{
    return <item:thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: type}]});
}