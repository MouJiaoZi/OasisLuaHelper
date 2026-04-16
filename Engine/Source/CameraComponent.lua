---@meta

---Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides. The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.
---@class UCameraComponent: USceneComponent
---@field FieldOfView number @The horizontal field of view (in degrees) in perspective mode (ignored in Orthographic mode)
---@field FirstPersonFieldOfView number @The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson".
---@field FirstPersonScale number @The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they are small enough not to intersect with the scene.
---@field FirstPersonScaleCurveNearValue number
---@field FirstPersonScaleMaxLength number
---@field FirstPersonScaleCurvePow number
---@field bEnableFirstPersonFieldOfView number @True if the first person field of view should be used for primitives tagged as "IsFirstPerson".
---@field bEnableFirstPersonScale number @True if the first person scale should be used for primitives tagged as "IsFirstPerson".
---@field OrthoWidth number @The desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field OrthoNearClipPlane number @The near plane distance of the orthographic view (in world units)
---@field OrthoFarClipPlane number @The far plane distance of the orthographic view (in world units)
---@field AspectRatio number
---@field WidthHeight FVector2D
---@field bConstrainAspectRatio number
---@field bUseFieldOfViewForLOD number
---@field bLockToHmd number @True if the camera's orientation and position should be locked to the HMD
---@field bUsePawnControlRotation number @If this camera component is placed on a pawn, should it use the view/control rotation of the pawn where possible?
---@field bEnableModifyAdditiveOffset number
---@field ProjectionMode ECameraProjectionMode
---@field PostProcessBlendWeight number @Indicates if PostProcessSettings should be used when using this Camera to view through.
---@field PostProcessSettings any @Post process settings to use for this camera. Don't forget to check the properties you want to override
---@field bUseControllerViewRotation_DEPRECATED number @DEPRECATED: use bUsePawnControlRotation instead
local UCameraComponent = {}

---@param InFieldOfView number
function UCameraComponent:SetFieldOfView(InFieldOfView) end

---@param bNewActive boolean
---@param bReset boolean
function UCameraComponent:SetActive(bNewActive, bReset) end

---@param InFieldOfView number
function UCameraComponent:ApplyDrawDistanceOffset(InFieldOfView) end

---Returns camera's Point of View. Called by Camera class. Subclass and postprocess to add any effects.
---@param DeltaTime number
---@param DesiredView FMinimalViewInfo
function UCameraComponent:GetCameraView(DeltaTime, DesiredView) end

---@param InEnable boolean
function UCameraComponent:SetbEnableModifyAdditiveOffset(InEnable) end

---@return boolean
function UCameraComponent:GetEnableModifyAdditiveOffset() end

---Applies the given additive offset, preserving any existing offset
---@param Transform FTransform
---@param FOV number
function UCameraComponent:AddAdditiveOffset(Transform, FOV) end

---Removes any additive offset.
function UCameraComponent:ClearAdditiveOffset() end

---@param OutIsAddtive boolean
---@param OutAddtiveOffset number
---@param OutAddtiveTrans FTransform
function UCameraComponent:GetAddtiveInfo(OutIsAddtive, OutAddtiveOffset, OutAddtiveTrans) end
