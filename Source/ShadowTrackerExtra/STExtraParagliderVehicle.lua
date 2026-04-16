---@meta

---@class EParagliderCharacterType
---@field Idle number
---@field MoveForwardOnGround number
---@field MoveBackOnGround number
---@field InLand number
---@field Fly number
---@field StartLand number
---@field VerticalJump number
---@field RunJump number
---@field FlyJump number
---@field Falling number
---@field Landing number
EParagliderCharacterType = {}


---@class FParagliderStateData
---@field StateType EParagliderCharacterType
---@field Impluse number
---@field AfterJumpVel FVector
---@field JumpServerTimeStamp number
---@field Idx number
FParagliderStateData = {}


---@class ASTExtraParagliderVehicle: ASTExtraMotorgliderVehicle
---@field bParaglider boolean
---@field InAirTime number
---@field ParagliderIdleVelocityThreshold number
---@field ForwardAnimThreshold number
---@field ParagliderCharacterType EParagliderCharacterType
---@field VerticalJumpVelThreshold number
---@field StateData FParagliderStateData
---@field SyncStateData FParagliderStateData
---@field ToLandAnimHeight number
---@field ToLandAnimZVel number
---@field CurParagliderCharacterType EParagliderCharacterType
---@field LastParagliderCharacterType EParagliderCharacterType
---@field JumpForwardVelThreshold number
---@field RunJumpThreshold number
---@field FlyJumpThreshold number
---@field bAutonomousPlayAnimFirst boolean
---@field CharacterMeshUpCondition number
---@field MinJumpTimeInterval number
---@field bNeedPlayJumpAnim boolean
---@field Multi_PlayJumpData FParagliderStateData
---@field bEnableMainBodyPose boolean
---@field MainBodyPoseMinDegreeError number
---@field MainBodyPoseMinDegreesRange number
---@field MainBodyPoseAngularK number
---@field MainBodyPoseAngularD number
---@field bCanForceSyncRot boolean
---@field bForceSyncRotThreshold number
---@field LeaveFreeCameraCD number
---@field DotValueCanRot number
---@field ViewRotVelThreshold number
---@field ViewRotGroundNum number
---@field LeaveFreeCameraCounter number
---@field SimulateTargetViewRot FRotator
---@field bEnableSyncTargetViewRot boolean
---@field bHasInitDriver boolean
---@field NeedIncreaseHeight number
---@field CheckValidRot number
---@field CheckValidExtent FVector
---@field CheckCharacterCapsuleHalfHeight number
---@field CheckCharacterCapsuleRadius number
---@field CheckCharacterCapsuleTestHeight number
---@field CharacterToParagliderOffset number
---@field CheckValidOffset FVector
---@field OverlapCheckRotValidIgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field bDecelerateState boolean
---@field bEnableHoverPhysics boolean
---@field DecelerateFactor number
---@field EnableDecelerateForwardVel number
---@field EnableDecelerateHeight number
---@field EnableDecelerateCDTime number
---@field LastEnableDecelerateTimeStamp number
---@field bAlreadyFlyInAir boolean
---@field bPlayLandAnim boolean
---@field CheckFlyInAirHeightCondition number
---@field EnterLandAnimHeight number
---@field CheckFlyInAirSpeedCondition number
---@field CheckLandingZSpeedCondition number
---@field CheckLandingTimeCondition number
---@field CheckLandingTimeCounter number
---@field CheckFlyInAirTimeCondition number
---@field CheckFlyInAirTimeCounter number
---@field CurLinearVel FVector
---@field CurRealForwardSpeed number
---@field AnimAirInputInterpSpeed number
---@field AnimAirInput FVector
---@field bOpenCheckLostSpeed boolean
---@field ForwardSpeedNeedPitchInput number
---@field ZVelSpeedNeedPitchInput number
---@field HeightNeedPitchInput number
---@field PitchInputOnForwardSpeed number
---@field bUseNewCheckLostSpeed boolean
---@field bLostSpeedState boolean
---@field CurLostSpeedPitchInput number
---@field PitchInputInterpRateOnLostSpeed number
---@field CurJumpAnimTime number
---@field JumpingEnterTime number
---@field JumpingTimeCounter number
---@field RunJumpFinishTime number
---@field bRunJumpCanEnterFly boolean
---@field RunJumpTimeCounter number
---@field FlyJumpFinishTime number
---@field FlyJumpTimeCounter number
---@field fMaxZAfterJump number @起跳后的最高Z值记录，用于标识下落阶段
---@field FallingEnterTimeCounter number
---@field FallingEnterTime number
---@field CheckOnLandGroundNum number
---@field EnterFlyHeight number
---@field EnterFlyVel number
---@field EnterLandingVel number
---@field JumpRiseTime number
---@field JumpRiseBaseTime number
---@field CurFrameVel FVector
---@field bInitVehiclePreUpdate boolean
---@field SameHaveVehicleInputState ULuaArrayHelper<EParagliderCharacterType>
---@field NotifyAkEventMap ULuaMapHelper<string, UAkAudioEvent> @音效相关
---@field NotifySurfaceMap ULuaMapHelper<EPhysicalSurface, string>
---@field NotifyMaterialMap ULuaMapHelper<UPhysicalMaterial, string>
---@field MaterialSwitchGroup string
---@field CanMergeAndDragVelThreshold number
---@field CanMergeAndDragHeightThreshold number
---@field QueryPhysicsInstanceBone string
---@field QueryPhysicsInstanceBoneInterval number
---@field QueryPhysicsInstanceBoneTimer number
---@field bEnableCheckCharacterPeneTerrain boolean
---@field CheckCharacterPeneTerrain number
---@field CheckCharacterPeneTerrainDisDiff number
---@field bFppControlRot boolean
local ASTExtraParagliderVehicle = {}

---@param DeltaTime number
---@return EParagliderCharacterType
function ASTExtraParagliderVehicle:UpdateParagliderCharacterState(DeltaTime) end

function ASTExtraParagliderVehicle:TryToJump() end

---@return boolean
function ASTExtraParagliderVehicle:CanJump() end

---@param ClientJumpData FParagliderStateData
function ASTExtraParagliderVehicle:Server_VehicleJump(ClientJumpData) end

---@param ClientJumpData FParagliderStateData
function ASTExtraParagliderVehicle:Multi_PlayJump(ClientJumpData) end

function ASTExtraParagliderVehicle:OnPlayJumpEvent() end

function ASTExtraParagliderVehicle:OnRep_JumpData() end

---@param DeltaTime number
function ASTExtraParagliderVehicle:OnVehicleUpdateFinish(DeltaTime) end

---@param DeltaTime number
function ASTExtraParagliderVehicle:UpdateViewRot(DeltaTime) end

---@param CurViewRot FRotator
function ASTExtraParagliderVehicle:SyncTargetViewRot(CurViewRot) end

function ASTExtraParagliderVehicle:OnRep_SimulateTargetViewRot() end

function ASTExtraParagliderVehicle:InitDriver() end

---@return FRotator
function ASTExtraParagliderVehicle:GetSimulateViewRot() end

---@param CurTrans FTransform
---@return boolean
function ASTExtraParagliderVehicle:FindParagliderOnLandLoc(CurTrans) end

---@param OlTrans FTransform
---@param Str string
function ASTExtraParagliderVehicle:OnDriverAttach(OlTrans, Str) end

---@param NewState boolean
function ASTExtraParagliderVehicle:ServerSetDecelerateState(NewState) end

function ASTExtraParagliderVehicle:OnRep_DecelerateState() end

function ASTExtraParagliderVehicle:OnRep_EnableHoverPhysics() end

---@param DeltaTime number
---@return FVector
function ASTExtraParagliderVehicle:GetAnimAirInput(DeltaTime) end

---@param DeltaTime number
function ASTExtraParagliderVehicle:CheckLostSpeedState(DeltaTime) end

function ASTExtraParagliderVehicle:OnRep_LostSpeedState() end

---@param DeltaTime number
function ASTExtraParagliderVehicle:UpdateAnimData(DeltaTime) end

---@param Msg string
function ASTExtraParagliderVehicle:BoardCastAnimMsg(Msg) end

function ASTExtraParagliderVehicle:UpdateMovementState() end

---@param DeltaTime number
function ASTExtraParagliderVehicle:UpdateQueryPhysicsInstance(DeltaTime) end
