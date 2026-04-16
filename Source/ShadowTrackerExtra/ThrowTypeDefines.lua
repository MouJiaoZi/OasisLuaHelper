---@meta

---@class EThrowState
---@field Idle number
---@field Prepare number
---@field Aim number
---@field Release number
---@field Drop number
EThrowState = {}


---@class FThrowableConfig
---@field ItemID number
---@field ProjectileClass AEliteProjectile
---@field bShowTrajectory number
---@field Ring AActor
---@field RingAttachSocket string
---@field PrepareToAimTime number
---@field ExplosionDelayOverride number
---@field GravityScale number
---@field FireDelay number
---@field ProjectileSpawnDelay number
---@field ThrowCooldownDuration number
---@field bResetCooldownDurationOnDeactivation boolean
---@field PawnMotionContributionMultiplier FVector @This multiplier determine how much pawn motion will affect final throw velocity (X - side, Y - forward)
---@field HandHoldObjectClass AActor
FThrowableConfig = {}


---@class FThrowEventData
---@field ServerInstanceID number
---@field ClientInstanceID number
---@field ClientLoc FVector
---@field ClientDirection FVector
FThrowEventData = {}


---@class FThrowObjectData
---@field ThrowState EThrowState
---@field ThrowLoc FVector_NetQuantize
---@field ThrowDirection FVector_NetQuantize
---@field InstanceID number
FThrowObjectData = {}


---@class FProjectileInstanceData
FProjectileInstanceData = {}


---@class FSpawnedProjectile
---@field bDropped boolean
FSpawnedProjectile = {}


---@class FThrowableAnim
FThrowableAnim = {}


---@class FThrowReplaceCharAnimData
---@field CharacterAnimType ECharacterAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
---@field FPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FThrowReplaceCharAnimData = {}


---@class FThrowReplaceCharAnimDataNewFPP
---@field CharacterAnimType ECharacterNewFPPAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
FThrowReplaceCharAnimDataNewFPP = {}


---@class FThrowableAnimNewFPP
FThrowableAnimNewFPP = {}


---@class FThrowReplaceJumpAnimData
---@field TPP FCharacterJumpAnimData
---@field FPP FCharacterJumpAnimData
FThrowReplaceJumpAnimData = {}


---@class FCharacterThrowData
---@field RelativeLocation_Stand FVector
---@field RelativeLocation_Crouch FVector
---@field RelativeLocation_Prone FVector
---@field RelativeLocation_Vehicle FVector
---@field StandAnim FThrowableAnim
---@field CrouchAnim FThrowableAnim
---@field ProneAnim FThrowableAnim
---@field VehicleAnim FThrowableAnim
FCharacterThrowData = {}


---@class FThrowReplaceAnimAdditive
---@field AnimAdditiveTPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
---@field AnimAdditiveFPPMap ULuaMapHelper<ECharAnimAdditiveType, FAnimAdditiveData>
FThrowReplaceAnimAdditive = {}
