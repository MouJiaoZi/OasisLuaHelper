---@meta

---@class FRemoteDogContactWater : ULuaMulticastDelegate
FRemoteDogContactWater = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, num: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoteDogContactWater:Add(Callback, Obj) end

---触发 Lua 广播
---@param num number
function FRemoteDogContactWater:Broadcast(num) end


---@class FRemoteDogInWater : ULuaMulticastDelegate
FRemoteDogInWater = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InWater: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoteDogInWater:Add(Callback, Obj) end

---触发 Lua 广播
---@param InWater boolean
function FRemoteDogInWater:Broadcast(InWater) end


---@class URemoteControlDog: URemoteControlComponent
---@field MaxFuel number
---@field FuleConsumeFactor number
---@field MoveRightVelocityThreshold number
---@field WaterFuelConsumeFactor number
---@field InWater boolean
---@field DogInWater FRemoteDogInWater
---@field CurFuel number
---@field CurHP number
---@field OnContactWater FRemoteDogContactWater
---@field TestPointRadius number
---@field TestPoints ULuaArrayHelper<FVector>
---@field DrawDebugPoints boolean
---@field OpenDoorRange number
---@field CheckDoorFrameRate number
local URemoteControlDog = {}

function URemoteControlDog:OnRep_InWater() end

---@return number
function URemoteControlDog:GetCurHP() end

---@return number
function URemoteControlDog:GetMaxHP() end

---@param hp number
function URemoteControlDog:SetCurHP(hp) end

---@param hp number
function URemoteControlDog:SetMaxHP(hp) end

---@param fuel number
function URemoteControlDog:SetCurFuel(fuel) end

---@param fuel number
function URemoteControlDog:SetMaxFuel(fuel) end

function URemoteControlDog:OnRecycled() end

function URemoteControlDog:PlayWalkSound() end

function URemoteControlDog:TickOpenDoor() end
