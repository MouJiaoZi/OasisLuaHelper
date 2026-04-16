---@meta

---@class ECharacterBodyAnimHurtType
---@field Body_None number @无
---@field Body_Head number @头
---@field Body_Torso number @躯干
---@field Body_Leg number @腿
ECharacterBodyAnimHurtType = {}


---@class FSTExtraAnimFM_Character
---@field PLAYER_TURN_RESET_TIME number
---@field ViewRotationInterSpeed number
---@field ViewRotationInterSpeed_Simulate number
---@field CharacterYawRotateRate_AccelerationMaxDeltaAngle number
---@field CharacterYawRotateRate_AccelerationInterSpeed number
---@field CharacterYawRotateRate_AccelerationScale number
---@field b_IsFPPMode boolean
---@field b_IsNewFPPMode boolean
---@field bIsInTPPMeshMode boolean
---@field bIsInOldFPPAnimMode boolean
---@field bIsSpineAttachHead boolean
---@field bIsPlayingTPPMontage boolean
---@field bIsInTPPMeshRenderFlexMode boolean
---@field bIsInForceNewFPPMode boolean
---@field r_ViewRotation FRotator
---@field r_OwnerRotation FRotator
---@field r_ControlRotation FRotator
---@field e_LastPoseType ECharacterPoseType
---@field e_PoseType ECharacterPoseType
---@field f_PoseChangeCD number
---@field b_IsCrouching boolean
---@field b_IsOnVehicle boolean
---@field f_VehicleSeatAnimBlendInTime number
---@field f_VehicleSeatAnimBlendOutTime number
---@field f_CharacterYawRotateRate number
---@field last_SprintControlRotate number
---@field last_CurLocalVelocity FVector
---@field FastRotationState number
---@field f_CharacterYawRotateRate_Reverse number
---@field f_CharacterYawRotateRate_Acceleration number
---@field bMeleeAttack boolean
---@field b_IsTurning boolean
---@field b_IsTurning_PlayAnim boolean
---@field b_IsLeftHandBlendAimOffset boolean
---@field IsRescueing boolean
---@field b_IsOnControlled boolean
---@field b_IsDoingReaload boolean
---@field b_IsHealing boolean
---@field b_WaistFollowingController boolean
---@field r_DeltaRotationYawBetweenControlAndOwner FRotator
---@field r_OwnerAimRotation_SUB_C_OwnerRotation_Yaw FRotator
---@field b_Move_OR_C_IsOnVehicle boolean
---@field b_Use_SpecialPickUpOpt boolean
---@field TurnLeft boolean
FSTExtraAnimFM_Character = {}


---@class FSTExtraAnimFM_Move
---@field ReloadMoveSpeed number
---@field MoveDirParachuteLerpSpeed number
---@field MoveDirNormalLerpSpeed number
---@field SwitchPoseTransTime number
---@field ScopeVelocityInterpSpeed number
---@field SwitchPoseMaxTime number
---@field MovementChangeBlendTimeDefault number
---@field MovementChangeBlendTimeOnce number
---@field e_MovementMode EMovementMode
---@field e_LastMovementMode EMovementMode
---@field e_CustomMovementMode number
---@field e_LastCustomMovementMode number
---@field CustomMovementModeGameplayTag FGameplayTag
---@field bIsEnableLockSprintFrontSpeed boolean
---@field v_MoveVelocity FVector
---@field v_LastMoveVelocity FVector
---@field v_MoveDir FVector
---@field MovementBlendTime number
---@field b_MovementChanged boolean
---@field MovementChangeBlendTime number
---@field AdditiveBlendTime number
---@field AdditiveBlendAlpha number
---@field b_AdditiveChanged boolean
---@field AdditiveChangeBlendTime number
---@field b_IsFlyingWithoutParachute boolean
---@field b_Move boolean
---@field b_EnableMoveUpBodyOverride boolean
---@field b_SwitchingPose boolean
---@field SwitchPoseMaxTimeCounter number
---@field b_SwitchingCharacterPose boolean
---@field SwitchCharacterPoseCounter number
---@field b_MoveAdditiveEnabled boolean
---@field f_DisableAdditiveCurveValue number
---@field b_IsMoveAdditiveValid boolean
---@field b_IsMoveAdditiveDestValid boolean
---@field da_Additive_Params FAnimAdditiveParams
---@field AnimAdditiveData FAnimAdditiveData
---@field da_Additive_Params_Dest FAnimAdditiveParams
---@field bUseNewAnimAdditive boolean
---@field CacheLastPose ESTEPoseState
---@field CacheNewPose ESTEPoseState
---@field CharLastPoseType ECharacterPoseType
---@field CharNewPoseType ECharacterPoseType
---@field bIsInObserveState boolean
---@field bIsSprintAndInObserveState boolean
---@field LastUpdateMovementTime number
FSTExtraAnimFM_Move = {}


---@class FSTExtraAnimFM_Character_Movement
---@field f_FallingVelocityZFactor number
---@field f_FallingSpeedInScoping_UnLockIK number
---@field b_JumpKeepJumpStartType boolean
---@field v_MoveVelocityInWorldSpace FVector
---@field MoveVelocityLength2D number
---@field b_MovingOnGround boolean
---@field b_MovingOnGroundAndMovbale boolean
---@field b_IsJumping boolean
---@field e_JumpType ECharacterJumpType
---@field b_IsSprinting boolean
---@field b_MovementUpBodyOverrideIsValid boolean
---@field b_EnableMovementUpBodyOverride boolean
---@field b_WalkAdditiveAlpha number
---@field b_WalkToUnarmedFalling boolean
---@field b_WalkToRifleJumpStationStart boolean
---@field bLastWalkToRifleJumpStationStart boolean
---@field LastJumpCurrentCount number
---@field b_MultiJump_CurrentFrame boolean
---@field b_IsOddJumpCount boolean
---@field JumpStartJumpType ECharacterJumpType
---@field b_IsFallingReload boolean
---@field f_MoveVelocity_X_FallingZFactor number
---@field b_Move_PistolOrRifleGun boolean
---@field b_LastMovementMode_NEQ_Falling boolean
---@field b_MovementMode_NEQ_Falling boolean
---@field b_UnarmedFallingToRifleFallLandingHard boolean
---@field b_UnarmedFallingToRifleCombatFallLanding boolean
---@field f_MaxFallingSpeed number
---@field MinCustomModeFallingSpeed number
---@field b_IgnoreMovementBaseCheckTime number
---@field f_MoveableLandHardTime number
---@field config_MoveableLandHardTime_short number
---@field config_MoveableLandHardTime_long number
FSTExtraAnimFM_Character_Movement = {}


---@class FSTExtraAnimFM_Character_Hair
---@field b_UseHairAnimDynamics boolean
---@field v_MoveVelocityInWorldSpaceReverse FVector
FSTExtraAnimFM_Character_Hair = {}


---@class FSTExtraAnimFM_Character_EyeWatch
---@field NeckTurnSpeed number
---@field NeckNotTurnAngle number
---@field NeckTurnUILeftAngle number
---@field NeckTurnUIRightAngle number
---@field NeckTurnUIUPAngle number
---@field NeckTurnUIDownAngle number
---@field NeckMapAngleUp number
---@field NeckMapAngleDown number
---@field NeckMapCrouchAngleUp number
---@field NeckMapCrouchAngleDown number
---@field NeckMapAngleDefault_Horizon number
---@field NeckMapAngleDefault_Portrait number
---@field NeckMapCrouchAngleDefault_Horizon number
---@field NeckMapCrouchAngleDefault_Portrait number
---@field NeckMapAngleLeft number
---@field NeckMapAngleRight number
---@field NeckMapCrouchAngleLeft number
---@field NeckMapCrouchAngleRight number
---@field b_ApplyTurnAroundAnim boolean
---@field r_HeadRotOffset FRotator
FSTExtraAnimFM_Character_EyeWatch = {}


---@class FSTExtraAnimFM_Character_Hurt
---@field DefaultHurtResetTime number
---@field bEnableContinueHurtAnim boolean
---@field b_Hurting boolean
---@field f_HurtingProgress number
---@field f_HurtingLegValue number
---@field HurtDamageValue number
---@field HurtMoveAnimSpeed number
---@field CacheInputHurtDir FVector
---@field v_HurtDir FVector
---@field HurtBodyType EAvatarDamagePosition
---@field HurtDamageType EDamageType
---@field CharacterBodyAnimHurtType ECharacterBodyAnimHurtType
---@field b_MoveOrOnVehicle boolean
---@field b_HasWeaponNEQGrenadeOrMelee boolean
---@field e_HurtPoseType ECharacterPoseType
---@field HurtResetTime number
---@field FarDistanceGunHurtThreshold number @新版多部位受击动画表现
---@field HurtWeight_DamageValue number
---@field HurtIntensity number
---@field HurtWeight_Neck number
---@field HurtWeight_Clavicle number
---@field HurtWeight_Thigh number
---@field AdvancedChangeHurtPoseMaxTime number
---@field bEnableAdvancedChangeHurtDetails boolean
---@field bIsAdvaceChangingHurtDetails boolean
---@field bUseFarDistanceHurtPerformance boolean
---@field bEnableOverrivedAnimSpeed_Debug boolean
FSTExtraAnimFM_Character_Hurt = {}


---@class FSTExtraAnimFM_Character_Swim
---@field f_SwimSpeed number
---@field b_IsSwimUp boolean
---@field f_MoveVelocity_Div_SwimSpeed_X number
---@field f_MoveVelocity_Div_SwimSpeed_Y number
---@field f_MoveVelocity_Div_SwimSpeed_Z number
FSTExtraAnimFM_Character_Swim = {}


---@class FSTExtraAnimFM_Character_Death
---@field bEnableMovementChangedBlend boolean
---@field SwitchPoseTransTime number
---@field NearDeathMoveBlendInTime number
---@field NearDeathMoveBlendOutTime number
---@field MovementBlendTime number
---@field b_MovementChanged boolean
---@field b_IsNearDeathStatus boolean
---@field b_IsNearDeathStatusWithoutWeapon boolean
---@field b_IsNearDeathStatusInVehicle boolean
---@field b_UseIsNearDeathAnimBP boolean
---@field b_IsNearDeathAndHurtingAnimValid boolean
---@field b_IsEnteringNearDeathAnim boolean
---@field f_EnterNearDeathCDTime number
---@field b_IsDyingFaceRotBlending boolean
---@field f_DyingFaceRotBlendRate number
---@field f_NearDeathMoveBlendInTime number
---@field f_NearDeathMoveBlendOutTime number
---@field f_HitDownDirection_Forward number @击倒方向表现优化
---@field f_HitDownDirection_Right number
---@field bUseMultiDirectionDBNOEnter boolean
---@field bIsHighFallingWhenHitDown boolean
---@field bInit boolean
FSTExtraAnimFM_Character_Death = {}


---@class FSTExtraAnimFM_Character_SpaceFlying
---@field f_SpaceMoveSpeedHorizontal number
---@field f_SpaceMoveSpeedVertical number
---@field f_HorizontalAnimBlendRate number
---@field f_VerticalAnimBlendRate number
---@field f_HorizontalAnimAlphaInterpRate number
---@field f_AdditiveBlendMax number
---@field f_AdditiveBlendAplhaAddPerScecond number
---@field f_AdditiveBlendAttenuationPerScecond number
---@field f_AdditiveVelocityTransformLimit number
---@field f_MoveVelocityMappedX number
---@field f_MoveVelocityMappedY number
---@field f_MoveVelocityMappedZ number
---@field f_SpeedDesiredAlphaX number
---@field f_SpeedDesiredAlphaY number
---@field f_SpeedDesiredAlphaZ number
---@field f_SpeedDesiredAlphaVertical number
---@field f_SpaceMoveSpeedScaleAlphaHorizontal number
---@field f_SpaceMoveSpeedScaleAlphaVertical number
---@field f_AdditiveBlendAlpha number
---@field LastMoveVelocity FVector
---@field LastVelocityTransformDir FVector
FSTExtraAnimFM_Character_SpaceFlying = {}


---@class FSTExtraAnimFM_MeleeUpBlendPelvis
---@field f_BlendPelvisWeight number
---@field f_BlendThighWeight number
---@field bNeedBlendPelvisWeight boolean
---@field f_BlendPelvisTransWeight number
---@field f_BlendPelvisRotWeight number
---@field bNeedBlendPelvisWeightSeparately boolean
---@field f_BlendClavicleLWeight number
---@field f_BlendClavicleRWeight number
FSTExtraAnimFM_MeleeUpBlendPelvis = {}
