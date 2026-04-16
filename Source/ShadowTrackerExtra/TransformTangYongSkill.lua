---@meta

---@class FTransformTangYongNetSyncData
---@field StackHeight number
---@field SelfIndex number
---@field MeshID number
---@field bIsInLaunchCD boolean
---@field LaunchCDTotalTime number
---@field LaunchCDFinishedTime number
FTransformTangYongNetSyncData = {}


---@class FTransformTangYongLaunchCD
---@field bIsInCD boolean
---@field TotalTime number
---@field FinishedTime number
FTransformTangYongLaunchCD = {}


---@class UTransformTangYongSkill: UPersistEffectWithState
---@field bTickAvatarHidden boolean
---@field bTickWeaponHidden boolean
---@field bTickAdjustCapsuleSize boolean
---@field bTickMeshAttachment boolean
---@field bLaunchRotateCharacter boolean
---@field bLaunchRotateController boolean
---@field bSimulateLerpCannonRotation boolean
---@field bDefaultProjectileViewRotation boolean
---@field bCanCancelTransformOnProjectileMoving boolean
---@field CantStackTipID number
---@field CapsuleHalfHeight number
---@field CapsuleRadius number
---@field CanStackRadius number
---@field AttachSocketOffset number
---@field LaunchCDTotalTime number
---@field DisableFallingDamageTime number
---@field LaunchVelocity number
---@field LaunchRotationTolerance number
---@field LaunchAdditionalPitch number
---@field MeshScale number
---@field UpdateServerCannonRotationInterval number
---@field LaunchPitchRange FVector2D
---@field TangYongMeshTag string
---@field AttachSocketNameList ULuaArrayHelper<string>
---@field MeshAttachToSelfStates ULuaArrayHelper<string>
---@field CheckTransBlockChannels ULuaArrayHelper<ECollisionChannel>
---@field TeleportBoxExtent FVector
---@field DontLerpCannonDeltaRotThreshold FRotator
---@field ProjectileAdditiveViewRotation FRotator
---@field GlobalDataClass UNetAlienationData
---@field NetSyncData FTransformTangYongNetSyncData
---@field ServerCannonRotation FRotator
---@field LastServerCannonRotation FRotator
---@field LastReceivedCannonServerRotationTime number
local UTransformTangYongSkill = {}

---@param bIsHidden boolean
function UTransformTangYongSkill:SetAvatarHidden(bIsHidden) end

---@param bIsHidden boolean
function UTransformTangYongSkill:SetWeaponHidden(bIsHidden) end

---@param InHalfHeight number
---@param InRadius number
function UTransformTangYongSkill:SetRootCapsuleSize(InHalfHeight, InRadius) end

function UTransformTangYongSkill:TickMeshAttachment() end

---@param PrevPlayerPawn ASTExtraBaseCharacter
---@return boolean
function UTransformTangYongSkill:CanStackOnPlayerPawn(PrevPlayerPawn) end

---@param PrevPlayerPawn ASTExtraBaseCharacter
function UTransformTangYongSkill:StackOnPlayerPawn(PrevPlayerPawn) end

function UTransformTangYongSkill:RefreshStackMemberCapsuleSize() end

function UTransformTangYongSkill:RefreshCharacterRootCapsuleSize() end

---@param OutHalfHeight number
---@param OutRadius number
---@return boolean
function UTransformTangYongSkill:GetRestoreRootCapsuleSize(OutHalfHeight, OutRadius) end

---@return number
function UTransformTangYongSkill:GetScaledConfigCapsuleHalfHeight() end

---@return number
function UTransformTangYongSkill:GetScaledConfigCapsuleRadius() end

function UTransformTangYongSkill:RequestCancelTransform() end

function UTransformTangYongSkill:RequestStackOnAnotherPawn() end

---@param bTeleport boolean
function UTransformTangYongSkill:RequestQuitStack(bTeleport) end

---@param bTeleport boolean
function UTransformTangYongSkill:QuitStack(bTeleport) end

function UTransformTangYongSkill:BreakStack() end

---@param InSelfIndex number
---@param InStackHeight number
---@return number
function UTransformTangYongSkill:GetCapsuleHalfHeightByStackIndex(InSelfIndex, InStackHeight) end

function UTransformTangYongSkill:OnRep_NetSyncData() end

function UTransformTangYongSkill:RequestPrepareLaunch() end

---@param InRotation FRotator
function UTransformTangYongSkill:RequestLaunch(InRotation) end

---@param ClientRotation FRotator
function UTransformTangYongSkill:ServerUpdateCannonRotation(ClientRotation) end

function UTransformTangYongSkill:RequestCancelPrepareLaunch() end

---@param LastRotation FRotator
function UTransformTangYongSkill:OnRep_ServerCannonRotation(LastRotation) end

function UTransformTangYongSkill:SimulateLerpCannonRotation() end

---@return boolean
function UTransformTangYongSkill:IsCharacterProjectileMoving() end

function UTransformTangYongSkill:GetTransformSkillAlongStack() end

function UTransformTangYongSkill:GetAlongStackPlayerUIDs() end

function UTransformTangYongSkill:OnRep_MasterSkill() end

function UTransformTangYongSkill:MulticastProjectileMovementBegin() end

function UTransformTangYongSkill:MulticastProjectileMovementBegin_BP() end


---@class UTransformTangYongGlobalData: UDsGlobalNetAlienationData
---@field PlayerLaunchCDMap ULuaMapHelper<number, FTransformTangYongLaunchCD>
local UTransformTangYongGlobalData = {}

---@param InPlayerKey number
---@param TotalTime number
---@param FinishedTime number
function UTransformTangYongGlobalData:PlayerEnterLaunchCD(InPlayerKey, TotalTime, FinishedTime) end

---@param InPlayerKey number
function UTransformTangYongGlobalData:ResetPlayerLaunchCD(InPlayerKey) end


---@class UTransformTangYongAnimInstance: UAnimInstance
---@field bIsMove boolean
---@field bIsJump boolean
---@field bIsFalling boolean
---@field bWalkToFalling boolean
---@field bIsStackOn boolean
---@field bIsStackJump boolean
---@field bIsStackFalling boolean
---@field bIsStackMove boolean
---@field bIsStackBase boolean
---@field bIsPreparingLaunch boolean
---@field bIsProjectileMoving boolean
---@field bIsIdleState boolean
---@field bIsStackIdleState boolean
---@field OwnerMoveVelocity FVector
local UTransformTangYongAnimInstance = {}

function UTransformTangYongAnimInstance:UpdateIdleState() end

function UTransformTangYongAnimInstance:OnEnterIdleState() end

function UTransformTangYongAnimInstance:OnLeaveIdleState() end
