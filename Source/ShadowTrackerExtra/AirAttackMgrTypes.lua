---@meta

---@class EAirAttackInfo
---@field AttackWarningTips number
---@field Attacking number
---@field AttackOver number
---@field NoAirAttack number
---@field GameFinishClearInfo number
EAirAttackInfo = {}


---@class EAirAttackGenerateType
---@field None number @无规则
---@field Ringtaw number @白圈到蓝圈
---@field Outsider number @蓝圈向外延伸
---@field RandomExcludeNone number @排除无规则选项后随机
EAirAttackGenerateType = {}


---@class EAirAttackMode
---@field Normal number @经典轰炸
---@field Black number @黑轰炸
EAirAttackMode = {}


---@class FAirAttackCfg
---@field EscapeTime number
---@field AttackLastingTime number
---@field BlackAirAttackDelayTime number
---@field AttackAreaRadius number
---@field OuterRadius number
---@field TotalBombs number
---@field BombsRadius number
FAirAttackCfg = {}


---@class FAirAttackOrder
---@field waveIndex number
---@field bombsPosition ULuaArrayHelper<FVector_NetQuantize>
---@field bombsInterval ULuaArrayHelper<number>
---@field HeightOffset number
---@field DelayTime number
---@field TargetArr ULuaArrayHelper<AActor>
FAirAttackOrder = {}


---@class FAirAttackOrderCR
---@field waveIndex number
---@field HeightOffset number
---@field DelayTime number
---@field RandSeed number
---@field attackDuringTime number
---@field bombsCount number
---@field attackCenter FVector
---@field attackRadius number
---@field BombsRadius number
---@field TraceHitZs ULuaArrayHelper<number>
FAirAttackOrderCR = {}


---@class FCallBlackAirAttackOrder
---@field waveIndex number
---@field bombsPosition ULuaArrayHelper<FVector>
---@field bombsInterval ULuaArrayHelper<number>
---@field HeightOffset number
---@field DelayTime number
---@field TargetArr ULuaArrayHelper<AActor>
---@field InstanceID number
---@field Count number
---@field AirAttackArea FVector
FCallBlackAirAttackOrder = {}


---@class FCompactAirAttackOrder
---@field waveIndex number
---@field bombsCount number
---@field attackCenter FVector
---@field attackRadius number
---@field bombsRadius number
---@field attackAngleBase number
---@field attackAngleRandInterval number
---@field attackRadiusBase number
---@field attackRadiusRandInterval number
---@field attackPosZ ULuaArrayHelper<number>
---@field attackDuringTime number
---@field bombsIntervalRand number
FCompactAirAttackOrder = {}


---@class FReConnectGameStateInfo
---@field AirAttackStatus EAirAttackInfo
---@field AirAttackArea FVector
---@field AirAttackWave number
---@field PlayerNumOnPlane number
---@field AirAttackMode EAirAttackMode
FReConnectGameStateInfo = {}
