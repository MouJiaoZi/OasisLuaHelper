---@meta

---@class UBTDecorator_Generic_AttrObserve_New: UBTDecorator
---@field ObserveObject FBlackboardKeySelector
---@field Attribute FGameAttributeContainer
---@field ArithmeticOperation EArithmeticKeyOperation
---@field CompareValue FCustomBlackboardProperty_Float
local UBTDecorator_Generic_AttrObserve_New = {}

---@param AttrName string
---@param CurValue number
function UBTDecorator_Generic_AttrObserve_New:OnAttrModify(AttrName, CurValue) end
