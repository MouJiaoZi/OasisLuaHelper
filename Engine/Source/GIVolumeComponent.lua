---@meta

---@class FAmbientCubeFace
---@field Color FColor
---@field Tint FLinearColor
---@field FaceSaturation number
FAmbientCubeFace = {}


---@class FAmbientCube
---@field Saturation number
FAmbientCube = {}


---@class FAmbientCube2
---@field bUseCustomCapture boolean
---@field Saturation number
---@field Face_PosX_Tint FLinearColor
---@field Face_NegX_Tint FLinearColor
---@field Face_PosY_Tint FLinearColor
---@field Face_NegY_Tint FLinearColor
---@field Face_PosZ_Tint FLinearColor
---@field Face_NegZ_Tint FLinearColor
---@field Face_PosX FLinearColor
---@field Face_NegX FLinearColor
---@field Face_PosY FLinearColor
---@field Face_NegY FLinearColor
---@field Face_PosZ FLinearColor
---@field Face_NegZ FLinearColor
FAmbientCube2 = {}


---@class UGIBoxVolumeComponent: USceneComponent
---@field Extents FVector
---@field FadeExtents_Neg FVector
---@field FadeExtents_Pos FVector
---@field bOutdoorTransition boolean
---@field VolumeAlpha number
---@field Brightness number
---@field SkyIntensity number
---@field Priority number
---@field AmbientCube2 FAmbientCube2
---@field DebugColor FColor
local UGIBoxVolumeComponent = {}

function UGIBoxVolumeComponent:CaptureSceneToAmbientCube() end


---@class UGIVolumesContainerComponent: USceneComponent
local UGIVolumesContainerComponent = {}
