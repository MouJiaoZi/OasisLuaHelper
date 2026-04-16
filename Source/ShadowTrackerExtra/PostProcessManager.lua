---@meta

---@class APostProcessManager: AActor
---@field PPHighEndMat UMaterialInterface
---@field PPLowEndMat UMaterialInterface
---@field OutlineColor FLinearColor
---@field OutlineThickness number
---@field IsPPEnabled boolean
---@field OutlineEnabledSlots ULuaArrayHelper<EAvatarSlotType>
local APostProcessManager = {}

---@param IsEnable boolean
function APostProcessManager:EnableDrawOutlineEffect(IsEnable) end

function APostProcessManager:DestroyManager() end
