---@meta

---This delegate is assignable through Blueprint and has similar functionality to the above.
---@class FOnCanvasRenderTargetUpdate : ULuaMulticastDelegate
FOnCanvasRenderTargetUpdate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Canvas: UCanvas, Width: number, Height: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCanvasRenderTargetUpdate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Canvas UCanvas
---@param Width number
---@param Height number
function FOnCanvasRenderTargetUpdate:Broadcast(Canvas, Width, Height) end


---CanvasRenderTarget2D is 2D render target which exposes a Canvas interface to allow you to draw elements onto it directly.  Use CreateCanvasRenderTarget2D() to create a render target texture by unique name, then bind a function to the OnCanvasRenderTargetUpdate delegate which will be called when the render target is updated.  If you need to repaint your canvas every single frame, simply call UpdateResource() on it from a Tick function.  Also, remember to hold onto your new canvas render target with a reference so that it doesn't get garbage collected.
---@class UCanvasRenderTarget2D: UTextureRenderTarget2D
---@field OnCanvasRenderTargetUpdate FOnCanvasRenderTargetUpdate @Called when this Canvas Render Target is asked to update its texture resource.
---@field World UWorld
---@field bShouldClearRenderTargetOnReceiveUpdate boolean
local UCanvasRenderTarget2D = {}

---Updates the the canvas render target texture's resource. This is where the render target will create or find a canvas object to use.  It also calls UpdateResourceImmediate() to clear the render target texture from the deferred rendering list, to stop the texture from being cleared the next frame. From there it will ask the rendering thread to set up the RHI viewport. The canvas is then set up for rendering and then the user's update delegate is called.  The canvas is then flushed and the RHI resolves the texture to make it available for rendering.
function UCanvasRenderTarget2D:UpdateResource() end

---Allows a Blueprint to implement how this Canvas Render Target 2D should be updated.
---@param Canvas UCanvas
---@param Width number
---@param Height number
function UCanvasRenderTarget2D:ReceiveUpdate(Canvas, Width, Height) end

---Gets a specific render target's size from the global map of canvas render targets.
---@param Width number
---@param Height number
function UCanvasRenderTarget2D:GetSize(Width, Height) end
