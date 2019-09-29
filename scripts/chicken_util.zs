#priority 10

import crafttweaker.item.IItemStack;

function chicken(type as string) as IItemStack
{
    return <roost:chicken>.withTag({Growth: 1,
                                    Chicken: type,
                                    Gain: 1,
                                    Strength: 1});
}


function maxed(chicken as IItemStack) as IItemStack
{
    return chicken.updateTag({Growth: 10,
                              Gain: 10,
                              Strength: 10});
}