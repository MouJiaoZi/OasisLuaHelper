---@meta

---@class EMeleeAttackAbsorbStopReason
---@field Timeout number @超时停止
---@field Finished number @顺利完成
---@field Blocked number @遇到障碍
---@field ForceStop number @强制停止
EMeleeAttackAbsorbStopReason = {}


---@class EMeleeAttackMontagePointType
---@field InvalidPoint number @未定义
---@field ApplyDamageEnable number @伤害轨迹起点
---@field ApplyDamageDisable number @伤害轨迹终点
---@field ComboJumpEnable number @前摇
---@field ComboJumpDisable number @后摇
---@field CanBreakMontage number @可打断动画
---@field ChargeJumpEnable number @蓄力开始
---@field OptionalDamageFrame number @伤害触发帧
EMeleeAttackMontagePointType = {}


---@class EMeleeAttackComboJumpType
---@field Default number @未定义
---@field ClickButton number @点击按键
---@field LongPressButton number @长按按键
---@field Timeout number @后摇收招
---@field Custom number @自定义
EMeleeAttackComboJumpType = {}


---@class EMeleeAttackDamageCustomEvent
---@field PreComboJumpPhase number
---@field HandleMeleeAttackHitResult number
EMeleeAttackDamageCustomEvent = {}


---@class FMeleeAttackDamageHitInfo
---@field AttackPoint FVector_NetQuantize
---@field ImpactPoint FVector_NetQuantize
---@field AttackDirection FVector_NetQuantizeNormal
---@field HitBoneName string
FMeleeAttackDamageHitInfo = {}


---@class FMeleeAttackDamageSubmitInfo
---@field DamageHitInfos ULuaArrayHelper<FMeleeAttackDamageHitInfo>
---@field HitTime number
---@field PETaskName string
FMeleeAttackDamageSubmitInfo = {}


---@class FMeleeAttackDamageCustomEventParam
---@field DamageSubmitInfo FMeleeAttackDamageSubmitInfo
FMeleeAttackDamageCustomEventParam = {}


---@class FMeleeAttackAbsorbRepData
---@field AbsorbTargetLoc FVector
---@field AbsorbTargetRot FRotator
---@field AbsorbCommonDataID number
---@field AbsorbTargetActor AActor
FMeleeAttackAbsorbRepData = {}


---@class FMeleeAttackTargetingRepData
FMeleeAttackTargetingRepData = {}


---@class FMeleeAttackSelectResult
---@field ToAbsorbActor AActor
FMeleeAttackSelectResult = {}


---@class FMeleeAttackSampleAssetData
---@field CacheMeshRelativeTrans FTransform
FMeleeAttackSampleAssetData = {}


---@class FMeleeAttackVectorArrayWrapper
---@field VectorArray ULuaArrayHelper<FVector>
FMeleeAttackVectorArrayWrapper = {}


---@class FMeleeAttackClientComboData
FMeleeAttackClientComboData = {}


---@class FMeleeAttackKeyOpData
---@field SingleClickTimeThreshold number
FMeleeAttackKeyOpData = {}


---@class FMeleeAttackSkillComboInfo
FMeleeAttackSkillComboInfo = {}


---@class FMeleeCurveData
---@field bDistanceMode boolean
---@field ValueThreshold number
FMeleeCurveData = {}


---@class FMeleeTargetSelectData
---@field FootBlockedScorePercent number
---@field CandidateCheckOffset number
---@field MaxDistance number
---@field MinDistance number
---@field bCalcAxisZ boolean
---@field MaxAngle number
---@field MinAngle number
FMeleeTargetSelectData = {}


---@class FMeleeAbsorbCommonData
---@field AbsorbFootBlockedScorePercent number
---@field AbsorbCandidateCheckOffset number
---@field AbsorbMaxDistance number
---@field AbsorbMinDistance number
---@field AbsorbStopDistance number
---@field bAbsorbCalcAxisZ boolean
---@field bCheckDistanceWithTarget boolean
---@field AbsorbMaxAngle number
---@field AbsorbMinAngle number
---@field LaunchSpeedCurves ULuaArrayHelper<FMeleeCurveData>
---@field AbsorbFixedLaunchSpeed number
---@field RotateSpeedCurves ULuaArrayHelper<FMeleeCurveData>
---@field AbsorbFixedRotateSpeed number
---@field bUsePitchAbsorbRotate boolean
---@field bUseFreeCameraMode boolean
---@field bUseCameraLag boolean
---@field bForbidMovement boolean
---@field bUseCustomMoveAbsorb boolean
FMeleeAbsorbCommonData = {}


---@class FDamageStrategy_ClientCalcPeriodicCommon_ValidateData
---@field bEnableObstacleTracing boolean
---@field IgnoreObstacleTracingCls ULuaArrayHelper<AActor>
---@field DamageValidDistanceOffset number
---@field DamageValidTime number
FDamageStrategy_ClientCalcPeriodicCommon_ValidateData = {}
