---@meta

---僵尸怪物动画蓝图基类（僵尸，哥斯拉，机械狗）
---@class USTExtraMonsterAnimInstance: UAnimInstanceBase
---@field C_State_IsDead boolean
---@field C_State_IsInBattle boolean
---@field C_State_IsProne boolean
---@field C_State_IsCrouch boolean
---@field C_State_IsHurting boolean
---@field C_State_HurtingDir FVector
---@field C_State_IsHeadshot boolean
---@field C_State_HurtingPoseAlpha number
---@field C_MoveSpeed number
---@field C_MoveForwardSpeed number
---@field C_MoveRightSpeed number
---@field C_LandVerticalSpeed number
---@field C_MoveSpeedRate number
---@field bNegativeSpeedEnabled boolean
---@field bClientTurnEnabled boolean
---@field bCLientTurnMinDuration number
---@field C_MoveForce FVector
---@field C_PlayMoveAnimThreshold number
---@field C_IsInBattleState EMonsterState
---@field C_State_IsRunning boolean
---@field C_State_IsMoving boolean
---@field C_State_IsJumpStart boolean
---@field C_State_IsFalling boolean
---@field C_State_MovementMode EMovementMode
---@field C_State_Observing boolean
---@field C_State_IsStuning boolean
---@field C_State_AIPathRunning boolean
---@field C_State_Climbing boolean
---@field C_State_ClimbPhase EMonsterClimbPhase
---@field C_State_JumpExPhase EMonsterJumpExPhase
---@field C_IsClimpPhaseVerticalToHorizontal boolean
---@field C_ShouldIdleInBattleState boolean
---@field C_ShouldUseHurtAnim boolean
---@field C_bRandomHurtDirect boolean
---@field C_HasShootWeapon boolean
---@field C_UseShootWeapon boolean @持枪怪物如果是枪直接做在了怪上 需开启这个实现射击瞄准
---@field C_FindShootWeapon boolean @默认每帧都会获取武器，如果没有WeaponMananger的怪物会存在性能问题，每帧FindComponent，明确没有武器的怪可以把这个开关设置为False
---@field C_AimRot FRotator
---@field C_SkillAimRot FRotator
---@field C_UseCustomAimOffset boolean
---@field C_CustomAimRot FRotator
---@field CustomAimRotLerped FRotator
---@field CustomAimRotInterpSpeed number
---@field C_UseDeadSnapPose boolean
---@field StopDeathAnimSpeedThreshold number
---@field StopDeathAnimCheckDelay number
---@field bOnFireCheckIsPlaying boolean
---@field FireCheckStopBlend number
---@field bSkipHitAnimCheck boolean
---@field bAutoSetDeathDelay boolean
---@field StopFallingDeathAnimCheckDelay number
---@field bCacheMonsterStateOnResetAnim boolean
---@field C_IdleBlendSpaceValue number
---@field C_LeftLegDown boolean
---@field C_FirstStopDone boolean
---@field C_SecondStopDone boolean
---@field C_Turn_Left boolean
---@field C_IsTurning boolean
---@field StopCurveName string
---@field C_StopCurveOutput number
---@field C_StopLegAnimType number
---@field LocalIdleBreakConfig FBreakConfig
---@field LocalCombactBreakConfig FBreakConfig
---@field bOpenHeadHit boolean
---@field BattleIdleAimDisableCurveName string
---@field Skill1AimEnableCurveName string
---@field Skill2AimEnableCurveName string
---@field Skill3AimEnableCurveName string
---@field BattleIdleAimAlpha number
---@field Skill1AimAlpha number
---@field Skill2AimAlpha number
---@field Skill3AimAlpha number
---@field MonsterTurningFM FSTExtraAnimFM_Monster_Turning
---@field EnableAdjustFloorNormal boolean
---@field C_AdjustFloorRot FRotator
---@field AdjustFloorDelta number
---@field EnableAdjustFloorRoll boolean @修正斜坡倾斜角度
---@field bSnapToFloorWhileAdjustFloor boolean @修正斜坡倾斜角度时贴地
---@field SnapToFloorDistanceMax number @修正斜坡倾斜角度时贴地最大距离
---@field SlopeAdapting_PositionLerpSpeed number @修正斜坡倾斜角度时贴地差值速度
---@field SlopeAdapting_RotationLerpSpeed number @修正斜坡倾斜角度时贴地差值速度
---@field SlopeAdapting_RotationLimit number @斜坡角度最大值
---@field SlopeAdapting_RotationInvalidLimit number @斜坡角度太大时忽略角度
---@field C_AdjustFloorLocation FVector
local USTExtraMonsterAnimInstance = {}

---@param DeltaSeconds number
function USTExtraMonsterAnimInstance:CacheParamList(DeltaSeconds) end

---@param ForceRefreshVar boolean
function USTExtraMonsterAnimInstance:CacheAnimVarList(ForceRefreshVar) end

---@param MonsterAsyncloadAnimParams FMonsterAsyncloadAnimParams
function USTExtraMonsterAnimInstance:OnAnimLoadedFinished(MonsterAsyncloadAnimParams) end

---@param PoseType EMonsterPoseType
function USTExtraMonsterAnimInstance:GetMonsterAnimArrayByPoseType(PoseType) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function USTExtraMonsterAnimInstance:OnPawnDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param PawnState EMonsterState
---@param BornType EMonsterBornType
function USTExtraMonsterAnimInstance:OnPawnBorn(PawnState, BornType) end

---@param active boolean
function USTExtraMonsterAnimInstance:HandleStiff(active) end

---@param state EMonsterState
function USTExtraMonsterAnimInstance:OnEnterState(state) end

---@param state EMonsterState
function USTExtraMonsterAnimInstance:OnLeaveState(state) end

---@return EMonsterState
function USTExtraMonsterAnimInstance:GetSPCState() end

---@return boolean
function USTExtraMonsterAnimInstance:IsFightrunning() end

---@return boolean
function USTExtraMonsterAnimInstance:ShouldSituWalk() end

---@param CurState EFreshWeaponStateType
function USTExtraMonsterAnimInstance:OnWeaponStateChanged(CurState) end

function USTExtraMonsterAnimInstance:OnMonsterStateChanged() end

---@param Msg string
function USTExtraMonsterAnimInstance:HandleAnimEventMsg(Msg) end

---@param Deltatime number
function USTExtraMonsterAnimInstance:ForceUpdateMontageInterval(Deltatime) end

---@param DeltaSeconds number
function USTExtraMonsterAnimInstance:CacheAnimState(DeltaSeconds) end
