---@meta

---@class FTextureArrayUpdateFinished : ULuaMulticastDelegate
FTextureArrayUpdateFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UTexture2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTextureArrayUpdateFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UTexture2D
function FTextureArrayUpdateFinished:Broadcast(Param1) end


---@class UTexture2DArray: UTexture
---@field AddressX TextureAddress @The addressing mode to use for the X axis.
---@field AddressY TextureAddress @The addressing mode to use for the Y axis.
---@field AddressZ TextureAddress @The addressing mode to use for the Z axis.
local UTexture2DArray = {}
