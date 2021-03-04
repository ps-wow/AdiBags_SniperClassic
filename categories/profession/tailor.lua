local AddonName, AddonTable = ...

-- This table is for items that belong to multiple professions
AddonTable.tailor = {
  ['name'] = 'P: Tailoring',
  ['items'] = {
    -- Cloth
    [2589] = true, -- Linen Cloth
    [2592] = true, -- Wool Cloth
    [4306] = true, -- Silk Cloth
    [4338] = true, -- Mageweave Cloth
    [14047] = true, -- Runcloth
    -- Bolts
    [2997] = true, -- Bolt of Woolen Cloth
    [4305] = true, -- Bolt of Silk Cloth
    [4339] = true, -- Bolt of Mageweave
    -- Other
    [3182] = true, -- Spider's Silk
  }
}
