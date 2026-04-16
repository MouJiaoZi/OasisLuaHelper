---@meta

---@class UWingClothCharacterAvatarEntity: UCharacterAvatarEntity
---@field ParticleVisible boolean
local UWingClothCharacterAvatarEntity = {}

---@param isHide boolean
function UWingClothCharacterAvatarEntity:SetVisibityProcess(isHide) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UWingClothCharacterAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UWingClothCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UWingClothCharacterAvatarEntity:HandleNearClipPlane() end
