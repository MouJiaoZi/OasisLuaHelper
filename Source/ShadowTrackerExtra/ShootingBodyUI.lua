---@meta

---@class EShootBodyType
---@field Missing number @未命中
---@field Head number @头部
---@field Body number @身体
---@field Limb number @四肢
---@field Hand number @手掌
---@field Foot number @脚部
EShootBodyType = {}


---/
---@class FHitFlowArrayReplay
---@field WeaponID number
---@field HitFlow ULuaArrayHelper<FHitFlow>
FHitFlowArrayReplay = {}


---@class UShootingBodyUI: UUAEUserWidget
---@field LastActivedRecord FWeaponRecord
---@field SavedHitFlowMap ULuaMapHelper<number, FHitFlowArrayReplay>
local UShootingBodyUI = {}

---@param NewRecord FWeaponRecord
---@param bIsTurnToShow boolean
---@param bToUpdateFireCount boolean
function UShootingBodyUI:UpdateShootingBodyUI(NewRecord, bIsTurnToShow, bToUpdateFireCount) end

---@param AddedHitCountMap ULuaMapHelper<number, number>
---@param bIsSameWeapon boolean
function UShootingBodyUI:UpdateBodyHitCount(AddedHitCountMap, bIsSameWeapon) end

---@param TotalFireCount number
function UShootingBodyUI:UpdateFireCount(TotalFireCount) end
