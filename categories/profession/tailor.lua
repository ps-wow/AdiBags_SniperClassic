local AddonName, AddonTable = ...

-- This table is for items that belong to multiple professions
AddonTable.tailor = {
  ['name'] = 'P: Tailoring',
  ['items'] = {
    -- Bolts
    [2996] = true, -- Bolt of Linen Cloth
    [2997] = true, -- Bolt of Woolen Cloth
    [4305] = true, -- Bolt of Silk Cloth
    [4339] = true, -- Bolt of Mageweave
    -- Other
    [3182] = true, -- Spider's Silk
  }
}
