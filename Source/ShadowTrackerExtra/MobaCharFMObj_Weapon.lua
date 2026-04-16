---@meta

---@class UMobaCharFMObj_Weapon: UAnimFunctionModule_ObjInstance
---@field IdleAimTriggerTurnAngleThreshold number @Aim *
---@field IdleAimOffsetMaxYawAngle number
---@field IdleAimRecoverInterpMaxAngle number
---@field AimRootOffsetRecoverInterValue_Min number
---@field AimRootOffsetRecoverInterValue_Max number
---@field ExitIdleAimInterValue number
---@field IdleAimStayTimeThreshold number
---@field IdleAimStayTimeAngleThreshold number
---@field f_ViewRotation_IN_Scoping number
---@field f_DeltaYawBetweenViewAndActor number
---@field f_DeltaYawBetweenViewAndActor_Reverse number
---@field f_DeltaYawDegreeToSequenceRatio number
---@field bAimOffsetAnimValid boolean
---@field bEnableUseAimOffset boolean
---@field bIdleMultDirAimValid boolean
---@field e_WeaponState EFreshWeaponStateType @Weapon *
---@field e_WeaponTypeNew EWeaponTypeNew
---@field b_Reloading boolean
---@field b_IsScoping boolean
---@field b_IsBolting boolean
---@field b_ScopeInBoltActionEnable boolean
---@field bUseAccumulateFire boolean
local UMobaCharFMObj_Weapon = {}

---@param NewState EFreshWeaponStateType
function UMobaCharFMObj_Weapon:HandlePlayerWeaponStateChanged(NewState) end

function UMobaCharFMObj_Weapon:HandleForceUpdateFireLoopPlayRate() end


---@class UMobaCharFMObj_ADS: UAnimFunctionModule_ObjInstance
---@field FirstAimSpine_StandAndCrouch FVector @自动修改spine03 位置和旋转 模拟开镜AO **
---@field v_ScopeAimRollRangeIN FVector2D
---@field v_ScopeAimRollRangeOut FVector2D
---@field r_ScopeAimOffsetStand FRotator
---@field b_C_MoveVelocityLengthSquard_Bigger_0 boolean
---@field r_ScopeAimRotation FRotator
---@field v_ScopeAimTransform FVector
---@field r_C_OffsetRotation_half FRotator
---@field C_OffsetLocation FVector
---@field v_FirstAimSpine FVector
---@field bSightAutoAimCenterConsiderOne boolean @自动修改item_R旋转 控制枪身朝向 **
---@field bSightAutoAimCenterConsiderTwo boolean
---@field WeaponHandleName string
---@field CacheBoneFlagName string
---@field CachePreAimOffsetFlagName string
---@field CachePostAimOffsetFlagName string
---@field WeaponDestinRotation FRotator
---@field f_AutoAimCenterRotatorLerpSpeed number
---@field b_C_AutoAimCenterRotator boolean
---@field b_C_EnableAutoAimCenterRotator boolean
---@field b_C_AutoAimCenterUseAnimNode boolean
---@field r_AutoAimCenterRotator FRotator
---@field r_AutoAimCenterDestinRotator FRotator
---@field r_AutoAimCenterBeginOffsetRotator FRotator
---@field r_AutoAimCenterEndOffsetRotator FRotator
local UMobaCharFMObj_ADS = {}
