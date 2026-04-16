---@meta

---@class UCharacterFacePaintingEntity: UCharacterAvatarEntity
local UCharacterFacePaintingEntity = {}

---@param SoftPath FSoftObjectPath
---@return boolean
function UCharacterFacePaintingEntity:CreateAndApplyResource(SoftPath) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterFacePaintingEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UCharacterFacePaintingEntity:ResetEntityBeforePushToPool(DisableCheck) end
