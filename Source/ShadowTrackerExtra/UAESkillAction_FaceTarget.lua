---@meta

---@class FSAFaceTargetInstanceStruct
FSAFaceTargetInstanceStruct = {}


---@class UUAESkillAction_FaceTarget: UUAESkillAction
---@field bTurnImmediately boolean
---@field bFaceWithCurve boolean
---@field FaceEndStringEventName string
---@field CurveFinishWaitTime number @转身结束立刻释放技能动作融合有点问题 多等待一段时间
---@field bNeedTickGetTarget boolean
---@field AcceptableAngle number
---@field TurnSpeed number
---@field bPickFromTarget boolean
local UUAESkillAction_FaceTarget = {}

---@param SkillMgr UUTSkillManagerComponent
function UUAESkillAction_FaceTarget:OnFaceActionEnd(SkillMgr) end
