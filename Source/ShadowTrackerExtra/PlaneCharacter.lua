---@meta

---@class FPlaneBannerInfo
---@field bEnablePlaneBanner boolean
---@field bPlaneBannerOnlyVisibleToObserver boolean
---@field HttpPath string
FPlaneBannerInfo = {}


---@class APlaneCharacter: APlaneBase, IPlayerLogicInterface
---@field DistanceToStartPoint number
---@field SimulatedDurationSinceAirLineStart number
---@field TimeLineRate number
---@field CameraSlowlyMoving FVector2D
---@field CameraSlowlyPutDown FVector2D
---@field SpringMoveSpeedScalePath FSoftObjectPath
---@field FixedRandomSeed number
---@field SpringArmLength_Escort number
---@field SpringArmLength_NoEscort number
---@field SpringArmLocationOffset FVector
---@field SpringArmLocationOffset_NoEscort FVector
---@field SpringArmRotation_Escort FRotator
---@field SpringArmRotation_NoEscort FRotator
---@field CameraRotation_Escort FRotator
---@field CameraRotation_NoEscort FRotator
---@field bHasEscortPlanes number
---@field bFlyToJumpPoint number
---@field bUseCustomActorMove boolean
---@field BannerAttachSocket string
---@field PlaneBannerInfo FPlaneBannerInfo
---@field bIsInVolcanoZone boolean
---@field bHitted boolean
---@field CameraAnim_Bouncing UCameraAnim
---@field CameraAnim_Hitted UCameraAnim
---@field OnPlaneRequestImgSuccess FOnPlaneRequestImgSuccess
---@field OnPlaneBannerInfoReplicated FOnPlaneBannerInfoReplicated
---@field RandomProbability number
---@field AirForceEscortClass AAirForceEscort
---@field AirForceEscortClassPath FSoftClassPath
---@field AirForceEscortRelativeTransform FTransform
---@field ShakeModifierClass UCameraModifier
---@field ShakeModifierClassPath FSoftClassPath
---@field EscortSpawnerClass UEscortSpawner
---@field EscortSpawnerClassPath FSoftClassPath
---@field bHiddenCharacterInPlane boolean
local APlaneCharacter = {}

function APlaneCharacter:PlayPlaneSound() end

function APlaneCharacter:FlyToJumpPoint() end

function APlaneCharacter:ReceiveFlyToJumpPoint() end

function APlaneCharacter:OnPlaneHitted() end

function APlaneCharacter:OnAllPlayerLeavePlane() end

function APlaneCharacter:ResetPlaneHitted() end

function APlaneCharacter:OnPlaneEnterVolcanoZone() end

function APlaneCharacter:OnPlaneLeaveVolcanoZone() end

---@param InController APlayerController
function APlaneCharacter:OnPlayerForceJumpOffPlane(InController) end

function APlaneCharacter:OnAllPlayerForceJumpOffPlane() end

---@param PlaneData FPlaneData
---@return boolean
function APlaneCharacter:ModifyPlaneData(PlaneData) end

---@return boolean
function APlaneCharacter:CheckForceJump() end

---@param World UWorld
function APlaneCharacter:OnPlaneClassDetermined(World) end

function APlaneCharacter:OnRep_IsInVolcanoZone() end

function APlaneCharacter:OnRep_Hitted() end

---@param Texture UTexture2D
---@param RequestedURL string
function APlaneCharacter:OnRequestImgSuccess(Texture, RequestedURL) end

function APlaneCharacter:OnRep_PlaneBannerInfo() end

function APlaneCharacter:OnEscortEnabledChanged() end

function APlaneCharacter:AirForceEscort() end

function APlaneCharacter:AirForceFlyAway() end

---@return boolean
function APlaneCharacter:HasValidEscortConfig() end

---@param DeltaTime number
function APlaneCharacter:ReceiveUpdateCameraTransform(DeltaTime) end

function APlaneCharacter:OnRep_FixedRandomSeed() end

function APlaneCharacter:OnRep_bHasEscortPlanes() end

function APlaneCharacter:OnRep_bFlyToJumpPoint() end

function APlaneCharacter:InitTeammatePassagersInfo() end

---@param LiveState ExtraPlayerLiveState
---@param SelfPlayerState APlayerState
function APlaneCharacter:OnLocalPlayerParachute(LiveState, SelfPlayerState) end

function APlaneCharacter:PlayCameraShake() end

---@return boolean
function APlaneCharacter:ShouldCreateInPlaneWidget() end

---@param bHide boolean
function APlaneCharacter:SetHiddenCharacterInPlane(bHide) end

function APlaneCharacter:OnRep_HiddenCharacterInPlane() end
