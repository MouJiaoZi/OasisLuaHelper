---@meta

---@class UFeatureClothesAvatarEntity: UCharacterAvatarEntity
local UFeatureClothesAvatarEntity = {}

---@param DefineID FItemDefineID
---@param BattleItemHandle UBattleItemHandleBase
function UFeatureClothesAvatarEntity:CreateHandleCallback(DefineID, BattleItemHandle) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UFeatureClothesAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UFeatureClothesAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end
