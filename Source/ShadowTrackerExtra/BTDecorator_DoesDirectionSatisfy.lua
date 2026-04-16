---@meta

---@class EAIDirectionTestType
---@field None number @None
---@field Left number @左边
---@field Right number @右边
EAIDirectionTestType = {}


---目标在源Actor的前方设定角度内
---@class UBTDecorator_DoesDirectionSatisfy: UBTDecorator
---@field TestDegree number
---@field TestDirectionType EAIDirectionTestType
---@field bCustomSrcActor boolean
---@field TargetBlackboardKey FBlackboardKeySelector
---@field SrcBlackboardKey FBlackboardKeySelector
local UBTDecorator_DoesDirectionSatisfy = {}
