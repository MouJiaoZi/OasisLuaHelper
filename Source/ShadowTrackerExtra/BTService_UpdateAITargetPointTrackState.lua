---@meta

---@class EAITargetPointTrackType
---@field AttackPoint number @攻击点
---@field ClimbUpPoint number @爬上点
---@field ClimbDownPoint number @爬下点
EAITargetPointTrackType = {}


---AI TargetPoint 追踪状态更新
---@class UBTService_UpdateAITargetPointTrackState: UBTService
---@field InTrackTargetBBKey any @追踪目标 黑板键
---@field bCanClimbTargetPointComp boolean @可以爬TargetPointComp
---@field InAttackPointType string @攻击点类型
---@field InClimbPointType string @攀爬点类型
---@field InCheckClimbOverTPMaxDistance number @考虑翻越TP最大距离
---@field InClimbOverTPPathFilterClass UNavigationQueryFilter @考虑翻越TP寻路filter
---@field InPauseUpdateStateBBKey any @暂停更新状态 黑板键
---@field OutTargetPointTrackTypeBBkey any @追踪目标点类型 黑板键
---@field OutTrackPointBBKey any @输出目标点
---@field OutTrackNextPointBBKey any @输出目标下一点
---@field OutClimbTargetBBKey any @输出攀爬目标
local UBTService_UpdateAITargetPointTrackState = {}
