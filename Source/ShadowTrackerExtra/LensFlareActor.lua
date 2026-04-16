---@meta

---@class FLensFlareElement
---@field Position number
---@field Size number
---@field UV0 FVector2D
---@field UVSize FVector2D
---@field Color FLinearColor
FLensFlareElement = {}


---@class ALensFlareActor: ACameraObserverActor
---@field bEnableCustomSunDirection boolean
---@field CustomPitch number
---@field CustomYaw number
---@field EnableSun boolean
---@field SunSize number
---@field SunColor FLinearColor
---@field SunTint FLinearColor
---@field WorldRadius number
---@field WorldOrigin FVector
---@field SunUV0 FVector2D
---@field SunUVSize FVector2D
---@field SunTranslucentSortPriority number
---@field SunDetailMode EDetailMode
---@field EnableHalo boolean
---@field HaloSize number
---@field HaloColor FLinearColor
---@field HaloUV0 FVector2D
---@field HaloUVSize FVector2D
---@field HaloTranslucentSortPriority number
---@field HaloFadeSpeed number
---@field HaloDetailMode EDetailMode
---@field EnableLensFlare boolean
---@field LensFlareElements ULuaArrayHelper<FLensFlareElement>
---@field LensFlareTranslucentSortPriority number
---@field LensFlareFadeSpeed number
---@field LensFlareDetailMode EDetailMode
local ALensFlareActor = {}
