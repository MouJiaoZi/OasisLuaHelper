---@meta

---blackboard entry definition
---@class FBlackboardEntry
---@field EntryName string
---@field bInstanceSynced number @if set to true then this field will be synchronized across all instances of this blackboard
FBlackboardEntry = {}


---@class UBlackboardData: UDataAsset
---@field Keys ULuaArrayHelper<FBlackboardEntry> @blackboard keys
---@field bHasSynchronizedKeys number
local UBlackboardData = {}
