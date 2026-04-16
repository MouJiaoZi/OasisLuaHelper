---@meta

---Enumeration for RootMotionSource accumulation mode
---@class ERootMotionAccumulateMode
---@field Override number
---@field Additive number
ERootMotionAccumulateMode = {}


---Enumeration for RootMotionSource status flags
---@class ERootMotionSourceStatusFlags
---@field Prepared number
---@field Finished number
---@field MarkedForRemoval number
ERootMotionSourceStatusFlags = {}


---Enumeration for RootMotionSource settings
---@class ERootMotionSourceSettingsFlags
---@field UseSensitiveLiftoffCheck number
---@field DisablePartialEndTick number
ERootMotionSourceSettingsFlags = {}


---@class ERootMotionFinishVelocityMode
---@field MaintainLastRootMotionVelocity number
---@field SetVelocity number
---@field ClampVelocity number
ERootMotionFinishVelocityMode = {}


---Structure for RootMotionSource status flags (used for convenience instead of having to manually manipulate flag bitfields)
---@class FRootMotionSourceStatus
---@field Flags number
FRootMotionSourceStatus = {}


---Structure for RootMotionSource option flags (used for convenience instead of having to manually manipulate flag bitfields)
---@class FRootMotionSourceSettings
---@field Flags number
FRootMotionSourceSettings = {}


---Struct for RootMotion Finish Velocity options.
---@class FRootMotionFinishVelocitySettings
---@field Mode ERootMotionFinishVelocityMode
---@field SetVelocity FVector
---@field ClampVelocity number
FRootMotionFinishVelocitySettings = {}


---Generalized source of Root Motion to a CharacterMovementComponent. Has priorities and different accumulation modes (override, additive, set, ignore). RootMotionSources are accumulated from highest priority to lowest, once all values are "finalized" (meaning no more accumulation to those values), root motion accumulation is finished. Having all of translation and rotation in a transform being overridden during root motion accumulation means that CharacterMovementComponent Phys*() functions no longer need to CalcVelocity() since it'll just get overridden anyway. Some example source possibilities: Full Animation Root Motion (matching only form of root motion we've supported historically): - Overrides all translation axes or rotation or both - Very High priority so it gets applied first and since it is override no other RootMotionSources have an influence that are lower priority - Scale on translation and/or rotation is set to 1 to match animation 1 for 1 - Provides local space transform (character-orientation relative) - End result: Same as before - overrides velocity/rotation to values in AnimMontage - But can now scale individual translation axes if desired, or instead of override can use "set" to allow other additive sources of root motion to be applied on top of the animation root motion (modify velocity to home root motion melee attacks, etc.) Jump pad volumes that work during animation root montage attacks - Constant velocity modification Z up, additive and high priority - Attack/melee animation root motion uses "set" instead of "override" to allow other sources - Animation root motion is applied, then the Z up additive of this source is so you are affected by the jump pad Attack/melee homing - Additive, lower priority so it gets applied after any animation/significant root motion - World space, sourced by logic modifying velocity to go towards nearby enemies - Could point to a UAbilityTask node from the GameplayAbilities system Character movement controlled by splines/curves in-editor instead of requiring animation tweaks - Same as animation root motion but source from spline/curve data
---@class FRootMotionSource
---@field Priority number @Priority of this source relative to other sources - higher number being the highest priority/first applied.
---@field LocalID number @ID local to this client or server instance. Used for matching up FRootMotionSources between SavedMoves and allow a mapping between server LocalIDs and client LocalIDs for correction/comparison
---@field AccumulateMode ERootMotionAccumulateMode @Accumulation mode for this source (whether or not to additively apply this root motion or override completely)
---@field InstanceName string @This name allows us to find the source later so that we can end it.
---@field StartTime number @Time this source should start (in character movement client time) This is used to handle cases of inconsistent tick times (ServerMoves ticking for 1 second when root motion should have only applied for the last 0.1 seconds, or root motion source ending halfway through a 0.5 second tick)
---@field CurrentTime number @Time elapsed so far for this source
---@field PreviousTime number @The last Time entry we had before the last SetTime() - used for simulated catchup
---@field Duration number @The length of this root motion - < 0 for infinite (to be removed manually)
---@field Status FRootMotionSourceStatus @Status of this source
---@field Settings FRootMotionSourceSettings @Settings of this source
---@field bInLocalSpace boolean @True when this RootMotionSource is contributing local space accumulation (false for world space)
---@field RootMotionParams FRootMotionMovementParams @Root Motion generated by this Source
---@field FinishVelocityParams FRootMotionFinishVelocitySettings @Finish Velocity Parameters
FRootMotionSource = {}


---ConstantForce applies a fixed force to the target
---@class FRootMotionSource_ConstantForce
---@field Force FVector
FRootMotionSource_ConstantForce = {}


---RadialForce applies a force pulling or pushing away from a given world location to the target
---@class FRootMotionSource_RadialForce
---@field Location FVector
---@field Radius number
---@field Strength number
---@field bIsPush boolean
---@field bNoZForce boolean
---@field bUseFixedWorldDirection boolean
---@field FixedWorldDirection FRotator
FRootMotionSource_RadialForce = {}


---MoveToForce moves the target to a given fixed location in world space over the duration
---@class FRootMotionSource_MoveToForce
---@field StartLocation FVector
---@field TargetLocation FVector
---@field bRestrictSpeedToExpected boolean
FRootMotionSource_MoveToForce = {}


---MoveToDynamicForce moves the target to a given location in world space over the duration, where the end location is dynamic and can change during the move (meant to be used for things like moving to a moving target)
---@class FRootMotionSource_MoveToDynamicForce
---@field StartLocation FVector
---@field InitialTargetLocation FVector
---@field TargetLocation FVector
---@field bRestrictSpeedToExpected boolean
FRootMotionSource_MoveToDynamicForce = {}


---JumpForce moves the target in a jump-like manner (ends when landing, applied force is relative)
---@class FRootMotionSource_JumpForce
---@field Rotation FRotator
---@field Distance number
---@field Height number
---@field bDisableTimeout boolean
FRootMotionSource_JumpForce = {}


---Group of Root Motion Sources that are applied
---@class FRootMotionSourceGroup
---@field bHasAdditiveSources boolean @Whether this group has additive root motion sources
---@field bHasOverrideSources boolean @Whether this group has override root motion sources
---@field LastPreAdditiveVelocity FVector_NetQuantize10 @Saved off pre-additive-applied Velocity, used for being able to reliably add/remove additive velocity from currently computed Velocity (otherwise we would be removing additive velocity that no longer exists, like if you run into a wall and your Velocity becomes 0 - subtracting the velocity that we added heading into the wall last tick would make you go backwards. With this method we override that resulting Velocity due to obstructions
---@field bIsAdditiveVelocityApplied boolean @True when we had additive velocity applied last tick, checked to know if we should restore LastPreAdditiveVelocity before a Velocity computation
---@field LastAccumulatedSettings FRootMotionSourceSettings @Aggregate Settings of the last group of accumulated sources
FRootMotionSourceGroup = {}
