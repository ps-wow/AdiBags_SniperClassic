local _, AddonTable = ...
local L = AddonTable.L

local AdiBags = LibStub("AceAddon-3.0"):GetAddon("AdiBags")
local Core = LibStub("AceAddon-3.0"):NewAddon("AdiBags_SniperClassic")
local namespace = 'Sniper Classic'

-- Addon Debug
function Core:Dump(str, obj)
  if ViragDevTool_AddData then
      ViragDevTool_AddData(obj, str)
  end
end

function Core:GetOptions()
    return {
        -- SnipersReputation = {
        --     name = "Trade Materials",
        --     desc = 'Crafting Materials.',
        --     type = 'toggle',
        --     order = 70,
        -- }
    }
end

function Core:GetProfile()
    return {
        SnipersReputation = true
    }
end

function Core:DefaultFilter(slotData)
  local tables = {
    ['ad'] = 'Rep: Argent Dawn',
    ['vendor'] = 'Vendor Trash'
  }

  for tbl,desc in pairs(tables) do
    if AddonTable[tbl]['items'][slotData.itemId] then
      return desc
    end
  end
end

local filter = AdiBags:RegisterFilter(namespace, 95)
filter.uiName = 'Sniper Classic'
filter.description = 'Sniper Classic Filters'

function filter:Filter(slotData)
  return Core:DefaultFilter(slotData)
end

function filter:OnInitialize()
  self.db = AdiBags.db:RegisterNamespace(namespace, {
      profile = Core:GetProfile()
  })
end

function filter:GetOptions()
  return Core:GetOptions(), AdiBags:GetOptionHandler(self, true)
end
