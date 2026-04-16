---@meta

---@class AConcertLight: AActor
---@field bAllowRotate boolean
---@field HorizontalRotationRange FVector2D
---@field HorizontalRotationTime number
---@field HorizontalRotateAcceleration number
---@field VerticalRotationRange FVector2D
---@field VerticalRotationTime number
---@field VerticalRotateAcceleration number
---@field FlashFrequencyRange FVector2D
---@field bHasRealLight boolean
---@field Yaw number
---@field Roll number
---@field LightColor FLinearColor
---@field StartFlash number
---@field FlashRate number
---@field Intensity number
---@field Offset number
---@field EnableFlashConfigNum number
---@field bEnableFlash boolean
---@field bEnable boolean
local AConcertLight = {}

function AConcertLight:BPSetRotation() end

function AConcertLight:BPSetLightingParam() end

function AConcertLight:BPSetZoom() end

function AConcertLight:BPSetFlashRate() end

function AConcertLight:BPEnableFlash() end

---@param Enable boolean
function AConcertLight:SetEnable(Enable) end
