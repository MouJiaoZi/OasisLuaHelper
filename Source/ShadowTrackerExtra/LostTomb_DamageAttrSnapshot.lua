---@meta

---@class FLostTomb_DamageSnapshotConfig
---@field PlayerTagName string
---@field MonsterTagName string
---@field DamageAttributes ULuaArrayHelper<FGameAttributeContainer>
FLostTomb_DamageSnapshotConfig = {}


---@class FLostTomb_DamageAttrSnapshotData
---@field bValid boolean
---@field bPlayer boolean
---@field bMonster boolean
---@field DataSnapshot ULuaMapHelper<string, number>
FLostTomb_DamageAttrSnapshotData = {}


---@class ILostTomb_DamageSnapshotInterface
ILostTomb_DamageSnapshotInterface = {}

---@return FLostTomb_DamageAttrSnapshotData
function ILostTomb_DamageSnapshotInterface:GetDamageDataSnapshot() end

---@param DamageAttrSnapshotData FLostTomb_DamageAttrSnapshotData
function ILostTomb_DamageSnapshotInterface:SetDamageDataSnapshot(DamageAttrSnapshotData) end


---@class ULostTomb_DamageAttrSnapshot: UObject
---@field Config FLostTomb_DamageSnapshotConfig
local ULostTomb_DamageAttrSnapshot = {}
