---@meta

---Single Child Used to Draw Mask and Perform Mask Animation Effects
---@class UMaskBox: UContentWidget
---@field InvalidateFrameCount number
---@field Phase number @The Phase this widget will draw on. If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame. If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.
---@field PhaseCount number @The PhaseCount controls how many phases are possible know what to modulus the current frame count by to determine if this is the current frame to draw the widget on. If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame. If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.
---@field SampleCycle number
---@field IgnoreStretch boolean
---@field MaskType number
---@field UseLocalSize boolean
---@field MaskTransformPivot FVector2D
---@field MaskTransformScale FVector2D
---@field MaskTransformAngle number
---@field bModifySyncOrder boolean
local UMaskBox = {}

---Set a new effect material to the widget.
---@param EffectMaterial UMaterialInterface
function UMaskBox:SetMaskMaterial(EffectMaterial) end

---@param Texture UTexture2D
function UMaskBox:SetBrushFromTexture(Texture) end

---@param Scale FVector2D
function UMaskBox:SetMaskTransformScale(Scale) end

---@param Angle number
function UMaskBox:SetMaskTransformAngle(Angle) end

---@param Pivot FVector2D
function UMaskBox:SetMaskTransformPivot(Pivot) end
