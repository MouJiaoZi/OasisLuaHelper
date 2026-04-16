---@meta

---@class FPoseChangeEvent : ULuaMulticastDelegate
FPoseChangeEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ThisPtr: AAvatarShowcaseLevelActor_Single) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPoseChangeEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param ThisPtr AAvatarShowcaseLevelActor_Single
function FPoseChangeEvent:Broadcast(ThisPtr) end


---@class AAvatarShowcaseLevelActor_Single: AAvatarShowcaseLevelActor
---@field PoseIndex number
---@field LastPoseIndex number
---@field UpdatePoseInterval number
---@field RenderTextures ULuaArrayHelper<UTextureRenderTarget2D>
---@field RenderTargetIndex number
---@field OnPoseChangeEvent FPoseChangeEvent
local AAvatarShowcaseLevelActor_Single = {}
