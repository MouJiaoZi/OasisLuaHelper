---@meta

---@class UBTDecorator_UGC_Mob_AttrObserve: UBTDecorator
---@field ObserveObject FBlackboardKeySelector
---@field AttrName FCustomBlackboardProperty_Name
---@field ArithmeticOperation EArithmeticKeyOperation
---@field CompareValue FCustomBlackboardProperty_Float
---@field AttrValueChangedDelegate FOnAttrValueChangedDynamicDelegate
local UBTDecorator_UGC_Mob_AttrObserve = {}

---@param AttrName string
---@param CurValue number
function UBTDecorator_UGC_Mob_AttrObserve:OnAttrModify(AttrName, CurValue) end
