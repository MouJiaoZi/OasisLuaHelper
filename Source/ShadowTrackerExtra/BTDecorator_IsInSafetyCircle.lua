---@meta

---@class EInSafetyCircleType
---@field EInSafetyCircleType_None number @在毒圈中
---@field EInSafetyCircleType_BlueCircle number @在蓝圈中
---@field EInSafetyCircleType_WhiteCircle number @在白圈中
EInSafetyCircleType = {}


---@class UBTDecorator_IsInSafetyCircle: UBTDecorator
---@field CheckTargetBlackboardKey any @blackboard key selector
---@field IsCheackByCircleType EInSafetyCircleType
local UBTDecorator_IsInSafetyCircle = {}
