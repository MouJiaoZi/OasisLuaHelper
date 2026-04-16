---@meta

---@class EPlayCurveVehicleType
---@field EnterVehicle number
---@field ExitVehicle number
---@field AfterEnterVehicle number
---@field AnyVehicleState number
EPlayCurveVehicleType = {}


---@class FVehicleCurvePlayPointDetail
---@field SocketName string
---@field SocketOffset FVector
---@field PositionScale FVector
FVehicleCurvePlayPointDetail = {}


---@class FPreSetViewTargetToPlayerInfo
---@field DextinPlayerKey number
---@field TriggerTime number
FPreSetViewTargetToPlayerInfo = {}


---抽象给上下载具需要播放动画使用
---@class UAnimSeqRootCurveComp_Vehicle: UAnimSeqRootCurveComponent
---@field DelayEnterFinishTime number
---@field MaxEnterOrLeaveSpeed number
---@field RootCurveModifierAngle number
---@field EnterPointDistance number
---@field EnterMinAttachOffsetZ number
---@field ExitVehicleRiseZOffset number
---@field DownGroundMaxOffset FVector
---@field CapsuleTraceQuery ETraceTypeQuery
---@field CapsuleHeightScale number
---@field CapsuleRadiusScale number
---@field bDisableRootActorAttachmentRepWhenEnterVehicle boolean
---@field ApplyVehicleVelocityWhenExit boolean
---@field ExitReason string
---@field bAttachSeatWhenExitVehicle boolean
---@field CharacterRootAnimPlayingList ULuaMapHelper<ASTExtraBaseCharacter, EPlayCurveVehicleType>
---@field CharacterEnableStopEntering ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CharacterDisableRootActorAttachmentRep ULuaSetHelper<ASTExtraBaseCharacter>
---@field bNeedPreSetViewTargetToPlayer boolean
---@field bNeedLeaveVehicleCameraOffsetData boolean
---@field bUseCameraManagerBlend boolean
---@field LastPreSetViewTargetToPlayerMap ULuaMapHelper<number, FPreSetViewTargetToPlayerInfo>
---@field VehicleCameraDataName ULuaArrayHelper<string>
---@field DestinRotatorOffset FRotator
---@field SetPlayerViewTargetTransitionParams FViewTargetTransitionParams
---@field SetPlayerViewTargetTag string
---@field UpdateCameraOffetDataHandle FTimerHandle
---@field CurrentUpdateCameraCharacter ASTExtraBaseCharacter
---@field UpdateDriverCameraOffetDataHandle FTimerHandle
---@field CurrentUpdateCameraDriverCharacter ASTExtraBaseCharacter
---@field DriverCameraOffsetData FCameraOffsetData
---@field PassengerCameraOffsetData FCameraOffsetData
local UAnimSeqRootCurveComp_Vehicle = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatIdx number
---@param EnterSocket string
function UAnimSeqRootCurveComp_Vehicle:HandlePlayEnterVehicleAnim(Character, SeatIdx, EnterSocket) end

---@param Character ASTExtraPlayerCharacter
---@param SeatIdx number
---@param EnterSocket string
function UAnimSeqRootCurveComp_Vehicle:HandlePlayExitVehicleAnim(Character, SeatIdx, EnterSocket) end

---@param bIsEnter boolean
---@param Character ASTExtraBaseCharacter
---@param SeatIdx number
---@param CurvePlayPointDetail FVehicleCurvePlayPointDetail
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:FindVehicleCurvePlayPoint(bIsEnter, Character, SeatIdx, CurvePlayPointDetail) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_BeginPlaying(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_StopPlaying(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
---@param HitResults ULuaArrayHelper<FHitResult>
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_Interrupted(MCPlayInfo, HitResults) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_InterruptedNotNormalEnd(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_FinishPlaying(MCPlayInfo) end

---@param MCPlayInfo FRootCurvePlayer
---@param EventName string
function UAnimSeqRootCurveComp_Vehicle:HandleCurve_TimerEvent(MCPlayInfo, EventName) end

---@param Character ASTExtraBaseCharacter
---@param SeatIdx number
---@param VehicleCurveType EPlayCurveVehicleType
---@param ForceExe boolean
---@param bIsRemoveAnim boolean
function UAnimSeqRootCurveComp_Vehicle:HandlePerformFinish(Character, SeatIdx, VehicleCurveType, ForceExe, bIsRemoveAnim) end

---@param Character ASTExtraBaseCharacter
---@param VehicleCurveType EPlayCurveVehicleType
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:CheckIsPlayingPerform(Character, VehicleCurveType) end

---@param Character ASTExtraBaseCharacter
---@param bIsEnter boolean
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:CanPlayPerform(Character, bIsEnter) end

---@param Character ASTExtraBaseCharacter
---@param SeatIndex number
---@param bIsEnter boolean
---@param SocketName string
---@param PositionScale FVector
function UAnimSeqRootCurveComp_Vehicle:PlayEnterOrExitVehicleAnim(Character, SeatIndex, bIsEnter, SocketName, PositionScale) end

---@param SocketName string
---@param CurveDataConfig FRootCurveDataConfig
---@return number
function UAnimSeqRootCurveComp_Vehicle:GetCurveDataConfig(SocketName, CurveDataConfig) end

---@param InputJsonStr string
---@param OutputSocketName string
---@param OutputSeatIndex number
---@param OutputRootAnimType number
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:GetCallBackJsonStrInfo(InputJsonStr, OutputSocketName, OutputSeatIndex, OutputRootAnimType) end

---@param Character ASTExtraBaseCharacter
---@param VehicleCurveType EPlayCurveVehicleType
---@param SeatIdx number
function UAnimSeqRootCurveComp_Vehicle:ClientHandleAnimEnd(Character, VehicleCurveType, SeatIdx) end

---@param Character ASTExtraBaseCharacter
---@param SocketName string
---@param SocketOffset FVector
---@param bIsSeatSocket boolean
function UAnimSeqRootCurveComp_Vehicle:AttachToVehicleSocket(Character, SocketName, SocketOffset, bIsSeatSocket) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:CheckFinalAttach(Character) end

---@param Character ASTExtraBaseCharacter
---@param SeatIdx number
function UAnimSeqRootCurveComp_Vehicle:RefreshOccupierVehicleSubAnimIns(Character, SeatIdx) end

---@param Character ASTExtraBaseCharacter
function UAnimSeqRootCurveComp_Vehicle:EnterAnimFinish(Character) end

---@param Character ASTExtraBaseCharacter
---@param SeatIdx number
---@param VehicleCurveType EPlayCurveVehicleType
function UAnimSeqRootCurveComp_Vehicle:ForceFinishPerform(Character, SeatIdx, VehicleCurveType) end

---@param bIsFinish boolean
---@param SeatIdx number
function UAnimSeqRootCurveComp_Vehicle:HandleSeatAnimFinsh(bIsFinish, SeatIdx) end

---@param UniqueID number
---@param Character ASTExtraBaseCharacter
function UAnimSeqRootCurveComp_Vehicle:StopUpOrDownPlaying(UniqueID, Character) end

---@param RealOffset FVector
---@param CurveOffset FVector
---@return FVector
function UAnimSeqRootCurveComp_Vehicle:CalCurveFinalScale(RealOffset, CurveOffset) end

---@param Character ASTExtraBaseCharacter
---@param UID number
function UAnimSeqRootCurveComp_Vehicle:ClearOldPlayingCurve(Character, UID) end

---@param bIsEnable boolean
---@param CurveUID number
function UAnimSeqRootCurveComp_Vehicle:EnableCompTick(bIsEnable, CurveUID) end

---@param bIsEquip boolean
---@param Character ASTExtraBaseCharacter
function UAnimSeqRootCurveComp_Vehicle:EnableSwitchWeapon(bIsEquip, Character) end

---@param Character ASTExtraBaseCharacter
---@param UID number
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:HandleTickCharNearDeath(Character, UID) end

---@param Character ASTExtraBaseCharacter
---@param TransitionParams FViewTargetTransitionParams
---@param ViewTag string
function UAnimSeqRootCurveComp_Vehicle:SetViewTargetToChatacter(Character, TransitionParams, ViewTag) end

---@param InDeltaTime number
---@param InDuration number
function UAnimSeqRootCurveComp_Vehicle:UpdateCameraOffetData(InDeltaTime, InDuration) end

function UAnimSeqRootCurveComp_Vehicle:StopTickPlayerCamera() end

---@param InDeltaTime number
---@param InDuration number
function UAnimSeqRootCurveComp_Vehicle:UpdateDriverCameraOffetData(InDeltaTime, InDuration) end

function UAnimSeqRootCurveComp_Vehicle:StopTickDriverPlayerCamera() end

---@param InCharacter ASTExtraBaseCharacter
function UAnimSeqRootCurveComp_Vehicle:AddSetViewTargetToPlayerInfo(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
function UAnimSeqRootCurveComp_Vehicle:RemoveSetViewTargetToPlayerInfo(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
---@param InCheckTime number
---@return boolean
function UAnimSeqRootCurveComp_Vehicle:IsLastSetViewTargetToPlayer(InCharacter, InCheckTime) end
