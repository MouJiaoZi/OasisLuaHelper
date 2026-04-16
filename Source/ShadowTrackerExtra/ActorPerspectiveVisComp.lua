---@meta

---@class UActorPerspectiveVisComp: UActorComponent
---@field bSetOwnerActorHiddenInTPP boolean
---@field bSetOwnerActorHiddenInFPP boolean
---@field bSetOwnerActorHiddenInNewFPP boolean
---@field bSetOwnerRealyHide boolean
local UActorPerspectiveVisComp = {}

---@param OldMode EPlayerCameraMode
---@param NewMode EPlayerCameraMode
function UActorPerspectiveVisComp:HandleCamerModeChange(OldMode, NewMode) end
