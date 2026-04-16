---@meta

---@class FOnDragonBoyJumped : ULuaMulticastDelegate
FOnDragonBoyJumped = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, JumpedCount: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDragonBoyJumped:Add(Callback, Obj) end

---触发 Lua 广播
---@param JumpedCount number
function FOnDragonBoyJumped:Broadcast(JumpedCount) end


---@class UCustomMovementDragonBoy: UCustomMovementFlying
---@field JumpMaxCount number
---@field JumpedCount number
---@field EnergyCount number
---@field bClearVelocityZOnJump boolean
---@field OnJumped FOnDragonBoyJumped
local UCustomMovementDragonBoy = {}

function UCustomMovementDragonBoy:FreshSkillJumpData() end

---@return boolean
function UCustomMovementDragonBoy:IsJumpCDAndCountOK() end

---@return boolean
function UCustomMovementDragonBoy:ShouldCheckAdjustment() end

---@param Cnt number
function UCustomMovementDragonBoy:CostJumpEnergy(Cnt) end
