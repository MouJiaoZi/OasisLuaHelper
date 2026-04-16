---@meta

---载具座位类型
---@class ESTExtraVehicleSeatType
---@field ESeatType_DriversSeat number @//*UGC* 司机位
---@field ESeatType_PassengersSeat number @//*UGC* 乘客位
---@field ESeatType_FreeFiringLeftSeat number @//*UGC* 左侧自由射击座位（直升机两侧座位）,废弃
---@field ESeatType_FreeFiringRightSeat number @//*UGC* 右侧自由射击座位（直升机两侧座位），废弃
---@field ESeatType_GunnerSeat number @//*UGC* 暂时无用，废弃
---@field ESeatType_VirtualDriverSeat number @//*UGC* 虚拟座位（脑机遥控座位）
---@field ESeatType_DriverShoot number
---@field ESeatType_DriverProxySeat number
---@field ESeatType_Max number
ESTExtraVehicleSeatType = {}


---@class EVHSeatWeaponHoldType
---@field ESeatWeapon_None number @禁止持枪
---@field ESeatWeapon_ShortOnly number @短枪Only
---@field ESeatWeapon_RifleOnly number @长枪和短枪
---@field ESeatWeapon_All number @无限制
---@field ESeatWeapon_AllExceptMelee number @除近战外所有
EVHSeatWeaponHoldType = {}


---@class EVHSeatSpecialType
---@field EVHSeatSpecial_Common number @普通座椅
---@field EVHSeatSpecial_Narrow number @窄座椅
---@field EVHSeatSpecial_OutLeft number @外坐左
---@field EVHSeatSpecial_OutRight number @外坐右
---@field EVHSeatSpecial_Horse number @马鞍
---@field EVHSeatSpecial_FreeFiringLeftSeat number @左侧自由射击座位（直升机两侧座位）
---@field EVHSeatSpecial_FreeFiringRightSeat number @右侧自由射击座位（直升机两侧座位）
---@field EVHSeatSpecial_Max number
EVHSeatSpecialType = {}


---@class EVHSeatGUIType
---@field EVHSeatGUIType_NoSeat number @无座位
---@field EVHSeatGUIType_Empty number @空座位
---@field EVHSeatGUIType_Other number @其他玩家使用中
---@field EVHSeatGUIType_Self number @自己使用中
---@field EVHSeatGUIType_Max number
EVHSeatGUIType = {}


---@class EVHSeatSideType
---@field EVHSeatSideType_Center number @中间位置
---@field EVHSeatSideType_Left number @左边
---@field EVHSeatSideType_Right number @右边
EVHSeatSideType = {}


---@class EVHSeatDeferredMoveType
---@field OnAttach number @上车时
---@field OnDetach number @下车时
---@field OnChange number @换座时
EVHSeatDeferredMoveType = {}


---@class FSTExtraVehicleWeaponConfig
---@field VehicleWeaponSocket string
---@field VehicleWeaponAttachPosOffset FVector
---@field VehicleWeaponAttachRotOffset FRotator
---@field bFollowParentSocketRotation boolean @attach到载具后是否随着载具transform更新更新自己的旋转
---@field VehicleWeaponClass AVehicleShootWeapon
---@field bUseParentSocketRotationLimit boolean @是否使用武器attach的parent的坐标系限制rotation（例如坦克炮台机枪需要考虑炮塔旋转）
---@field ConsideredParentSocketName string
---@field ViewYawLimit FVector2D @乘客位使用武器Yaw角度限制，用于修改controller rotation
---@field ViewPitchLimit FVector2D @乘客位使用武器Pitch角度限制，用于修改controller rotation
---@field bEnableAimAtTarget boolean @是否验证计算的枪口朝向
---@field bVerifyMuzzleDirection boolean @是否验证计算的枪口朝向
---@field MuzzleDirTor number @枪的朝向与反向计算的朝向的容错，在余弦空间
---@field bVerifyMuzzleLimit boolean @是否验证枪口的角度限制
---@field MuzzleVehicleTore number @枪的朝向与载具的朝向的容错，在角度空间 由于当前使用的ViewLimit逻辑是限制玩家的视角来控制的，实质上在载具处于某些角度时，由于玩家位置与枪的位置有偏差，在算上SpringArm的长度之后 会出现枪的朝向大于角度限制很多的情况，所以必须使用一个较大的角度来作为容错
---@field bVerifyMuzzleBoxRanges boolean @是否对枪口在载具的范围进行校验
---@field MuzzleRangeBox FBox @枪口相对载具的范围
---@field DistTorSquared number @允许射击时的载具与服务器载具的最大距离 配置小于0则不会校验
FSTExtraVehicleWeaponConfig = {}


---@class FSTExtraVehicleSeatPerformConfig
---@field SocketName string
FSTExtraVehicleSeatPerformConfig = {}


---@class FSTExtraVehicleSeat
---@field SeatType ESTExtraVehicleSeatType
---@field AnimCompTagName string
---@field EnterVehicleSocket string
---@field EnterVehicleSocketOffset FTransform
---@field LeaveVehicleSocket string
---@field LeaveVehicleSocketOffset FTransform
---@field bIsSeatBaned boolean
---@field bCanEnterVehicleSeat boolean
---@field bSeatAvailableWhenHooked boolean
---@field bIsValidSeatForWardog boolean
---@field WardogEnterVehicleSocketOffset FVector
---@field ParentSeatIndex number
---@field ChildSeatIndexes ULuaArrayHelper<number>
---@field EnterVehiclePointsConfig ULuaArrayHelper<FSTExtraVehicleSeatPerformConfig>
---@field ExitVehiclePointsConfig ULuaArrayHelper<FSTExtraVehicleSeatPerformConfig>
---@field bHasUpDownPerform boolean
---@field bManuallyPerform boolean
---@field DownPerformZOffset number
---@field OccupyMovementMode EMovementMode
---@field HoldWeaponType EVHSeatWeaponHoldType
---@field WeaponTypeNewAllowList ULuaArrayHelper<EWeaponTypeNew>
---@field SeatSpecialType EVHSeatSpecialType
---@field bTryTwoWeaponSlotOnSwitch boolean
---@field IsCanLeanOut boolean
---@field IsForceLeanOut boolean
---@field UseShoulderCameraWhenLeanOut boolean
---@field bIsSkipLeanOutCollisionCheck boolean
---@field bShouldShootIgnoreVehicle boolean
---@field bShouldGunCollisionIgnoreVehicle boolean
---@field bShowLeanOutUIBtn boolean
---@field NarrowSeatNeedUseCommomAimAnim boolean
---@field GUIDisplayIndex number
---@field bForceViewLimit boolean
---@field bEnableYawLimit boolean
---@field bEnableYawLimitADS boolean
---@field bEnableFlipYawLimit boolean
---@field ViewYawLimit FVector2D
---@field CharRotVsVehiRot FRotator
---@field SeatSideType EVHSeatSideType
---@field bEnableVehicleWeapon boolean
---@field bEnableUseBFVehicleOperationUI boolean
---@field bEnableUsedAsFreeFireSeat boolean
---@field bEnableChangeFreeFireSeat boolean
---@field VehicleWeaponConfig ULuaArrayHelper<FSTExtraVehicleWeaponConfig>
---@field VehicleWeaponConfigSupport ULuaArrayHelper<FSTExtraVehicleWeaponConfig>
---@field bDefaultControlWeapon boolean
---@field bDriverSeatWeaponShouldSetToTemporaryWeapon boolean
---@field VehicleWeaponSeatSocket string
---@field bAddDynamicCapsuleCollision boolean
---@field Radius number
---@field HalfHeight number
---@field CollisionOffset FTransform
---@field bDrawDebug boolean
---@field bShouldAlsoCheckEnoughSpaceUseOriginSocketPlace boolean
---@field bShouldCheckEnoughSpaceWhenDriverEnterVehicle boolean
---@field bCapsuleShouldOverlapWithPawn boolean
---@field CollisionChannelList ULuaArrayHelper<ECollisionChannel>
---@field ExitVehicleEnterPositionFix FVector
---@field bUseOtherSeatNormalExitPosision boolean
---@field GrenadeThrowRelativeLocation FVector
---@field bCalCharHeadUseTransform boolean
---@field CharacterHeaderOffset FVector
---@field SeatAnimInsSlotName string
---@field SeatAnimInstance UAnimInstance
---@field SeatAnimInstanceBlendInTime number
---@field SeatAnimInstanceBlendOutTime number
---@field SeatAnimInsSlotName_NewFPP string
---@field SeatAnimInstance_NewFPP UAnimInstance
---@field SeatAnimInstanceBlendInTime_NewFPP number
---@field SeatAnimInstanceBlendOutTime_NewFPP number
---@field bHideCharacter boolean
---@field CharacterSeatAttachPosOffset FVector
---@field ShouldOpenCharOverlapWithPawnAndVehicle boolean
---@field DontChangeToVehicleCameraData boolean
---@field bSmoothPlayerCameraWhenSwitchingToDriverSeat boolean
---@field LockedBlendTimeWhenSwitchingToDriverSeat number
---@field SmoothPlayerCameraWhenSwitchingToDriverSeatLagScale number
---@field SmoothPlayerCameraWhenSwitchingToDriverSeatLagScaleTime number
---@field VehicleSeatUIStylePath ULuaArrayHelper<string>
---@field bForceUseDriveAnimInPassengerSeat boolean
---@field bCanPassengerDrive boolean
FSTExtraVehicleSeat = {}


---@class FSTExtraVehicleOccupierState
---@field bUsingVehicleAnimIns boolean
---@field FPPAnimVehicleIns UAnimInstance
---@field TPPAnimVehicleIns UAnimInstance
---@field NewFPPAnimVehicleIns UAnimInstance
FSTExtraVehicleOccupierState = {}


---@class FSTExtraVehicleReplaceSubAnimConfig
---@field SlotName string
---@field FromClass UAnimInstance
---@field ToClass UAnimInstance
---@field BlendInTime number
---@field BlendOutTime number
FSTExtraVehicleReplaceSubAnimConfig = {}


---@class FSTExtraVehicleWeaponsOnSeat
---@field WeaponsOnSeat ULuaArrayHelper<AVehicleShootWeapon>
---@field UsedVehicleWeaponFromSupportKitIndex ULuaArrayHelper<number>
FSTExtraVehicleWeaponsOnSeat = {}


---@class FVehicleSeatIndexPair
---@field SeatIndex number
FVehicleSeatIndexPair = {}


---@class FUpdateSeatGUIDelegate : ULuaSingleDelegate
FUpdateSeatGUIDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdateSeatGUIDelegate:Bind(Callback, Obj) end

---执行委托
function FUpdateSeatGUIDelegate:Execute() end


---@class FVehicleWeaponSeatUpdate : ULuaSingleDelegate
FVehicleWeaponSeatUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleWeaponSeatUpdate:Bind(Callback, Obj) end

---执行委托
function FVehicleWeaponSeatUpdate:Execute() end


---@class FSeatOccupiersUpdateDelegate : ULuaSingleDelegate
FSeatOccupiersUpdateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSeatOccupiersUpdateDelegate:Bind(Callback, Obj) end

---执行委托
function FSeatOccupiersUpdateDelegate:Execute() end


---@class FSeatAttachDelegate : ULuaMulticastDelegate
FSeatAttachDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSeatAttachDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FSeatAttachDelegate:Broadcast(Character, SeatType, SeatIdx) end


---@class FSeatDetachDelegate : ULuaMulticastDelegate
FSeatDetachDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSeatDetachDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FSeatDetachDelegate:Broadcast(Character, SeatType, SeatIdx) end


---@class FSeatChangeDelegate : ULuaMulticastDelegate
FSeatChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, LastSeatType: ESTExtraVehicleSeatType, LastSeatIdx: number, NewSeatType: ESTExtraVehicleSeatType, NewSeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSeatChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function FSeatChangeDelegate:Broadcast(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end


---@class FDriverChangeDelegate : ULuaMulticastDelegate
FDriverChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldChara: ASTExtraPlayerCharacter, NewChara: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDriverChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldChara ASTExtraPlayerCharacter
---@param NewChara ASTExtraPlayerCharacter
function FDriverChangeDelegate:Broadcast(OldChara, NewChara) end


---@class FPlayEnterVehicleAnimDelegate : ULuaMulticastDelegate
FPlayEnterVehicleAnimDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatIdx: number, EnterSocket: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayEnterVehicleAnimDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatIdx number
---@param EnterSocket string
function FPlayEnterVehicleAnimDelegate:Broadcast(Character, SeatIdx, EnterSocket) end


---@class FPlayExitVehicleAnimDelegate : ULuaMulticastDelegate
FPlayExitVehicleAnimDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatIdx: number, ExitSocket: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayExitVehicleAnimDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatIdx number
---@param ExitSocket string
function FPlayExitVehicleAnimDelegate:Broadcast(Character, SeatIdx, ExitSocket) end


---@class FOccupierStateChangeDelegate : ULuaMulticastDelegate
FOccupierStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LeaveOccupiers: ULuaArrayHelper<FSTExtraVehicleOccupierState>, NowOccupiers: ULuaArrayHelper<FSTExtraVehicleOccupierState>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOccupierStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LeaveOccupiers ULuaArrayHelper<FSTExtraVehicleOccupierState>
---@param NowOccupiers ULuaArrayHelper<FSTExtraVehicleOccupierState>
function FOccupierStateChangeDelegate:Broadcast(LeaveOccupiers, NowOccupiers) end


---@class FOnVehicleDriverStateChangeDelegate : ULuaMulticastDelegate
FOnVehicleDriverStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bServerControl: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleDriverStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bServerControl boolean
function FOnVehicleDriverStateChangeDelegate:Broadcast(bServerControl) end


---载具座位组件类
---@class UVehicleSeatComponent: UVehicleComponent
---@field SeatOccupiers ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field OccupierStates ULuaArrayHelper<FSTExtraVehicleOccupierState>
---@field VehicleWeapons ULuaArrayHelper<FSTExtraVehicleWeaponsOnSeat>
---@field VehicleAttachments ULuaArrayHelper<AVehicleAttachmentBase>
---@field DriverEnterVehicleTime number
---@field bIsUsingVehicleWeapon boolean
---@field OldOccupierStates ULuaArrayHelper<FSTExtraVehicleOccupierState>
---@field HideChangeSeat boolean
---@field DriverHideChangeSeat boolean
---@field VaildExitVehicleHeight number
---@field bDriverCanHoldWeapon boolean
---@field bDriverUseVehicleWeaponShoot boolean
---@field Seats ULuaArrayHelper<FSTExtraVehicleSeat>
---@field OnVehicleWeaponSeatUpdate FVehicleWeaponSeatUpdate
---@field VehicleAttachmentsConfig ULuaArrayHelper<FSTExtraVehicleAttachment>
---@field AlternativeLeaveVehicleSockets ULuaArrayHelper<string>
---@field AlternativeEnterVehicleSockets ULuaArrayHelper<string>
---@field LeaveVehicleVelocityScale number
---@field LeaveVehicleVelZScale number
---@field bCheckValidLeaveLocationBySweep boolean
---@field bExitVehicleEnterPositionFixUseLocalAxis boolean
---@field bIgnoreParentInExitCheck boolean
---@field bEnableOnSeatChangedClient boolean
---@field ExitVehicleCharacterCapsuleRadiusFix number
---@field ExitVehicleCharacterCapsuleHalfHeightScale number
---@field bDrawExitVehicleEnterPosition boolean
---@field bDrawExitVehicleCapsuleSweepResult boolean
---@field bForceExitVehiclePositionZOffsetRelative boolean
---@field ForceExitVehiclePositionZOffset number
---@field bEnableCheckIsLeavePositionPawnOverlap boolean
---@field OnVehicleSubAnimReplaceConfig_TPP ULuaArrayHelper<FSTExtraVehicleReplaceSubAnimConfig>
---@field ReplaceSubAnimInterval number
---@field bStopAllMontageWhenCharacterAttachToSeat boolean
---@field EnableDeferredUpdatesType number
---@field EnableIgnoreUpdateOverlapType number
---@field bEnableFlashBackLeaveVehicle boolean
---@field MaxDistanceToFlashBack number
---@field SaveLeavePosInterval number
---@field MaxPosNumInList number
---@field OverlapCapsuleHalfHeight number
---@field OverlapCapsuleRadius number
---@field OverlapOffset number
---@field SeatGUITypes ULuaArrayHelper<EVHSeatGUIType>
---@field HookedSeatGUITypesIndexMapping ULuaArrayHelper<number> @连接时的SeatGUITypes 修正偏移索引 连接时可能不能上一些特定座位，例如马车的马不能上后座，需要减上一整行没用的空间。 比如在马车上如果2号位置是玩家 2 (Player)   - (Padded) 0 (Disabled) 1 (Disabled) SeatGUITypes                          = [ EVHSeatGUIType_Empty, EVHSeatGUIType_NoSeat, EVHSeatGUIType_Self ] GetSeatIndexByCorrectedSeatGUIIndex() = [ 2, 1 (default), 2 (default)] GetCorrectedSeatGUITypeAt()           = [ EVHSeatGUIType_Self , EVHSeatGUIType_NoSeat, EVHSeatGUIType_NoSeat ] CorrectedSeatToGUIIndex()             = [ 2 , 3 , 4 ] GetCorrectedSeatGUIIndex()            = [ -1, -1, 0 ] 比如在马上如果2号位置是玩家 2 (Player)   - (Padded) 0            1 (Disabled) SeatGUITypes                          = [ EVHSeatGUIType_Empty, EVHSeatGUIType_NoSeat, EVHSeatGUIType_Self ] GetSeatIndexByCorrectedSeatGUIIndex() = [ 0, 1, 2 ] GetCorrectedSeatGUITypeAt()           = [ EVHSeatGUIType_Empty, EVHSeatGUIType_NoSeat, EVHSeatGUIType_Self ] CorrectedSeatToGUIIndex()             = [ 0, 1, 2 ] GetCorrectedSeatGUIIndex()            = [ 0, 1, 2 ]
---@field OnPlayEnterVehicleAnim FPlayEnterVehicleAnimDelegate @上载具之前播放上载具动画
---@field OnPlayExitVehicleAnim FPlayExitVehicleAnimDelegate @下载具之前播放下载具动画
---@field PreSeatAttached FSeatAttachDelegate
---@field PreSeatDetached FSeatDetachDelegate
---@field UGC_OnSeatAttachedDelegate FSeatAttachDelegate @使用座位 生效范围S @param Character 乘客 @param SeatType 座位类型 @param SeatIdx 座位Index
---@field OnSeatAttached FSeatAttachDelegate
---@field UGC_OnSeatDetachedDelegate FSeatDetachDelegate @离开座位 生效范围S @param Character 乘客 @param SeatType 座位类型 @param SeatIdx 座位Index
---@field OnSeatDetached FSeatDetachDelegate
---@field UGC_OnSeatChangedDelegate FSeatChangeDelegate @离开座位 生效范围S @param Character 乘客 @param LastSeatType 旧座位类型 @param LastSeatIdx 旧座位Index @param NewSeatType 新座位类型 @param NewSeatIdx 新座位Index
---@field OnSeatChanged FSeatChangeDelegate
---@field OnSeatPostChanged FSeatChangeDelegate
---@field OnUpdateSeatGUI FUpdateSeatGUIDelegate
---@field LatestDriverPlayerName string
---@field OnDriverChange FDriverChangeDelegate @驾驶员变更事件Delegate @param Driver 当前司机 @param LastDriver 上一位司机
---@field OnSeatOccupiersUpdate FSeatOccupiersUpdateDelegate
---@field LatestDriverPlayerUID string
---@field MaxInUseSeatGUIIndex number @正在使用的最大座位GUI索引
---@field MaxPaddedInUseSeatGUIIndex number
---@field MaxHookedInUseSeatGUIIndex number @连接时正在使用的最大座位GUI索引
---@field MaxHookedInUseSeatCount number @连接时正在使用的最大座位數量
---@field VisibleSeatGUICount number @座位显示数量
---@field HookedVisibleSeatGUICount number @连接时座位显示数量
---@field MaxHookedPaddedInUseSeatGUIIndex number
---@field OnOccupierStateChange FOccupierStateChangeDelegate
---@field bDelayOnRepOccupiersInReConnect boolean
---@field PassengerViewYawLimit string
---@field PassengerViewPitchLimit string
---@field WeaponPassengerViewYawLimit string
---@field WeaponPassengerViewPitchLimit string
---@field EnterVehicleFailMsgID_HasNotEnoughSpace number
---@field bIsSelfSeatLeaveVehicle boolean
---@field EnableSeatShortWeaponWhenDriverCanUsePistolOnVehicle boolean
---@field DriverPistolAnimComps ULuaMapHelper<number, UUAEChaVehAnimListComponent> @驾驶位手枪动画组件缓存（按座位索引）
---@field BoundMainWeaponEventCharacter ASTExtraPlayerCharacter @当前绑定的主端武器事件的角色（用于解绑）
---@field BoundSimulatedWeaponEventCharacter ASTExtraPlayerCharacter @当前绑定的模拟端武器事件的角色（用于解绑）
---@field PendingDriverPistolAnimSeatIndices ULuaSetHelper<number> @待初始化驾驶位手枪动画的座位索引集合（用于皮肤Handle未准备好时的延迟初始化）
local UVehicleSeatComponent = {}

---@param idx number
---@param Character ASTExtraPlayerCharacter
function UVehicleSeatComponent:SetSeatOccupiersByIdx(idx, Character) end

function UVehicleSeatComponent:OnRep_Occupiers() end

function UVehicleSeatComponent:OnRep_OccupierStates() end

function UVehicleSeatComponent:OnRep_VehicleWeapons() end

function UVehicleSeatComponent:OnRep_Attachments() end

---@param capsuleComp UCapsuleComponent
---@param FixedHalfHeight number
---@param FixedRadius number
function UVehicleSeatComponent:CalcFixedCapsuleShape(capsuleComp, FixedHalfHeight, FixedRadius) end

---@param InChar ASTExtraBaseCharacter
---@param AttachSocketName string
function UVehicleSeatComponent:ProcessPawnUseVehWeaponRotation(InChar, AttachSocketName) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param HalfHeight number
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function UVehicleSeatComponent:MulticastDrawDebugSweepCapsule(Start, End, Radius, HalfHeight, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param Center FVector
---@param HalfHeight number
---@param Radius number
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
---@param Thickness number
function UVehicleSeatComponent:MulticastDrawDebugCapsule(Center, HalfHeight, Radius, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end

---@param Start FVector
---@param End FVector
---@param Color FColor
---@param LifeTime number
function UVehicleSeatComponent:MulticastDrawDebugLine(Start, End, Color, LifeTime) end

---@param Center FVector
---@param Color FColor
---@param LifeTime number
function UVehicleSeatComponent:MulticastDrawDebugSphere(Center, Color, LifeTime) end

---取得实时右下角座位显示数量，考虑了正常情况下和连接了的情况
---@return number
function UVehicleSeatComponent:GetRuntimeSeatGUICount() end

---安全地取得修正后GUI Index对应的原本座位Index。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座 @see HookedSeatGUITypesIndexMapping
---@param CorrectedSeatGUIIndex number
---@return number
function UVehicleSeatComponent:GetSeatIndexByCorrectedSeatGUIIndex(CorrectedSeatGUIIndex) end

---取得修正后的座位图标。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座
---@param CorrectedSeatGUIIndex number
---@return EVHSeatGUIType
function UVehicleSeatComponent:GetCorrectedSeatGUITypeAt(CorrectedSeatGUIIndex) end

---获取修正后能使用座位的数量。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座。
---@return number
function UVehicleSeatComponent:GetCorrectedMaxInUseSeatCount() end

---获取修正后UI能使用座位的数量。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座。 @see MaxInUseSeatGUIIndex, MaxHookedInUseSeatGUIIndex
---@return number
function UVehicleSeatComponent:GetCorrectedMaxInUseSeatGUIIndex() end

---获取修正后UI占座位（连填充）的数量。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座。 @see MaxInUseSeatGUIIndex, MaxHookedInUseSeatGUIIndex
---@return number
function UVehicleSeatComponent:GetCorrectedMaxPaddedInUseSeatGUIIndex() end

---安全地取得修正后的座位偏移索引（比较底层，正常不会用到）。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座 @see HookedSeatGUITypesIndexMapping
---@param CorrectedSeatGUIIndex number
---@return number
function UVehicleSeatComponent:CorrectedSeatToGUIIndex(CorrectedSeatGUIIndex) end

---安全地取得原本座位在修正后的位置（比较底层，正常不会用到）。连接时可能不能上一些特定座位，需要改变布局（一整行也没了），例如马车的马不能上后座 @see HookedSeatGUITypesIndexMapping
---@param SeatGUIIndex number
---@return number
function UVehicleSeatComponent:GetCorrectedSeatGUIIndex(SeatGUIIndex) end

---判断是否有权限上车
---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function UVehicleSeatComponent:IsSeatAuthorityAvailableTeam(InCharacter) end

---判断是否有其他队伍在车上
---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function UVehicleSeatComponent:IsSeatAvailableTeam(InCharacter) end

---判断是否有可用座位
---@param SeatType ESTExtraVehicleSeatType
---@return boolean
function UVehicleSeatComponent:IsSeatAvailable(SeatType) end

---判断该座位是否可用
---@param InSeatIndex number
---@return boolean
function UVehicleSeatComponent:IsSeatIndexAvailable(InSeatIndex) end

---判断该座位的父子座位是否可用
---@param InSeatIndex number
---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function UVehicleSeatComponent:IsParentOrChildSeatIndexAvailable(InSeatIndex, InCharacter) end

---判断该座位的父子座位是否全禁用了
---@param InSeatIndex number
---@return boolean
function UVehicleSeatComponent:IsParentAndChildSeatIndexAllDisabled(InSeatIndex) end

---判断两个座位是否属于同一个座位，即两个座位互为父子关系或者都是某个座位的孩子座位
---@param InSeatIndexA number
---@param InSeatIndexB number
---@return boolean
function UVehicleSeatComponent:IsSameSeat(InSeatIndexA, InSeatIndexB) end

---判断是否有可以上车的座位 - 有的座位能够通过【换座】乘坐，但是不能直接上车
---@return boolean
function UVehicleSeatComponent:HasCanEnterVehicleSeat() end

---获取能够上车的座位数量
---@return number
function UVehicleSeatComponent:GetEnterVehicleSeatNum() end

---获取当前座位的所有孩子座位下标 孩子座位：指的是跟当前座位共享一个空间，但是有不同功能的座位
---@param InSeatIndex number
---@param OutChildSeatIndexes ULuaArrayHelper<number>
function UVehicleSeatComponent:GetChildSeatIndexes(InSeatIndex, OutChildSeatIndexes) end

---获得可用的座位索引，无可用座位返回INDEX_NONE
---@param InSeatType ESTExtraVehicleSeatType
---@return number
function UVehicleSeatComponent:GetAvailableSeatIndex(InSeatType) end

---@param SeatType ESTExtraVehicleSeatType
---@param playCharacter ASTExtraPlayerCharacter
---@return boolean
function UVehicleSeatComponent:IsSeatAvailableWithDriverShootSeat(SeatType, playCharacter) end

---判断载具上是否有可用的 DriverProxySeat（ESeatType_DriverProxySeat），存在且无人占用则返回 true
---@return boolean
function UVehicleSeatComponent:IsSeatAvailableWithDriveProxySeat() end

---@param SeatIndex number
---@param playCharacter ASTExtraPlayerCharacter
---@return boolean
function UVehicleSeatComponent:IsSeatIndexAvailableWithDriverShootSeat(SeatIndex, playCharacter) end

---@param CurrentIndex number
---@return ESTExtraVehicleSeatType
function UVehicleSeatComponent:GetSeatType(CurrentIndex) end

---@param CurrentIndex number
---@return boolean
function UVehicleSeatComponent:GetSeatForceUseDriveAnim(CurrentIndex) end

---@param SeatIndex number
---@return EVHSeatSideType
function UVehicleSeatComponent:GetSeatSideType(SeatIndex) end

---获取使用中座位的数量
---@return number
function UVehicleSeatComponent:GetInUseSeatNum() end

---@param idx number
---@return boolean
function UVehicleSeatComponent:CheckVehicleSeatInWall(idx) end

---将Character挂到座位上
---@param Character ASTExtraBaseCharacter
function UVehicleSeatComponent:OnRepCharacterAttachToSeat(Character) end

---@param SeatIdx number
---@return boolean
function UVehicleSeatComponent:GetSeatAnimFinish(SeatIdx) end

---@param SeatIdx number
---@param bFinishAnim boolean
function UVehicleSeatComponent:SetSeatAnimFinish(SeatIdx, bFinishAnim) end

---@param bIsUseVehicleAnimIns boolean
---@param SeatIdx number
function UVehicleSeatComponent:SetOccupierUseVehicleAnimIns(bIsUseVehicleAnimIns, SeatIdx) end

---@param SeatIdx number
---@return boolean
function UVehicleSeatComponent:CanUpDownPerformChangeSeat(SeatIdx) end

---获得Character的座位索引，没找到则返回INDEX_NONE
---@param Character ASTExtraBaseCharacter
---@param bGetBySocket boolean
---@return number
function UVehicleSeatComponent:GetChracterSeatIndex(Character, bGetBySocket) end

---@return FSTExtraVehicleSeat
function UVehicleSeatComponent:GetFirstCharacterVehicleSeat() end

---检测下车位置是否合理
---@param enterPos FVector
---@param leavePos FVector
---@param Character ASTExtraPlayerCharacter
---@param ForceUseLineTrace boolean
---@param IgnoreVehicle boolean
---@return boolean
function UVehicleSeatComponent:CheckIsLeavePositionValid(enterPos, leavePos, Character, ForceUseLineTrace, IgnoreVehicle) end

---判断指定座位是否配置了乘客位开车开关（bCanPassengerDrive = true）
---@param SeatIdx number
---@return boolean
function UVehicleSeatComponent:IsSeatCanPassengerDrive(SeatIdx) end

---判断车上是否有任何座位配置了乘客位开车开关（bCanPassengerDrive = true） 用于区分"指定模式"（有配置）和"兼容模式"（无配置，退回原有逻辑）
---@return boolean
function UVehicleSeatComponent:HasAnyPassengerDriveSeat() end

---获取座位数量 ConsiderParentSeatIndex: 获取座位数量时，是否需要考虑父子座位的关系，如果考虑的话，父子座位视为同一个座位 比如现在有0、1、2三个座位，其中1号是0号的子座位 那么ConsiderParentSeatIndex参数为false时，返回3；ConsiderParentSeatIndex参数为true时，返回2。
---@param ConsiderParentSeatIndex boolean
---@return number
function UVehicleSeatComponent:GetSeatNum(ConsiderParentSeatIndex) end

---获取角色对应的SeatInfo
---@param InPlayer ASTExtraBaseCharacter
---@param SeatInfo FSTExtraVehicleSeat
---@return boolean
function UVehicleSeatComponent:GetPlayerSeatInfo(InPlayer, SeatInfo) end

---获取Driver Seat Index
---@return number
function UVehicleSeatComponent:GetDriverSeatIndex() end

---@param InCharacter ASTExtraBaseCharacter
function UVehicleSeatComponent:DoTipWeaponNotAllowedOnSeat(InCharacter) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleSeatComponent:OnSeatAttachedFunction(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleSeatComponent:OnSeatDetachedFunction(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleSeatComponent:OnSeatChangedFunction(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LeaveLocation FVector
---@param Floor UPrimitiveComponent
function UVehicleSeatComponent:ClientSetLeaveVehicleLocation(Character, LeaveLocation, Floor) end

---@param Character ASTExtraPlayerCharacter
---@param VehShootWeapon AVehicleShootWeapon
function UVehicleSeatComponent:ClientSetLocalWeaponWillCtr(Character, VehShootWeapon) end

---@param Character ASTExtraPlayerCharacter
---@param OldIndex number
---@param NewIndex number
function UVehicleSeatComponent:ClientChangeSeatCameraData(Character, OldIndex, NewIndex) end

function UVehicleSeatComponent:LogOccupiers() end

---@param SeatIndex number
---@param OutResult FSTExtraVehicleSeat
---@return boolean
function UVehicleSeatComponent:GetSeatInfoByIndex(SeatIndex, OutResult) end

---设置车载武器
---@param Character ASTExtraPlayerCharacter
---@param SeatIdx number
---@param bControlVehicleWeapon boolean
---@param bRefreshVehicleWeaponButton boolean
---@param ShootWeaponHoldType ESTExtraVehicleShootWeaponHoldType
function UVehicleSeatComponent:SetPassengerVehicleWeapon(Character, SeatIdx, bControlVehicleWeapon, bRefreshVehicleWeaponButton, ShootWeaponHoldType) end

---@param Character ASTExtraPlayerCharacter
---@param SeatId number
function UVehicleSeatComponent:FireVehicleWeaponOnSeat(Character, SeatId) end

---@param Character ASTExtraPlayerCharacter
---@param SeatId number
---@param WeaponIndex number
function UVehicleSeatComponent:FireSpecificVehicleWeaponOnSeat(Character, SeatId, WeaponIndex) end

---@param Character ASTExtraPlayerCharacter
---@param SeatId number
function UVehicleSeatComponent:StopFireVehicleWeaponOnSeat(Character, SeatId) end

---@param Character ASTExtraPlayerCharacter
---@param SeatId number
---@param WeaponIndex number
function UVehicleSeatComponent:StopSpecificVehicleWeaponOnSeat(Character, SeatId, WeaponIndex) end

---@param SeatIndex number
---@return number
function UVehicleSeatComponent:GetPrimaryVehicleWeaponIndexOnSeat(SeatIndex) end

---@param SeatIndex number
---@return number
function UVehicleSeatComponent:GetSecondaryVehicleWeaponIndexOnSeat(SeatIndex) end

function UVehicleSeatComponent:InitVehicleWeapons() end

function UVehicleSeatComponent:InitVehicleWeaponAttachMent() end

function UVehicleSeatComponent:InitVehicleWeaponsUGCRTE() end

function UVehicleSeatComponent:InitVehicleWeaponAttachMentUGCRTE() end

---@param SeatIndex number
---@param WeaponHoldType ESTExtraVehicleShootWeaponHoldType
function UVehicleSeatComponent:SwitchCurrentWeaponByHoldType(SeatIndex, WeaponHoldType) end

---@param SeatID number
---@param weaponIndex number
---@return boolean
function UVehicleSeatComponent:RemoveVehicleWeapon(SeatID, weaponIndex) end

---@param SeatID number
---@param weaponIndex number
---@param weaponIndexSupport number
---@return boolean
function UVehicleSeatComponent:AddVehicleWeaponFromSupportKit(SeatID, weaponIndex, weaponIndexSupport) end

---@param PlayerCharacter ASTExtraBaseCharacter
function UVehicleSeatComponent:RefreshOccupyCharacterAnimIns(PlayerCharacter) end

---@param SeatIndex number
---@param OccupierState FSTExtraVehicleOccupierState
---@param bForceReset boolean
function UVehicleSeatComponent:ResetOccupyCharacterAnimIns(SeatIndex, OccupierState, bForceReset) end

---@param ExitReason string
function UVehicleSeatComponent:ForceAllPassagerExitVehicle(ExitReason) end

---@param SeatIndex number
---@param TagName string
function UVehicleSeatComponent:SetAnimCompTagName(SeatIndex, TagName) end

---@param SeatIndex number
---@return string
function UVehicleSeatComponent:GetAnimCompTagName(SeatIndex) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UVehicleSeatComponent:OnSeatOccupiersWeaponChange(IsEquip, SelfRef, Weapon) end

function UVehicleSeatComponent:InitializeComponentUGC() end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FTransform
function UVehicleSeatComponent:GetSeatEnterSocketTransform(SeatIndex, SocketMesh, TransformSpace) end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FVector
function UVehicleSeatComponent:GetSeatEnterSocketLocation(SeatIndex, SocketMesh, TransformSpace) end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FRotator
function UVehicleSeatComponent:GetSeatEnterSocketRotation(SeatIndex, SocketMesh, TransformSpace) end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FTransform
function UVehicleSeatComponent:GetSeatExitSocketTransform(SeatIndex, SocketMesh, TransformSpace) end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FVector
function UVehicleSeatComponent:GetSeatExitSocketLocation(SeatIndex, SocketMesh, TransformSpace) end

---@param SeatIndex number
---@param SocketMesh USkeletalMeshComponent
---@param TransformSpace ERelativeTransformSpace
---@return FRotator
function UVehicleSeatComponent:GetSeatExitSocketRotation(SeatIndex, SocketMesh, TransformSpace) end

---主端武器变化处理
---@param bIsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UVehicleSeatComponent:OnDriverSeatWeaponChanged_Main(bIsEquip, SelfRef, Weapon) end

---模拟端武器变化处理
function UVehicleSeatComponent:OnDriverSeatWeaponChanged_Simulated() end

---载具皮肤装备事件响应
---@param ItemHandle UBattleItemHandleBase
function UVehicleSeatComponent:OnVehicleAvatarHandleEquipped(ItemHandle) end
