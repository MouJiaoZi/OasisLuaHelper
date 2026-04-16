---@meta

---@class FHealthStateInfo
---@field HealthState EMobStateType @血量状态
---@field HealthThreshold number @血量阈值（该状态的血量下限,百分比）
FHealthStateInfo = {}


---@class UBTService_Mob_StateHandler: UBTService
---@field HealthStateSetting ULuaArrayHelper<FHealthStateInfo>
---@field bCanChangeStateWhenCastSkill boolean
local UBTService_Mob_StateHandler = {}
