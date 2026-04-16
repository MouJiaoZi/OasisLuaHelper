---@meta

---@class EVehicleWeaponBoardDataType
---@field EVehicleWeaponBoardDataType_None number @空
---@field EVehicleWeaponBoardDataType_MuzzlePos number @枪口位置
EVehicleWeaponBoardDataType = {}


---@class FVehicleWeaponBoardDataConfigItem
---@field SeatID number
---@field WeaponListID number
---@field DataType EVehicleWeaponBoardDataType
---@field BlackboardKey any
FVehicleWeaponBoardDataConfigItem = {}


---设置载具武器技能黑板变量
---@class UUAESkillAction_ApplyVehicleWeaponBoard: UUAESkillAction
---@field DataConfigList ULuaArrayHelper<FVehicleWeaponBoardDataConfigItem>
local UUAESkillAction_ApplyVehicleWeaponBoard = {}
