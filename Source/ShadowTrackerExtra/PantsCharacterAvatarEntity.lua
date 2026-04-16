---@meta

---@class UPantsCharacterAvatarEntity: UCharacterAvatarEntity
local UPantsCharacterAvatarEntity = {}

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UPantsCharacterAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UPantsCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end
