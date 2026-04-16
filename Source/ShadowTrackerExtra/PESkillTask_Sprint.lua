---@meta

---@class EPESkillSprintDir
---@field E_PESKILL_SprintDir_AimForward number @//*UGC* 视角方向
---@field E_PESKILL_SprintDir_SelectDirection number @//*UGC* 朝选中的方向
---@field E_PESKILL_SprintDir_SelectTransform number @//*UGC* 朝选中位置
---@field E_PESKILL_SprintDir_SelectTarget number @//*UGC* 朝选中的目标
---@field E_PESKILL_SprintDir_SelfForward number @//*UGC* 朝自身前方
EPESkillSprintDir = {}


---@class EPESkillSprintSpeedType
---@field E_PESKILL_SprintSpeed_Scalar number @//*UGC* 常数
---@field E_PESKILL_SprintSpeed_Curve number @//*UGC* 定制曲线
EPESkillSprintSpeedType = {}


---@class UPESkillTask_Sprint: UPESkillTaskBase
---@field SpeedType EPESkillSprintSpeedType
---@field LaunchSpeed FFloatGetter
---@field SprintDir EPESkillSprintDir
---@field GroundSprintMode EGroundSprintMode
---@field FacingDirectionMode EFacingDirectionMode
---@field TurnSpeed FFloatGetter
---@field GravityScale number
---@field CollisionCamp FGameplayTask_CollisionCamp
---@field MoveIgnorePawn boolean
---@field ClearVelocityOnExit boolean
---@field CustomDirectionFunction FBindFunctionSelector @设置自定义转向方向
local UPESkillTask_Sprint = {}
