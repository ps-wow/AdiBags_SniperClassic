local AddonName, AddonTable = ...

AddonTable.ore = {
  ['name'] = 'T: Mining',
  ['items'] = {
    -- Ore
    [2770] = true, -- Copper Ore
    [2771] = true, -- Tin Ore
    -- Bars
    [2840] = true, -- Copper Bar
    [2842] = true, -- Silver Bar
    [3576] = true, -- Tin Bar
    [3577] = true, -- Gold Bar
  }
}

AddonTable.stone = {
  ['name'] = 'T: Mining',
  ['items'] = {
    [2835] = true, -- Rough Stone
    [2836] = true, -- Coarse Stone
  }
}

AddonTable.gems = {
  ['name'] = 'T: Mining',
  ['items'] = {
    [774] = true, -- Malachite
    [818] = true, -- Tigerseye
    [1206] = true, -- Moss Agate
    [1210] = true, -- Shadowgem
    [1705] = true, -- Lesser Moonstone
    [3864] = true, -- Citrine
    [5500] = true, -- Iridescent Pearl
  }
}
