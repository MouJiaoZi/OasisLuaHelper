---@meta

---怪物简单射击服务 在行为树执行过程中，当与目标可见且达到攻击间隔时，执行开火
---@class UBTService_MonsterSimpleShooting: UBTService
---@field TargetKey FBlackboardKeySelector @目标Actor的黑板Key
---@field AttackInterval number @攻击间隔(秒)，实际间隔不会小于枪械本身的射击间隔
local UBTService_MonsterSimpleShooting = {}
