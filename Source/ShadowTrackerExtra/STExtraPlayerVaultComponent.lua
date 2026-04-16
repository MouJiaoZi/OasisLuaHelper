---@meta

---@class FVaultCheckRule
---@field CheckHeight number
---@field StandCheckDist number
---@field MoveCheckDist number
---@field SprintCheckDist number
FVaultCheckRule = {}


---@class FVaultRepData
---@field bCancelVault boolean
---@field ForwardBlockDist number
---@field BlockHeight number
---@field VaultDist number
---@field VaultKey string
---@field PlayerStartLoc FVector_NetQuantize10
---@field CurJumpLandingHeight number
---@field CurJumpLandingDist number
---@field ForwardHitPoint FVector_NetQuantize10
---@field ForwardBlockDir FVector_NetQuantize100
---@field DirtyBit number
---@field bReset boolean
FVaultRepData = {}


---@class USTExtraPlayerVaultComponent: UActorComponent, IObjectPoolInterface
---@field VaultObjectClass UVaultObjectBase
---@field DrawDebugType EDrawDebugTrace
---@field DrawTime number
---@field bNeedUpdateEveryFrame boolean
---@field UpdateEveryFrameDist number
---@field bUseCustomCapsuleSize boolean
---@field CustomCapsuleSize FVector2D
---@field SweepObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field CheckRuleList ULuaArrayHelper<FVaultCheckRule>
---@field CheckDeviation_BottomEdge number
---@field CheckDeviation_Top number
---@field TPPCheckDist number
---@field InValidAngle_Vertical number
---@field InValidAngle_Horizontal number
---@field MinCheckHeight number
---@field MaxCheckHeight number
---@field LowWindowMinCheckHeight number
---@field VaultCheckDist number
---@field VaultAnimPlayRatio number
---@field StopVaultRelativeWallDist number
---@field FallingVaultMinHeightToFloor number
---@field InclinationCheckHeight number
---@field MaxLandingAreaTiltAngle number
---@field CheckThePathIsPurePlaneBoxHalfExtent FVector
---@field bJumpVaultSupported boolean
---@field MinJumpVaultHeightDiff number
---@field MinJumpVaultLandingLandingDist number
---@field MinJumpVaultLandingHeightDiff number
---@field CheatingDist number
---@field MaxRecoveryFuncTime number
---@field bStandVaultCompensatoryFunc boolean
---@field bVaultStaticObject boolean
---@field VaultWindows ULuaArrayHelper<UUAEWindowComponent>
---@field CheckInterval number
---@field CheckCapsuleSize FVector2D
---@field ValidDistance number
---@field ValidAngle number
---@field CheckTolerance number
---@field LiftSkillClass AUTSkill
---@field ClimbSkillClass AUTSkill
---@field Lift_ForwardDistance number
---@field Lift_SlopeHeight number
---@field Lift_MinHeight number
---@field Lift_MaxHeight number
---@field Lift_BackwardDistance number
---@field Lift_StandAreaRadius number
---@field Lift_DistanceToWall number
---@field LiftStartLocXYOffset FVector2D
---@field PullSkillClass AUTSkill
---@field JumpSkillClass AUTSkill
---@field Pull_ForwardDistance number
---@field Pull_BackwardDistance number
---@field Pull_SlopeHeight number
---@field Pull_MinHeight number
---@field Pull_MaxHeight number
---@field Pull_DistanceToWall number
---@field PullStartLocXYOffset FVector2D
---@field WallForwardDir FVector2D
local USTExtraPlayerVaultComponent = {}

---@param bNeedCheck boolean
---@return boolean
function USTExtraPlayerVaultComponent:Vault(bNeedCheck) end

---@param bCheckPlayerState boolean
---@param bUseCustomLocAndRot boolean
---@param CustomLoc FVector
---@param CustomRot FRotator
---@return boolean
function USTExtraPlayerVaultComponent:CheckCanVault(bCheckPlayerState, bUseCustomLocAndRot, CustomLoc, CustomRot) end

---@param _BlockHeight number
---@param _VaultThick number
---@param _bIsJumping boolean
---@return string
function USTExtraPlayerVaultComponent:GetVaultKeyForAI(_BlockHeight, _VaultThick, _bIsJumping) end

---@param bForce boolean
function USTExtraPlayerVaultComponent:CancelVaultOnServer(bForce) end

function USTExtraPlayerVaultComponent:ForceCancelVaultOnServer() end

---@param _ForwardBlockDist number
---@param _BlockHeight number
---@param _VaultDist number
---@param _VaultKey string
---@param _PawnVaultStartLoc FVector
---@param _PawnVaultEndLoc FVector
---@param _PawnVaultRot FRotator
---@param _CheckActor AActor
---@param _CurJumpLandingHeight number
---@param _CurJumpLandingDist number
---@param _ForwardHitPoint FVector
---@param _ForwardBlockDir FVector
function USTExtraPlayerVaultComponent:PawnVaultNetMulticast(_ForwardBlockDist, _BlockHeight, _VaultDist, _VaultKey, _PawnVaultStartLoc, _PawnVaultEndLoc, _PawnVaultRot, _CheckActor, _CurJumpLandingHeight, _CurJumpLandingDist, _ForwardHitPoint, _ForwardBlockDir) end

---@param DataAsset UVaultAnimDataAssetBase
---@param Priority number
function USTExtraPlayerVaultComponent:AddDynamicVaultAnimDataAssetPtr(DataAsset, Priority) end

---@param DataAsset UVaultAnimDataAssetBase
---@param bJustRemoveOnce boolean
function USTExtraPlayerVaultComponent:RemoveDynamicVaultAnimDataAssetPtr(DataAsset, bJustRemoveOnce) end

---@return boolean
function USTExtraPlayerVaultComponent:IsVaulting() end

function USTExtraPlayerVaultComponent:EndRecovering() end

function USTExtraPlayerVaultComponent:BP_OnRecycled() end

---@param State number
---@param InterruptedBy number
function USTExtraPlayerVaultComponent:OnStateInterrupted(State, InterruptedBy) end

---@param State EPawnState
function USTExtraPlayerVaultComponent:OnStateLeave(State) end

function USTExtraPlayerVaultComponent:OnClientSwitchToNewServerDelegate() end

---@param bIsFPP boolean
function USTExtraPlayerVaultComponent:OnSwitchPPEventDelegate(bIsFPP) end

---@param bIgnoreOtherChars boolean
---@return boolean
function USTExtraPlayerVaultComponent:CheckCanEnterPreparingPose(bIgnoreOtherChars) end

---@return boolean
function USTExtraPlayerVaultComponent:CheckCanStartDoubleVault() end

---@return boolean
function USTExtraPlayerVaultComponent:TryEnterPreparingPose() end

---@return boolean
function USTExtraPlayerVaultComponent:TryStartDoubleVault() end

---@param bShow boolean
function USTExtraPlayerVaultComponent:NotifyDoubleVaultHUD(bShow) end

---@param DeltaTime number
function USTExtraPlayerVaultComponent:DoubleVaultTickFunc(DeltaTime) end

---@param bLift boolean
---@param Location FVector
---@param Rotation FRotator
function USTExtraPlayerVaultComponent:TryEnterPreparingPoseServer(bLift, Location, Rotation) end

---@param TargetCharacter ASTExtraBaseCharacter
function USTExtraPlayerVaultComponent:TryStartDoubleVaultServer(TargetCharacter) end
