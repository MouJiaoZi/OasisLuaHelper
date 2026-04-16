---@meta

---@class EReflectionSourceType
---@field CapturedScene number @Construct the reflection source from the captured scene
---@field SpecifiedCubemap number @Construct the reflection source from the specified cubemap.
EReflectionSourceType = {}


---@class EReflectionPlatform
---@field Forward number
---@field Deferred number
---@field All number
EReflectionPlatform = {}


---@class UReflectionCaptureComponent: USceneComponent
---@field ReflectionSourceType EReflectionSourceType @Indicates where to get the reflection source from.
---@field IndoorOutdoorMask EIndoorOutdoorMask
---@field SourceCubemapAngle number @Angle to rotate the source cubemap when SourceType is set to SLS_SpecifiedCubemap.
---@field Brightness number @A brightness control to scale the captured scene's reflection intensity.
---@field CaptureOffset FVector @World space offset to apply before capturing.
---@field EnabledPlatform EReflectionPlatform
---@field StateId FGuid
local UReflectionCaptureComponent = {}
