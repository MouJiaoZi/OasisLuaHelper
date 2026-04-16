---@meta

---@class FAKBusEffectType
---@field AudioName string
---@field AudioNodeID number
---@field SlotType EBusEffectSlotType
---@field SharedSetName string
FAKBusEffectType = {}


---@class FAkBusEffectConfig
---@field EffectTypeArray ULuaArrayHelper<FAKBusEffectType>
FAkBusEffectConfig = {}


---@class UAkAudioBusEffectManagerStrategic: UAssetRefStrategicBase
---@field BusEffectConfig ULuaMapHelper<string, FAkBusEffectConfig>
---@field CurrentGameModeID string
local UAkAudioBusEffectManagerStrategic = {}
