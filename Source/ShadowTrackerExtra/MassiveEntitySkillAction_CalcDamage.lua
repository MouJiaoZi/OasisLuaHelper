---@meta

---僵尸技能基类 僵尸技能为简单的攻击跳跃等
---@class eMEDamageType
---@field Sphere number
---@field Overlap number
---@field Line number
eMEDamageType = {}


---@class UMassiveEntitySkillAction_CalcDamage: UMassiveEntitySkillAction
---@field bCheckVisibility boolean
---@field Offset FVector
---@field LineOffset ULuaArrayHelper<FVector>
---@field UseEnemyLocationOffset boolean
---@field AttackParticlePath FSoftObjectPath
---@field ShootingProbability number
---@field Radius number
---@field AttackHeight number
---@field DamageAmount number
---@field DragonBallSize FVector
---@field AttackAngle number
---@field AttackType eMEDamageType
---@field CheckLineTraceChannel ECollisionChannel
---@field EndObjetOffset ULuaMapHelper<AActor, FVector>
---@field Debug boolean
---@field AttackScaleAttrName string
local UMassiveEntitySkillAction_CalcDamage = {}
