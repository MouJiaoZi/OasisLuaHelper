---@meta

---@class UOccupationArmbandAvatarEntity: UCharacterAvatarEntity
---@field EquipedParticleRendered boolean
local UOccupationArmbandAvatarEntity = {}

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UOccupationArmbandAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UOccupationArmbandAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end
