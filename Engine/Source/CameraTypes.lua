---@meta

---@class ECameraProjectionMode
---@field Perspective number
---@field Orthographic number
ECameraProjectionMode = {}


---@class ECameraAnimPlaySpace
---@field CameraLocal number @This anim is applied in camera space.
---@field World number @This anim is applied in world space.
---@field UserDefined number @This anim is applied in a user-specified space (defined by UserPlaySpaceMatrix).
ECameraAnimPlaySpace = {}


---@class FMinimalViewInfo
---@field Location FVector @Location
---@field LocationLocalSpace FVector @Location In Local Space
---@field Rotation FRotator @Rotation
---@field ViewTag string
---@field FOV number @The field of view (in degrees) in perspective mode (ignored in Orthographic mode)
---@field bUseFirstPersonParameters number
---@field FirstPersonFOV number @The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson".
---@field FirstPersonScale number @The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they are small enough not to intersect with the scene.
---@field FirstPersonScaleParameters FVector
---@field OrthoWidth number @The desired width (in world units) of the orthographic view (ignored in Perspective mode)
---@field OrthoNearClipPlane number @The near plane distance of the orthographic view (in world units)
---@field OrthoFarClipPlane number @The far plane distance of the orthographic view (in world units)
---@field AspectRatio number
---@field bConstrainAspectRatio number
---@field bUseFieldOfViewForLOD number
---@field ProjectionMode ECameraProjectionMode
---@field PostProcessBlendWeight number @Indicates if PostProcessSettings should be applied.
---@field PostProcessSettings any @Post-process settings to use if PostProcessBlendWeight is non-zero.
---@field OffCenterProjectionOffset FVector2D @Off-axis / off-center projection offset as proportion of screen dimensions
FMinimalViewInfo = {}
