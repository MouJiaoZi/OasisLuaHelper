---@meta

---@class FOnFlyBoardJumped : ULuaMulticastDelegate
FOnFlyBoardJumped = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, JumpedCount: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlyBoardJumped:Add(Callback, Obj) end

---触发 Lua 广播
---@param JumpedCount number
function FOnFlyBoardJumped:Broadcast(JumpedCount) end


---@class UCustomMovementFlyBoard: UCustomMovementFlying
---@field Energy number
---@field MaxEnergy number
---@field EnergyRecoverRate number
---@field EnergyConsumeRate number
---@field EnergyConsumeRateSprint number
---@field OnWaterHeight number
---@field bIsOnWater boolean
local UCustomMovementFlyBoard = {}

---@param DeltaTime number
function UCustomMovementFlyBoard:ConsumeEnergy(DeltaTime) end

---@param NewEnergy number
function UCustomMovementFlyBoard:SetEnergy(NewEnergy) end

---@param MoveFlag ECustomFlyingMoveFlag
---@param ResetFlagEnterTime boolean
---@return boolean
function UCustomMovementFlyBoard:SetFlyingMoveFlag(MoveFlag, ResetFlagEnterTime) end

---@return boolean
function UCustomMovementFlyBoard:IsSprint() end

---@return boolean
function UCustomMovementFlyBoard:ShouldLand() end
