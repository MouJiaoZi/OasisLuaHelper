---@meta

---@class FOnQuadrupedCharacterTouchWater : ULuaMulticastDelegate
FOnQuadrupedCharacterTouchWater = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsEnter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnQuadrupedCharacterTouchWater:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsEnter boolean
function FOnQuadrupedCharacterTouchWater:Broadcast(IsEnter) end


---四足角色游泳组件
---@class USTQuadrupedCharacterSwimComp: UActorComponent
---@field OnPlayerTouchWater FOnQuadrupedCharacterTouchWater
---@field SwimWaterSufaceOffset number
---@field OnVehicleWaterSufaceOffset number
---@field DistoVolume number
---@field DrowningHurtHight number
---@field MaxSpeedScaleHeightOffset number
---@field MinSpeedScale number
---@field MaxCrouchWaterHeight number
---@field MaxProneWaterHeight number
---@field DeadInWaterLocZOffset number
---@field FloatMovementInputScale number
---@field bUpdateWaterHeightBBK boolean
---@field MaxWaterHeightToUpdateBBK number
---@field WaterHeightBBK string
---@field bSwimWithVolume boolean
---@field StartSwimMinDepthWithWater number
---@field SurfaceMinDepthWithWater number
---@field ExitSwimDepthWithWater number
---@field bLimitHeightWithOwner boolean
---@field SurfaceMinDepthWithOwner number
---@field SurfaceMaxDepthWithOwner number
local USTQuadrupedCharacterSwimComp = {}

---@param WaterObject AWaterSwimActor
---@param bForce boolean
function USTQuadrupedCharacterSwimComp:EnterWater(WaterObject, bForce) end

---@param WaterObject AWaterSwimActor
function USTQuadrupedCharacterSwimComp:LeaveWater(WaterObject) end

---@param NewVolume APhysicsVolume
function USTQuadrupedCharacterSwimComp:PhysicsVolumeChange(NewVolume) end

---@return boolean
function USTQuadrupedCharacterSwimComp:IsInNoWaterVolume() end

---@return boolean
function USTQuadrupedCharacterSwimComp:CheckCanExitSwimWithWaterActor() end
