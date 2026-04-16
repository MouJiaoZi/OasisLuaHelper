---@meta

---@class ESTExtraVehicleUserState
---@field EVUS_OutOfVehicle number
---@field EVUS_AsDriver number
---@field EVUS_ASPassenger number
ESTExtraVehicleUserState = {}


---@class EVehicleConnectFailReason
---@field Default number
---@field NoSpace number
EVehicleConnectFailReason = {}


---@class ESTExtraCharToVehiclePer
---@field ECharacter_DirverAndPassenger number
---@field ECharacter_OnlyPassenger number
---@field ECharacter_CannotGetIn number
---@field ECharacter_Error number
ESTExtraCharToVehiclePer = {}


---@class ELockedVehicleState
---@field ELockedVehicle number
---@field EUnLockedVehicle number
---@field ElockedVehicleOnlyOwnerDrive number
---@field ELockedVehicleStrangerOnlyPassenger number
ELockedVehicleState = {}


---@class EExitFollowReason
---@field Normal number
---@field TooFarAwayFromFollowPawn number
EExitFollowReason = {}


---@class EWalkType
---@field None number
---@field Walk number
---@field Canter number
---@field Run number
EWalkType = {}


---@class FVehicleUserReconnRepData
---@field VehicleUserState ESTExtraVehicleUserState
---@field SeatIdx number
FVehicleUserReconnRepData = {}


---@class FVehicleIDPair
---@field Vehicle ASTExtraVehicleBase
---@field VehicleUID number
FVehicleIDPair = {}


---@class FLastEnterVehicleInfo
---@field ShouldForceShowTouchInterface boolean
---@field ShouldRestFPPSwitch boolean
FLastEnterVehicleInfo = {}


---@class FExitVehicleExceptionData
---@field UIShowState boolean
---@field LastEnterVehicle number
---@field LastExitVehicle number
---@field PawnState ULuaArrayHelper<EPawnState>
---@field CharacterLoc FVector
---@field CharacterName string
---@field Result number
FExitVehicleExceptionData = {}


---@class FOnJoystickCenterClickDelegate : ULuaMulticastDelegate
FOnJoystickCenterClickDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickCenterClickDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FOnJoystickCenterClickDelegate:Broadcast(Param1) end


---@class FOnClientEnterVehicleDelegate : ULuaMulticastDelegate
FOnClientEnterVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientEnterVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function FOnClientEnterVehicleDelegate:Broadcast(Vehicle, SeatType) end


---@class FOnClientExitVehicleDelegate : ULuaMulticastDelegate
FOnClientExitVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientExitVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function FOnClientExitVehicleDelegate:Broadcast(Vehicle, SeatType) end


---@class FClientChangeSeatDelegate : ULuaMulticastDelegate
FClientChangeSeatDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientChangeSeatDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FClientChangeSeatDelegate:Broadcast(Vehicle, SeatType, SeatIdx) end


---@class FOnVehicleEnjoyVoiceButtonTriggeredDelegate : ULuaSingleDelegate
FOnVehicleEnjoyVoiceButtonTriggeredDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleEnjoyVoiceButtonTriggeredDelegate:Bind(Callback, Obj) end

---执行委托
function FOnVehicleEnjoyVoiceButtonTriggeredDelegate:Execute() end


---@class FTankVehicleUseWeaponOrNotDelegate : ULuaSingleDelegate
FTankVehicleUseWeaponOrNotDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTankVehicleUseWeaponOrNotDelegate:Bind(Callback, Obj) end

---执行委托
function FTankVehicleUseWeaponOrNotDelegate:Execute() end


---@class FOnWarDogEnterVehicleDelegate : ULuaMulticastDelegate
FOnWarDogEnterVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogEnterVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
function FOnWarDogEnterVehicleDelegate:Broadcast(Handle) end


---@class FOnWarDogLeaveVehicleDelegate : ULuaMulticastDelegate
FOnWarDogLeaveVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle, WarDogPreviousSeatIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogLeaveVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogPreviousSeatIndex number
function FOnWarDogLeaveVehicleDelegate:Broadcast(Handle, WarDogPreviousSeatIndex) end


---@class FOnWarDogLeanOutInVehicleDelegate : ULuaMulticastDelegate
FOnWarDogLeanOutInVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle, WarDogSeatIndex: number, bIsLeanOut: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogLeanOutInVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogSeatIndex number
---@param bIsLeanOut boolean
function FOnWarDogLeanOutInVehicleDelegate:Broadcast(Handle, WarDogSeatIndex, bIsLeanOut) end


---@class FOnWarDogHideInVehicleDelegate : ULuaMulticastDelegate
FOnWarDogHideInVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle, WarDogPreviousSeatIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogHideInVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogPreviousSeatIndex number
function FOnWarDogHideInVehicleDelegate:Broadcast(Handle, WarDogPreviousSeatIndex) end


---@class FOnWarDogShowInVehicleDelegate : ULuaMulticastDelegate
FOnWarDogShowInVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle, WarDogPreviousSeatIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogShowInVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogPreviousSeatIndex number
function FOnWarDogShowInVehicleDelegate:Broadcast(Handle, WarDogPreviousSeatIndex) end


---@class FOnWarDogSeatAvailableDelegate : ULuaMulticastDelegate
FOnWarDogSeatAvailableDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Handle: UVehicleWarDogsSkillHandle, AvailableSeatIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWarDogSeatAvailableDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Handle UVehicleWarDogsSkillHandle
---@param AvailableSeatIndex number
function FOnWarDogSeatAvailableDelegate:Broadcast(Handle, AvailableSeatIndex) end


---@class FOnVUServerEnterVehicleEvent : ULuaMulticastDelegate
FOnVUServerEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVUServerEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnVUServerEnterVehicleEvent:Broadcast(Vehicle, Character, SeatType, bSuccess) end


---@class FOnVUServerExitVehicleEvent : ULuaMulticastDelegate
FOnVUServerExitVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVUServerExitVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnVUServerExitVehicleEvent:Broadcast(Vehicle, Character, SeatType, bSuccess) end


---@class UVehicleUserComponent: UActorComponent
---@field bGameModeHasMobs boolean @当前GameMode是否有小怪
---@field LastUsedItemDefineID FItemDefineID
---@field LastFinishCD number
---@field bIsRemoteControlling boolean
---@field VehicleUserState ESTExtraVehicleUserState
---@field VehicleUserReconnRepData FVehicleUserReconnRepData
---@field LastVehicleUserReconnRepData FVehicleUserReconnRepData
---@field ChangeAvatarVehicles ULuaArrayHelper<ASTExtraVehicleBase>
---@field UpdateVehicleSpeedGUIInterval number
---@field bAllowTickUpdateClosestVehicle boolean
---@field bUpdateClosestVehicle_NeedValidState boolean
---@field UpdateClosestVehicleInterval number
---@field UpdateClosestTrailerVehicleInterval number
---@field OverlappingVehicles ULuaArrayHelper<ASTExtraVehicleBase>
---@field CanConnectVehicles ULuaArrayHelper<ASTExtraVehicleBase>
---@field CullWaterRangeVehicles ULuaArrayHelper<ASTExtraVehicleBase> @装甲车在水中剔除车内水面渲染
---@field bIsCurrentClosestVehicleDriversSeatAvailable boolean
---@field bIsCurrentClosestVehiclePsgersSeatAvailable boolean
---@field bCurrentClosestVehicleCanBeConnected boolean
---@field lastClosestVehicleCanBeConnected boolean
---@field EnableVehicleShoot boolean
---@field MaxAllowedExitSpeedDiff number
---@field bRotateToViewOnExitVehicle boolean
---@field VehiclePitchLimit string
---@field VehiclePitchMin number
---@field VehiclePitchMax number
---@field NoFuelTipsDisplayCooldown number
---@field UnderWaterTipsDisplayCooldown number
---@field bExitVehicleCheckEnabled boolean
---@field ExitVehicleCheckInterval number
---@field LastExitVehicleFailTipsTime number
---@field LastExitVehicleFailTipsInterval number
---@field StuckTipTriggered boolean
---@field bEnterVehicleCheckNearDeath boolean
---@field fCallCD number
---@field fTimeLeftInCallCD number
---@field NewbieGuideItem UNewbieGuideItemObject
---@field bCanCallVehicle boolean
---@field bWaitToHandleClientReconnecting boolean
---@field bCanHandleClientReconnectingUntilGameUIRootValid boolean
---@field CurrentMoveForwardRate number
---@field CurrentMoveRightRate number
---@field CurrentMoveUpRate number
---@field LastAxisMoveForwardRate number
---@field LastAxisMoveRightRate number
---@field LastAxisMoveUpRate number
---@field FlyHorseConversionGIS UClickActorComponentBase
---@field IsLoadingFlyHorseConversionGIS boolean
---@field bInForceExitVehicleState boolean
---@field bCruiseControlEnabled boolean @是否打开自动循环开关，载具配置页面可以人为配置
---@field ValidVehicleAudioDistanceSquared number
---@field VehiclesInValidAudioRange ULuaArrayHelper<FVehicleIDPair>
---@field VehiclesInValidAudioRangeIDSet ULuaSetHelper<number>
---@field ValidVehicleAudioCount number
---@field FarthestValidVehicleAudioDistanceSquared number
---@field bPlayMusicEnabled boolean @是否在客户端播放载具音乐
---@field BaseVehicleLockTime number @载具移动锁定的基础惩罚时间
---@field BaseVehicleServerAuTime number
---@field MaxVehicleLockTime number @载具移动锁定的最大惩罚时间 随着作弊次数的增加，单次惩罚时间会上升
---@field MaxVehicleServerAuTime number
---@field UAVFreeCamera boolean
---@field UAVSpeedPercent number
---@field bTestModeOn boolean
---@field InputExtraRot FRotator
---@field CharRotVsVehiRot FRotator
---@field ResetInputExtraRotTime number
---@field bResetInputExtraRotPitch boolean
---@field isHelicopterFreeCamera boolean
---@field isHelicopterSingleOperate boolean
---@field bEnterVehicleIsFPP boolean
---@field lastTimeSecond_ReqExitVehicle number
---@field lastTimeSecond_RspExitVehicle number
---@field lastTimeSecond_ReqEnterVehicle number
---@field lastTimeSecond_RspEnterVehicle number
---@field DelayLeanOutTimeAfterChangeSeat number
---@field DelayScopeInTimeAfterChangeSeat number
---@field ControllerYawClampMin number
---@field ControllerYawClampMax number
---@field CurrentSeatType ESTExtraVehicleSeatType
---@field CurrentSeatSpatialType EVHSeatSpecialType
---@field OnClientEnterVehicleDelegate FOnClientEnterVehicleDelegate
---@field OnClientExitVehicleDelegate FOnClientExitVehicleDelegate
---@field OnVUServerEnterVehicleEvent FOnVUServerEnterVehicleEvent
---@field OnVUServerExitVehicleEvent FOnVUServerEnterVehicleEvent
---@field OnClientChangeSeatDelegate FClientChangeSeatDelegate
---@field TankVehicleUseWeaponOrNotDelegate FTankVehicleUseWeaponOrNotDelegate
---@field IsEnteredByJoystickClick boolean
---@field ValidClickInterval number
---@field ValidClickDistance number
---@field ValidClickCenter FVector2D
---@field SeatType ESTExtraVehicleSeatType
---@field ExitVehicleFailWarnTime number
---@field CurExitVehicleFailTime number
---@field LastExitVehicleFailTrans FTransform
---@field ClearVehicleFailTimeSqDistance number
---@field CharacterToVehicleState ELockedVehicleState
---@field OnVehicleEnjoyVoiceButtonTriggeredDelegate FOnVehicleEnjoyVoiceButtonTriggeredDelegate
---@field EnterVehicleFailMsgID_CantMoveStraightToVehicle number
---@field EnterVehicleFailMsgID_CheckCurrentStateFail number
---@field EnterVehicleFailMsgID_NotSameTeam number
---@field EnterVehicleFailMsgID_DoNotHaveAuthority number
---@field EnterVehicleFailMsgID_CheckVehiclePositionState number
---@field EnterVehicleFailMsgID_HasNotEnoughSpace number
---@field EnterVehicleFailMsgID_HasNotAvailableSeat number
---@field bIsCurrentShowPickUPBtn boolean
---@field SpawnVehicleOffset FVector
---@field SpawnVehicleRotation FRotator
---@field SpaceCheckBounds FVector
---@field SpaceCheckOffset FVector
---@field CreateVehicleInBigWorldNotEnoughSpaceTips number
---@field CantCreateVehicleInBigWorldRegionTips number
---@field CantSpawnBoatInBigWorldRegionTips number
---@field CurVehicleInBigWorldAvartarID number
---@field ValidVehicleAvatarTypeList ULuaArrayHelper<number>
---@field ValidBoatTypeList ULuaArrayHelper<number>
---@field CheckBoatValidLineDistance number
---@field TestWaterChannel ECollisionChannel
---@field WaterSurfaceType EPhysicalSurface
---@field DistanceToDestroyCreatedVehicleInBigWorld number
---@field TimeToDestroyCreatedVehicleInBigWorld number
---@field ElapseTimeToDestroyCreatedVehicleInBigWorld number
---@field ReqCreateVehicleInBigWorldCoolTime number
---@field ReqCreateVehicleInBigWorldCDTips number
---@field CreateVehicleInBigWorldMaxWarn number
---@field LastCreateVehicleInBigWorldTime number
---@field LastCreateVehicleAvatarID number
---@field DestroyVehicleInBigWorldTips number
---@field VehicleInBigWorldOffLineDestoryTime number
---@field CurPlayerOffLineTime number
---@field AliBicycleDataClassPath FSoftClassPath
---@field OnWarDogEnterVehicleDelegate FOnWarDogEnterVehicleDelegate
---@field OnWarDogLeaveVehicleDelegate FOnWarDogLeaveVehicleDelegate
---@field OnWarDogLeanOutInVehicleDelegate FOnWarDogLeanOutInVehicleDelegate
---@field OnWarDogHideInVehicleDelegate FOnWarDogHideInVehicleDelegate
---@field OnWarDogShowInVehicleDelegate FOnWarDogShowInVehicleDelegate
---@field OnWarDogSeatAvailableDelegate FOnWarDogSeatAvailableDelegate
---@field CurVehicleControlPanelUI UVehicleControlPanelUI
---@field CanSendCheckVehicleSpawnNotInWallTime number
---@field bIsInDriverScopeUsePawnController boolean
---@field NeedAutoLeanIn boolean
---@field AutoLeanInTime number
---@field AutoLeanInTickTimer number
---@field AutoLeanInDelayTime number
---@field AutoLeanInDelayTickTimer number
---@field CheckCanCarryPawnToVehicleInterval number
---@field CheckCanCarryPawnToVehicleTimer number
---@field CheckCanCarryDistance number
---@field VehicleCanCarryPawnCheckDistance number
---@field VehicleCanCarryValidSkillPhase number
---@field VehicleCanCarryPawnCheckOffset FVector
---@field LastEnterVehicleInfo FLastEnterVehicleInfo
---@field CurrentVehicleInteractors ULuaArrayHelper<UObject>
---@field FailReasonToTipsID ULuaMapHelper<EVehicleFailReason, number>
---@field bCheckBeforeReqEnterVehicleFindCharacter boolean
local UVehicleUserComponent = {}

---@param bNewValue boolean
function UVehicleUserComponent:SetGameModeHasMobs(bNewValue) end

---@param bNewValue FItemDefineID
function UVehicleUserComponent:SetLastUsedItemDefineID(bNewValue) end

---@param bNewValue number
function UVehicleUserComponent:SetLastFinishCD(bNewValue) end

---@param ChangeAvatarVehicle ASTExtraVehicleBase
function UVehicleUserComponent:AddChangeAvatarVehicle(ChangeAvatarVehicle) end

---@param NewLastDriveVehicle ASTExtraVehicleBase
function UVehicleUserComponent:SetLastDriverVehicleValue(NewLastDriveVehicle) end

---@param NewValue boolean
function UVehicleUserComponent:SetAllowTickUpdateClosestVehicle(NewValue) end

---@param DefineID FItemDefineID
function UVehicleUserComponent:ClientUpdateSingleItem(DefineID) end

---@param DefineID FItemDefineID
function UVehicleUserComponent:ClientDeleteSingleItem(DefineID) end

---@param InSeatIndex number
---@param bIsFriendWithVehicleOwnerClient boolean
---@return boolean
function UVehicleUserComponent:DoChangeVehicleSeat(InSeatIndex, bIsFriendWithVehicleOwnerClient) end

---@param InVehiclePair FVehicleSeatIndexPair
---@param bIsFriendWithVehicleOwnerClient boolean
---@return boolean
function UVehicleUserComponent:DoChangeVehicleSeatNew(InVehiclePair, bIsFriendWithVehicleOwnerClient) end

---@param InSeatIndex number
---@param bIsFriendWithVehicleOwnerClient boolean
function UVehicleUserComponent:DoChangeVehicleSeatForce(InSeatIndex, bIsFriendWithVehicleOwnerClient) end

---@param InVehicle ASTExtraVehicleBase
---@param DyingCharacter ASTExtraBaseCharacter
function UVehicleUserComponent:ReqCarryDyingCharacterToVehicle(InVehicle, DyingCharacter) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param bIsFriendWithVehicleOwnerClient boolean
---@param InSeatIndex number
function UVehicleUserComponent:ReqEnterVehicle(InVehicle, SeatType, bIsFriendWithVehicleOwnerClient, InSeatIndex) end

---@param ClientVehicleVelocity FVector
---@param UseUpDownPerform boolean
function UVehicleUserComponent:ReqExitVehicle(ClientVehicleVelocity, UseUpDownPerform) end

---@param InSeatIndex number
---@param bIsFriendWithVehicleOwnerClient boolean
function UVehicleUserComponent:ReqChangeVehicleSeat(InSeatIndex, bIsFriendWithVehicleOwnerClient) end

---@param VehicleId number
function UVehicleUserComponent:ChangeToNewVehicle(VehicleId) end

function UVehicleUserComponent:ReqVehicleDetachFromOtherVehicle() end

function UVehicleUserComponent:ReqVehicleCancelFollowOtherVehicle() end

function UVehicleUserComponent:RecoverDriverState() end

function UVehicleUserComponent:OnRep_DefineID() end

function UVehicleUserComponent:OnRep_VehicleUserReconnRepData() end

function UVehicleUserComponent:OnRepVehicleUserReconnRepDataBP() end

---@param InVehicle ASTExtraVehicleBase
---@param InCharacter ASTExtraBaseCharacter
---@param bSuccess boolean
---@param SeatType ESTExtraVehicleSeatType
---@param SeatInd number
---@param FailReason EVehicleFailReason
---@param OperatorCode number
function UVehicleUserComponent:RspEnterVehicle(InVehicle, InCharacter, bSuccess, SeatType, SeatInd, FailReason, OperatorCode) end

---@param bSuccess boolean
---@param OperatorCode number
function UVehicleUserComponent:RspExitVehicle(bSuccess, OperatorCode) end

---@param bSuccess boolean
---@param SeatType ESTExtraVehicleSeatType
---@param SeatInd number
---@param bNeedLeanOut boolean
---@param bNeedScopeIn boolean
---@param FailReason EVehicleFailReason
---@param OperatorCode number
function UVehicleUserComponent:RspChangeVehicleSeat(bSuccess, SeatType, SeatInd, bNeedLeanOut, bNeedScopeIn, FailReason, OperatorCode) end

---@param InSeatIndex number
function UVehicleUserComponent:ClientRetryChangeVehicleSeat(InSeatIndex) end

---@param bOut boolean
function UVehicleUserComponent:RspLeanOut(bOut) end

---@param InCullWaterVehicle ASTExtraVehicleBase
function UVehicleUserComponent:TickVehicleCullWater(InCullWaterVehicle) end

function UVehicleUserComponent:OnUnmannedVehicle_Standby_Reconnet() end

---@param SeatType ESTExtraVehicleSeatType
---@param OperatorCode number
function UVehicleUserComponent:OnEnterVehicleCompleted(SeatType, OperatorCode) end

---@param FailReason EVehicleFailReason
---@param CustomTipsID number
function UVehicleUserComponent:OnEnterVehicleFail(FailReason, CustomTipsID) end

---@param OperatorCode number
function UVehicleUserComponent:OnExitVehicleCompleted(OperatorCode) end

---@param SeatType ESTExtraVehicleSeatType
---@param OperatorCode number
function UVehicleUserComponent:OnChangeVehicleSeatCompleted(SeatType, OperatorCode) end

function UVehicleUserComponent:OnCurrrentClosestVehicleChanged() end

function UVehicleUserComponent:OnLeanOutAfterChangeSeat() end

function UVehicleUserComponent:OnScopeInAfterChangeSeat() end

function UVehicleUserComponent:ReqSwitchDriverAndDriverShootSeat() end

---@param FollowPawn APawn
function UVehicleUserComponent:ReqFollowAPawn(FollowPawn) end

---@param reason EExitFollowReason
function UVehicleUserComponent:ReqBreakAwayFollowAPawn(reason) end

---@param walkType EWalkType
function UVehicleUserComponent:ReqSetHorseWalkType(walkType) end

function UVehicleUserComponent:ReqCallMyriapodVehicle() end

---@param CallMyriapodVehicle ASTExtraHorseVehicle
function UVehicleUserComponent:RspCallMyriapodVehicle(CallMyriapodVehicle) end

---@return number
function UVehicleUserComponent:GetTimeLeftInCallCD() end

function UVehicleUserComponent:OnRep_CanCallVehicle() end

function UVehicleUserComponent:OnCanCallVehicle() end

---@return boolean
function UVehicleUserComponent:GetCallState() end

function UVehicleUserComponent:OnServerReconnected() end

function UVehicleUserComponent:OnClientReconnected() end

---@return boolean
function UVehicleUserComponent:HandleClientReconnecting() end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:CheckClientReconnected(InVehicle) end

function UVehicleUserComponent:UpdatePassengerViewPitchLimit() end

function UVehicleUserComponent:UpdatePassengerViewYawLimit() end

function UVehicleUserComponent:UpdateVehWeaponPassengerViewLimit() end

---@param IsLeanOut boolean
function UVehicleUserComponent:ReqLeanOut(IsLeanOut) end

---@param LeftSide boolean
function UVehicleUserComponent:ReqChangeFreeFireSeatAndLeanOut(LeftSide) end

---@param LeftSide boolean
function UVehicleUserComponent:ReqChangeFreeFireSeatAndScopeIn(LeftSide) end

function UVehicleUserComponent:OnTouchMoveTickCheckEvent() end

---@param Yaw number
---@param Pitch number
---@return boolean
function UVehicleUserComponent:OnTouchMoveEvent(Yaw, Pitch) end

function UVehicleUserComponent:OnTouchBegin() end

function UVehicleUserComponent:OnTouchEnd() end

---@param Yaw number
---@param Pitch number
function UVehicleUserComponent:OnTouchMove(Yaw, Pitch) end

---@return boolean
function UVehicleUserComponent:CanControlVehicle() end

---@param rate number
function UVehicleUserComponent:MoveVehicleForward(rate) end

---@param rate number
function UVehicleUserComponent:MoveVehicleRight(rate) end

---@param rate number
function UVehicleUserComponent:MoveVehicleUp(rate) end

---@param rate number
function UVehicleUserComponent:SetAirControlF(rate) end

---@param rate number
function UVehicleUserComponent:SetAirControlB(rate) end

---@param rate number
function UVehicleUserComponent:TurnVehicle(rate) end

---@param rate number
function UVehicleUserComponent:SetBrake(rate) end

---@param bEnabled boolean
function UVehicleUserComponent:SetBoosting(bEnabled) end

---@return boolean
function UVehicleUserComponent:IsInCruiseMode() end

---@return boolean
function UVehicleUserComponent:OwnFlyHorseWhistle() end

---@param InVehicle ASTExtraHorseVehicle
function UVehicleUserComponent:TryEnablingHorseFlying(InVehicle) end

---@param InVehicle ASTExtraHorseVehicle
function UVehicleUserComponent:ReqEnablingHorseFlying(InVehicle) end

---@param PlayerController ASTExtraPlayerController
---@param Message string
function UVehicleUserComponent:ExecuteFlyHorseConversionGIS(PlayerController, Message) end

---@param PlayerController ASTExtraPlayerController
---@param Message string
---@return boolean
function UVehicleUserComponent:CanShowFlyHorseConversionGIS(PlayerController, Message) end

function UVehicleUserComponent:UpdateFlyHorseConversionGIS() end

function UVehicleUserComponent:FlyHorseConversionGISLoaded() end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param SkipCheckBeforeReqEnterVehicle boolean
---@param InSeatIndex number
function UVehicleUserComponent:TryEnterVehicle(InVehicle, SeatType, SkipCheckBeforeReqEnterVehicle, InSeatIndex) end

function UVehicleUserComponent:TrySwitchDriverAndDriverShootSeat() end

function UVehicleUserComponent:TryFollowAPawn() end

function UVehicleUserComponent:TryBreakAwayFollowAPawn() end

---@param walkType EWalkType
function UVehicleUserComponent:TrySetHorseWalkType(walkType) end

---@param UseUpDownPerform boolean
function UVehicleUserComponent:TryExitVehicle(UseUpDownPerform) end

function UVehicleUserComponent:ProcessClientExitVehicleException() end

---@return FExitVehicleExceptionData
function UVehicleUserComponent:GetCurVehicleExceptionData() end

---@param ExitExceptionData FExitVehicleExceptionData
function UVehicleUserComponent:ReqClientExitVehicleException(ExitExceptionData) end

---@param ExitExceptionData FExitVehicleExceptionData
function UVehicleUserComponent:RspClientExitVehicleException(ExitExceptionData) end

---@param ExitExceptionData FExitVehicleExceptionData
function UVehicleUserComponent:RspClientExitVehicleExceptionNativeEvent(ExitExceptionData) end

function UVehicleUserComponent:PreReqChangeSeatSetup() end

function UVehicleUserComponent:TryChangeVehicleSeat() end

---@param InVehicle ASTExtraVehicleBase
---@param CustomValue number
function UVehicleUserComponent:TryCustomOperation(InVehicle, CustomValue) end

---@param SeatAt number
---@return boolean
function UVehicleUserComponent:TryChangeToAvailableVehicleSeatAt(SeatAt) end

---@param SeatIndex number
---@return boolean
function UVehicleUserComponent:TryChangeToVehicleSeat(SeatIndex) end

---@param InSeatIndex number
---@return FVehicleSeatIndexPair
function UVehicleUserComponent:DecodeSeatIndexInVehicleSet(InSeatIndex) end

---@param bUse boolean
function UVehicleUserComponent:TryUseHorn(bUse) end

---@param hpvalue number
---@param fuelvalue number
function UVehicleUserComponent:SetVehicleHPFuel(hpvalue, fuelvalue) end

---@param amount number
function UVehicleUserComponent:AddVehicleFuel(amount) end

---@param addpercenthp number
---@param fixtire boolean
---@param OtherVehicle ASTExtraVehicleBase
function UVehicleUserComponent:MaintenanceVehicle(addpercenthp, fixtire, OtherVehicle) end

---@return boolean
function UVehicleUserComponent:CheckCanLeanOutVehicle() end

---@param bAutoLeanOut boolean
---@return boolean
function UVehicleUserComponent:TryLeanOutOrIn(bAutoLeanOut) end

---@return boolean
function UVehicleUserComponent:TryChangeFreeFireSeatAndLeanOut() end

---@return boolean
function UVehicleUserComponent:TryChangeFreeFireSeatAndScopeIn() end

---@return boolean
function UVehicleUserComponent:CanUseVehicleHorn() end

---@param PlayerCharacter ASTExtraPlayerCharacter
---@return boolean
function UVehicleUserComponent:CanVehicleShoot(PlayerCharacter) end

---@param bApplyVehicleVelocity boolean
---@param Reason string
---@param bMustExit boolean
---@param bPerformFinish boolean
function UVehicleUserComponent:ForceExitVehicle(bApplyVehicleVelocity, Reason, bMustExit, bPerformFinish) end

---@param bApplyVehicleVelocity boolean
---@param Reason string
---@param bMustExit boolean
---@param bPerformFinish boolean
function UVehicleUserComponent:ExitAndPickUpVehicle(bApplyVehicleVelocity, Reason, bMustExit, bPerformFinish) end

function UVehicleUserComponent:ReqEraseLastDriveVehicle() end

---@param STEPC ASTExtraPlayerController
---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:ReqMarkLastestVehicle(STEPC, InVehicle) end

---@param ObserverController ASTExtraPlayerController
---@param ViewTargetCharacter ASTExtraBaseCharacter
function UVehicleUserComponent:ReqSyncViewTargetLastDriveInfo(ObserverController, ViewTargetCharacter) end

function UVehicleUserComponent:NotifyLeaveVehicleFailed() end

function UVehicleUserComponent:InputJumpUp() end

---@param rate number
function UVehicleUserComponent:OnInputAxisMoveForward(rate) end

---@param rate number
function UVehicleUserComponent:OnInputAxisMoveRight(rate) end

function UVehicleUserComponent:UpdateValidVehicleAudio() end

---打开/控制无人载具
---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:TryLaunchUnmannedVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:ReqLaunchUnmannedVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param bSucceed boolean
function UVehicleUserComponent:RspLaunchUnmannedVehicle(InVehicle, bSucceed) end

function UVehicleUserComponent:OnLaunchUnmannedVehicleCompleted() end

---暂停操作无人载具，返回控制角色
function UVehicleUserComponent:TryPauseUnmannedVehicle() end

function UVehicleUserComponent:ReqPauseUnmannedVehicle() end

---@param InVehicle ASTExtraVehicleBase
---@param bSucceed boolean
function UVehicleUserComponent:RspPauseUnmannedVehicle(InVehicle, bSucceed) end

function UVehicleUserComponent:OnPauseUnmannedVehicleCompleted() end

function UVehicleUserComponent:SendToServerUnmannedVehiclePauseAndRecall() end

function UVehicleUserComponent:SendToServerUnmannedVehicleRecall() end

function UVehicleUserComponent:SendToServerUnmannedVehiclePause() end

function UVehicleUserComponent:SendToServerUnmannedVehicleUse() end

---关闭收回无人载具
function UVehicleUserComponent:TryShutDownUnmannedVehicle() end

function UVehicleUserComponent:ReqShutDownUnmannedVehicle() end

---@param bSucceed boolean
---@param CDFinishServerTime number
function UVehicleUserComponent:RspShutDownUnmannedVehicle(bSucceed, CDFinishServerTime) end

---@param cdTime number
function UVehicleUserComponent:OnShutDownUnmannedVehicleCompleted(cdTime) end

---遥控载具:开始遥控
---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:TryRemoteControlVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:ReqRemoteControlVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param bSuccess boolean
---@param SeatType ESTExtraVehicleSeatType
function UVehicleUserComponent:RspRemoteControlVehicle(InVehicle, bSuccess, SeatType) end

---遥控载具:真人进入遥控载具 传入SeatIndex代表着需要从该Index所指的位置上车，SeatIndex默认为-1时代表着从SeatType位置上车
---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param bIsFriendWithVehicleOwnerClient boolean
---@param InSeatIndex number
function UVehicleUserComponent:ReqEnterControlledVehicle(InVehicle, SeatType, bIsFriendWithVehicleOwnerClient, InSeatIndex) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param bCanEnter boolean
---@param InSeatIndex number
function UVehicleUserComponent:RspEnterControlledVehicle(InVehicle, SeatType, bCanEnter, InSeatIndex) end

function UVehicleUserComponent:RspPauseRemoteControlVehicle() end

---遥控载具:恢复遥控（真人驾驶员离开）
---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:ReqResumeRemoteControlVehicle(InVehicle) end

function UVehicleUserComponent:RspResumeRemoteControlVehicle() end

function UVehicleUserComponent:NotifyResumeRemoteControlVehicle() end

---遥控载具:停止遥控载具，返回控制角色
function UVehicleUserComponent:TryStopRemoteControlVehicle() end

function UVehicleUserComponent:ReqStopRemoteControlVehicle() end

---@param bSuccess boolean
---@param bKeepState boolean
function UVehicleUserComponent:RspStopRemoteControlVehicle(bSuccess, bKeepState) end

function UVehicleUserComponent:PostStopRemoteControlVehicle() end

---@param bEnable boolean
function UVehicleUserComponent:TryAutonomousDriving(bEnable) end

---@return boolean
function UVehicleUserComponent:IsAutoDriving() end

---@return boolean
function UVehicleUserComponent:CanAutoDriving() end

---@param bEnable boolean
function UVehicleUserComponent:ReqAutonomousDriving(bEnable) end

---@param bEnable boolean
---@param bSucceed boolean
function UVehicleUserComponent:RspAutonomousDriving(bEnable, bSucceed) end

---@return boolean
function UVehicleUserComponent:IsDriverShoot() end

---@return boolean
function UVehicleUserComponent:IsDriverUseVehicleWeaponShoot() end

---@return boolean
function UVehicleUserComponent:IsDriverAndVehicleSpringArmLimitYaw() end

---@param Rotation FRotator
---@param bIsAdd boolean
function UVehicleUserComponent:TestForceTurnVehicle(Rotation, bIsAdd) end

function UVehicleUserComponent:Server_JoystickCenterClickHandler() end

function UVehicleUserComponent:TankVehicleUseWeaponOrNotDelegateBroadCast() end

---@param Camel ASTExtraCamelVehicle
function UVehicleUserComponent:Server_CamelCaravanClickScan(Camel) end

---@param Camel ASTExtraCamelVehicle
function UVehicleUserComponent:Server_CamelCaravanSpeedup(Camel) end

function UVehicleUserComponent:Client_ShouldBindTouchEvents() end

function UVehicleUserComponent:Client_UnbindTouchEvents() end

---@param bNewValue boolean
function UVehicleUserComponent:SetEnteredByJoystickClick(bNewValue) end

---给性能测试用的载具自动开火的接口
function UVehicleUserComponent:VehicleWeaponStartFireOnClientForAutoTest() end

function UVehicleUserComponent:VehicleWeaponStopFireOnClientForAutoTest() end

function UVehicleUserComponent:VehicleWeaponStartFireOnServerForAutoTest() end

function UVehicleUserComponent:VehicleWeaponStopFireOnServerForAutoTest() end

function UVehicleUserComponent:UseVehicleWeaponOrNot() end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function UVehicleUserComponent:HandleVehicleWeaponToLastWeapon(TargetChangeSlot) end

function UVehicleUserComponent:HandleLocalEquipWeaponFromBackpackFinished() end

function UVehicleUserComponent:HandleLocalBackpackCurrentWeaponFinished() end

---@return boolean
function UVehicleUserComponent:ShowVehicleWeaponUI() end

---@param SeatId number
---@param bUse boolean
function UVehicleUserComponent:ServerUseVehicleWeaponOrNot(SeatId, bUse) end

function UVehicleUserComponent:FireVehicleWeapon() end

function UVehicleUserComponent:StopFireVehicleWeapon() end

function UVehicleUserComponent:ServerStopFireVehicleWeapon() end

---处理玩家进入/离开鼓位时的消息
---@param enterDrumSeat boolean
function UVehicleUserComponent:ProcessDragonBoatDrumSeat(enterDrumSeat) end

function UVehicleUserComponent:ToggleHighSpeedMode() end

---@return boolean
function UVehicleUserComponent:IsHighSpeedMode() end

function UVehicleUserComponent:BoostByPassenger() end

function UVehicleUserComponent:ServerBoost() end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param SkipCheckBeforeReqEnterVehicle boolean
---@param InSeatIndex number
---@param IgnoreDistance boolean
---@param IgnoreBlock boolean
function UVehicleUserComponent:TryEnterVehicle_IgnoreDistanceAndBlock(InVehicle, SeatType, SkipCheckBeforeReqEnterVehicle, InSeatIndex, IgnoreDistance, IgnoreBlock) end

---无视上车距离和隔墙上车的限制请求上车(仅服务器调用) 优先上司机位，不行就上乘客位 TODO:暂时没有考虑遥控载具以及无人载具
---@param InVehicle ASTExtraVehicleBase
---@param SkipCheckBeforeReqEnterVehicle boolean
---@return boolean
function UVehicleUserComponent:TryEnterVehicleWithAnySeat_IgnoreDistanceAndBlock(InVehicle, SkipCheckBeforeReqEnterVehicle) end

---无视上车距离和隔墙上车的限制请求上车(仅服务器调用) 上车到指定的座位
---@param InVehicle ASTExtraVehicleBase
---@param InSeatIndex number
---@param SkipCheckBeforeReqEnterVehicle boolean
---@return boolean
function UVehicleUserComponent:TryEnterVehicleWithSeatIndex_IgnoreDistanceAndBlock(InVehicle, InSeatIndex, SkipCheckBeforeReqEnterVehicle) end

---@param arrType ULuaArrayHelper<ESTExtraVehicleType>
---@return boolean
function UVehicleUserComponent:IsNowTargetVehicleType(arrType) end

---@param arrType ESTExtraVehicleType
---@return boolean
function UVehicleUserComponent:NowVehicleIsTargetType(arrType) end

---@param CurExitVehicle ASTExtraVehicleBase
---@param bMustExit boolean
---@param bSuccess boolean
---@param Reason string
function UVehicleUserComponent:ProcessExitVehicleFailTLog(CurExitVehicle, bMustExit, bSuccess, Reason) end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param CurVehicle ASTExtraVehicleBase
---@param PassengerShouldInVehicle boolean
---@param DistanceToPlay number
function UVehicleUserComponent:ReqPlayVehicleEnjoyVoice(VoiceType, CurVehicle, PassengerShouldInVehicle, DistanceToPlay) end

---@param SkinID_PakageID string
---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
---@param CurVehicle ASTExtraVehicleBase
function UVehicleUserComponent:RspPlayVehicleEnjoyVoice(SkinID_PakageID, VoiceType, VoiceIndex, CurVehicle) end

---@param SkinID_PakageID string
---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
---@param CurVehicle ASTExtraVehicleBase
function UVehicleUserComponent:RspSendEnjoyVoiceMsg(SkinID_PakageID, VoiceType, VoiceIndex, CurVehicle) end

function UVehicleUserComponent:BroadcastOnVehicleEnjoyVoiceButtonTriggeredDelegate() end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:ReqPickUpVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function UVehicleUserComponent:CharacterCanPickUpVehicle(InVehicle, InCharacter) end

---@param vehicleuid number
---@param ClientSyncData FVehicleClientSyncData
function UVehicleUserComponent:SendClientMoveToServerUID(vehicleuid, ClientSyncData) end

---@param vehicleuid number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param InVelocity FVector_NetQuantize10
function UVehicleUserComponent:SendMyriapodClientMoveToServerUID(vehicleuid, TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, InVelocity) end

---@param AvatarItemTypeSpecificID number
function UVehicleUserComponent:ReqCreateVehicleWithSkinAvatarID(AvatarItemTypeSpecificID) end

---@param AvatarItemTypeSpecificID number
function UVehicleUserComponent:RspCreateVehicleWithSkinAvatarID(AvatarItemTypeSpecificID) end

---@param lockVehicleState ELockedVehicleState
function UVehicleUserComponent:ReqLockVehicle(lockVehicleState) end

---@param lockVehicleState ELockedVehicleState
function UVehicleUserComponent:RspLockVehicle(lockVehicleState) end

---@param Loc FVector
---@param Rot FRotator
---@param AvatarItemTypeSpecificID number
---@param AvatarItemType number
---@return boolean
function UVehicleUserComponent:CreateVehicleWithSkinAvatarID(Loc, Rot, AvatarItemTypeSpecificID, AvatarItemType) end

---@param Reason string
function UVehicleUserComponent:DestroyCreatedVehicleInBigWorld(Reason) end

---@param DeltaTime number
function UVehicleUserComponent:TickCreatedVehicleInBigWorld(DeltaTime) end

function UVehicleUserComponent:OnSwitchingOutDS() end

function UVehicleUserComponent:OnSwitchingOutDSNativeEvent() end

function UVehicleUserComponent:OnSwitchedInDS() end

function UVehicleUserComponent:OnPlayerControllerReceivedExitMsg() end

function UVehicleUserComponent:OnPlayerControllerLostDelegate() end

function UVehicleUserComponent:OnPlayerControllerLostDelegateNotBigWorld() end

function UVehicleUserComponent:OnPlayerControllerRecoveredDelegateNotBigWorld() end

function UVehicleUserComponent:ControllerLostTimeOutOnHorse() end

function UVehicleUserComponent:OnClientSwitchToNewServerDelegate() end

---@param strAssignUid string
---@return boolean
function UVehicleUserComponent:IsMyFriend(strAssignUid) end

function UVehicleUserComponent:ReqBreakConnectTrain() end

---@param ReqMasterTrain ASTExtraSplicedTrain
function UVehicleUserComponent:ReqConnectTrain(ReqMasterTrain) end

---@param VehicleSkillType EVehicleSkillType
function UVehicleUserComponent:ReqUseVehicleSkill(VehicleSkillType) end

---@param SkillHandleInstanceID number
function UVehicleUserComponent:ReqUseVehicleSkillHandle(SkillHandleInstanceID) end

---@param Handle UVehicleWarDogsSkillHandle
function UVehicleUserComponent:OnWarDogEnter(Handle) end

---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogPreviousSeatIndex number
function UVehicleUserComponent:OnWarDogLeave(Handle, WarDogPreviousSeatIndex) end

---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogSeatIndex number
---@param IsLeanOut boolean
function UVehicleUserComponent:OnWarDogLeanOut(Handle, WarDogSeatIndex, IsLeanOut) end

---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogPreviousSeatIndex number
function UVehicleUserComponent:OnWarDogHide(Handle, WarDogPreviousSeatIndex) end

---@param Handle UVehicleWarDogsSkillHandle
---@param WarDogNewSeatIndex number
function UVehicleUserComponent:OnWarDogShow(Handle, WarDogNewSeatIndex) end

---@param Handle UVehicleWarDogsSkillHandle
---@param AvailableSeatIndex number
function UVehicleUserComponent:OnWarDogSeatAvailable(Handle, AvailableSeatIndex) end

---@param WarDogHandle UItemHandleBase
---@return boolean
function UVehicleUserComponent:HasFreeSeatForWarDog(WarDogHandle) end

---@param AvatarVehicle ASTExtraVehicleBase
function UVehicleUserComponent:NotifyVehiclePutAvatarFinish(AvatarVehicle) end

---@param CurInput number
function UVehicleUserComponent:SendTrackVehiclePassengerInputToServer(CurInput) end

---@param UpperArm_PitchRate number
---@param UpperArm_YawRate number
---@param ForeArm_PitchRate number
---@param ForeArm_ExtendRate number
---@param Bucket_PitchRate number
function UVehicleUserComponent:UploadExcavatorArmInputToServer(UpperArm_PitchRate, UpperArm_YawRate, ForeArm_PitchRate, ForeArm_ExtendRate, Bucket_PitchRate) end

---@param CompressedArmInput number
function UVehicleUserComponent:UploadExcavatorArmRotationInputToServer(CompressedArmInput) end

---@param ForeArm_ExtendRate number
function UVehicleUserComponent:UploadExcavatorArmExtendInputToServer(ForeArm_ExtendRate) end

---@param ThrowPitch number
function UVehicleUserComponent:UploadExcavatorThrowPitchToServer(ThrowPitch) end

function UVehicleUserComponent:ReqExcavatorCancelThrow() end

---@param TargetActor AActor
function UVehicleUserComponent:ReqExcavatorCatch(TargetActor) end

function UVehicleUserComponent:ReqExcavatorDig() end

function UVehicleUserComponent:ReqExcavatorPour() end

function UVehicleUserComponent:ReqExcavatorRelease() end

function UVehicleUserComponent:ReqExcavatorResetPose() end

function UVehicleUserComponent:ReqExcavatorToThrowReadyState() end

function UVehicleUserComponent:ReqExcavatorToThrowState() end

function UVehicleUserComponent:ReqReleasedByExcavator() end

---@return boolean
function UVehicleUserComponent:CanReceiveInputByExcavatorCopilotSeat() end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:CheckVehicleSpawnNotInWall(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:RspCheckVehicleSpawnNotInWall(InVehicle) end

---@param TPlayerState ASTExtraPlayerState
---@param InVehicle ASTExtraVehicleBase
function UVehicleUserComponent:SetPlayerStateVehicleData(TPlayerState, InVehicle) end

---@param TPlayerState ASTExtraPlayerState
function UVehicleUserComponent:ResetPlayerStateVehicleData(TPlayerState) end

---@param HideTime number
function UVehicleUserComponent:HidePositionUI(HideTime) end

function UVehicleUserComponent:TryRaiseWindow() end

function UVehicleUserComponent:TryLowerWindow() end

---@param TargetVehicle ASTExtraVehicleBase
---@param TargetSeatIndex number
function UVehicleUserComponent:ReqRaiseWindow(TargetVehicle, TargetSeatIndex) end

---@param TargetVehicle ASTExtraVehicleBase
---@param TargetSeatIndex number
---@param IsSuccess boolean
function UVehicleUserComponent:RspRaiseWindow(TargetVehicle, TargetSeatIndex, IsSuccess) end

---@param TargetVehicle ASTExtraVehicleBase
---@param TargetSeatIndex number
function UVehicleUserComponent:ReqLowerWindow(TargetVehicle, TargetSeatIndex) end

---@return boolean
function UVehicleUserComponent:CanOperateWindow() end

---@return boolean
function UVehicleUserComponent:CanWindowLeanOut() end

---@return boolean
function UVehicleUserComponent:CheckTurnOverLeanOut() end

---@param NewVehicle ASTExtraVehicleBase
function UVehicleUserComponent:RegisterItemHandleAfterChangeVehicle(NewVehicle) end

---@param InCacheBindingHandle UBattleItemHandleBase
function UVehicleUserComponent:SetCacheBindingHandle(InCacheBindingHandle) end

function UVehicleUserComponent:RPC_Server_DoorMachineCancelFollow() end

---@param AvatarID FItemDefineID
function UVehicleUserComponent:PreLoadVehicleAvatarAsset(AvatarID) end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function UVehicleUserComponent:PreLoadVehicleAvatarAssetFinish(ItemHandles, AsyncLoadID) end

---@param TargetTrailer ASTExtraTrailerVehicle
function UVehicleUserComponent:ReqConnectTrailer(TargetTrailer) end

---@param TargetTrailer ASTExtraTrailerVehicle
---@param bConnectSucceed boolean
---@param FailReason EVehicleConnectFailReason
function UVehicleUserComponent:RspConnectTrailer(TargetTrailer, bConnectSucceed, FailReason) end

---@param bConnect boolean
function UVehicleUserComponent:OnConnectStateChanged(bConnect) end

function UVehicleUserComponent:ReqBreakHook() end

function UVehicleUserComponent:RspBreakHook() end

---@param TargetTrailer ASTExtraTrailerVehicle
---@return boolean
function UVehicleUserComponent:CheckNewTrailer(TargetTrailer) end

function UVehicleUserComponent:OnAvailableTrailerChanged() end

---@param DeltaTime number
function UVehicleUserComponent:TickAutoLeanIn(DeltaTime) end

function UVehicleUserComponent:OnStartFire() end

---@param LastVehicleCanCarryPawnTo ASTExtraVehicleBase
function UVehicleUserComponent:OnVehicleCanCarryPawnToChanged(LastVehicleCanCarryPawnTo) end

---@param LastVehicle ASTExtraVehicleBase
function UVehicleUserComponent:RecordEnterVehicleInfo(LastVehicle) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param CameraType ECameraDataType
---@param bEnable boolean
function UVehicleUserComponent:SetCharacterVehicleCameraType(TargetCharacter, CameraType, bEnable) end

function UVehicleUserComponent:UpdateScopeInteraction() end
