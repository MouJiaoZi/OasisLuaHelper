---@meta

---@class EPESkillTracetType
---@field EPESkillTraceType_SelectTarget number @选中目标
---@field EPESkillTraceType_SelectDirection number @选中方向
---@field EPESkillTraceType_SelectTransform number @选中点方向
EPESkillTracetType = {}


---@class UPESkillTask_TraceTarget: UPESkillTaskBase
---@field TraceType EPESkillTracetType
---@field MaxTraceAngle FFloatGetter
---@field AngleTraceSpeed FFloatGetter
---@field MinTraceDistance FFloatGetter
---@field MaxTraceDistance FFloatGetter
---@field TraceDistanceIgnoreZAxis boolean
---@field TraceSpeed FFloatGetter
local UPESkillTask_TraceTarget = {}

---@param CameraManager ASTPlayerCameraManager
---@param ViewRotation FRotator
---@return FRotator
function UPESkillTask_TraceTarget:HandleProcessViewRotation(CameraManager, ViewRotation) end
