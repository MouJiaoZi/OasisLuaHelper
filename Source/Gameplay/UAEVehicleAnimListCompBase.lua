---@meta

---@class EVehicleAnimType
---@field EVehAnim_Idle number @载具待机
---@field EVehAnim_Idle2 number @载具待机2
---@field EVehAnim_Graze number @吃草
---@field EVehAnim_LieDown number @倒地
---@field EVehAnimBS_Movement number @移动
---@field EVehAnimBS_HeadYawAdditive number @移动头部叠加
---@field EVehAnimBS_TurnStart number @开始转向
---@field EVehAnimBS_TurnLoop number @转向loop
---@field EVehAnimBS_TurnEnd number @转向结束
---@field EVehAnimBS_JumpStart number @开始跳跃
---@field EVehAnimBS_JumpFalling number @跳跃坠落
---@field EVehAnimBS_JumpFallingLoop number @坠落循环
---@field EVehAnimBS_JumpLand number @跳跃落地
---@field EVehAnim_SpeedMaxAdditive number @walk->canter叠加
---@field EVehAnimBS_Swim number @游泳
---@field EVehAnimBS_HurtMovement number @重伤
---@field EVehAnimMontag_LowBrake number @低速刹车
---@field EVehAnimMontag_HighBrake number @高速刹车
---@field EVehAnimMontag_IdleShock number @受击惊慌
---@field EVehAnimMontag_GroundF number @往前倒地
---@field EVehAnimMontag_GroundB number @往后倒地
---@field EVehAnimMontag_GroundL number @往左倒地
---@field EVehAnimMontag_GroundR number @往右倒地
---@field EVehAnimMontag_GetUpL number @从左起身
---@field EVehAnimMontag_GetUpF number @从前起身
---@field EVehAnimMontag_GetUpR number @从右起身
---@field EVehAnimMontag_GetUpB number @从后起身
---@field EVehAnimMontage_Spook number @受惊踢人
---@field EVehAnim_Max number
EVehicleAnimType = {}


---@class FMyriapodVehAnimList
FMyriapodVehAnimList = {}


---@class FVehicleAnimData
---@field VehAnimType EVehicleAnimType
FVehicleAnimData = {}


---@class UUAEVehicleAnimListCompBase: UUAEAnimListComponentBase
---@field DefaultLoadAllAnim boolean
---@field VehAnimDataList ULuaArrayHelper<FVehicleAnimData>
---@field bShouldUpdateAnimList boolean
local UUAEVehicleAnimListCompBase = {}

function UUAEVehicleAnimListCompBase:InitDefaultData() end
