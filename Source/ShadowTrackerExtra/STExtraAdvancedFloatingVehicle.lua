---@meta

---@class ASTExtraAdvancedFloatingVehicle: ASTExtraFloatingVehicle
---@field LogicControllerType UFloatLogic @逻辑组件的类型
---@field bUseOldLogic boolean @强制使用旧的逻辑，保证可以去掉新加的逻辑的运行
local ASTExtraAdvancedFloatingVehicle = {}

function ASTExtraAdvancedFloatingVehicle:PlaySfxUnderWater_In() end

function ASTExtraAdvancedFloatingVehicle:PlaySfxUnderWater_Out() end
