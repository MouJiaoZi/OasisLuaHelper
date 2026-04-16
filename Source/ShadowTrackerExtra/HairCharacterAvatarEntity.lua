---@meta

---@class UHairCharacterAvatarEntity: UCharacterAvatarEntity
---@field DelayApplyAnimFrameCount number
local UHairCharacterAvatarEntity = {}

function UHairCharacterAvatarEntity:ApplyAnimation() end

---@param DisableCheck boolean
function UHairCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end
