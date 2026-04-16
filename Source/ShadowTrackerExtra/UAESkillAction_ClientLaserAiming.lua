---@meta

---@class FSAClientLaserAimingInstanceStruct
---@field ClientAimingActor AClientLaserAimingActor
FSAClientLaserAimingInstanceStruct = {}


---由服务器生成复制到客户端
---@class UUAESkillAction_ClientLaserAiming: UUAESkillAction
---@field LaserTemplate AClientLaserAimingActor
---@field AttachSocketName string
---@field AttachTargetSocketName string
---@field SourceOffset FVector
---@field TargetOffset FVector
---@field initData FLaserAimingActorInitData
---@field MaxLifeSpan number
---@field bDebugLine boolean
local UUAESkillAction_ClientLaserAiming = {}
