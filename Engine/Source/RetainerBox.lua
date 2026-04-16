---@meta

---The Retainer Box renders children widgets to a render target first before later rendering that render target to the screen.  This allows both frequency and phase to be controlled so that the UI can actually render less often than the frequency of the main game render.  It also has the side benefit of allow materials to be applied to the render target after drawing the widgets to apply a simple post process. * Single Child * Caching / Performance
---@class URetainerBox: UContentWidget
---@field DisableCache boolean
---@field RenderOnInvalidation boolean @Should this widget redraw the contents it has every time it receives an invalidation request from it's children, similar to the invalidation panel.
---@field RenderOnPhase boolean @Should this widget redraw the contents it has every time the phase occurs.
---@field Phase number @The Phase this widget will draw on. If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame. If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.
---@field PhaseCount number @The PhaseCount controls how many phases are possible know what to modulus the current frame count by to determine if this is the current frame to draw the widget on. If the Phase is 0, and the PhaseCount is 1, the widget will be drawn fresh every frame. If the Phase were 0, and the PhaseCount were 2, this retainer would draw a fresh frame every other frame.  So in a 60Hz game, the UI would render at 30Hz.
---@field bHittestRecordOpt boolean
---@field bUsedForTickAdapter boolean
---@field TextureParameter string @The texture sampler parameter of the @EffectMaterial, that we'll set to the render target.
local URetainerBox = {}

---@param bEnable boolean
function URetainerBox:EnableCachedRender(bEnable) end

---@param InPhase number
---@param InPhaseCount number
function URetainerBox:SetRenderPhase(InPhase, InPhaseCount) end

---@param bEnable boolean
function URetainerBox:EnableHittestRecordOpt(bEnable) end

---@param bValue boolean
function URetainerBox:SetUsedForTickAdapter(bValue) end

---Requests the retainer redrawn the contents it has.
function URetainerBox:RequestRender() end

---Set a new effect material to the retainer widget.
---@param EffectMaterial UMaterialInterface
function URetainerBox:SetEffectMaterial(EffectMaterial) end

---Sets the name of the texture parameter to set the render target to on the material.
---@param TextureParameter string
function URetainerBox:SetTextureParameter(TextureParameter) end
