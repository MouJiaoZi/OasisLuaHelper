---@meta

---@class UBTDecorator_Generic_AttrObserve: UBTDecorator
---@field ObserveObject FBlackboardKeySelector
---@field AttrName FCustomBlackboardProperty_Name
---@field ArithmeticOperation EArithmeticKeyOperation
---@field CompareValue FCustomBlackboardProperty_Float
local UBTDecorator_Generic_AttrObserve = {}

---@param AttrName string
---@param CurValue number
function UBTDecorator_Generic_AttrObserve:OnAttrModify(AttrName, CurValue) end
