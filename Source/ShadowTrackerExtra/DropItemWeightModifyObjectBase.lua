---@meta

---@class UDropItemWeightModifyObjectBase: UObject
local UDropItemWeightModifyObjectBase = {}

---@param StrategyContext FDropItemStrategyContext
---@param WeightModifyContext FDropItemWeightModifyContext
---@param InWeight number
---@return boolean
function UDropItemWeightModifyObjectBase:CanModifyWeight(StrategyContext, WeightModifyContext, InWeight) end

---@param StrategyContext FDropItemStrategyContext
---@param WeightModifyContext FDropItemWeightModifyContext
---@param InWeight number
---@return number
function UDropItemWeightModifyObjectBase:ExecuteModifyWeight(StrategyContext, WeightModifyContext, InWeight) end


---@class UDropItemWeightModifyWeightScale: UDropItemWeightModifyObjectBase
---@field ItemIDs ULuaSetHelper<number>
---@field ScaleRate number
local UDropItemWeightModifyWeightScale = {}
