---@meta

---@class FSpawnItemLocAndRotInfo
---@field Loc FVector
---@field Rot FRotator
---@field Weight number
FSpawnItemLocAndRotInfo = {}


---@class FSpawnItemInfo
---@field BPPath string
---@field Loc FVector
---@field Rot FRotator
---@field ID number
---@field GroupID number
---@field Count number
---@field Weight number
---@field RandRot number
FSpawnItemInfo = {}


---@class FSpawnInfo
---@field BPPath string
---@field Loc FVector
---@field Rot FRotator
---@field ID number
---@field Count number
---@field RandRot number @需要几个儿子
FSpawnInfo = {}


---@class UHideAndSeekSpawnItem: UGameModeBaseComponent
---@field MainItemLocationTableList ULuaArrayHelper<string>
---@field GroupCountTable string
---@field MainItemTable string
---@field SubItemTable string
---@field SubSubItemTable string
---@field SpawnItemCountPerTick number
local UHideAndSeekSpawnItem = {}

---@param GroupID number
---@param X number
---@param Y number
---@param Z number
---@param Roll number
---@param Pitch number
---@param Yaw number
---@param Weight number
function UHideAndSeekSpawnItem:AddItemLocInfo(GroupID, X, Y, Z, Roll, Pitch, Yaw, Weight) end

function UHideAndSeekSpawnItem:LoadItemTable() end

---@param SpawnCount number
---@return number
function UHideAndSeekSpawnItem:SpawnMainItem(SpawnCount) end

---@param SpawnCount number
---@return number
function UHideAndSeekSpawnItem:SpawnSubItem(SpawnCount) end

---@param SpawnCount number
---@return number
function UHideAndSeekSpawnItem:SpawnSubSubItem(SpawnCount) end

---@param Idx number
---@return string
function UHideAndSeekSpawnItem:GetLuaTableFullPath(Idx) end
