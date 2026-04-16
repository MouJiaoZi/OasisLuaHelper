---@meta

---A CameraModifier is a base class for objects that may adjust the final camera properties after being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier can be stateful, and is associated uniquely with a specific APlayerCameraManager.
---@class UCameraModifier: UObject
---@field bDebug number @If true, enables certain debug visualization features.
---@field bExclusive number @If true, no other modifiers of same priority allowed.
---@field Priority number @Priority value that determines the order in which modifiers are applied. 0 = highest priority, 255 = lowest.
---@field AlphaInTime number @When blending in, alpha proceeds from 0 to 1 over this time
---@field AlphaOutTime number @When blending out, alpha proceeds from 1 to 0 over this time
---@field Alpha number @Current blend alpha.
local UCameraModifier = {}

---Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.
---@param DeltaTime number
---@param ViewLocation FVector
---@param ViewRotation FRotator
---@param FOV number
---@param NewViewLocation FVector
---@param NewViewRotation FRotator
---@param NewFOV number
function UCameraModifier:BlueprintModifyCamera(DeltaTime, ViewLocation, ViewRotation, FOV, NewViewLocation, NewViewRotation, NewFOV) end

---Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.
---@param DeltaTime number
---@param PostProcessBlendWeight number
---@param PostProcessSettings FPostProcessSettings
function UCameraModifier:BlueprintModifyPostProcess(DeltaTime, PostProcessBlendWeight, PostProcessSettings) end

---@return boolean
function UCameraModifier:IsDisabled() end

---Disables this modifier.
---@param bImmediate boolean
function UCameraModifier:DisableModifier(bImmediate) end

---Enables this modifier.
function UCameraModifier:EnableModifier() end
