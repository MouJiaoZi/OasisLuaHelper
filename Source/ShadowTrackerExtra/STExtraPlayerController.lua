---@meta

---@class EPlayerPerspectiveType
---@field TPS number
---@field SideScroller number
EPlayerPerspectiveType = {}


---@class EPressType
---@field PressNone number
---@field PressFireBtn number
---@field PressMax number
EPressType = {}


---@class EnmSprintOptType
---@field NoneOpt number
---@field TimeToSprint number
---@field DistToSprint number
EnmSprintOptType = {}


---@class ETouchFireType
---@field NotFire number
---@field ButtonFire number
---@field TouchForceFire number
---@field DoubleClickFire number
ETouchFireType = {}


---@class EShowPCSkillPromptType
---@field HUDSkill number
---@field BackpackPrompt number
---@field VehicleRepairPrompt number
EShowPCSkillPromptType = {}


---@class ELoadMode
---@field LOW_LOAD number
---@field MEDIUM_LOAD number
---@field HIGH_LOAD number
ELoadMode = {}


---@class EApplyStatus
---@field REVERT number
---@field NO_APPLY number
---@field APPLY number
EApplyStatus = {}


---@class InputType
---@field Add number
---@field Override number
---@field SetWhenEmpty number
InputType = {}


---@class InputReason
---@field IR_TouchInput number
---@field IR_AimAssist number
---@field IR_WeaponRecoil number
---@field IR_Max number
InputReason = {}


---@class EVirtualJoystickState
---@field EVJS_None number
---@field EVJS_Left number
---@field EVJS_Right number
EVirtualJoystickState = {}


---@class EVehicleControlType
---@field EVCType_Buttons number
---@field EVCType_SingleJoystick number
---@field EVCType_FullJoystick number
EVehicleControlType = {}


---@class EAutoAimType
---@field FullTime number @全吸附
---@field OnlyFire number @仅开火
---@field OnlyTouch number @仅按下
---@field OnlyNotTouch number @非按下
---@field TouchOrFire number @按下或开火
---@field None number @不吸附
EAutoAimType = {}


---@class ETouchFingerFlag
---@field None number
---@field FirstTouchBegin number
---@field FirstTouchEnd number
---@field SecondTouchBegin number
---@field SecondTouchEnd number
ETouchFingerFlag = {}


---@class FValidTouchMoveFrameConfig
---@field DeviceName string @The logical name for this type of Primary Asset
---@field Enable number @The logical name for this type of Primary Asset
---@field Frame number @The logical name for this type of Primary Asset
---@field IsInit boolean
FValidTouchMoveFrameConfig = {}


---@class FStoreProductInfo
---@field ProductID number
---@field ItemID number
---@field Weight number
---@field ProductName string
---@field LargeIcon string
---@field SmallIcon string
---@field Desc string
---@field count number
---@field Price number
---@field bLimit boolean
---@field LimitCount number
---@field MaxCount number
---@field TabType number
---@field InnerType number
---@field bSlideBar number
FStoreProductInfo = {}


---@class FWidgetLayoutData
FWidgetLayoutData = {}


---【【赛事OBS】【CG013】OB技术优化——实时数据传输支持传当前OB角色】 http://tapd.oa.com/CJGame/prong/stories/view/1020386762862376435, feishen, 20210126
---@class FOBViewRecordData
---@field Timestamp string
---@field PlayerName string
---@field UID string
---@field OBViewType string
FOBViewRecordData = {}


---僵尸模式中控制全局僵尸总量, 分摊到每个玩家, feishen, 20190518
---@class FSpawnItemStatus
---@field Name string
---@field Status number
---@field ActionUID number
FSpawnItemStatus = {}


---@class FParachuteAnimAssetData
---@field AnimAssetCache ULuaMapHelper<ECharacterParachuteAnimType, UAnimationAsset>
---@field IsAnimCached boolean
FParachuteAnimAssetData = {}


---待处理的状态UI请求，用于在 InputActionActor 创建前缓存 ShowStateUI 请求
---@class FPendingStateUIRequest
---@field UIName string @UI名称
---@field bHiddenInNoneClassicStyleScopeInteraction boolean @控制在非经典风格范围交互模式下是否隐藏
FPendingStateUIRequest = {}


---@class FInformPlayerTypeInfo
---@field InstigatorName string
---@field IsAI boolean
---@field InstigatorUID string
---@field DamageType number
---@field IsTeammate boolean
---@field IsMurder boolean
---@field IsInCurrentWatchTeam boolean
---@field IsHitDownPlayer boolean
---@field IsUseCustomEx boolean
---@field ExString string
---@field IsEscapeBotEnemy boolean
FInformPlayerTypeInfo = {}


---@class FActonCount
---@field ActionUID number
---@field Count number
---@field CD number
---@field LastSpawnItemTime number
FActonCount = {}


---@class FSpawnItemList
---@field ActionCounts ULuaArrayHelper<FActonCount>
---@field Items ULuaArrayHelper<FSpawnItemStatus>
---@field Count number
---@field GMForbidSpawn boolean
---@field bGMCount boolean
---@field GMCount number
FSpawnItemList = {}


---@class FTeamMateStateInfo
---@field Location FVector
---@field Rotation FRotator
---@field Health number
---@field HealthMax number
---@field Temperature number
---@field SignalHp number
FTeamMateStateInfo = {}


---@class FHitEffectConfig
---@field HitEffectType number
---@field HitEffectColor number
FHitEffectConfig = {}


---@class FGameModeConfig
---@field Gyroscope number
---@field OpenMirrorMode number
---@field LeftRightShoot boolean
---@field OneKeyScoreFire boolean
---@field SidewaysMode number
---@field AimAssist boolean
---@field MagnetAssist boolean
---@field LRShootSniperSwitch boolean
---@field HideProneBtn boolean
FGameModeConfig = {}


---@class FImpactMapValueData
---@field ImpactEffectList ULuaArrayHelper<ASTEShootWeaponBulletImpactEffect>
FImpactMapValueData = {}


---@class FSensibilityMode
---@field NoAim number
---@field Sight1X number
---@field Sight2X number
---@field Sight3X number
---@field Sight4X number
---@field Sight6X number
---@field Sight8X number
---@field FPPNoAim number
FSensibilityMode = {}


---@class FSightMaterialConfig
---@field color number
---@field type number
FSightMaterialConfig = {}


---@class FCustomSightMaterialConfig
---@field color number
---@field type number
---@field bEnableCustomColor boolean
---@field CustomColor FLinearColor
FCustomSightMaterialConfig = {}


---@class FSensibilityConfig
---@field NormalMode FSensibilityMode
---@field FireMode FSensibilityMode
---@field MotionMode FSensibilityMode
---@field MotionFireMode FSensibilityMode
---@field XaxisInversionSwitch number
---@field VehicleEye number
---@field ParachuteEye number
---@field CamSenBuildTp number
---@field CamSenBuildFp number
---@field FPPEye number
---@field SideMirrorModeC number
---@field MaterialConfigs ULuaMapHelper<number, FSightMaterialConfig>
---@field CustomMaterialConfigs ULuaMapHelper<number, FCustomSightMaterialConfig>
---@field GlobalAccelerate number
---@field ClassicAcc_Rate number
---@field DistanceAcc_Rate number
FSensibilityConfig = {}


---@class FMDSensibilityConfig
---@field SensibilityMaxFOVH number
---@field SensibilityMaxFOVV number
---@field SensibilityBaseFOVH number
---@field SensibilityBaseFOVV number
---@field SensibilityUseBaseFOV number
---@field SensibilityHorizontal number
---@field SensibilityVertical number
---@field SensibilityMD number
---@field SensibilityNormalFPP number
---@field SensibilityNormalTPP number
---@field SensibilityNormalGunADS number
---@field SensibilityUseSub boolean
---@field SensibilitySubNormalFPP number
---@field SensibilitySubNormalTPP number
---@field SensibilitySubSight1X number
---@field SensibilitySubSight2X number
---@field SensibilitySubSight3X number
---@field SensibilitySubSight4X number
---@field SensibilitySubSight6X number
---@field SensibilitySubSight8X number
FMDSensibilityConfig = {}


---@class FObservedData
---@field PlayerName string
---@field PicUrl string
---@field ShowPicUrl boolean
---@field TeamID number
---@field PlayerUID string
---@field PosList ULuaArrayHelper<FVector>
---@field CanJumpLocInMapSelf number
---@field ForceJumpLocInMapSelf number
---@field CurViewChar ASTExtraBaseCharacter
---@field CurPlayerState ASTExtraPlayerState
FObservedData = {}


---@class FPreProcessedRelevancyItem
---@field PriorityLevel number
---@field bAI boolean
FPreProcessedRelevancyItem = {}


---@class FPreProcessedRelevancySet
FPreProcessedRelevancySet = {}


---@class FNavLinkInfo
---@field ActorTransform FTransform
---@field Left FVector
---@field Right FVector
---@field LeftHighPoint FVector
---@field RightHighPoint FVector
---@field LinkDis number
FNavLinkInfo = {}


---心跳数据，上报TSS安全数据. feishen, 20200327
---@class FHeartbeatData
---@field TssSdkAntiData ULuaArrayHelper<number>
---@field TssSdkAntiDataLen number
---@field RetCode number @RetCode=0 表示：正常TSS数据； RetCode=1 表示：业务关闭TSS数据； RetCode=2 表示：长度超过132； RetCode=3 表示：CRC重复； RetCode=4 表示：开枪关闭TSS数据 RetCode=5 表示：心跳关闭TSS数据
---@field NetworkStatus number
FHeartbeatData = {}


---@class FRCRBodyBoundingSize
---@field StandLocatingExtent FVector
---@field CrouchLocatingExtent FVector
---@field ProneLocatingExtent FVector
---@field ProneLocatingMove FVector
---@field DyingLocatingExtent FVector
---@field StandExtent FVector
---@field PitchCoefficient number
---@field CrouchPitchCoefficient number
---@field CrouchExtentAddition FVector
---@field ProneExtentAddition FVector
---@field DyingExtentAddition FVector
---@field MeleeWeaponExtentAddition FVector
---@field MeleeWeaponAttackingExtentWidth number
---@field MeleeWeaponAttackingExtentUp number
---@field GunFrontLengthThreshold number
---@field GunPlusCoefficient number
---@field GunMultipliedCoefficient number
---@field ProneGunPlusCoefficient number
---@field PitchGunLengthThreshold number
---@field BackRightWeaponLengthThreshold number
---@field BackLeftWeaponLengthThreshold number
---@field BackWeaponLeftLengthAddition number
---@field BackWeaponLeftLengthAdditionNoWeapon number
---@field BackWeaponRightLengthMultipliedCoefficient number
---@field BackWeaponRightLengthPlusCoefficient number
---@field StandMoveX number
---@field CrouchMoveZ number
---@field ProneMoveX number
---@field ProneMoveZ number
---@field DyingMoveX number
---@field DyingMoveZ number
---@field DyingGunLeftLengthThreshold number
---@field DyingGunLeftLengthMultipliedCoefficient number
FRCRBodyBoundingSize = {}


---@class FTouchMoveFingerData
---@field FingerIndex ETouchIndex
---@field Priority number
---@field Loc FVector
FTouchMoveFingerData = {}


---@class FTeammatesAttackedInfo
FTeammatesAttackedInfo = {}


---@class FHitDamageEffectSwitch
---@field bHitNumber boolean
---@field bHitUI boolean
---@field bDisplayDamageNumFollowPawn boolean
---@field Tags ULuaArrayHelper<string>
FHitDamageEffectSwitch = {}


---@class FTouchFingerData
---@field Location FVector
---@field TouchBeginTime number
---@field TouchFlag ETouchFingerFlag
FTouchFingerData = {}


---@class FDamageReportData
---@field DamageCauserMap ULuaMapHelper<AActor, number>
FDamageReportData = {}


---@class FDamageDataOneFrame
---@field DamageCount number
---@field TotalDamage number
---@field DamageTags ULuaArrayHelper<string>
FDamageDataOneFrame = {}


---@class FOnDSCommandArrived : ULuaSingleDelegate
FOnDSCommandArrived = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSCommandArrived:Bind(Callback, Obj) end

---执行委托
function FOnDSCommandArrived:Execute() end


---@class FPlayerControllerDelegate : ULuaSingleDelegate
FPlayerControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerControllerDelegate:Execute() end


---@class FOnDSResponseToGetReconnectInfo : ULuaSingleDelegate
FOnDSResponseToGetReconnectInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSResponseToGetReconnectInfo:Bind(Callback, Obj) end

---执行委托
function FOnDSResponseToGetReconnectInfo:Execute() end


---@class FPlayerControllerDelegateOneParam : ULuaMulticastDelegate
FPlayerControllerDelegateOneParam = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BoolInput: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerControllerDelegateOneParam:Add(Callback, Obj) end

---触发 Lua 广播
---@param BoolInput boolean
function FPlayerControllerDelegateOneParam:Broadcast(BoolInput) end


---@class FNewbieGuideMovingCameraDelegate : ULuaSingleDelegate
FNewbieGuideMovingCameraDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideMovingCameraDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuideMovingCameraDelegate:Execute() end


---@class FNewbiePlayerHitFireBtnDelegate : ULuaSingleDelegate
FNewbiePlayerHitFireBtnDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbiePlayerHitFireBtnDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FNewbiePlayerHitFireBtnDelegate:Execute(Param1) end


---@class FNewbieGuidePickUpCollapsedDelegate : ULuaMulticastDelegate
FNewbieGuidePickUpCollapsedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePickUpCollapsedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FNewbieGuidePickUpCollapsedDelegate:Broadcast(Param1) end


---@class FNewbieGuidePickupExpandDelegate : ULuaSingleDelegate
FNewbieGuidePickupExpandDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePickupExpandDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuidePickupExpandDelegate:Execute() end


---@class FNewbieGuideFirstInviteChatDelegate : ULuaSingleDelegate
FNewbieGuideFirstInviteChatDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideFirstInviteChatDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuideFirstInviteChatDelegate:Execute() end


---@class FNewbieGuidePlayerCanGetInVehicleDelegate : ULuaMulticastDelegate
FNewbieGuidePlayerCanGetInVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePlayerCanGetInVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FNewbieGuidePlayerCanGetInVehicleDelegate:Broadcast(Param1) end


---@class FNewbieGuideDeadBoxCollapsedDelegate : ULuaMulticastDelegate
FNewbieGuideDeadBoxCollapsedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideDeadBoxCollapsedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FNewbieGuideDeadBoxCollapsedDelegate:Broadcast(Param1) end


---@class FNewbieGuideDeadBoxExpandDelegate : ULuaSingleDelegate
FNewbieGuideDeadBoxExpandDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideDeadBoxExpandDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuideDeadBoxExpandDelegate:Execute() end


---@class FNewbieGuideControllerStateChangeDelegate : ULuaMulticastDelegate
FNewbieGuideControllerStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: EStateType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideControllerStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 EStateType
function FNewbieGuideControllerStateChangeDelegate:Broadcast(Param1) end


---@class FNewbieGuidePlayerClickDriveBtnDelegate : ULuaSingleDelegate
FNewbieGuidePlayerClickDriveBtnDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePlayerClickDriveBtnDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuidePlayerClickDriveBtnDelegate:Execute() end


---@class FNewbieGuidePlayerUseRecoverItemDelegate : ULuaSingleDelegate
FNewbieGuidePlayerUseRecoverItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePlayerUseRecoverItemDelegate:Bind(Callback, Obj) end

---执行委托
function FNewbieGuidePlayerUseRecoverItemDelegate:Execute() end


---@class FNewbieGuidePlayerBuffExistDelegate : ULuaMulticastDelegate
FNewbieGuidePlayerBuffExistDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuidePlayerBuffExistDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FNewbieGuidePlayerBuffExistDelegate:Broadcast(Param1) end


---@class FNewbieGuideOccupyModeDelegate : ULuaMulticastDelegate
FNewbieGuideOccupyModeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideOccupyModeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FNewbieGuideOccupyModeDelegate:Broadcast(Param1) end


---@class FNewbieGuideEntiremMapExUIDelegate : ULuaMulticastDelegate
FNewbieGuideEntiremMapExUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideEntiremMapExUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FNewbieGuideEntiremMapExUIDelegate:Broadcast(Param1) end


---@class FNewbieGuideHandlePickupItemDelegate : ULuaMulticastDelegate
FNewbieGuideHandlePickupItemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNewbieGuideHandlePickupItemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FNewbieGuideHandlePickupItemDelegate:Broadcast(Param1) end


---@class FColdModeWeatherComingDelegate : ULuaSingleDelegate
FColdModeWeatherComingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FColdModeWeatherComingDelegate:Bind(Callback, Obj) end

---执行委托
function FColdModeWeatherComingDelegate:Execute() end


---@class FOnPlayerContollerTouchBegin : ULuaMulticastDelegate
FOnPlayerContollerTouchBegin = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchPos: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerContollerTouchBegin:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchPos FVector2D
function FOnPlayerContollerTouchBegin:Broadcast(TouchPos) end


---@class FOnPlayerContollerTouchEnd : ULuaSingleDelegate
FOnPlayerContollerTouchEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerContollerTouchEnd:Bind(Callback, Obj) end

---执行委托
function FOnPlayerContollerTouchEnd:Execute() end


---@class FOnPlayerContollerTouchEndForUGCM : ULuaMulticastDelegate
FOnPlayerContollerTouchEndForUGCM = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FingerIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerContollerTouchEndForUGCM:Add(Callback, Obj) end

---触发 Lua 广播
---@param FingerIndex number
function FOnPlayerContollerTouchEndForUGCM:Broadcast(FingerIndex) end


---@class FPlayerTouchEventDelegate : ULuaSingleDelegate
FPlayerTouchEventDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ETouchIndex, Param2: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerTouchEventDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ETouchIndex
---@param Param2 FVector
function FPlayerTouchEventDelegate:Execute(Param1, Param2) end


---@class FTeamAssembleDisplayChangedDelegate : ULuaMulticastDelegate
FTeamAssembleDisplayChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsEnableTeamDisplay: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTeamAssembleDisplayChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsEnableTeamDisplay boolean
function FTeamAssembleDisplayChangedDelegate:Broadcast(bIsEnableTeamDisplay) end


---@class FSwitchTeamAssembleViewStateDelegate : ULuaMulticastDelegate
FSwitchTeamAssembleViewStateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsEnable: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSwitchTeamAssembleViewStateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsEnable boolean
function FSwitchTeamAssembleViewStateDelegate:Broadcast(bIsEnable) end


---@class FMainUIVisibilityChangedDelegate : ULuaMulticastDelegate
FMainUIVisibilityChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsVisible: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMainUIVisibilityChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsVisible boolean
function FMainUIVisibilityChangedDelegate:Broadcast(bIsVisible) end


---@class FFollowEmoteDelegate : ULuaMulticastDelegate
FFollowEmoteDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsVisible: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFollowEmoteDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsVisible boolean
function FFollowEmoteDelegate:Broadcast(bIsVisible) end


---@class FInvitePairEmoteDelegate : ULuaMulticastDelegate
FInvitePairEmoteDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsVisible: boolean, EmoteID: number, InvitePlayer: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInvitePairEmoteDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsVisible boolean
---@param EmoteID number
---@param InvitePlayer number
function FInvitePairEmoteDelegate:Broadcast(bIsVisible, EmoteID, InvitePlayer) end


---@class FPreViewTargetChangeDelegate : ULuaMulticastDelegate
FPreViewTargetChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewTarget: AActor, PrevTarget: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPreViewTargetChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewTarget AActor
---@param PrevTarget AActor
function FPreViewTargetChangeDelegate:Broadcast(NewTarget, PrevTarget) end


---@class FViewTargetChangeDelegate : ULuaMulticastDelegate
FViewTargetChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewTarget: AActor, PrevTarget: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FViewTargetChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewTarget AActor
---@param PrevTarget AActor
function FViewTargetChangeDelegate:Broadcast(NewTarget, PrevTarget) end


---@class FOnFakePossessActorDelegate : ULuaMulticastDelegate
FOnFakePossessActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFakePossessActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
function FOnFakePossessActorDelegate:Broadcast(Actor) end


---@class FOnClickActorComOnClickDelegate : ULuaMulticastDelegate
FOnClickActorComOnClickDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ClickCompActor: AActor, Index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClickActorComOnClickDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ClickCompActor AActor
---@param Index number
function FOnClickActorComOnClickDelegate:Broadcast(ClickCompActor, Index) end


---@class FFailedOnClientDelegate : ULuaSingleDelegate
FFailedOnClientDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFailedOnClientDelegate:Bind(Callback, Obj) end

---执行委托
function FFailedOnClientDelegate:Execute() end


---@class FRoomModeReceive : ULuaSingleDelegate
FRoomModeReceive = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRoomModeReceive:Bind(Callback, Obj) end

---执行委托
function FRoomModeReceive:Execute() end


---@class FOnDisPlaySubtitleDelegate : ULuaMulticastDelegate
FOnDisPlaySubtitleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bShow: boolean, Title: string, Tags: ULuaArrayHelper<FMovieSceneSubtitleTagsKeyValue>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDisPlaySubtitleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bShow boolean
---@param Title string
---@param Tags ULuaArrayHelper<FMovieSceneSubtitleTagsKeyValue>
function FOnDisPlaySubtitleDelegate:Broadcast(bShow, Title, Tags) end


---@class FOnSetDynamicSubtitleDelegate : ULuaMulticastDelegate
FOnSetDynamicSubtitleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Key: string, Value: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetDynamicSubtitleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Key string
---@param Value string
function FOnSetDynamicSubtitleDelegate:Broadcast(Key, Value) end


---@class FOnCauseFatalDamageClient : ULuaMulticastDelegate
FOnCauseFatalDamageClient = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageRecordData: FClientFatalDamageRecordData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCauseFatalDamageClient:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageRecordData FClientFatalDamageRecordData
function FOnCauseFatalDamageClient:Broadcast(DamageRecordData) end


---@class FOnReplaceSuitSkinDelegate : ULuaSingleDelegate
FOnReplaceSuitSkinDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplaceSuitSkinDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplaceSuitSkinDelegate:Execute() end


---@class FOnPlayerExitFreeCameraDelegate : ULuaSingleDelegate
FOnPlayerExitFreeCameraDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitFreeCameraDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerExitFreeCameraDelegate:Execute() end


---@class FOnPossessPawnDelegate : ULuaSingleDelegate
FOnPossessPawnDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPossessPawnDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPossessPawnDelegate:Execute() end


---@class FOnHomeTeammateChangeDelegate : ULuaSingleDelegate
FOnHomeTeammateChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHomeTeammateChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnHomeTeammateChangeDelegate:Execute() end


---@class FMouseCursorShowStateChangedDelegate : ULuaMulticastDelegate
FMouseCursorShowStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsShow: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMouseCursorShowStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsShow boolean
function FMouseCursorShowStateChangedDelegate:Broadcast(IsShow) end


---@class FGetRevivalCountDownTimeDelegate : ULuaSingleDelegate
FGetRevivalCountDownTimeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetRevivalCountDownTimeDelegate:Bind(Callback, Obj) end

---执行委托
function FGetRevivalCountDownTimeDelegate:Execute() end


---@class FOnPlayerRevivedDelegate : ULuaSingleDelegate
FOnPlayerRevivedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ASTExtraPlayerController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerRevivedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ASTExtraPlayerController
function FOnPlayerRevivedDelegate:Execute(Param1) end


---@class FEnterRevivalStateDelegate : ULuaSingleDelegate
FEnterRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
function FEnterRevivalStateDelegate:Execute() end


---@class FLeaveRevivalStateDelegate : ULuaSingleDelegate
FLeaveRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLeaveRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FLeaveRevivalStateDelegate:Execute(Param1) end


---@class FCaptureIDCardDelegate : ULuaSingleDelegate
FCaptureIDCardDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCaptureIDCardDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FCaptureIDCardDelegate:Execute(Param1) end


---@class FOnPlayerEnterRevivalStateDelegate : ULuaSingleDelegate
FOnPlayerEnterRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEnterRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerEnterRevivalStateDelegate:Execute() end


---@class FOnPlayerLeaveRevivalStateDelegate : ULuaSingleDelegate
FOnPlayerLeaveRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerLeaveRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerLeaveRevivalStateDelegate:Execute() end


---@class FSetCaptureIDCardStatusDelegate : ULuaSingleDelegate
FSetCaptureIDCardStatusDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSetCaptureIDCardStatusDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FSetCaptureIDCardStatusDelegate:Execute(Param1) end


---@class FOnPlayerExitGameDelegate : ULuaSingleDelegate
FOnPlayerExitGameDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitGameDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerExitGameDelegate:Execute() end


---@class FOnPlayerEscapeWhenGameEndDelegate : ULuaSingleDelegate
FOnPlayerEscapeWhenGameEndDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEscapeWhenGameEndDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FOnPlayerEscapeWhenGameEndDelegate:Execute(Param1) end


---@class FOnPlayerRevivedByCardLeavePlaneDelegate : ULuaSingleDelegate
FOnPlayerRevivedByCardLeavePlaneDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ASTExtraPlayerController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerRevivedByCardLeavePlaneDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ASTExtraPlayerController
function FOnPlayerRevivedByCardLeavePlaneDelegate:Execute(Param1) end


---@class FOnKnockDownCharacterDelegate : ULuaMulticastDelegate
FOnKnockDownCharacterDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfController: ASTExtraPlayerController, KnockDownCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnKnockDownCharacterDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfController ASTExtraPlayerController
---@param KnockDownCharacter ASTExtraBaseCharacter
function FOnKnockDownCharacterDelegate:Broadcast(SelfController, KnockDownCharacter) end


---@class FOnPlayerExitGameBroadcast : ULuaSingleDelegate
FOnPlayerExitGameBroadcast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitGameBroadcast:Bind(Callback, Obj) end

---执行委托
function FOnPlayerExitGameBroadcast:Execute() end


---@class FEnterRevivalStateBroadcast : ULuaSingleDelegate
FEnterRevivalStateBroadcast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterRevivalStateBroadcast:Bind(Callback, Obj) end

---执行委托
function FEnterRevivalStateBroadcast:Execute() end


---@class FLeaveRevivalStateBroadcast : ULuaMulticastDelegate
FLeaveRevivalStateBroadcast = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SaviorKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLeaveRevivalStateBroadcast:Add(Callback, Obj) end

---触发 Lua 广播
---@param SaviorKey number
function FLeaveRevivalStateBroadcast:Broadcast(SaviorKey) end


---@class FOnPlayerEscapeWhenGameEndBroadcast : ULuaMulticastDelegate
FOnPlayerEscapeWhenGameEndBroadcast = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsPlayerAlive: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEscapeWhenGameEndBroadcast:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsPlayerAlive boolean
function FOnPlayerEscapeWhenGameEndBroadcast:Broadcast(bIsPlayerAlive) end


---@class FOnCharacterDeadDelegate : ULuaMulticastDelegate
FOnCharacterDeadDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterDeadDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FOnCharacterDeadDelegate:Broadcast(Character) end


---@class FObserveCharacterFailedDelegate : ULuaSingleDelegate
FObserveCharacterFailedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FObserveCharacterFailedDelegate:Bind(Callback, Obj) end

---执行委托
function FObserveCharacterFailedDelegate:Execute() end


---@class FOverlookStateDelegate : ULuaMulticastDelegate
FOverlookStateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: EOverlookState, EndTimestape: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverlookStateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param State EOverlookState
---@param EndTimestape number
function FOverlookStateDelegate:Broadcast(State, EndTimestape) end


---@class FOverlookZoomDelegate : ULuaMulticastDelegate
FOverlookZoomDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Value: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverlookZoomDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Value number
function FOverlookZoomDelegate:Broadcast(Value) end


---@class FOverlookSlideMoveDelegate : ULuaMulticastDelegate
FOverlookSlideMoveDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, vDelta: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverlookSlideMoveDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param vDelta FVector2D
function FOverlookSlideMoveDelegate:Broadcast(vDelta) end


---@class FOverlookSlideErrorDelegate : ULuaMulticastDelegate
FOverlookSlideErrorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ErrorType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverlookSlideErrorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ErrorType number
function FOverlookSlideErrorDelegate:Broadcast(ErrorType) end


---@class FOnUpdateDynamicLevels : ULuaMulticastDelegate
FOnUpdateDynamicLevels = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DynamicLevels: ULuaArrayHelper<string>, BlackLevels: ULuaArrayHelper<string>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUpdateDynamicLevels:Add(Callback, Obj) end

---触发 Lua 广播
---@param DynamicLevels ULuaArrayHelper<string>
---@param BlackLevels ULuaArrayHelper<string>
function FOnUpdateDynamicLevels:Broadcast(DynamicLevels, BlackLevels) end


---@class FEnableAutomaticOBDelegate : ULuaSingleDelegate
FEnableAutomaticOBDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnableAutomaticOBDelegate:Bind(Callback, Obj) end

---执行委托
function FEnableAutomaticOBDelegate:Execute() end


---@class FControllerServerUseItemDelegate : ULuaSingleDelegate
FControllerServerUseItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DefineID: FItemDefineID, player: ASTExtraCharacter, Reason: EBattleItemUseReason) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FControllerServerUseItemDelegate:Bind(Callback, Obj) end

---执行委托
---@param DefineID FItemDefineID
---@param player ASTExtraCharacter
---@param Reason EBattleItemUseReason
function FControllerServerUseItemDelegate:Execute(DefineID, player, Reason) end


---@class FOnItemUse : ULuaMulticastDelegate
FOnItemUse = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpesificID: number, Count: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemUse:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpesificID number
---@param Count number
function FOnItemUse:Broadcast(SpesificID, Count) end


---@class FOnRegionIDListChangedDelegate : ULuaSingleDelegate
FOnRegionIDListChangedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRegionIDListChangedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnRegionIDListChangedDelegate:Execute() end


---@class FOnAlwaysLoadLevelsLoadedFinish : ULuaSingleDelegate
FOnAlwaysLoadLevelsLoadedFinish = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAlwaysLoadLevelsLoadedFinish:Bind(Callback, Obj) end

---执行委托
function FOnAlwaysLoadLevelsLoadedFinish:Execute() end


---@class FOnAlwaysLoadLevelLoadedChange : ULuaMulticastDelegate
FOnAlwaysLoadLevelLoadedChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LoadedNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAlwaysLoadLevelLoadedChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param LoadedNum number
function FOnAlwaysLoadLevelLoadedChange:Broadcast(LoadedNum) end


---@class FOnControllerPostLoginDelegate : ULuaSingleDelegate
FOnControllerPostLoginDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControllerPostLoginDelegate:Bind(Callback, Obj) end

---执行委托
function FOnControllerPostLoginDelegate:Execute() end


---@class FCheckOverConstructingDelegate : ULuaMulticastDelegate
FCheckOverConstructingDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, BuildActor: AActor, InBuildingID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCheckOverConstructingDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param BuildActor AActor
---@param InBuildingID number
function FCheckOverConstructingDelegate:Broadcast(PC, BuildActor, InBuildingID) end


---@class FOnPlayerClientDeviceInfoReceived : ULuaMulticastDelegate
FOnPlayerClientDeviceInfoReceived = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerClientDeviceInfoReceived:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FOnPlayerClientDeviceInfoReceived:Broadcast(PC) end


---@class FBountyHunterVisibleChangedDelegate : ULuaMulticastDelegate
FBountyHunterVisibleChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsVisible: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBountyHunterVisibleChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsVisible boolean
function FBountyHunterVisibleChangedDelegate:Broadcast(bIsVisible) end


---@class FOnNewbieGuideSpawnDelegate : ULuaMulticastDelegate
FOnNewbieGuideSpawnDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Comp: UNewbieGuideComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewbieGuideSpawnDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Comp UNewbieGuideComponent
function FOnNewbieGuideSpawnDelegate:Broadcast(Comp) end


---@class FOnNewbieGuideFinishedInitDelegate : ULuaMulticastDelegate
FOnNewbieGuideFinishedInitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Comp: UNewbieGuideComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewbieGuideFinishedInitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Comp UNewbieGuideComponent
function FOnNewbieGuideFinishedInitDelegate:Broadcast(Comp) end


---@class FOnPlayerTeamIDChanged : ULuaMulticastDelegate
FOnPlayerTeamIDChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTeamIDChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FOnPlayerTeamIDChanged:Broadcast(PC) end


---@class FOnControlRotationChange : ULuaMulticastDelegate
FOnControlRotationChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldRotator: FRotator, NewRotator: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControlRotationChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldRotator FRotator
---@param NewRotator FRotator
function FOnControlRotationChange:Broadcast(OldRotator, NewRotator) end


---@class FOnControllerStateChangeDelegate : ULuaMulticastDelegate
FOnControllerStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurStateType: EStateType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControllerStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurStateType EStateType
function FOnControllerStateChangeDelegate:Broadcast(CurStateType) end


---@class FOnOnAITutelageInitFinishedDelegate : ULuaSingleDelegate
FOnOnAITutelageInitFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOnAITutelageInitFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnOnAITutelageInitFinishedDelegate:Execute() end


---@class FPostUpdateCameraManager : ULuaMulticastDelegate
FPostUpdateCameraManager = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaSeconds: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostUpdateCameraManager:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaSeconds number
function FPostUpdateCameraManager:Broadcast(DeltaSeconds) end


---@class FOnClientUnpossessPawnDelegate : ULuaMulticastDelegate
FOnClientUnpossessPawnDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, Char: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientUnpossessPawnDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param Char ASTExtraCharacter
function FOnClientUnpossessPawnDelegate:Broadcast(PC, Char) end


---@class FOnPlayerGlobalTouchDelegate : ULuaMulticastDelegate
FOnPlayerGlobalTouchDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TouchPos: FVector2D, TouchpadIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerGlobalTouchDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TouchPos FVector2D
---@param TouchpadIndex number
function FOnPlayerGlobalTouchDelegate:Broadcast(TouchPos, TouchpadIndex) end


---@class FOnCampToolCompCreateFinishedDelegate : ULuaSingleDelegate
FOnCampToolCompCreateFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCampToolCompCreateFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnCampToolCompCreateFinishedDelegate:Execute() end


---@class FOnLoadUserWidgetStyleDelegate : ULuaMulticastDelegate
FOnLoadUserWidgetStyleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Style: UUserWidgetStyle, IsLoad: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLoadUserWidgetStyleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Style UUserWidgetStyle
---@param IsLoad boolean
function FOnLoadUserWidgetStyleDelegate:Broadcast(Style, IsLoad) end


---@class FUGCCustomModeCalculateDamageAngleDelegate : ULuaSingleDelegate
FUGCCustomModeCalculateDamageAngleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterLocation: FVector, CauserLocation: FVector, FinalAng: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeCalculateDamageAngleDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterLocation FVector
---@param CauserLocation FVector
---@param FinalAng number
function FUGCCustomModeCalculateDamageAngleDelegate:Execute(CharacterLocation, CauserLocation, FinalAng) end


---@class FUGCCustomModebDisplayAtTargetLocationDelegate : ULuaSingleDelegate
FUGCCustomModebDisplayAtTargetLocationDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModebDisplayAtTargetLocationDelegate:Bind(Callback, Obj) end

---执行委托
function FUGCCustomModebDisplayAtTargetLocationDelegate:Execute() end


---@class FUGCCustomModeInputMoveForward : ULuaSingleDelegate
FUGCCustomModeInputMoveForward = {}

---绑定回调函数
---@param Callback fun(Obj: any, rate: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputMoveForward:Bind(Callback, Obj) end

---执行委托
---@param rate number
function FUGCCustomModeInputMoveForward:Execute(rate) end


---@class FUGCCustomModeInputMoveRight : ULuaSingleDelegate
FUGCCustomModeInputMoveRight = {}

---绑定回调函数
---@param Callback fun(Obj: any, rate: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputMoveRight:Bind(Callback, Obj) end

---执行委托
---@param rate number
function FUGCCustomModeInputMoveRight:Execute(rate) end


---@class FUGCCustomModeInputTurn : ULuaSingleDelegate
FUGCCustomModeInputTurn = {}

---绑定回调函数
---@param Callback fun(Obj: any, rate: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputTurn:Bind(Callback, Obj) end

---执行委托
---@param rate number
function FUGCCustomModeInputTurn:Execute(rate) end


---@class FUGCCustomModeInputLookUp : ULuaSingleDelegate
FUGCCustomModeInputLookUp = {}

---绑定回调函数
---@param Callback fun(Obj: any, rate: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputLookUp:Bind(Callback, Obj) end

---执行委托
---@param rate number
function FUGCCustomModeInputLookUp:Execute(rate) end


---@class FUGCCustomModeInputUGCMoveEvent : ULuaSingleDelegate
FUGCCustomModeInputUGCMoveEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Axis: FVector2D) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputUGCMoveEvent:Bind(Callback, Obj) end

---执行委托
---@param Axis FVector2D
function FUGCCustomModeInputUGCMoveEvent:Execute(Axis) end


---@class FUGCCustomModeInputUGCLookEvent : ULuaSingleDelegate
FUGCCustomModeInputUGCLookEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any, Rot: FVector2D) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeInputUGCLookEvent:Bind(Callback, Obj) end

---执行委托
---@param Rot FVector2D
function FUGCCustomModeInputUGCLookEvent:Execute(Rot) end


---@class FUGCCustomModeOverrideInput : ULuaSingleDelegate
FUGCCustomModeOverrideInput = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeOverrideInput:Bind(Callback, Obj) end

---执行委托
function FUGCCustomModeOverrideInput:Execute() end


---@class FUGCCustomModeCrossHairOverridePositionDelegate : ULuaMulticastDelegate
FUGCCustomModeCrossHairOverridePositionDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WeaponWidget: UHUDWidgetBase, PlayerOwner: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeCrossHairOverridePositionDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WeaponWidget UHUDWidgetBase
---@param PlayerOwner APlayerController
function FUGCCustomModeCrossHairOverridePositionDelegate:Broadcast(WeaponWidget, PlayerOwner) end


---主角控制器
---@class ASTExtraPlayerController: AUAEPlayerController, IInGameReconnectingInterface, IGameplayTaskOwnerInterface, ISTExtraPlayerController_UGCEventInterface, IGISPlayerInterface, IClickActorPCInterface, IGetCommonBackpackInterface, IUniversalTaskOwnerInterface
---@field AutoAimCompTemplate UWeaponAutoAimingComponent
---@field HandFightAutoAimingConfig FAutoAimingConfig
---@field HandFightAimAssistConfig FAimAssistConfig
---@field bUseHandFightAutoAimingConfig boolean
---@field bUseHandFightAimAssistConfig boolean
---@field FreeCameraStartMinPitchMin number
---@field FreeCameraStartMinPitchMax number
---@field bTrackingKillerEnabled boolean
---@field TouchIndexSet ULuaSetHelper<number>
---@field OnFireTouchFingerIndex ETouchIndex
---@field FingerTouchDataListMaxCount number
---@field FingModifyTouchReportCount number
---@field TouchEndTriggerSkillEntry EUTSkillEntry
---@field TouchEndTriggerSkillID number
---@field OnPreBuildFingerIndex ETouchIndex
---@field bPreBuildView boolean
---@field bPreBuildClickDown boolean
---@field TeamPlayerHPChangedIndexs ULuaSetHelper<number>
---@field TeamPlayerAttrChangedIndexs ULuaSetHelper<number>
---@field OnKnockDownCharacterDelegate FOnKnockDownCharacterDelegate
---@field EditorArchiveDataType EEditorArchiveDataType
---@field RuntimeArchiveDataType EArchiveDataType
---@field OnPlayerContollerTouchBegin FOnPlayerContollerTouchBegin
---@field OnPlayerContollerTouchEnd FOnPlayerContollerTouchEnd
---@field OnPlayerContollerTouchEndForUGCM FOnPlayerContollerTouchEndForUGCM
---@field OnPlayerContollerTouchJoystick FOnPlayerContollerTouchBegin
---@field OnPlayerGlobalTouchBeginEvent FOnPlayerGlobalTouchDelegate
---@field InputActionTriggerEvent FInputActionTriggerDelegate
---@field PickUpItemEventFired FPickUpItemEventFired
---@field ScopeZoomBackupMap ULuaMapHelper<string, number>
---@field ScopeZoomMap ULuaMapHelper<string, number>
---@field ValidTouchMoveFrameConfig ULuaArrayHelper<FValidTouchMoveFrameConfig>
---@field CurValidTouchMoveFrameConfig FValidTouchMoveFrameConfig
---@field IgnoreCameraMovingIndexArray ULuaArrayHelper<ETouchIndex>
---@field IgnoreCameraMovePendingArray ULuaArrayHelper<ETouchIndex>
---@field AddTouchMoveFingerArray ULuaArrayHelper<ETouchIndex>
---@field bNeedSetFireTouchFingerIndex boolean
---@field MotionControlConfig FMotionControlConfig
---@field MotionControlIOSConfig FMotionControlLandscapeConfig
---@field MotionControlAndroidConfig FMotionControlLandscapeConfig
---@field MotionControlOpenHarmonyConfig FMotionControlLandscapeConfig
---@field OnFreeCameraFingerIndex ETouchIndex
---@field FreeCameraSPL_Hor number
---@field FreeCameraSPL_Ver number
---@field FreeCamera_FPP_MIN number
---@field FreeCamera_FPP_MAX number
---@field FreeCamera_FPP_PITCH_MIN number
---@field FreeCamera_FPP_PITCH_MAX number
---@field FreeCamera_FPP_PITCH_MIN_LIMITED number
---@field FreeCamera_FPP_PITCH_MAX_LIMITED number
---@field FreeCameraSPL_Hor_Parachute number
---@field FreeCameraSPL_Ver_Parachute number
---@field RecoverLagDelayTime number
---@field bInTombBoxGenerator_C boolean
---@field bInItemGenerator_C boolean
---@field InItemGeneratorUIRefreshTime_C number
---@field CurInItemGeneratorUIRefreshTime_C number
---@field MotionControlLeft_C number
---@field MotionControlRight_C number
---@field MotionControlPitchReverce_C number
---@field MotionControlPitchLeft_C number
---@field MotionControlPitchRight_C number
---@field MotionControlYawLeft_C number
---@field MotionControlYawRight_C number
---@field MotionControlUseGameRotationReverce_C number
---@field MotionControlGravityX_C number
---@field bLandScapeOrientation_C boolean
---@field MotionFilterX number
---@field MotionFilterY number
---@field DeltaMotionFilterX number
---@field DeltaMotionFilterY number
---@field bDisableSetViewYawLimit boolean
---@field bDisableSetViewPitchLimit boolean
---@field LastLongTimeFallingMoveOnFloorTime number
---@field LastReportResetSimulatedStatusTime number
---@field EmoteFreeCamPrevFigureResultDelta FRotator
---@field StartPosition FVector2D
---@field CurFreeCamPosition FVector2D
---@field bResetFreeCameraStartRotation boolean
---@field EndTouchFreeCameraDeltaRotation FRotator
---@field CouldStartFreeCamera boolean
---@field bIsClientRecordingDeathPlayback boolean @SyncFreeCameraState end
---@field bRecoverMouseShowStateAfterDeathReplayEnd boolean
---@field bOverrideJoystickInput boolean
---@field bUGCHandleJoystickInput boolean
---@field bOverrideLookInput boolean
---@field bUGCHandleLookInput boolean
---@field bCameraFreeMoving boolean
---@field CameraFreeMovingSpeedScale number
---@field EagleWacherRadioTimes number
---@field PromotionInfo FPromotionMatchInfo
---@field ShowPromotionTipsType number
---@field FollowCandidateName string
---@field IsTeammatesAutoFollowing ULuaMapHelper<string, boolean>
---@field FreeCameraStartRotation FRotator
---@field FPPModeSpringArmTrans FTransform
---@field FreeCameraFigerIndex ETouchIndex
---@field WeaponReconnectOpIndex number
---@field bHasInitUIFinished boolean
---@field bCanReceiveTouchInpute boolean
---@field bUseNewVaultComp boolean
---@field bUseNewVaultDistance boolean
---@field bEnableAutoSprintVault boolean
---@field AutoSprintVaultMaxHeight number
---@field CheckAutoSprintVaultInterval number
---@field LastCheckAutoSprintVaultTime number
---@field EscapeDifficulty number
---@field BattleSceneAvatarDisplayInfoList ULuaArrayHelper<FBattleSceneAvatarDisplayInfo> @BatttleSceneAvatarDisplayInfo End*******************
---@field CrossHairColor FLinearColor
---@field CrossHairMode number
---@field bEnableEmptyHandCrossHair boolean
---@field bShowingEmptyHandCrossHair boolean
---@field CustomCrossHairUIName string
---@field AutoAimType EAutoAimType
---@field MeleeAutoAimType EAutoAimType
---@field HandFightAutoAimType EAutoAimType
---@field bIsTrainingMode boolean
---@field bEnableAutoAimTrainingMode boolean
---@field AimBtnPosC FVector2D
---@field AimBtnSizeC FVector2D
---@field ClientFatalDamageRecords ULuaArrayHelper<FClientFatalDamageRecordData>
---@field FatalDamageRecord FClientFatalDamageRecordData
---@field ClientTeamerMaxKillerRecord ULuaArrayHelper<FClientTeamerMaxKillerRecord>
---@field SensibilityConfig FSensibilityConfig
---@field JoystickSprintDisThresholdParam number
---@field JoystickSprintFactorParam number
---@field bSingleShotWeaponShootMode boolean
---@field bShotGunShootMode boolean
---@field bNewFPPPeekRotatorRoll boolean
---@field PCSoundStyle number
---@field MobileSoundStyle number
---@field bInterruptDrawStyle boolean
---@field bEnableGlobalFastDraw boolean
---@field bEnableScopeJump boolean
---@field SensibilityChangeType ESightScopeSensibilityChangeType
---@field CurrentDebugSensibility number
---@field SensibilityUseMD boolean
---@field MDSensibilityConfigCustom FMDSensibilityConfig
---@field MDSensibilityConfigNormal FMDSensibilityConfig
---@field OnCharacterNearDeathOrRescueingOtherNotifyDelegate FOnCharacterNearDeathOrRescueingOtherNotifyDelegate
---@field OnPlayerEnterFlying FPlayerControllerDelegate
---@field OnPlayerEnterRevivalFlying FPlayerControllerDelegate
---@field OnPlayerChangeViewtargetToPlane FPlayerControllerDelegate
---@field OnPlayerChangeViewtargetToRevivalPlane FPlayerControllerDelegate
---@field OnPlayerExitFlying FPlayerControllerDelegate
---@field OnPlayerEnterJumping FPlayerControllerDelegate
---@field OnPlayerExitJumping FPlayerControllerDelegate
---@field OnPlayerEnterParachute FPlayerControllerDelegate
---@field OnPlayerExitParachute FPlayerControllerDelegate
---@field OnPlayerEnterWater FPlayerControllerDelegate
---@field OnPlayerExitWater FPlayerControllerDelegate
---@field OnPlayerEnterFighting FPlayerControllerDelegate
---@field OnPlayerExitFighting FPlayerControllerDelegate
---@field OnPlayerEnterFinished FPlayerControllerDelegate
---@field OnPlayerEnterAvatarDisplay FPlayerControllerDelegate
---@field OnPlayerStartReloadWeapon FPlayerControllerDelegate
---@field OnTeammateHPChangeDelegate FOnTeammateHPChangeDelegate
---@field OnOneTeamPlayerHPChangeDelegate FOnOneTeamPlayerHPChangeDelegate
---@field OnOneTeamPlayerAttrChangeDelegate FOnOneTeamPlayerAttrChangeDelegate
---@field OnTeammateTemperatureChangeDelegate FOnTeammateTemperatureChangeDelegate
---@field OnCharacterBreathChange FOnCharacterBreathChangeDelegate
---@field OnNightBeggan FOnNightStateChangedDelegate
---@field OnNightEnded FOnNightStateChangedDelegate
---@field OnIsInFortressChanged FOnIsInFortressChangedDelegate
---@field OnPlayerEnterOrLeaveFlyingVehicle FPlayerControllerDelegateOneParam
---@field OnPlayerEnterPossessActor FOnFakePossessActorDelegate
---@field OnClickActorComOnClick FOnClickActorComOnClickDelegate
---@field OnDisPlaySubtitle FOnDisPlaySubtitleDelegate
---@field OnSetDynamicSubtitle FOnSetDynamicSubtitleDelegate
---@field OnShowFollowEmoteDelegate FFollowEmoteDelegate
---@field OnShowInvitePairEmoteDelegate FInvitePairEmoteDelegate
---@field OnCauseFatalDamage FOnCauseFatalDamageClient
---@field OnClientEnterInterative FOnClientEnterInterativeDelegate
---@field SelectedNightRenderConfig number
---@field OnPreInitTaskData FPreInitTaskDataDelegate @Delegate used to save common tasks param
---@field OnInitTaskData FInitTaskDataDelegate @Delegate used to initialize common tasks
---@field OnInitTaskDataFinished FInitTaskDataFinishedDelegate @Delegate on initialize common tasks finished
---@field OnInitCollectionData FInitCollectionDataDelegate @Delegate used to initialize pure collection tasks
---@field OnPlayerDoEmote FPlayerDoEmoteDelegate @Delegate used to fire DoEmote event
---@field OnPlayerEnterArea FPlayerEnterAreaDelegate @Delegate used to fire DoTeamEmote event
---@field OnPlayerKilling FPlayerKillingDelegate @Delegate used to fire KillPlayer event
---@field OnPickupItem FOnPickupItemDelegate @Delegate used to fire PickupItem event
---@field OnDropItem FOnDropItemDelegate @Delegate used to fire DropItem event
---@field OnUseItem FOnUseItemDelegate @Delegate used to fire UseItem event
---@field OnDeathBoxSpawned FOnDeathBoxSpawnedDelegate @Delegate used to fire DeathBoxSpawned event
---@field OnTaskConditionActived FOnTaskConditionActivedDelegate @Delegate used to activate specified task condition
---@field OnTaskConditionDeactived FOnTaskConditionDeactivedDelegate @Delegate used to deactivate specified task condition
---@field OnMyObserversChangeDelegate FOnMyObserversChangeDelegate
---@field OnApplicationactivatedDelegate FOnAppActivatedDelegate
---@field KillOrPutDownMessageData FKillOrPutDownMessage
---@field DisplayKillDistanceThreshold number
---@field bClearBuffOnEnterPlane boolean
---@field OnUITouchMoveEvent FOnUITouchMoveDelegate
---@field OnStartFireEvent FOnStartFireDelegate
---@field OnStopFireEvent FOnStopFireDelegate
---@field OnReleaseFireBtn FOnReleaseFireBtnDelegate
---@field OnReleaseScreen FOnReleaseScreen
---@field OnFingerMove FOnFingerMove
---@field OnSwitchCameraModeStart FOnSwitchCameraModeStartDelegate
---@field OnSwitchCameraModeEnd FOnSwitchCameraModeEndDelegate
---@field OnPlayerPickUpActor FOnPlayerPickUpActorDelegate
---@field OnPlayerPutDownActor FOnPlayerPutDownActorDelegate
---@field OnPlayerPutDownAllProp FOnPlayerPutDownAllPropDelegate
---@field OnSwitchWeapon FOnSwitchWeaponDelegate
---@field OnEquipWeaponDel FOnEquipWeaponDelegate
---@field OnUnequipWeaponDel FOnUnequipWeaponDelegate
---@field OnUseInventoryItem FOnUseInventoryItemDelegate
---@field OnChangeBattleOwnerDel FOnChangeBattleOwnerDelegate
---@field OnDamageToOther FOnOneFloatValueDelegate
---@field OnLocalCharacterHPChangeDel FOnLocalCharacterHPChangeDelegate
---@field OnLocalCharacterTemperatureChangeDel FOnLocalCharacterTemperatureChangeDelegate
---@field OnLocalCharacterSignalHPChangeDelegate FOnLocalCharacterSignalHPChangeDelegate
---@field OnServerCharacterSignalHPChangeDelegate FOnServerCharacterSignalHPChangeDelegate
---@field OnLocalCharacterSignalHPRemaingingTimeDelegate FOnLocalCharacterSignalHPRemaingingTimeDelegate
---@field OnGameStartCountDownDelegate FOnGameStartCountDownDelegate
---@field OnRank FOnRank
---@field OnGameStartDelegate FOnGameStartDelegate
---@field OnPlayerNameChange FOnPlayerNameChange
---@field OnUseMainSlot FOnUseMainSlot
---@field OnBackpackMainSlot FOnBackpackMainSlot
---@field OnRemoveMainSlot FOnRemoveMainSlot
---@field OnRepPlayerState FOnRepPlayerState
---@field OnRepTeammateChange FOnRepTeammateChange
---@field OnGameModeStateChangeDelegate FOnGameModeStateChangeDelegate
---@field OnRepTeammateAvatarDisplayInfo FOnRepTeammateAvatarDisplayInfoChange
---@field OnMapMarkChangeDelegate FOnMapMarkChangeDelegate
---@field OnAIMapMarkWorldLocUpdated FOnMapMarkChangeDelegate
---@field OnShowSkillPrompt FOnShowSkillPromptDelegate
---@field OnShowPCSkillPrompt FOnShowPCSkillPromptDelegate
---@field OnShowItemSkillPrompt FOnShowItemSkillPrompt
---@field OnStartAutoSprintCountDown FOnStartAutoSprintCountDown
---@field OnShowAutoSprintButton FOnShowAutoSprintButton
---@field OnInterruptAutoSprintCountDown FOnInterruptAutoSprintCountDown
---@field OnAutoSprintActive FOnAutoSprintActive
---@field OnTakeDamagedDelegate FOnTakeDamaged
---@field OnTakeDamagedNormalDelegate FOnTakeDamagedNormal
---@field OnPostTakeDamageDelegate FPostTakeDamageDelegate
---@field InstigatedDamageToCharacter FInstigatedDamageToCharacter
---@field InstigatedDamageToCharacterWithFlag FInstigatedDamageToCharacterWithFlag
---@field InstigatedDamageToCharacterWithContext FInstigatedDamageToCharacterWithContext
---@field InstigatedDamageToCharacterOncePerFrame FInstigatedDamageToCharacterOncePerFrame
---@field AssistKillOtherDelegate FAssistKillOtherDelegate
---@field OnLostConnection FOnLostConnection
---@field OnReconnected FOnReconnected
---@field OnExitGame FOnExitGame
---@field OnRepPlane FOnPlaneSetted
---@field OnSpectatorChange FOnSpectatorChange
---@field OnAfterSetViewTarget FOnAfterSetViewTarget
---@field OnSpectatingEnemyChanged FOnSpectatingEnemyChanged
---@field OnSpectatingSameCampChanged FOnSpectatingSameCampChanged
---@field OnSpectatorCampIDChange FOnSpectatorCampIDChange
---@field OnCharacterRecoveryHealth FOnCharacterRecoveryHealth
---@field RunOnNextFrameDelegate FRunOnNextFrame
---@field OnBirthLandTeamAssembleDelegate FOnBirthLandTeamAssembleDelegate
---@field OnSetPlayerMaker FOnSetPlayerMaker
---@field OnRefreshTrainingSensitivityList FRefreshTrainingSensitivityList
---@field PlayerControllerPossessEvent FPlayerControllerPossess
---@field PlayerControllerUnPossessEvent FPlayerControllerPossess
---@field PlayerControllerRepCharacter FOnRepCharacter
---@field OnPickUpTargetDelegate FOnPickUpTargetDelegate
---@field NewbieMonsterShowAngle number
---@field MovePackLossRate number @CG24--角色移动包丢包率、收包数量下发
---@field MoveAdjustPackRate number
---@field MovePackReceiveProportion number @CG24--角色移动包丢包率、收包数量下发
---@field MovePackIntervalMoveDist number @每秒移动的距离
---@field ClientCharaStatMonitor FStatMon_Client @客户端角色移动状态采集
---@field bShouldReportAntiCheat boolean
---@field DebugInitDropId number
---@field ZombieTotalForOnePlayer number
---@field ZombieTotalForOnePlayerRatio number
---@field EnableAsyncLoading boolean
---@field EnableNetCullingDistOnVeryLowDevice boolean
---@field PC_CameraMoveRateX number
---@field PC_CameraMoveRateY number
---@field PC_WinClientCameraMoveRateX number
---@field PC_WinClientCameraMoveRateY number
---@field PC_WinClientVechileCameraMoveRateX number
---@field PC_WinClientVechileCameraMoveRateY number
---@field Mobile_CameraMoveRateX number
---@field Mobile_CameraMoveRateY number
---@field bUseDisCurve boolean
---@field NormalCameraModeData FCommonCameraModeData
---@field NearCameraModeData FCommonCameraModeData
---@field NearCameraModeCameraMoveAdditionalRate FVector2D
---@field NearCameraModeCameraMoveMaxSpeed FVector2D
---@field AimCameraModeData FAimCameraModeData
---@field AimCameraModeCameraMoveAdditionalRate FVector2D
---@field AimCameraModeCameraMoveMaxSpeed FVector2D
---@field PlaneCameraModeData FCommonCameraModeData
---@field LastLimitDataState EPawnState
---@field CameraViewPitchLimitDataMap ULuaMapHelper<EPawnState, FCameraViewPitchLimitData>
---@field MoveCameraMinDistanceThreshold number
---@field MoveCameraMinTimeThreshold number
---@field MoveCameraMaxDistanceThreshold number
---@field MoveCameraSpeedLimit number
---@field ShouldShowPawnDetailInfoOnHUD boolean
---@field ShouldShowCustomInfoOnHUDKey ULuaArrayHelper<string>
---@field ShouldShowCustomInfoSwitchKeyAndValue ULuaMapHelper<string, string>
---@field ShouldShowCampInfo boolean
---@field ShouldShowCameraDetailInfoOnHUD boolean
---@field ShouldSpringUsePawnControlRotation boolean
---@field ShouldShowViewTargetInfoOnHUD boolean
---@field bShowSuperCodeUI boolean
---@field SkillDeadBoxEffectIndex number
---@field bIsDebugImpactEffectForAutonomousGM boolean
---@field ImpactEffectStartScaleDistanceGM number
---@field ImpactEffectEndScaleDistanceGM number
---@field ImpactEffectStartScaleValueGM number
---@field ImpactEffectEndScaleValueGM number
---@field IsConsiderAdaptationOffsetY boolean
---@field CurCameraMode EPlayerCameraMode
---@field CurCustomCameraTypeInfo FPlayerCameraTypeInfo
---@field AutoScopeAimCompName string
---@field AutoScopeAimTraceDistance number
---@field bMoveable boolean
---@field bMoveablePickup boolean
---@field bMoveableAirborne boolean
---@field bMoveableLandHard boolean
---@field MoveableLandHardTime number
---@field CanMoveCDTime number
---@field CanSprintCDTime number
---@field AutoSprintRequestCD number
---@field bCanGetTouchInput boolean
---@field CurScreenMoveSpeed FVector
---@field TestExtraTouchMoveRatio number
---@field TestExtraRotateRatio number
---@field CanRotateCDTime number
---@field Mobile_CameraMoveAdjustSensitiveValue number
---@field SpecialDeviceRate number
---@field AimAssist number
---@field AimAssistRateYaw number
---@field AimAssistRatePitch number
---@field SpecialDeviceRateConfigs ULuaMapHelper<string, number>
---@field bIsBattleOwner boolean
---@field bIsAutoAimEnabled boolean
---@field bIsAutoAimSkillActivate boolean
---@field bMagnetAssist boolean
---@field NormalModeConfig FGameModeConfig
---@field TAModeConfig FGameModeConfig
---@field HitEffectConfig FHitEffectConfig
---@field GameModeIntType number
---@field CurrentMotionData FVector
---@field MotionDataSameCountCPP number
---@field MotionDataSameCountMaxCPP number
---@field CharacterTouchMove boolean
---@field IsDeadForLogout boolean
---@field AccumulateYawInput number
---@field LandAfterJumpPlaneDelayMoveTime number
---@field bLandAfterJumpPlane boolean
---@field bIsLandingOnGround boolean
---@field bIsNeedCheckPullPercentage boolean
---@field NoRespondArea number
---@field ComfortableSwipeAddition number
---@field bIsLeftScreenUseComfortableSwipe boolean
---@field bIsRightScreenUseComfortableSwipe boolean
---@field sprintOptType EnmSprintOptType
---@field JoystickSprintDisThreshold number
---@field JoystickSprintDisThresholdNew number
---@field JoystickSprintBtnHeight number
---@field JoystickSprintAngleThreshold number
---@field bIsUseDisOrSpeedMove boolean
---@field JoystickOperatingMode EJoystickOperatingMode
---@field EasyGoStraightAngle number
---@field bEnableJoyStickAllDirectionTriggerSprint boolean
---@field LastJoystickOpacity number
---@field bIsTouching boolean
---@field bFreeCamera boolean
---@field bKeepFreeCamera boolean
---@field CacheFreeCameraSpringArmList ULuaArrayHelper<USpringArmComponent>
---@field CacmeFreeCamera UCameraComponent
---@field TouchForceMap ULuaMapHelper<ETouchIndex, number>
---@field DoubleClickFireTimeThreshold number
---@field DoubleClickFireDistanceThreshold number
---@field DoubleClickCancelDistanceThreshold number
---@field TouchForceWatchFrame number
---@field TouchForceFireThreshold number
---@field bUseTouchForce boolean
---@field TouchForceFireThreshold_TA number
---@field bUseTouchForce_TA boolean
---@field TouchForceFireThreshold_Home number
---@field bUseTouchForce_Home boolean
---@field TouchForceFireThresholdEscape number
---@field bUseTouchForceEscape boolean
---@field EnableShovel_TA number
---@field CrouchShovel_TA boolean
---@field IsHelmetFightingHide boolean
---@field IsBackpackFightingHide boolean
---@field bIsClothExtraWingVisible boolean
---@field bIsClothExtraWingVisible_OnlyTeam boolean
---@field InputTouchRepeatLastTime number
---@field TouchFireType ETouchFireType
---@field TestForce number
---@field On3DTouchForceChange FOn3DTouchForceChangeDelegate
---@field OnDoubleClickCheck FOnDoubleClickCheckDelegate
---@field bIsAutoAimOnlyInTouch boolean
---@field bIsAutoAimOnlyOnFire boolean
---@field bMoveInMiniMap boolean
---@field bAutoSprint boolean
---@field AutoSprintBtnTime number
---@field AutoSprintWaitingTime number
---@field AutoSprintThreshold number
---@field JoystickTriggerSprintDuration number
---@field InHouseSpringArmLengthModifier number
---@field InHouseSpringArmLengthModifierChangeSpeed number
---@field IsPlayerUnableToDoAutoSprintOperation boolean
---@field CurrentCameraFOV number
---@field MinFovChangeView number
---@field WeaponSystemReconnectReplicateData FWeaponSystemReconnectReplicateData
---@field GameTipMsgID number
---@field GameTipParam1 string
---@field GameTipParam2 string
---@field GameTipAnimPlayRate number
---@field AutoSprintCD number
---@field bHasRequestAllFixPlayerInfo boolean
---@field TeamMateStates ULuaMapHelper<number, FTeamMateStateInfo>
---@field DoubleClickLastTouchInfoMap ULuaMapHelper<ETouchIndex, FTeamMateStateInfo>
---@field DoubleClickCurTouchInfoMap ULuaMapHelper<ETouchIndex, FTeamMateStateInfo>
---@field bEnableUpdatePlayerBoxLocation boolean
---@field UpdatePlayerBoxLocationInterval number
---@field bEnableSignalBar boolean
---@field AdditionalSignalBarDisplayGameModes ULuaArrayHelper<AGameMode>
---@field OnReceiveHasSignal FOnReceiveHasSignal
---@field InstigatedDamageDataOneFrame FDamageDataOneFrame
---@field ApplyDamageScheduler FDamageScheduler
---@field BigWorldReplaceSuitSkinIndex number
---@field BigWorldReplaceSuitSkinCD number
---@field BigWorldReplaceSuitSkinTimer number
---@field PlayerWearInfo FCharacterAvatar_WearInfo
---@field bIsFPPCameraLerpCoolingDown boolean
---@field FPPCameraLerpStartTime number
---@field FPPCameraLerpStartTransformRelative FTransform
---@field FPPCameraLerpEndTransformRelative FTransform
---@field FPPCameraLerpStartTransform FTransform
---@field FPPCameraLerpEndTransform FTransform
---@field FPPCameraLerpStartFOV number
---@field FPPCameraLerpEndFOV number
---@field InputRotList ULuaArrayHelper<FRotator>
---@field ControllerServerUseItemDelegate FControllerServerUseItemDelegate
---@field OnItemUseDelegate FOnItemUse
---@field UGCCustomModeCalculateDamageAngleDelegate FUGCCustomModeCalculateDamageAngleDelegate
---@field UGCCustomModeCrossHairOverridePositionDelegate FUGCCustomModeCrossHairOverridePositionDelegate
---@field UGCCustomModebDisplayAtTargetLocationDelegate FUGCCustomModebDisplayAtTargetLocationDelegate
---@field UGCCustomModeInputMoveForward FUGCCustomModeInputMoveForward
---@field UGCCustomModeInputMoveRight FUGCCustomModeInputMoveRight
---@field UGCCustomModeInputTurn FUGCCustomModeInputTurn
---@field UGCCustomModeInputLookUp FUGCCustomModeInputLookUp
---@field UGCCustomModeInputUGCMoveEvent FUGCCustomModeInputUGCMoveEvent
---@field UGCCustomModeInputUGCLookEvent FUGCCustomModeInputUGCLookEvent
---@field UGCCustomModeInputOverrideTouchMove FUGCCustomModeOverrideInput
---@field UGCCustomModeInputOverrideTurn FUGCCustomModeOverrideInput
---@field UGCCustomModeInputOverrideLookUp FUGCCustomModeOverrideInput
---@field UGCCustomModeOverrideTouchInterface FUGCCustomModeOverrideInput
---@field DeadTombBoxForMapMark APlayerTombBox
---@field ForbitPickList ULuaArrayHelper<string>
---@field bForbitPickupEffect boolean
---@field pickupPlayerChoice number
---@field DoNotPickUpList ULuaArrayHelper<number>
---@field GunADSHideSectionName string
---@field bCanImprisonmentTeammate boolean
---@field blackEndTime number
---@field isPressingBtn_AimAndFire boolean
---@field OnDSResponseToGetReconnectInfo FOnDSResponseToGetReconnectInfo
---@field OnRepNewPawn FOnRepNewPawn
---@field GiftItemAppearCount number
---@field GiftItemAppearCountTrehold number
---@field RescueTotalSeconds number
---@field RescueReduceSeconds number
---@field RescueInfoText string
---@field m_LastFindingPathReciveTime number
---@field IsCurrentSpectatorFreeView boolean
---@field IsCurrentAirPhotoView boolean
---@field IsCurrentUsePersistStateView boolean
---@field IsSkipCheckCameraView boolean
---@field FreeViewUpRate number
---@field MaxTouchMoveDelayFrame number
---@field MapMarkTraceStartZ number
---@field MapMarkTraceEndZ number
---@field MaxCacheInputSpeedNum number
---@field bBleFreeCameraUse boolean
---@field ReplicatedServerLastTransformUpdateTimeStamp number
---@field CallServerStopFireFrameCounter number
---@field TouchCacheWeightSetting ULuaArrayHelper<number>
---@field ExcellentOperationHandlerPath UExcellentOperationHandler
---@field ExcellentOperationTypesCheckedByRealKiller ULuaSetHelper<EExcellentOperationResultType>
---@field DiedisableInput boolean
---@field LastTouchScreenLoc FVector
---@field LastTouchScreenTime number
---@field BeginTouchLoc FVector
---@field BeginTouchTime number
---@field TouchMoveFingerDataList ULuaArrayHelper<FTouchMoveFingerData>
---@field CurTouchMoveFingerIndex ETouchIndex
---@field CurTouchPeekFingerIndex ETouchIndex
---@field CurTouchScopeFingerIndex ETouchIndex
---@field CurTouchAngledSightFingerIndex ETouchIndex
---@field CurTouchSkillFingerIndex ETouchIndex
---@field CurTouchLeftFingerIndex ETouchIndex
---@field CurSightZoomFingerIndex ETouchIndex
---@field CurAimFireFingerIndex ETouchIndex
---@field PlaceCakeFingerIndex ETouchIndex
---@field bOpeningBackpack boolean
---@field ValidTouchMove number
---@field bIsInHomePhotoStatus boolean
---@field TickMouseCaptureLockTimer number
---@field OnClientResumeReplication FOnResumeReplication
---@field bHasSetOBEnterFlyVehicle boolean
---@field OnObservedItemChanged FPlayerControllerDelegate
---@field BackpackComponentClass UBackpackComponent
---@field MapPathMarkID number
---@field ObservedItemList ULuaArrayHelper<FBattleItemData>
---@field NetObservedItemList FIncNetArrayNew
---@field OBSimpleItemList ULuaArrayHelper<FOBSimpleItemInfo>
---@field OnViewTargetPoseChangedDelegate FOnViewTargetChangePoseDelegate
---@field OnAboutToChangeViewTarget FPlayerControllerDelegate
---@field OnFinishedChangeViewTarget FPlayerControllerDelegate
---@field OnCharacterStatesChange FPlayerControllerDelegate
---@field OnOverrideClickQuitSpectating FPlayerControllerDelegate
---@field OnFPPFOVChange FOnFPPFOVChangeDelegate
---@field OnTPPFOVChange FOnTPPFOVChangeDelegate
---@field FriendObserverDetails ULuaArrayHelper<FFriendObserver>
---@field bShowWhoObservingMe boolean
---@field ObservedTargetDieDelegate FPlayerControllerDelegate
---@field OBAvaliablePlayerKeys ULuaArrayHelper<number>
---@field NeedCheckGravity boolean
---@field EagleWatchInitCompletedDelegate FOnRepIsSpectatingDelegate
---@field OnSyncOBDataActorIsReady FPlayerControllerDelegate
---@field ObservedData FObservedData
---@field OnSignalHPChanged FOnOneFloatValueDelegate
---@field bShowClubLogoInOB boolean
---@field OnToggleOBMapShowHide FPlayerControllerDelegate
---@field EnableAutomaticObDelegate FEnableAutomaticOBDelegate
---@field OnToggleOBPlayerList FPlayerControllerDelegate
---@field OnToggleOBTeamList FPlayerControllerToggleDelegate
---@field WeaponEquipAttachment FOnWeaponEquipAttachmentDelegate
---@field OnFreeViewChangedDelegate FPlayerControllerToggleDelegate
---@field OnOBVehicleViewChangedDelegate FPlayerControllerToggleDelegate
---@field OnMouseCursorShowStateChanged FMouseCursorShowStateChangedDelegate
---@field IsOBTPPFreeView boolean
---@field OBTPPFreeViewArmLengthMax number
---@field OBTPPFreeViewArmLengthMin number
---@field IsOBVehicleView boolean
---@field NeedSyncRotation boolean
---@field NeedCheckChangeToVehicleView boolean
---@field OBVehicleViewAcceRecordsNum number
---@field OBVehicleAcceArmOffset number
---@field OBVehicleBrkArmOffset number
---@field OBVehicleArmLenSpeed number
---@field OnHitCameraShake UCameraShake
---@field CurrentOBVehicleViewArmLength number
---@field OBVehicleViewArmLengthMax number
---@field OBVehicleViewArmLengthMin number
---@field OBVehicleRelativeLocation FVector
---@field OB_VehicleRotationLagSpeed number
---@field OBVehicleViewFOV number
---@field CurrentOBWidgetFarStyteDistance number
---@field CurrentOBWidgetHideStyteDistance number
---@field StyleDistanceLevel number
---@field OBNoUIMode boolean
---@field WatchedStateType EStateType
---@field fireMode number
---@field rightFireInvisible boolean
---@field fireDelayMode2 number
---@field bNotMoveFire boolean
---@field bAlreadyFired boolean
---@field bFireNotToBuild boolean
---@field WallFeedBack boolean
---@field nowNearCharacterList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field nowNearVehicleList ULuaArrayHelper<ASTExtraVehicleBase>
---@field nowNearBlowVehicleList ULuaArrayHelper<ASTExtraVehicleBase>
---@field nowShotWeaponList ULuaArrayHelper<ASTExtraShootWeapon>
---@field nowOneShotWeaponList ULuaArrayHelper<ASTExtraShootWeapon>
---@field nowGrenadeList ULuaArrayHelper<AActor>
---@field bIsLastTwoCircle boolean
---@field triggerVoiceCheckDelegate FOnCharacterCheckVoiceTriggerDelegate
---@field triggerMoveVoiceCheckDelegate FOnCharacterMoveCheckVoiceTriggerDelegate
---@field triggerShotVoiceCheckDelegate FOnCharacterShotCheckVoiceTriggerDelegate
---@field triggerVehicleVoiceCheckDelegate FOnCharacterVehicleCheckVoiceTriggerDelegate
---@field triggerGlassVoiceCheckDelegate FOnCharacterGlassCheckVoiceTriggerDelegate
---@field triggerParachuteCloseCheckDelegate FOnCharacterMoveCheckVoiceTriggerDelegate
---@field triggerDynamicActorCheckDelegate FOnDynamicActorCheckVoiceTriggerDelegate
---@field VoiceCheckMoveDistanceOverride number
---@field bCanJump boolean
---@field bCanSelectJumpPoint boolean
---@field OnPlayerCanJump FPlayerControllerDelegate
---@field OnPlayerCannotJump FPlayerControllerDelegate
---@field OnStartShrinkCircle FPlayerControllerDelegate
---@field OnInBomingArea FPlayerControllerDelegate
---@field OnReceiveInviteNextBattle FPlayerControllerDelegate
---@field bCanOpenParachute boolean
---@field OnPlayerCanOpenParachute FPlayerControllerDelegate
---@field OnPlayerCannotOpenParachute FPlayerControllerDelegate
---@field bCanCloseParachute boolean
---@field PlaneFlyHeightFromGameMode number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field CommonmCloseParachuteHeight number
---@field RealTimePawnHeight number
---@field AntiCheckParachuteTime number
---@field bChangeAmbientSound boolean
---@field OB_RotationLagSpeed number
---@field OwnerClientCreateWeaponCache FOwnerClientCreateWeaponCache
---@field OnPreViewTargetChange FPreViewTargetChangeDelegate
---@field OnViewTargetChange FViewTargetChangeDelegate
---@field OnPostViewTargetChange FViewTargetChangeDelegate
---@field bPawnInResult boolean
---@field OnClientToServerWeaponCreated FOnClientToServerWeaponCreated
---@field GameAssistantJoyStickOpacity number
---@field TargetClientWeaponWaitForReconnectList ULuaArrayHelper<ASTExtraWeapon>
---@field KillerTrackerTemplate AKillerTracker
---@field MurderName string
---@field MurderIsAI boolean
---@field MurderUID string
---@field MurderIsSameTeam boolean
---@field DyingDamageInstigatorsList ULuaArrayHelper<FInformPlayerTypeInfo>
---@field TrueDieDamageInstigatorsList ULuaArrayHelper<FInformPlayerTypeInfo>
---@field LastBreathMurder string
---@field LastBreathMurderIsAI boolean
---@field LastBreathMurderUID string
---@field LastBreathMurderIsSameTeam boolean
---@field TestNetArray ULuaArrayHelper<number>
---@field ImpactEffectCachedListSimulateMap ULuaMapHelper<UClass, FImpactMapValueData>
---@field ImpactEffectCachedListLocalMap ULuaMapHelper<UClass, FImpactMapValueData>
---@field OceanSideDetectDistance number
---@field OceanSideDetectInterval number
---@field OceanSideGroundType ULuaArrayHelper<UObject>
---@field CurrOBAirDropID number
---@field WaterSoundVolumeList ULuaArrayHelper<AWaterSoundVolume>
---@field EndTouchScreenCommandMap ULuaMapHelper<ETouchIndex, string>
---@field bCanRespawn boolean
---@field OnAlwaysLoadLevelLoadedChange FOnAlwaysLoadLevelLoadedChange
---@field OnAlwaysLoadLevelsLoadedFinish FOnAlwaysLoadLevelsLoadedFinish
---@field OnControllerPostLoginDelegate FOnControllerPostLoginDelegate
---@field AlwaysLoadLevelOrigin FVector
---@field AlwaysLoadLevelRadius number
---@field LoadLevelLoadedNum number
---@field WillLoadLevelNum number
---@field ExtraAlwaysLoadLevelDataList ULuaArrayHelper<FAlwaysLoadLevelData>
---@field bIsPressingFireBtn boolean
---@field NetCullDistanceFactorForLowMemory number
---@field MaxNetConsiderPawnNumLimit number
---@field ClientActivePlatformProfileName string
---@field HasPostExecDSCommandArrived boolean
---@field OnDSCommandArrived FOnDSCommandArrived
---@field ZMoveDisCalcThreshold number
---@field bDebugDrawHUDCrossLine boolean
---@field bShowParachutingPanelOnce boolean
---@field ExitFromHelicopterParachuteJump boolean
---@field ServerStateType FStateType @服务器上的状态
---@field ClientStateType FStateType @客户端上的状态
---@field bUseNetConsideredRegionRangeOverride boolean
---@field NetConsideredRegionRangeOverride number
---@field ConcertNeedInitParams boolean
---@field CheckVisibilityForObserversProjectileNames ULuaArrayHelper<string>
---@field CheckCriticalLevelLoadedDelayTime number
---@field CheckCriticalLevelLoadedTimerHandle FTimerHandle
---@field RCRBodyBoundingSizeConfig FRCRBodyBoundingSize
---@field ReplayVisibleCharacterSet ULuaSetHelper<ASTExtraBaseCharacter>
---@field FriendOBRelevancyCharacterSet ULuaSetHelper<ASTExtraBaseCharacter>
---@field FriendOBRelevancyVehicleSet ULuaSetHelper<ASTExtraVehicleBase>
---@field PreProcessedRelevancySet FPreProcessedRelevancySet
---@field ArrGrenadeIDs ULuaArrayHelper<number>
---@field bSwitchesInMapsExecuted boolean
---@field bIsEnterBattleResultStep boolean
---@field ShelterKillDebugLevel number
---@field ShelterKillDebugDistance number
---@field bIsHideBlueCircle boolean
---@field bShouldHideAllIngameUI boolean
---@field bEnableOBBulletTrackEffect boolean
---@field bEnableNetRelevantCheck boolean
---@field bEnableOBBulletTrackEffectSetting boolean
---@field bGameModeEnableOBBulletTrackEffect boolean
---@field bGameModeEnableAutonomousOBBulletTrackEffect boolean
---@field bEnableNewObserverSmooth boolean
---@field UseHeartbeat boolean @心跳协议, feishen, 20200327
---@field HeartbeatFrequency number
---@field LastHeartbeatTime number
---@field HeartbeatData FHeartbeatData
---@field ObjArrayUsageStatisticFrequency number
---@field ClientMonsterTreasureBoxList ULuaArrayHelper<AMonsterTreasureBox>
---@field ServerTreasureBoxList ULuaArrayHelper<AActor> @服务器缓存的宝箱
---@field PVECurrentStage number
---@field DefaultHUDClassPath string
---@field BountyBoughtItemList ULuaArrayHelper<FBountyBoughtInfo>
---@field BloodDecalMaterials ULuaArrayHelper<UMaterialInstanceDynamic>
---@field LocalDecalHandleMap ULuaMapHelper<number, UBackpackDecalHandle>
---@field SavedWeaponSlotData ULuaMapHelper<ESurviveWeaponPropSlot, FSlotWeaponData>
---@field SelectedZombieWaveIndex number
---@field IsTickToBuild boolean
---@field IsOnceToBuild boolean
---@field BuildCnt number
---@field BuildMax number
---@field BuildIndex number
---@field bIsBuildUIEnabled boolean
---@field OnPlayerSelectZombieWave FPlayerSelectZombieWaveDelegate
---@field ConstructableConfigurations number
---@field GoToPlaneKeepAllItems boolean
---@field ForceCallLeavePlaneDelegate boolean @强制调用离开飞机的回调. feishen, 20210720
---@field PlayerStartSerialNum number
---@field OnCheckOverConstructing FCheckOverConstructingDelegate
---@field bIsDoingRespawnReinitUIWork boolean
---@field OnClientReportPeerVisualFieldAcotrList FOnClientReportPeerVisualFieldAcotrList
---@field IsImprisonmentTeammate boolean
---@field IsCharacterDie boolean
---@field ClientLocalSwimActors ULuaArrayHelper<AWaterSwimActor>
---@field FootprintActorInfo ULuaArrayHelper<FFootprintActorInfo>
---@field MaxTeamFootprintCount number
---@field MaxOtherFootprintCount number
---@field FootprintActorLookupTable ULuaMapHelper<EPhysicalSurfaceDescription, FFootprintActorBlock>
---@field TrailMarkActorLookupTable ULuaMapHelper<UClass, FTrailMarkActorBlock>
---@field bIsGivingUpGame boolean
---@field GiveupDamageTypeClass UDamageType
---@field ClientSettingBaseOnGameMode FClientSettingBaseOnGameMode
---@field bIsOpeningGameModeGuideUI boolean
---@field bHasInitTaskController boolean
---@field CacheExtendTaskComp ULuaArrayHelper<UActorComponent>
---@field TeammatesYouAttackedInfo ULuaMapHelper<ASTExtraPlayerController, FTeammatesAttackedInfo>
---@field TeammatesYourSaveInterruptedByInfo ULuaMapHelper<ASTExtraPlayerController, FTeammatesAttackedInfo>
---@field TeammatesCanBeReported ULuaArrayHelper<string>
---@field TeammatesYouKilled2Num_UsedByServer ULuaMapHelper<ASTExtraPlayerController, number>
---@field TeammatesYouKilled_UsedByServer ULuaArrayHelper<ASTExtraPlayerController>
---@field LastKillerKey number
---@field OnPlayerExitGameBroadcast FOnPlayerExitGameBroadcast
---@field LeaveRevivalStateBroadcast FLeaveRevivalStateBroadcast
---@field EnterRevivalStateBroadcast FEnterRevivalStateBroadcast
---@field OnPlayerEscapeWhenGameEndBroadcast FOnPlayerEscapeWhenGameEndBroadcast
---@field OverlookStateDelegate FOverlookStateDelegate
---@field OverlookZoomDelegate FOverlookZoomDelegate
---@field OverlookSlideMoveDelegate FOverlookSlideMoveDelegate
---@field OverlookSlideErrorDelegate FOverlookSlideErrorDelegate
---@field OnCharacterDeadDelegate FOnCharacterDeadDelegate
---@field ObserveCharacterFailedDelegate FObserveCharacterFailedDelegate
---@field ObserveCharacterSuccessDelegate FPlayerControllerDelegate
---@field bHasWinFinalGame boolean
---@field bClampControllerRelativeYaw boolean
---@field ControllerRelativeYawMin number
---@field ControllerRelativeYawMax number
---@field CurOperatePlayerRevivalPoint ARevivalPointActor
---@field IdCardMarkType number
---@field SavedRotation FRotator
---@field TimerHandle_ClearFireSign FTimerHandle
---@field ClearFireSignDelayTime number
---@field LastFrameCacheControlRotation FRotator
---@field CachedViewControlRotation FRotator
---@field DisableJoystickMultiControl boolean
---@field VehicleControlMode number
---@field VehicleJoystickLRSwitcher boolean
---@field ZombieList ULuaArrayHelper<AActor>
---@field bLastClampControllerRelativeYaw boolean
---@field InWateringRange boolean
---@field ActivitdedIDMap ULuaMapHelper<number, number>
---@field TeammateStateChangeCompressedData FTeamateStateChangedCompressData
---@field TeammateStateChangeCompressedDataHigh FTeamateStateChangedCompressDataHigh
---@field TeammateStateChangeCompressedDataLow FTeamateStateChangedCompressDataLow
---@field TeammateUAVStateChangeCompressedData FTeamateStateUAVChangedCompressData
---@field StreamingDistanceScaleFlying number
---@field PostPickupItems ULuaArrayHelper<number>
---@field bIsPlayerInWhiteCircle boolean
---@field OnPlayerInOutWhiteCircleChangedDelegate FOnPlayerInOutWhiteCircleChangedDelegate
---@field OnShowCharmPlayerCountDownDelegate FOnGameStartCountDownDelegate
---@field PlayerVehiclePawnStateChanged FPlayerVehiclePawnStateChanged
---@field OnCurrentPlayerKillNumChangedDelegate FOnCurrentPlayerKillNumChanged
---@field TrainingUIBP UTrainingGroundWidget
---@field bAAlOpen boolean
---@field bEnableSpectatorSkipSwitchCameraInAAl boolean
---@field NeedScreenShot boolean
---@field FrameCaptureClass AFrameCaptureActor
---@field GlideCount number
---@field EnableTombBoxBattleUpgrade boolean
---@field WeaponUpgradeIdToSkinBaseIDMap ULuaMapHelper<number, number>
---@field ConsumeRankPlayerInfo FConsumeRankPlayerInfo
---@field BigwarAvatarSettingType number
---@field OnBigwarAvatarSettingTypeChange FBigwarAvatarSettingTypeChangeDelegate
---@field ob_chicken_id number
---@field patrol_right_cases number
---@field LargeAircraftData FLargeAircraftData
---@field curr_cabin_animation number
---@field parachute_sign_binds ULuaMapHelper<number, number>
---@field fall_land_effect_id number
---@field ClothingUpgradeTwinsMap ULuaMapHelper<number, number>
---@field KillTipsEffectSkinIDMap ULuaMapHelper<number, number>
---@field selfWingInfo FWingSyncInfo
---@field SpecMotionRestCostCount number
---@field GlideSubType number
---@field bShouldShowGlideConfig boolean
---@field GlideConfigState number
---@field OBTransformCompPath UOBTransformCtrlComponent
---@field bEnableShowOtherOBTransformPawn boolean
---@field bEnableEscapeShowOtherOBTransformPawn boolean
---@field OnShowOtherOBTransformChangedDelegate FOnShowOtherOBTransformChanged
---@field OnOBTransformStateChange FOBTransformStateChange
---@field isGMTestKillFlow boolean
---@field IsGlobalTeamAssembleDisplayOpened boolean
---@field IsEnableTeamAssembleDisplay boolean
---@field bAutoUseTeamAssembleData boolean
---@field bIsEnableTeamAssembleDisplayForEscapeMode boolean
---@field bDelayHideLoadingUI boolean
---@field bRealHideLoadingUI boolean
---@field bWhenPlayTeamAssembleRefreshData boolean
---@field TeamAssembleDisplayChanged FTeamAssembleDisplayChangedDelegate
---@field TeamAssemableDisplayInfoList ULuaArrayHelper<FTeamAssembleAvatarDisplayInfo>
---@field bForceHideLoadingUI boolean
---@field OnSwitchToTeamAssembleViewState FSwitchTeamAssembleViewStateDelegate
---@field TimeToSwitchToTeamAssembleView number
---@field TeamAssembleTimeTolerance number
---@field TeamAssembleMinPlayers number
---@field EscapeDonotShowTeamAssembleTheRemainingTimeLessThan number
---@field MainUIVisibilityChanged FMainUIVisibilityChangedDelegate
---@field HasSwitchToTeamAssembleView boolean
---@field DynamicPointLightsNum number
---@field LastDynamicPointLightsNum number
---@field HasCheckUpdateTeamAssemableData boolean
---@field TimeOffsetToUpdateTeamAssemable number
---@field DisplayWeaponID number
---@field DisplayVehicleID number
---@field DisplayBackpackID number
---@field DisplayHelmetID number
---@field TVLiveEventDataCollectInterval number
---@field StateTypeOnReplay FStateType
---@field NewbieCompPath UNewbieGuideComponent
---@field BornLandVehicleRelevance ULuaArrayHelper<number>
---@field LockControllerYawToPlayer boolean
---@field occupationManager UOccupationManagerComponent
---@field CacheCurrentPawnState number
---@field CurrentWeaponFunction EWeaponOperationMode
---@field WeaponFunctionChangingInterval number
---@field bWeaponFunctionIsChanging boolean
---@field WeaponFunctionLastChangingTime number
---@field WeatherIndex number
---@field bDstWeatherFog boolean
---@field bCanDropItem boolean
---@field AssetPreLoadingComponentClassSoftPtr UAssetPreLoadingComponent
---@field EnableAssetPreLoadingMinDeviceLevel number
---@field bEnableAssetPreLoadingOnDS boolean
---@field MainControllerwTouchInterface UTouchInterface
---@field bIsLayoutLRSwitchOpened boolean
---@field bDisplayDamageNumber boolean
---@field bShowAICrossHairInReplay boolean
---@field CachedPreLoadClassList ULuaArrayHelper<UObject>
---@field ObserverHostComponentPath UObserverHostComponent
---@field bReceivedOnRepPlayerState boolean
---@field bReceivedOnRepPawn boolean
---@field VaultFailDSCppDelegate FFailedOnClientDelegate
---@field FailedOnClientDelegate FFailedOnClientDelegate
---@field bIsOpenGraySceneOnDeath boolean
---@field bSceneIsGrayOnDeath boolean
---@field FadeGrayInterpSpeed number
---@field TotalTalkTime number
---@field OnRoomModeReceive FRoomModeReceive
---@field bShowResPoint boolean
---@field bVoiceChanger boolean
---@field iCampToolStatusFromServer number
---@field bCampPrivileges boolean
---@field bShowAirLine boolean
---@field bUseDistanceMeasurement boolean
---@field bShowTeammateKillInfo boolean
---@field bEnablePointEnhance boolean
---@field bOpenCampToolQuickAirPoint boolean
---@field bOpenCampToolAutoHitPoint boolean
---@field bEnableAirPointEnhance boolean
---@field bEnableSoundPromptEnhance boolean
---@field bEnableSoundPromptEnhanceClient boolean
---@field bDice boolean
---@field CampKDATipsID number
---@field bCampGuide boolean
---@field WeaponAttachmentEquipNotifyDataCacheList ULuaArrayHelper<FWeaponAttachmentEquipNotifyData>
---@field GVoiceTeamRoomName string
---@field CurrentUIStyleNameSet ULuaSetHelper<string>
---@field UIStyleWhiteList ULuaArrayHelper<string>
---@field OnLoadUserWidgetStyleDelegate FOnLoadUserWidgetStyleDelegate
---@field bCurJoystickVisState_old boolean
---@field bJoystickCollapsedByUIStyle_old boolean
---@field CurrentApplyStyle ULuaArrayHelper<UUserWidgetStyle>
---@field PopKartMarkIDList ULuaMapHelper<number, ESTPopkartAreaTriggerType>
---@field PopKartMarkVisibilityDistance number
---@field WeaponDamageMonitorSoftClass AActor
---@field CharmValue number
---@field CharmLevel number
---@field ResearchAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field BornlandShowCarID number
---@field GalaxyFaceInfoIndex string
---@field CustomAvatarAbilityList ULuaArrayHelper<number>
---@field ShowOtherRingBodyEffects number
---@field LastRingBodyEffects number
---@field ClothingUpgradeDatas ULuaArrayHelper<FClothingUpgradeDatas>
---@field ClothingUpgradeShowCondition number
---@field playerFaceInfo string
---@field bPlayGunMasterVideo boolean
---@field PetInfo FPlayerPetInfo
---@field OnTouchInterfaceChangedDelegate FOnTouchInterfaceChangedDelegate
---@field OnBountyBuyItemListDelegate FGunmasterBountyBuyDelegate
---@field OnPlayerHitFireBtnDelegate FPlayerHitFireBtnDelegate
---@field DelayReloadAvatarChar ASTExtraBaseCharacter
---@field DelayReloadSpectatingWeaponAvatarFrame number
---@field DelayReloadAvatarWeaponChar ASTExtraBaseCharacter
---@field CurrentMarkInstanceID ULuaMapHelper<number, number>
---@field bIsEnableUploadPersonalOP boolean
---@field CurrentApplyWidgetLayout ULuaMapHelper<string, FWidgetLayoutData>
---@field VehicleAudioCheckInterval number
---@field OnClientBountyBuyItemResult FOnClientBountyBuyItemResult
---@field HomeTeammateUIDToNameMap ULuaMapHelper<string, string>
---@field OnHomeTeammateChangeDelegate FOnHomeTeammateChangeDelegate
---@field CurrentFakePossessComp IFakePossessInterface
---@field SendTLogCD number
---@field SendFallingTLogCD number
---@field AiServiceSpectatorClassPtr AAiServiceSpectator @AIService观战用的Pawn
---@field OnMouseMoveEvent FOnMouseMoveDelegate
---@field bMoveChangeInput boolean
---@field OBSimulateViewData FSimViewData
---@field UniqPrintLog ULuaArrayHelper<string> @controll some ue_log print one time. feishen, 20220124
---@field TriggerLevelsClientWhiteList ULuaArrayHelper<string>
---@field TriggerLevelsClientBlackList ULuaArrayHelper<string>
---@field TriggerLevelWhiteListProxy ULuaMapHelper<string, FTriggerLevelLoadProxy>
---@field TriggerLevelBlackListProxy ULuaMapHelper<string, FTriggerLevelLoadProxy>
---@field bNeedWeaponsCompanionComp boolean
---@field bNeedWeaponsCompanionClientComp boolean
---@field bWeaponsCompanionPlayTag boolean
---@field WeaponsCompanionSyncAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponsCompanionAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field TestWeaponsCompanionRule number
---@field bWeaponsCompanionFighting_Server boolean
---@field bWeaponsCompanionFighting_Client boolean
---@field OnReplaceSuitSkin FOnReplaceSuitSkinDelegate
---@field OnPlayerExitFreeCamera FOnPlayerExitFreeCameraDelegate
---@field OnPossessPawn FOnPossessPawnDelegate
---@field OnVoiceCheckShowMoveImage FOnVoiceCheckShowMoveImage
---@field OnVoiceCheckShowVehicleImage FOnVoiceCheckShowVehicleImage
---@field OnVoiceCheckShowWeaponShootImage FOnVoiceCheckShowWeaponShootImage
---@field OnVoiceCheckShowGlassImage FOnVoiceCheckShowGlassImage
---@field OnUpdateViewPitchLimit FUpdateViewPitchLimitDelegate
---@field bForceSetControlRotation boolean
---@field HostTarget ASTExtraPlayerController
---@field ClientDeviceInfo FDeviceInfo
---@field OnGMUpdateDynamicLevels FOnUpdateDynamicLevels
---@field FPPScopeAimProcessList ULuaArrayHelper<UObject>
---@field OnReceiveActiveMoveStuckResult FReceiveActiveMoveStuck
---@field ServerWorldTimeSeconds number
---@field ServerWorldRealTimeSeconds number
---@field RegionIDList ULuaArrayHelper<string>
---@field OnRegionIDListChangedDelegate FOnRegionIDListChangedDelegate
---@field NotNetRelevantDoorList ULuaArrayHelper<FDoorNetInfo>
---@field ClickRepInfo ULuaArrayHelper<FClick_ValidInfo_Rep>
---@field LocalClickRepInfo ULuaArrayHelper<FClick_ValidInfo_Rep>
---@field PlaneTypeForTLog number
---@field PendingRegistNewbieGuides ULuaArrayHelper<UNewbieGuideItemObject>
---@field bHasRunTeleportGM boolean
---@field BigWorldToBattleRoyaleItemCountMap ULuaMapHelper<number, number>
---@field FPPDefaultFov number
---@field TPPDefaultFov number
---@field ScopeFov number
---@field ScopeZoomValue number
---@field ToClientScopeZoomValue number
---@field OwnedMultiPlayerAircraftSoftClass AAircraftCharacter
---@field MultiPlayerAircraftItemID number
---@field bHaveMultiPlayerAircraft boolean
---@field MultiPlayerAircraftLevel number
---@field bPutOfWingClothes boolean
---@field bDisableSpawnAircraftForRespawn boolean
---@field OnPlayerSpawnVehicleCraft FOnPlayerSpawnVehicleCraft
---@field PreProccessRotationInputDelegate FPreProccessRotationInputDelegate
---@field ShooterDSCacheDataMap ULuaMapHelper<number, FShooterDSCacheData>
---@field LobbyServerUseItemContextMap ULuaMapHelper<UObject, number>
---@field DebugGyroData FVector
---@field DebugAccModeRate FVector
---@field DebugMotionControlEnable boolean
---@field DebugMotionFrameCount number
---@field DebugMotionControlNotInParachute boolean
---@field bMotionControlInParachute boolean
---@field DebugMotionControlNotInPlane boolean
---@field DebugMotionControlYawInput number
---@field DebugMotionControlPitchInput number
---@field PadCheckScreenRate number
---@field PadCheckFoldingScreenRate number
---@field PadCheckPadDefaultFOV number
---@field ClientWeaponAntiCheatManagerTemplate UClientWeaponAntiCheatManager
---@field OnPlayerAIHostDelegate FPlayerAIHostDelegate
---@field TimerHandle_Test FTimerHandle
---@field OnBountyHunterVisibleChanged FBountyHunterVisibleChangedDelegate
---@field OnNewbieGuideSpawnDelegate FOnNewbieGuideSpawnDelegate
---@field OnNewbieGuideFinishedInitDelegate FOnNewbieGuideFinishedInitDelegate
---@field bNotifyNetCleanUp boolean
---@field OnPlayerTeamIDChanged FOnPlayerTeamIDChanged
---@field CurrentTwinsID number
---@field bForceKeepJoyStick boolean
---@field EScapeBackpackDisplayCondition number
---@field EScapeArmorDisplayCondition number
---@field EScapeHelmetDisplayCondition number
---@field bLTSkinAvatarDisplayCondition boolean
---@field bOnlyNotifyingTeamLeftQueueInfo boolean
---@field PlayerNetConnectionLostHiddenCheckTimer number
---@field InputActionActor AActor
---@field PCPureActor AActor
---@field InputActionActorClass AInputActionActor
---@field OnInputActionActorInit FOnInputActionActorInit
---@field PendingStateUIRequests ULuaArrayHelper<FPendingStateUIRequest> @待处理的状态UI请求缓存，在 InputActionActor 创建前缓存 ShowStateUI 请求
---@field bLockPitchYawInput boolean
---@field bForceResetMouseCursorPos boolean
---@field bAutoOpenTombBox boolean
---@field AvatarDownloadTLogID number
---@field AvatarDownloadManagerTLog string
---@field AvatarDownloadTLogIDForGallery number
---@field AvatarDownloadManagerTLogForGallery string
---@field PlanesID ULuaArrayHelper<number>
---@field bRuntimeEditorLockCamera boolean
---@field bRuntimeEditorLockJoystickType boolean
---@field DamageReportDataList ULuaArrayHelper<FDamageReportData>
---@field ClickTouchInfoMap ULuaMapHelper<ETouchIndex, FTouchFingerData>
---@field DamageNumberRecordMap ULuaMapHelper<AActor, FDamageNumberWrapper>
---@field DamageNumberRecordNum number
---@field OnCampToolAirQuickPointClick FCampToolAirQuickPointDelegate
---@field OnItemBoxExpandDelegate FOnItemBoxExpandDelegate
---@field PickupAvailableActorPool ULuaArrayHelper<AActor>
---@field ConfirmedPickupActorPool ULuaArrayHelper<AActor>
---@field OldConfirmedPickupActorPool ULuaArrayHelper<AActor>
---@field CacheCriticalVerifyData FServerControlRotExtraParams_CriticalVerify
---@field bHasFinishedRegisterPlayerPickUpList boolean
---@field PlayerPickupAvailableActorPoolCheckInterval number
---@field CheckPlayerPickupAvailableActorPoolFailedCntThreshold number
---@field bHasReportPlayerPickupAvailableActorPoolMiss boolean
---@field CurCheckPlayerPickupAvailableActorPoolInterval number
---@field CachePlayerPickupAvailableActorPoolMissData ULuaMapHelper<AActor, number>
---@field OnControlRotationChange FOnControlRotationChange
---@field KillByMatchTeammateTipsID number
---@field ReportBigControlRotatorTriggerValue number
---@field OnStateChangeDelegate FOnControllerStateChangeDelegate
---@field AITutelageManagerSoftPtr UAITutelageManagerComponent
---@field AlreadyHostCount number
---@field OnAITutelageInitFinishedDelegate FOnOnAITutelageInitFinishedDelegate
---@field OnClientUnpossessPawnDelegate FOnClientUnpossessPawnDelegate
---@field CurrentRingBodyPlayingParticleSystemID number
---@field bShowTombBoxMapMark boolean
---@field PostUpdateCameraManagerDelegate FPostUpdateCameraManager
---@field bPendingTeamAssemableWhenInterruptDuoActionPerformance boolean
---@field IgnoreReportBigControlRotatorCount number
---@field bForceRepControlRotation boolean
---@field bIgnoreTombBoxNetRelevancy boolean
---@field bIgnoreMonsterNetRelevancy boolean
---@field bEnableLeftPeekCameraSymmetry boolean
---@field LeftPeekCameraSymmetryData FCameraOffsetData
---@field CampToolComponentPath UCampToolComponent
---@field OnCampToolCompCreateFinishedDelegate FOnCampToolCompCreateFinishedDelegate
---@field fLastShowVehicleHitCharacterUITime number
---@field fShowVehicleHitCharacterUICD number
---@field ShippingLogPos FVector2D
---@field bIgnoreOutofWorld boolean
---@field SingleBackpackComp USingleBackpackComp
---@field ClientFatalDamageRecordCustomDataIDNameMap ULuaMapHelper<number, string>
---@field EliteOBCaptureActor AActor
---@field bEnableEliteOBCapture boolean
---@field FeatureComs ULuaArrayHelper<UFeatureCustomModule_Controller>
---@field bEnableFancyTip boolean
---@field OnPlayerPickUpHighValueItem FWinOBHighValueItemTipsDelegate
---@field OnFirstPlayerOpenAirDrop FWinOBHighValueItemTipsDelegate
local ASTExtraPlayerController = {}

function ASTExtraPlayerController:RecordPressFireBtnFrame() end

---@param InPoseState ESTEPoseState
function ASTExtraPlayerController:RecordPoseBtnLastPressFrame(InPoseState) end

---Broadcast InputActionTriggerEvent delegate
---@param InputActionType EInputActionType
---@param bIsRelease boolean
function ASTExtraPlayerController:BroadcastInputActionType(InputActionType, bIsRelease) end

function ASTExtraPlayerController:BlueprintGetSpectatorPawnClass() end

---@param keyID number
---@param pos FVector
---@param isStart boolean
function ASTExtraPlayerController:ClientSetAIPos(keyID, pos, isStart) end

---@param startPos FVector
---@param targetPos FVector
function ASTExtraPlayerController:ClientSetAIPosToTarget(startPos, targetPos) end

function ASTExtraPlayerController:RPC_Client_SyncFreeCameraState() end

---@param bIsFreeCam boolean
function ASTExtraPlayerController:RPC_Server_SyncFreeCameraState(bIsFreeCam) end

---@param bRecording boolean
---@param AttackerUID number
function ASTExtraPlayerController:RPC_Server_NotifyRecordingDeathPlayback(bRecording, AttackerUID) end

function ASTExtraPlayerController:RPC_Client_ReadyFinishDeathPlayback() end

---@param AttackerUID number
---@param SVDs ULuaArrayHelper<FSimViewDataWrapper>
function ASTExtraPlayerController:RPC_Client_NotifyRecordedSVDs(AttackerUID, SVDs) end

---@param KillInfo ULuaArrayHelper<FRecordDeathReplayEventInfo>
function ASTExtraPlayerController:RPC_Client_NotifyRecordedKillInfo(KillInfo) end

---@param AttackerUID number
---@param Msg string
function ASTExtraPlayerController:RPC_Server_OnDeathPlaybackMsg(AttackerUID, Msg) end

function ASTExtraPlayerController:OnReAddedAfterDeathReplayEnd() end

function ASTExtraPlayerController:RecoverMouseShowState() end

---@return boolean
function ASTExtraPlayerController:IsLastBreathOrRescueingOther() end

---@param rate number
function ASTExtraPlayerController:MoveForward(rate) end

---@param rate number
function ASTExtraPlayerController:MoveRight(rate) end

---@param rate number
function ASTExtraPlayerController:MoveUp(rate) end

---@param rate number
function ASTExtraPlayerController:Turn(rate) end

---@param rate number
function ASTExtraPlayerController:LookUp(rate) end

---@param Type EPlayerPerspectiveType
function ASTExtraPlayerController:InitializePlayerPerspectiveType(Type) end

---Event
---角色移动控制事件，需要通过接口UGCGameSystem.SetMoveInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值
---@param Axis FVector2D @向量单位，取值范围（-1~1）
function ASTExtraPlayerController:UGCMoveEvent(Axis) end

function ASTExtraPlayerController:PreReInitUIAfterReCreatePawn() end

function ASTExtraPlayerController:PostReInitUIAfterReCreatePawn() end

---Event
---玩家转向控制事件，需要通过接口UGCGameSystem.SetLookInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值
---@param Rot FVector2D @向量单位，取值范围（-1~1）
function ASTExtraPlayerController:UGCLookEvent(Rot) end

---@param rate number
function ASTExtraPlayerController:OnAxisKeyBoardQE(rate) end

function ASTExtraPlayerController:EnterCameraFreeMoveMode() end

function ASTExtraPlayerController:ExitCameraFreeMoveMode() end

---@param InCameraFreeMoveSpeedScale number
function ASTExtraPlayerController:SetCameraFreeMoveSpeedScale(InCameraFreeMoveSpeedScale) end

function ASTExtraPlayerController:OnRep_CameraFreeMoving() end

---@param BannedName string
---@param banTime number
function ASTExtraPlayerController:RPC_Server_SyncBanPlayerInfo(BannedName, banTime) end

---@param ContinueTimes number
function ASTExtraPlayerController:RPC_Server_NotifyClientStopMoveInParachute(ContinueTimes) end

---@param msgId number
function ASTExtraPlayerController:RPC_Cient_SendRadioInfoById(msgId) end

---@param msgId number
function ASTExtraPlayerController:SendEagleWacherRadioMsg(msgId) end

---@param msgId number
function ASTExtraPlayerController:ClientReceiveEagleWacherEnterRadio(msgId) end

function ASTExtraPlayerController:OnRep_EagleWacherRadioTimes() end

function ASTExtraPlayerController:DecreaseRadioTimes() end

function ASTExtraPlayerController:OnRep_PromotionInfo() end

function ASTExtraPlayerController:OnRep_ShowPromotionTipsType() end

function ASTExtraPlayerController:ShowFinishPromotionTips() end

function ASTExtraPlayerController:RPC_C2S_SendHasShowPromotionTipes() end

---@return boolean
function ASTExtraPlayerController:IsJoystickTouched() end

function ASTExtraPlayerController:ReceiveAutoTouchMove() end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function ASTExtraPlayerController:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function ASTExtraPlayerController:InputTouchEnd(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function ASTExtraPlayerController:InputTouchRepeat(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:DoubleClickCancel(FingerIndex) end

---@param bDie boolean
function ASTExtraPlayerController:SpectatorCameraChange_Broadcast(bDie) end

---@return boolean
function ASTExtraPlayerController:IsEnableCameraPossess() end

---@return boolean
function ASTExtraPlayerController:IsEnableCameraPossessAllFeatureActive() end

function ASTExtraPlayerController:HandleLandOnGroundEnd() end

function ASTExtraPlayerController:OnRep_WeaponSystemReconnectReplicateData() end

---@param HideUI boolean
---@param ShrinkMenu boolean
function ASTExtraPlayerController:StopBuildingMode(HideUI, ShrinkMenu) end

---@param checkVehicle boolean
function ASTExtraPlayerController:EnableBuildingMode(checkVehicle) end

function ASTExtraPlayerController:OnRep_WeaponReconnectOpIndex() end

function ASTExtraPlayerController:HandleReceiveWeaponReconnectOpIndex() end

---@param bShow boolean
function ASTExtraPlayerController:ShowHideMainUI(bShow) end

function ASTExtraPlayerController:ReceiveClientRestart() end

---@param Data FClientFatalDamageRecordData
function ASTExtraPlayerController:BroadcastFatalDamageToClient(Data) end

---@param Data FClientFatalDamageRecordDataSimple
function ASTExtraPlayerController:BroadcastFatalDamageToClientSimple(Data) end

---@param Data FClientFatalDamageRecordData
---@return boolean
function ASTExtraPlayerController:CheckShouldBroadcastFatalDamageToClient(Data) end

---@param SavorKey number
---@param RescuerKey number
function ASTExtraPlayerController:BroadcastRescueInfo(SavorKey, RescuerKey) end

---@param CurMaxKillerStatus EFatalDamageMaxKillStatus
---@param MaxKillerName string
---@param MaxKillerKey number
---@param MaxKillerUID string
---@param KillNum number
function ASTExtraPlayerController:BroadcastBeMaxKillerToClient(CurMaxKillerStatus, MaxKillerName, MaxKillerKey, MaxKillerUID, KillNum) end

function ASTExtraPlayerController:CallSendServerReportImprisonmenter() end

function ASTExtraPlayerController:SendServerReportImprisonmenter() end

---BatttleSceneAvatarDisplayInfo Start*******************
function ASTExtraPlayerController:CheckTeammateAvatarDisplayInfoInit() end

---@param TargetCharacter ASTExtraPlayerCharacter
---@return FBattleSceneAvatarDisplayInfo
function ASTExtraPlayerController:ExtractAvatarDisplayInfo(TargetCharacter) end

---@return FBattleSceneAvatarDisplayInfo
function ASTExtraPlayerController:GetSelfAvatarDisplayInfo() end

function ASTExtraPlayerController:OnRep_BattleSceneAvatarDisplayInfoList() end

---@param actorName string
---@param actorUID string
---@return string
function ASTExtraPlayerController:GetRemarkNameByGID(actorName, actorUID) end

function ASTExtraPlayerController:ShowCustomCrossHair() end

function ASTExtraPlayerController:HideCustomCrossHair() end

---@param UI UWidget
function ASTExtraPlayerController:OnAsyncFinishShowUI(UI) end

---@param Loc FVector
---@return boolean
function ASTExtraPlayerController:IsReleasePosInAimBtnRange(Loc) end

---@return boolean
function ASTExtraPlayerController:IsInBuildingMode() end

---@return number
function ASTExtraPlayerController:GetUseMotionControlType() end

---@return boolean
function ASTExtraPlayerController:GetUseMotionControlEnable() end

---@return number
function ASTExtraPlayerController:GetAimMode() end

---@return number
function ASTExtraPlayerController:GetPeekMode() end

---@return boolean
function ASTExtraPlayerController:GetAimFireEnable() end

---@return boolean
function ASTExtraPlayerController:GetIsShowPeek() end

---@return boolean
function ASTExtraPlayerController:GetShouldAutoScopeWhenPeek() end

---@return boolean
function ASTExtraPlayerController:GetIsHideProneBtn() end

---@return boolean
function ASTExtraPlayerController:GetUseMotionControlLog() end

---Initialize all tasks for the player
---@param InPlayerKey number
function ASTExtraPlayerController:InitTaskDatas(InPlayerKey) end

---Broadcast OnInitTaskData delegate
---@param TaskID number
---@param Process number
---@param Ext_Info string
function ASTExtraPlayerController:InitTaskData(TaskID, Process, Ext_Info) end

---Broadcast OnInitCollectionData delegate
---@param ItemID number
---@param CurrentCount number
---@param TotalCount number
function ASTExtraPlayerController:InitCollectionData(ItemID, CurrentCount, TotalCount) end

---Broadcast OnTaskConditionActived delegate
---@param ConditionType ETaskConditionType
---@param InDataSource UVariableSet
function ASTExtraPlayerController:ActiveTaskTrigger(ConditionType, InDataSource) end

---Broadcast OnTaskConditionDeactived delegate
---@param ConditionType ETaskConditionType
---@param InDataSource UVariableSet
function ASTExtraPlayerController:DeactiveTaskTrigger(ConditionType, InDataSource) end

---Execute RetrieveTaskAreaType delegate
---@return number
function ASTExtraPlayerController:GetSpecialAreaID() end

function ASTExtraPlayerController:JumpFromPlane() end

function ASTExtraPlayerController:ServerJumpFromPlane() end

---@param IsStartFollow boolean
---@param Target ASTExtraBaseCharacter
function ASTExtraPlayerController:ServerNotifyAutoFollowStatus(IsStartFollow, Target) end

function ASTExtraPlayerController:OpenParachute() end

function ASTExtraPlayerController:ServerOpenParachute() end

function ASTExtraPlayerController:Fight() end

function ASTExtraPlayerController:ServerFight() end

---@param FingerIndex ETouchIndex
---@return number
function ASTExtraPlayerController:GetTouchForce(FingerIndex) end

---@param Request FDamageRequest
function ASTExtraPlayerController:RequestApplyScheduledDamage(Request) end

---@param InMovePackLossRate number
function ASTExtraPlayerController:SetMovePackLossRate(InMovePackLossRate) end

---@param InMoveAdjustPackRate number
function ASTExtraPlayerController:SetMoveAdjustPackRate(InMoveAdjustPackRate) end

---@param InMovePackReceiveProportion number
function ASTExtraPlayerController:SetMovePackReceiveProportion(InMovePackReceiveProportion) end

---@return number
function ASTExtraPlayerController:GetLastPackRTTTime() end

---@param QueryLength number
---@return number
function ASTExtraPlayerController:GetMovePackRTTDeltaQueueAverage(QueryLength) end

---@param InMovePackIntervalMoveDist number
function ASTExtraPlayerController:SetMovePackIntervalMoveDist(InMovePackIntervalMoveDist) end

function ASTExtraPlayerController:ReportAntiCheatInfo() end

---@param bIsRightBtn boolean
function ASTExtraPlayerController:OnPlayerHitFireBtn(bIsRightBtn) end

---@param isCollapsed boolean
function ASTExtraPlayerController:OnPickUpCollapsed(isCollapsed) end

---@param isCollpased boolean
function ASTExtraPlayerController:OnDeadBoxCollapsed(isCollpased) end

function ASTExtraPlayerController:OnDeadBoxExpand() end

function ASTExtraPlayerController:OnPlayerClickDriveBtn() end

function ASTExtraPlayerController:OnPlayerUseRecoverItem() end

function ASTExtraPlayerController:GetCommonBackpackInterface() end

function ASTExtraPlayerController:GetBattleBackpackInterface() end

---@return string
function ASTExtraPlayerController:GetCommonBackpackOwnerName() end

function ASTExtraPlayerController:GetCommonBackpackInterfaceBlueprint() end

---@param IsMovable boolean
---@param bClearMoveInput boolean
function ASTExtraPlayerController:SetMovable(IsMovable, bClearMoveInput) end

---@param IsMovable boolean
---@param TimeLimit number
---@param bClearMoveInput boolean
function ASTExtraPlayerController:SetMoveableWithTimeLimit(IsMovable, TimeLimit, bClearMoveInput) end

---@return boolean
function ASTExtraPlayerController:GetIsAutoAimEnabled() end

---@param bIsEnable boolean
function ASTExtraPlayerController:SetIsAutoAimEnabled(bIsEnable) end

---@return boolean
function ASTExtraPlayerController:GetMagnetAssist() end

---@param bIsEnable boolean
function ASTExtraPlayerController:SetMagnetAssist(bIsEnable) end

---@param needLocalRefresh boolean
---@return FGameModeConfig
function ASTExtraPlayerController:GetGameModeConfig(needLocalRefresh) end

---@param InAxisValue FVector
function ASTExtraPlayerController:RotationRateCPP(InAxisValue) end

---@return number
function ASTExtraPlayerController:GetOrientationLandscapeValue() end

---@return string
function ASTExtraPlayerController:GetMotionControlConfigStr() end

---@param InChar ASTExtraBaseCharacter
---@param InRepCondition ELifetimeCondition
function ASTExtraPlayerController:SetCurPossessChar(InChar, InRepCondition) end

---@param IsHide boolean
function ASTExtraPlayerController:RPC_C2S_ClientSetHelmetHideInGame(IsHide) end

---@param FOV number
---@param mode EPlayerCameraMode
function ASTExtraPlayerController:SetCurrentCameraFOV(FOV, mode) end

---@param FOV number
function ASTExtraPlayerController:LockFieldOfView(FOV) end

function ASTExtraPlayerController:UnlockFieldOfView() end

---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraPlayerController:IsTeamMate(InCharacter) end

---@param STPlayerState ASTExtraPlayerState
---@param ChangedCompressedData FTeamateStateChangedCompressData
function ASTExtraPlayerController:TeamMateStateChanged(STPlayerState, ChangedCompressedData) end

---@param STPlayerState ASTExtraPlayerState
---@param ChangedCompressedDataHigh FTeamateStateChangedCompressDataHigh
function ASTExtraPlayerController:TeamMateStateChangedHigh(STPlayerState, ChangedCompressedDataHigh) end

---@param STPlayerState ASTExtraPlayerState
---@param ChangedCompressedDataLow FTeamateStateChangedCompressDataLow
function ASTExtraPlayerController:TeamMateStateChangedLow(STPlayerState, ChangedCompressedDataLow) end

---@param TeammateIndex number
function ASTExtraPlayerController:ReplayRPC_TeammateStateChanged(TeammateIndex) end

---@param STPlayerState ASTExtraPlayerState
---@param ChangedCompressedData FTeamateStateUAVChangedCompressData
function ASTExtraPlayerController:TeamMateUAVStateChanged(STPlayerState, ChangedCompressedData) end

---@param TeamMateInfo FTeamMateStateInfo
function ASTExtraPlayerController:CallTeamMateStateChanged(TeamMateInfo) end

---@param TeamMateInfo FTeamMateStateInfo
function ASTExtraPlayerController:CallTeamMateUAVStateChanged(TeamMateInfo) end

function ASTExtraPlayerController:RequestHasSignalBar() end

---@param bHas boolean
function ASTExtraPlayerController:RespHasSignalBar(bHas) end

---@param Key string
---@param Value string
function ASTExtraPlayerController:SetSubTitleDynamicInfo(Key, Value) end

---@param Key string
---@return string
function ASTExtraPlayerController:GetSubTitleDynamicInfo(Key) end

function ASTExtraPlayerController:RPC_Server_RequestAllPlayerInfo() end

---@param InfoDataList ULuaArrayHelper<FSinglePlayerFixInfo>
function ASTExtraPlayerController:RPC_Client_SyncAllPlayerInfo(InfoDataList) end

---@param InfoData FSinglePlayerFixInfo
function ASTExtraPlayerController:RPC_Client_AddPlayerInfo(InfoData) end

---@param RemovePlayerKey number
function ASTExtraPlayerController:RPC_Client_RemovePlayerInfo(RemovePlayerKey) end

---@param bUseItem boolean
---@param bPickupItemInDefaultSuitSkin boolean
function ASTExtraPlayerController:PickupInitialItemListForRobustness(bUseItem, bPickupItemInDefaultSuitSkin) end

---@param bUseItem boolean
---@param bPickupItemInDefaultSuitSkin boolean
function ASTExtraPlayerController:PickInitialItemListIntoBackpack(bUseItem, bPickupItemInDefaultSuitSkin) end

function ASTExtraPlayerController:InitialSuitSkinList() end

---@param bUseItem boolean
function ASTExtraPlayerController:InitialSuitSkinForRobustness(bUseItem) end

function ASTExtraPlayerController:PickupSuitSkinForRespawn() end

---@param ItemDefineID FItemDefineID
---@return boolean
function ASTExtraPlayerController:IsInDefaultSuitSkinList(ItemDefineID) end

function ASTExtraPlayerController:ModifyInitialItemListForClothingUpgrade() end

function ASTExtraPlayerController:ModifySuitSkinDataForClothingUpgrade() end

function ASTExtraPlayerController:ReInitParachuteItem() end

function ASTExtraPlayerController:ReInitGlideItem() end

---@param DefineID FItemDefineID
---@param expectedPickupCount number
---@return boolean
function ASTExtraPlayerController:GetIsForbitPickUpItem(DefineID, expectedPickupCount) end

function ASTExtraPlayerController:TestDropAllAndReplace() end

---@param TipID number
function ASTExtraPlayerController:TestAddOperationTip(TipID) end

---@param StartOperationTypeID number
---@param Count number
---@param CurIsSpectating boolean
function ASTExtraPlayerController:TestExcellentOperation(StartOperationTypeID, Count, CurIsSpectating) end

---@param ResultType number
---@param KillNum number
---@param ResPlatformID number
function ASTExtraPlayerController:TestShowTeamerKillTip(ResultType, KillNum, ResPlatformID) end

---@param SuitSkinIndex number
function ASTExtraPlayerController:ServerReplaceSuitSkin(SuitSkinIndex) end

---@param SuitSkinIndex number
---@param Delay number
---@param CD number
---@param Text string
---@param SoftAnimMontagePath FSoftObjectPath
function ASTExtraPlayerController:ServerBigWorldReplaceSuitSkin(SuitSkinIndex, Delay, CD, Text, SoftAnimMontagePath) end

---@param InCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:BigWorldFinishReplaceSuitSkin(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:BigWorldCancelReplaceSuitSkin(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraPlayerController:BigWorldConditionReplaceSuitSkin(InCharacter) end

---@return number
function ASTExtraPlayerController:BigWorldGetReplaceSuitSkinCD() end

---@param _MaxDeltaYawBetweenControlAndActor number
---@param _bWaistFollowingController boolean
function ASTExtraPlayerController:SetControlRotationLimits(_MaxDeltaYawBetweenControlAndActor, _bWaistFollowingController) end

---Set the control rotation. The RootComponent's rotation will also be updated to match it if RootComponent->bAbsoluteRotation is true.
---@param NewRotation FRotator
function ASTExtraPlayerController:SetControlRotation(NewRotation) end

---@param NewRotation FRotator
function ASTExtraPlayerController:ClientSetControlRotation(NewRotation) end

---@param NewRotation FRotator
function ASTExtraPlayerController:ServerSetControlRotation(NewRotation) end

---@param NewRotation FRotator
---@param CriticalVerifyParam FServerControlRotExtraParams_CriticalVerify
function ASTExtraPlayerController:ServerSetControlRotationWithParam(NewRotation, CriticalVerifyParam) end

---Activates a new touch interface for this player controller
---@param NewTouchInterface UTouchInterface
function ASTExtraPlayerController:ActivateTouchInterface(NewTouchInterface) end

---@param NewTouchInterface UTouchInterface
function ASTExtraPlayerController:LuaActivateTouchInterface(NewTouchInterface) end

---Get control look rotation
---@return FRotator
function ASTExtraPlayerController:GetControlLookRotation() end

---@param Root UUAEUserWidget
function ASTExtraPlayerController:InitIngameUIRoot(Root) end

function ASTExtraPlayerController:UploadUsrWidgetOpenFrequency() end

---@param WidgetFrequencyMsg ULuaArrayHelper<string>
function ASTExtraPlayerController:RPC_C2S_UploadUsrWidgetOpenFrequency(WidgetFrequencyMsg) end

---@param LineTraceRange number
---@param HitTaget boolean
---@return FVector
function ASTExtraPlayerController:GetControlLookPoint(LineTraceRange, HitTaget) end

---notify player about started match
function ASTExtraPlayerController:ClientGameStarted() end

---Starts the online game using the session name in the PlayerState
function ASTExtraPlayerController:ClientStartOnlineGame() end

---Ends the online game using the session name in the PlayerState
function ASTExtraPlayerController:ClientEndOnlineGame() end

---Notifies clients to send the end-of-round event
---@param bIsWinner boolean
---@param ExpendedTimeInSeconds number
function ASTExtraPlayerController:ClientSendRoundEndEvent(bIsWinner, ExpendedTimeInSeconds) end

---@param bDie boolean
function ASTExtraPlayerController:OnSpectatorCameraChange(bDie) end

---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
function ASTExtraPlayerController:ServerTestBaseIsSync(ClientMovementBase, ClientBaseBoneName) end

---@param ServerFlag number
---@param DSMovementBase UPrimitiveComponent
---@param DSBaseBoneName string
function ASTExtraPlayerController:ClientTestBaseIsSync(ServerFlag, DSMovementBase, DSBaseBoneName) end

function ASTExtraPlayerController:TestBaseIsSync() end

function ASTExtraPlayerController:GetGameScreenSize() end

---@param InPlayerName string
function ASTExtraPlayerController:KillSomeOne(InPlayerName) end

---@param Count number
function ASTExtraPlayerController:KillSomeCount(Count) end

---@param Count number
function ASTExtraPlayerController:KillSomeTeamerBekilledCount(Count) end

---@param Count number
function ASTExtraPlayerController:KillSomeEnemyCount(Count) end

---@param GameModeID string
function ASTExtraPlayerController:SetGameModeID(GameModeID) end

function ASTExtraPlayerController:KillAll() end

---@param GivenNumber number
function ASTExtraPlayerController:Kill(GivenNumber) end

---@param X number
---@param Y number
---@param Z number
function ASTExtraPlayerController:MoveTo(X, Y, Z) end

---@param X number
---@param Y number
---@param Z number
---@param SendToServer boolean
function ASTExtraPlayerController:MoveToNan(X, Y, Z, SendToServer) end

---@param X number
---@param Y number
---@param Z number
function ASTExtraPlayerController:MoveNeareastVehicleTo(X, Y, Z) end

---@param PlayAnimImmediately number
---@param CallHeight number
function ASTExtraPlayerController:CallEscapeHelicopter(PlayAnimImmediately, CallHeight) end

function ASTExtraPlayerController:PlayEscapeHelicopterAnim() end

---@param ModeID number
---@param TeamMemNum number
function ASTExtraPlayerController:LocalTestGameResult(ModeID, TeamMemNum) end

---@param Enable boolean
function ASTExtraPlayerController:SetAirDropEnable(Enable) end

---@param Enable boolean
function ASTExtraPlayerController:SetAirAttackEnable(Enable) end

---@param Enable boolean
---@param x number
---@param y number
function ASTExtraPlayerController:SetCirCenterFixed(Enable, x, y) end

---@param Modifier number
function ASTExtraPlayerController:SetSpeed(Modifier) end

---@param Index number
function ASTExtraPlayerController:StartAirDrop(Index) end

---@param InVel number
function ASTExtraPlayerController:SetJumpVel(InVel) end

---@param X number
---@param Y number
---@param Index number
function ASTExtraPlayerController:StartAirDropSpecified(X, Y, Index) end

function ASTExtraPlayerController:StartAirDropChara() end

---@param Index number
function ASTExtraPlayerController:StartAirAttack(Index) end

---@param X number
---@param Y number
---@param Radius number
function ASTExtraPlayerController:StartAirAttackSpecified(X, Y, Radius) end

---@param Val boolean
function ASTExtraPlayerController:SetTimeSpeedCheck(Val) end

---@param Val number
function ASTExtraPlayerController:SetTimeSpeedFactor(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleUserCmdDeltaFlag(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleUserCmdDeltaCheckSum(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleServerAcknowledgePossession(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleUserCmdDeltaSendAck(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleUserCmdDelta(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleVehicleSync(Val) end

---@param Val boolean
function ASTExtraPlayerController:ToggleCheatLocation(Val) end

function ASTExtraPlayerController:ShowAllRoles() end

function ASTExtraPlayerController:SwitchViewTarget() end

---@param Id number
---@param Count number
function ASTExtraPlayerController:AddItem(Id, Count) end

---@param Id number
---@param Modifier number
---@param Count number
function ASTExtraPlayerController:AddItemWithModifier(Id, Modifier, Count) end

---@param Id number
---@param eDropReason EBattleItemDropReason
---@param Count number
function ASTExtraPlayerController:DropItemGM(Id, eDropReason, Count) end

---@param WeaponID number
---@param PendantID number
function ASTExtraPlayerController:AddWeaponPendantItem(WeaponID, PendantID) end

---@param Id number
function ASTExtraPlayerController:UseItem(Id) end

---@param Id number
function ASTExtraPlayerController:DisuseItem(Id) end

---@param Id number
---@param eDropReason EBattleItemDropReason
---@param Count number
function ASTExtraPlayerController:DropItemNoGM(Id, eDropReason, Count) end

function ASTExtraPlayerController:SpawnVehicle() end

---@param Path string
function ASTExtraPlayerController:SpawnVehicleWithPath(Path) end

---@param Path string
function ASTExtraPlayerController:SpawnVehicleWithPathAndEnter(Path) end

function ASTExtraPlayerController:ExitVehicleAndDestory() end

---@param radius number
function ASTExtraPlayerController:PutVehiclesToSleep(radius) end

---@param radius number
function ASTExtraPlayerController:WakeUpVehicles(radius) end

---@param Num number
---@param Difficulty number
---@param bAIRandomlySpawn number
function ASTExtraPlayerController:SpawnAI(Num, Difficulty, bAIRandomlySpawn) end

---@param Num number
---@param BehaviorTreeIndex number
---@param Radius number
---@param AvatarList string
---@param SpawnLoc string
function ASTExtraPlayerController:SpawnAITest(Num, BehaviorTreeIndex, Radius, AvatarList, SpawnLoc) end

---@param Num number
---@param AITeamID number
---@param Radius number
---@param Difficulty number
---@param Deliver number
---@param SpawnItem number
---@param AIStyle number
function ASTExtraPlayerController:SpawnAIInFight(Num, AITeamID, Radius, Difficulty, Deliver, SpawnItem, AIStyle) end

---@param Radius number
---@param TryNum number
function ASTExtraPlayerController:TestBigWorldTeleport(Radius, TryNum) end

---@param InOwner APawn
---@param TarLocation FVector
---@param bIsSuccess boolean
function ASTExtraPlayerController:TestBigWorldTeleportHelper(InOwner, TarLocation, bIsSuccess) end

function ASTExtraPlayerController:TestBigWorldCollision() end

---@param Num number
---@param AITeamID number
---@param Difficulty number
function ASTExtraPlayerController:SpawnAITeam(Num, AITeamID, Difficulty) end

---@param Range number
function ASTExtraPlayerController:PrintAIFloatDebugInfo(Range) end

---@param HP number
function ASTExtraPlayerController:SetMaxHealth(HP) end

function ASTExtraPlayerController:DisableMyLandscapeDraw() end

function ASTExtraPlayerController:EnableMyLandscapeDraw() end

function ASTExtraPlayerController:StartReadyCountDown() end

function ASTExtraPlayerController:RemoveAllDoors() end

function ASTExtraPlayerController:DebugWorldPlayerAvatarInfo() end

function ASTExtraPlayerController:LocalProfileFootprint() end

function ASTExtraPlayerController:ShowTimeFromStart() end

---@param serverSec number
function ASTExtraPlayerController:ShowTimeFromStartOfServer(serverSec) end

---@param ConfigGraphIndex number
---@param WorldSizeX number
---@param WorldSizeY number
---@param BlockLoadTime number
---@param WorldLEftTopX number
---@param WorldLeftTopY number
---@param BlockSizeX number
---@param BlockSizeY number
function ASTExtraPlayerController:StartAutoDoorTest(ConfigGraphIndex, WorldSizeX, WorldSizeY, BlockLoadTime, WorldLEftTopX, WorldLeftTopY, BlockSizeX, BlockSizeY) end

---@param ConfigGraphIndex number
function ASTExtraPlayerController:StopAutoDoorTest(ConfigGraphIndex) end

function ASTExtraPlayerController:TestEnterAvatarDisplay() end

function ASTExtraPlayerController:StartRecord() end

function ASTExtraPlayerController:ToggleAICruising() end

---@param IsDaytime number
---@param Index number
function ASTExtraPlayerController:TestChangeTODWeather(IsDaytime, Index) end

---@param Time number
---@param bFixedTime number
function ASTExtraPlayerController:TestChangeTODCurTime(Time, bFixedTime) end

---@param Num number
function ASTExtraPlayerController:TestChangeTODDaysPassed(Num) end

---Replace Weapon current avatar skin to NewWeaponSkinID,'true' will be return when success,else return false.
---@param WeaponID number
---@param NewWeaponSkinID number
---@return boolean
function ASTExtraPlayerController:ReplaceWeaponSkin(WeaponID, NewWeaponSkinID) end

---@param OpenWeatherID number
function ASTExtraPlayerController:GMOpenWeather(OpenWeatherID) end

---@param CloseWeatherID number
function ASTExtraPlayerController:GMCloseWeather(CloseWeatherID) end

function ASTExtraPlayerController:GMEnableRandom() end

function ASTExtraPlayerController:GMDisableRandom() end

function ASTExtraPlayerController:GMSetBoolPoisonCircle() end

function ASTExtraPlayerController:GMSetBoolAirAttack() end

function ASTExtraPlayerController:GMSetBoolAI() end

---@param X number
---@param Y number
function ASTExtraPlayerController:GMMoveAllAITogether(X, Y) end

function ASTExtraPlayerController:GMSetBoolAirDrop() end

function ASTExtraPlayerController:GMEnableAllComponent() end

function ASTExtraPlayerController:GMDisableAllComponent() end

---@param Index number
function ASTExtraPlayerController:GMSetCircleIndex(Index) end

function ASTExtraPlayerController:GMSetNextCircleIndex() end

---@param GameCount number
---@param Index number
---@param Time number
function ASTExtraPlayerController:GMGenerateCirclesByGameCount(GameCount, Index, Time) end

function ASTExtraPlayerController:GMGenerateAllGroundItems() end

---@param InPlayer ASTExtraPlayerCharacter
function ASTExtraPlayerController:LerpFPPCameraFinished(InPlayer) end

function ASTExtraPlayerController:LerpFPPCamera() end

---@param Mode EPlayerCameraMode
---@param InCharacter ASTExtraBaseCharacter
---@param IsUseLerpFPP boolean
---@param IsForceSwitch boolean
function ASTExtraPlayerController:SwitchCameraMode(Mode, InCharacter, IsUseLerpFPP, IsForceSwitch) end

---@param Mode EPlayerCameraMode
---@param InCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:SwitchCameraModeScope(Mode, InCharacter) end

---@param NewMode EPlayerCameraMode
---@param InCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:HandleCameraModeChanged(NewMode, InCharacter) end

---@param FingerIndex ETouchIndex
---@return boolean
function ASTExtraPlayerController:ShouldIgnoreTouchMove(FingerIndex) end

---@param Loc FVector
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:BeginTouchScreen(Loc, FingerIndex) end

---@param Loc FVector
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:TouchMove(Loc, FingerIndex) end

---@param DeltaLoc FVector
---@param DPIScaleLoc FVector
---@return FVector2D
function ASTExtraPlayerController:CalcTouchMoveSpeedScale(DeltaLoc, DPIScaleLoc) end

---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:EndTouchScreen(FingerIndex) end

---@param TouchBegin boolean
---@param FingerIndex ETouchIndex
---@param AutoCancelPeek boolean
function ASTExtraPlayerController:SetPeekFingerIndex(TouchBegin, FingerIndex, AutoCancelPeek) end

---@return ETouchIndex
function ASTExtraPlayerController:GetPeekFingerIndex() end

---@param TouchBegin boolean
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:SetScopeFingerIndex(TouchBegin, FingerIndex) end

---@return ETouchIndex
function ASTExtraPlayerController:GetScopeFingerIndex() end

---@param TouchBegin boolean
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:SetAngledSightFingerIndex(TouchBegin, FingerIndex) end

---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:SetSkillFingerIndex(FingerIndex) end

---@param TouchBegin boolean
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:SetLeftFireFingerIndex(TouchBegin, FingerIndex) end

---@return ETouchIndex
function ASTExtraPlayerController:GetLeftFireFingerIndex() end

---@param YawInput number
---@param PitchInput number
function ASTExtraPlayerController:OnGyroMoveOnVehicle(YawInput, PitchInput) end

---@param bIsMotionControl boolean
---@return FRotator
function ASTExtraPlayerController:GetSensibilityRate(bIsMotionControl) end

---@param InMoveDalta number
---@param InIsX boolean
---@return number
function ASTExtraPlayerController:CalculateMouseMoveRotatorMD(InMoveDalta, InIsX) end

---@param InEnable boolean
---@param InSetFOVScaleAuto boolean
---@param InFOVScale boolean
function ASTExtraPlayerController:SetEnableMouseMoveRotatorMD(InEnable, InSetFOVScaleAuto, InFOVScale) end

---@param InType ESightScopeSensibilityChangeType
function ASTExtraPlayerController:SetSensibilityChangeType(InType) end

function ASTExtraPlayerController:SwitchCameraModeByOrder() end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function ASTExtraPlayerController:ShouldForceFPPView(InCharacter) end

---@param IsNewFPP boolean
function ASTExtraPlayerController:ReqSwitchPersonPerspective(IsNewFPP) end

---@param FppResult boolean
function ASTExtraPlayerController:RspSwitchPersonPerspectiveFail(FppResult) end

function ASTExtraPlayerController:OnRepNotify_SetBattleOwner() end

---@param PitchMin number
---@param PitchMax number
---@param HitState EPawnState
---@return boolean
function ASTExtraPlayerController:GetPoseViewLimit(PitchMin, PitchMax, HitState) end

function ASTExtraPlayerController:UpdatePoseViewPitchLimit() end

---@return boolean
function ASTExtraPlayerController:CheckSkipUpdatePoseViewPitchLimit() end

---@param PitchMin number
---@param PitchMax number
---@param bConsiderFreeCamera boolean
function ASTExtraPlayerController:SetViewPitchLimit(PitchMin, PitchMax, bConsiderFreeCamera) end

---@param YawMin number
---@param YawMax number
function ASTExtraPlayerController:SetViewYawLimit(YawMin, YawMax) end

---@param LimitName string
---@param PitchMin number
---@param PitchMax number
function ASTExtraPlayerController:SetViewPitchLimitByName(LimitName, PitchMin, PitchMax) end

---@param LimitName string
---@param YawMin number
---@param YawMax number
function ASTExtraPlayerController:SetViewYawLimitByName(LimitName, YawMin, YawMax) end

---@param RemoveLimit FViewLimitRange
function ASTExtraPlayerController:RemoveViewLimit(RemoveLimit) end

---@param bIsIn boolean
function ASTExtraPlayerController:NotifyInOutPickUpActorWrapperBP(bIsIn) end

function ASTExtraPlayerController:StartGame() end

---@param _DamageToOther number
function ASTExtraPlayerController:ClientOnDamageToOther(_DamageToOther) end

function ASTExtraPlayerController:ClientOnHurt() end

---@param Val number
---@param type InputType
---@param Reason InputReason
function ASTExtraPlayerController:SetPitchInput(Val, type, Reason) end

---@param Val number
---@param type InputType
---@param Reason InputReason
function ASTExtraPlayerController:SetYawInput(Val, type, Reason) end

---@param Pitch number
---@param Yaw number
---@param Reason InputReason
function ASTExtraPlayerController:RecordInputRotByReason(Pitch, Yaw, Reason) end

function ASTExtraPlayerController:InputCameraFreeViewStart() end

function ASTExtraPlayerController:InputCameraFreeViewEnd() end

---@param FigerIndex ETouchIndex
---@param ResetStartRotation boolean
function ASTExtraPlayerController:StartFreeCamera(FigerIndex, ResetStartRotation) end

---@param Loc FVector
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:FreeCameraTouchMove(Loc, FingerIndex) end

---@param Loc FVector
---@param FigerIndex ETouchIndex
function ASTExtraPlayerController:SetFreeCameraRotation(Loc, FigerIndex) end

---@param SpringArmDeltaRot FRotator
---@param IsShouldAdditiveDeltaRot boolean
function ASTExtraPlayerController:SetFreeCameraRotation_Internal(SpringArmDeltaRot, IsShouldAdditiveDeltaRot) end

---@param IsForceReset boolean
function ASTExtraPlayerController:ExitFreeCamera(IsForceReset) end

---@param InArm USpringArmComponent
---@param InCamera UCameraComponent
function ASTExtraPlayerController:ExitFreeCameraWithTarget(InArm, InCamera) end

---@param Loc FVector
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:ModifyTouchIndex(Loc, FingerIndex) end

---@param locX number
---@param locY number
---@param sizeX number
---@param sizeY number
---@return FVector2D
function ASTExtraPlayerController:CalcAttactBtnPos(locX, locY, sizeX, sizeY) end

function ASTExtraPlayerController:DelayForceExitFreeCamera() end

---@param OutPitch number
---@param OutYaw number
---@param bIsAddPitch boolean
---@param bIsAddYaw boolean
---@param CurMotionData FVector
---@param PitchReverce number
---@param config FMotionControlConfig
---@param Left number
---@param Right number
---@param bLandScapeOrientation boolean
function ASTExtraPlayerController:CalInputFromRotaionRate(OutPitch, OutYaw, bIsAddPitch, bIsAddYaw, CurMotionData, PitchReverce, config, Left, Right, bLandScapeOrientation) end

---@return boolean
function ASTExtraPlayerController:IsAllowActorTouchMove() end

function ASTExtraPlayerController:ViewPlane() end

---@param YawAdd number
---@param PitchAdd number
---@param Loc FVector
function ASTExtraPlayerController:ViewVehicle(YawAdd, PitchAdd, Loc) end

---@param AkEventID number
---@param AkLocation FVector
function ASTExtraPlayerController:ServerHearSound(AkEventID, AkLocation) end

---@param AkEventID number
---@param AkLocation FVector
function ASTExtraPlayerController:ClientHearSound(AkEventID, AkLocation) end

---@param bIsIn boolean
function ASTExtraPlayerController:EnablePlayerInHouse(bIsIn) end

---@return number
function ASTExtraPlayerController:RetriveMobileContentScaleFactor() end

function ASTExtraPlayerController:StartLandOnGroundAfterJumpPlane() end

function ASTExtraPlayerController:OnLandOnGroundAfterJumpPlaneEnd() end

---@param bIsSprint boolean
function ASTExtraPlayerController:JoystickTriggerSprint(bIsSprint) end

---@param member number
---@param status number
---@param isRobot boolean
function ASTExtraPlayerController:MemberVoice(member, status, isRobot) end

---@param member number
---@param status number
---@param isRobot boolean
function ASTExtraPlayerController:MemberVoiceLBS(member, status, isRobot) end

---@param OperatingMode EJoystickOperatingMode
---@param GoStraightAngle number
function ASTExtraPlayerController:SetJoystickOperatingMode(OperatingMode, GoStraightAngle) end

---@param isOpenFreeView boolean
function ASTExtraPlayerController:SetJoystickFreeViewOpacity(isOpenFreeView) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
function ASTExtraPlayerController:ServerUseItem(DefineID, Target, Reason) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function ASTExtraPlayerController:CustomUseItemOnServer(DefineID, Target, Reason) end

function ASTExtraPlayerController:ClearControllerServerUseItemDelegate() end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
function ASTExtraPlayerController:ServerAndClientUseItem(DefineID, Target, Reason) end

---@param MasterID number
function ASTExtraPlayerController:ServerDropNakedModel(MasterID) end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
---@return boolean
function ASTExtraPlayerController:HandleServerDropItem(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
function ASTExtraPlayerController:ServerDropItem(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
function ASTExtraPlayerController:ServerDropItemAndForbidTeammatePickup(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
function ASTExtraPlayerController:DropItemAndForbidTeammatePickup(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
function ASTExtraPlayerController:UserDropItemOperation(DefineID) end

---@param DefineID FItemDefineID
---@param Reason EBattleItemDisuseReason
function ASTExtraPlayerController:ServerDisuseItem(DefineID, Reason) end

---@param yaw number
---@param pitch number
function ASTExtraPlayerController:DoTouchMove(yaw, pitch) end

---@param Loc FVector
---@param SizeX number
---@param SizeY number
---@param LeftOffset number
---@param BottomOffset number
---@param Slot UCanvasPanelSlot
function ASTExtraPlayerController:DoUITouchMove(Loc, SizeX, SizeY, LeftOffset, BottomOffset, Slot) end

---@param fingerIndex number
function ASTExtraPlayerController:PressFire(fingerIndex) end

---@param isThrow boolean
function ASTExtraPlayerController:PressGrenade(isThrow) end

---@param bShow boolean
function ASTExtraPlayerController:ShowFireBtn(bShow) end

function ASTExtraPlayerController:InitJoyStickAfterActivation() end

---@param Loc FVector
function ASTExtraPlayerController:SetPlayerMark(Loc) end

---@param NewLoc FVector
---@param bAdd boolean
---@param MaxNum number
---@param bClearAll boolean
function ASTExtraPlayerController:SetPlayerMapMultiMark(NewLoc, bAdd, MaxNum, bClearAll) end

---@param MapMarkParticleLocation FVector4
function ASTExtraPlayerController:SetMapMarkParticleLocation(MapMarkParticleLocation) end

---@param MapMarkParticleLocation FVector4
function ASTExtraPlayerController:SetMapMarkParticleLocationOverride(MapMarkParticleLocation) end

---@param HitResult FHitResult
---@return boolean
function ASTExtraPlayerController:ShouldMapMarkHit(HitResult) end

---@param bVirtualstickAutoSprint boolean
---@param bUIOnly boolean
function ASTExtraPlayerController:SetVirtualStickAutoSprintStatus(bVirtualstickAutoSprint, bUIOnly) end

---@param bJSVisiable boolean
function ASTExtraPlayerController:SetVirtualStickVisibility(bJSVisiable) end

---@param bUIVisibility boolean
function ASTExtraPlayerController:CanSeeAllUI(bUIVisibility) end

---@param AutoHide boolean
---@param AutoHideTime number
function ASTExtraPlayerController:SetVirtualAutoHideMode(AutoHide, AutoHideTime) end

---@param bUIVisibility boolean
function ASTExtraPlayerController:DebugSetUIVisibility(bUIVisibility) end

---@param JSCenter FVector2D
function ASTExtraPlayerController:SetJoyStickCenter(JSCenter) end

---@param JSInteractionSize FVector2D
function ASTExtraPlayerController:SetJoyStickInteractionSize(JSInteractionSize) end

---@param message string
---@param msgID number
---@param chatType QuickChatType
---@param InPlayerKey string
function ASTExtraPlayerController:SendStringMsg(message, msgID, chatType, InPlayerKey) end

---@param state ASTExtraPlayerState
---@param enable boolean
function ASTExtraPlayerController:SetEnableVoiceByPlayerKey(state, enable) end

function ASTExtraPlayerController:FireOrGrenade() end

---@param JSIndex number
function ASTExtraPlayerController:RestoreDefaultInteractionSize(JSIndex) end

---@param NewType EJoystickIsInside
function ASTExtraPlayerController:SetJoyStickInsideType(NewType) end

---@return FVector2D
function ASTExtraPlayerController:GetJoyStickCenter() end

---@return FVector2D
function ASTExtraPlayerController:GetJoyStickVisualCenter() end

---@param JSOpacity number
---@param bNeedUpdateCenter boolean
function ASTExtraPlayerController:SetJoyStickOpacity(JSOpacity, bNeedUpdateCenter) end

---@return number
function ASTExtraPlayerController:GetJoyStickOpacity() end

---@param NewOpacity number
function ASTExtraPlayerController:SetJoystickUserSettingOpacity(NewOpacity) end

---@return number
function ASTExtraPlayerController:GetJoystickUserSettingOpacity() end

---@param JSScale number
function ASTExtraPlayerController:SetJoyStickScale(JSScale) end

---@param JSScale number
function ASTExtraPlayerController:SetJoyStickScaleBaseOriginSize(JSScale) end

---@return FVector2D
function ASTExtraPlayerController:GetJoyStickOriginVisualSize() end

---@return FVector2D
function ASTExtraPlayerController:GetJoyStickOriginThumbSize() end

---@param InOriginVisualSize FVector2D
function ASTExtraPlayerController:SetJoyStickOriginVisualSize(InOriginVisualSize) end

---@param InOriginThumbSize FVector2D
function ASTExtraPlayerController:SetJoyStickOriginThumbSize(InOriginThumbSize) end

---@return boolean
function ASTExtraPlayerController:IsJoyStickValid() end

---@return FVector2D
function ASTExtraPlayerController:GetJoyStickVisualSize() end

---@param CauserLocation FVector
---@param DamageCauser ASTExtraCharacter
function ASTExtraPlayerController:FireTakeDamagedEvent(CauserLocation, DamageCauser) end

---@param InVehicle ASTExtraVehicleBase
---@param Damage number
---@param LeftHP number
---@param DamageType number
---@param DamageCauser AActor
---@param EventInstigator AController
function ASTExtraPlayerController:ClientMakeDamage_Vehicle(InVehicle, Damage, LeftHP, DamageType, DamageCauser, EventInstigator) end

---@param InVehicle ASTExtraVehicleBase
---@param Damage number
---@param LeftHP number
---@param DamageType number
---@param DamageCauser AActor
---@param EventInstigator AController
function ASTExtraPlayerController:BroadcastClientMakeDamage_Vehicle_BP(InVehicle, Damage, LeftHP, DamageType, DamageCauser, EventInstigator) end

---@param InVehicle ASTExtraVehicleBase
---@param Damage number
---@param LeftHP number
---@param DamageType number
---@param PartNameType number
---@param PartDirType number
---@param DamageCauser AActor
---@param EventInstigator AController
function ASTExtraPlayerController:ClientMakeDamage_VehiclePart(InVehicle, Damage, LeftHP, DamageType, PartNameType, PartDirType, DamageCauser, EventInstigator) end

---@param InVehicle ASTExtraVehicleBase
---@param Damage number
---@param LeftHP number
---@param DamageType number
---@param PartNameType number
---@param PartDirType number
---@param DamageCauser AActor
---@param EventInstigator AController
function ASTExtraPlayerController:BroadcastClientMakeDamage_VehiclePart_BP(InVehicle, Damage, LeftHP, DamageType, PartNameType, PartDirType, DamageCauser, EventInstigator) end

function ASTExtraPlayerController:GetMaxTouchForceFinger() end

---@return boolean
function ASTExtraPlayerController:IsUse3DTouch() end

---@return boolean
function ASTExtraPlayerController:Is3DTouchOpenned() end

---@return number
function ASTExtraPlayerController:GetTouchForceFireThreshold() end

function ASTExtraPlayerController:EndForceTouchFire() end

function ASTExtraPlayerController:OnRep_DeadTombBox() end

---@param NewBattleFieldKiller ASTExtraBaseCharacter
function ASTExtraPlayerController:SetBattleFieldKiller(NewBattleFieldKiller) end

---@param PrevKillerPtr ASTExtraBaseCharacter
function ASTExtraPlayerController:OnRep_BattleFieldKiller(PrevKillerPtr) end

function ASTExtraPlayerController:SwitchToDyingCharacter() end

function ASTExtraPlayerController:SwitchToDeadBox() end

---@param tombName string
---@return boolean
function ASTExtraPlayerController:IsForbitPick(tombName) end

---@param TombBox APlayerTombBox
---@return boolean
function ASTExtraPlayerController:IsTombBoxTeammate(TombBox) end

function ASTExtraPlayerController:OnRep_ForbitPick() end

---@return boolean
function ASTExtraPlayerController:IsForbitPickMakeEffect() end

---@param bForbit boolean
---@param logType number
function ASTExtraPlayerController:SetTeammateForbitPick(bForbit, logType) end

function ASTExtraPlayerController:OnRep_ForbitPickEffect() end

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function ASTExtraPlayerController:CanBePickUp(Target, AdditionalParam, pickCount) end

---@param defineID FItemDefineID
---@return boolean
function ASTExtraPlayerController:CanBePickUpByItemID(defineID) end

---@param defineID FItemDefineID
---@return boolean
function ASTExtraPlayerController:DoNotPickUpByItemID(defineID) end

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
function ASTExtraPlayerController:DoAfterCanNotPickUp(Target, AdditionalParam, pickCount) end

function ASTExtraPlayerController:OnRep_CanImprisonmentTeammate() end

---@return boolean
function ASTExtraPlayerController:IsCanImprisonmentTeammate() end

function ASTExtraPlayerController:OnRep_BlackEntTime() end

---@param ID number
function ASTExtraPlayerController:AddGameTipBlackID(ID) end

---@param ID number
function ASTExtraPlayerController:RemoveGameTipBlackID(ID) end

---@param IDList ULuaArrayHelper<number>
function ASTExtraPlayerController:AddGameTipBlackIDList(IDList) end

---@param IDList ULuaArrayHelper<number>
function ASTExtraPlayerController:RemoveGameTipBlackIDList(IDList) end

---@param ID number
---@param bIncludeObserver boolean
function ASTExtraPlayerController:ShowTeammatesTipsWithMsgID(ID, bIncludeObserver) end

---@param ID number
---@param param1 string
---@param param2 string
---@param bIncludeObserver boolean
function ASTExtraPlayerController:ShowTeammatesTipsWithMsgIDAndString(ID, param1, param2, bIncludeObserver) end

---@param ID number
---@param param1 string
---@param param2 string
function ASTExtraPlayerController:DisplayGameTipForLowFPSWarning(ID, param1, param2) end

---@param ID number
---@param bReliable boolean
function ASTExtraPlayerController:DisplayGameTipWithMsgID(ID, bReliable) end

---@param ID number
---@param param1 string
---@param param2 string
---@param bReliable boolean
function ASTExtraPlayerController:DisplayGameTipWithMsgIDAndString(ID, param1, param2, bReliable) end

---@param ID number
---@param param1 string
---@param param2 string
---@param ExtraParams UUAEBlackboard
function ASTExtraPlayerController:DisplayGameTipWithMsgIDAndFullParams(ID, param1, param2, ExtraParams) end

---@param ID number
---@param param1 string
---@param param2 string
function ASTExtraPlayerController:DisplayGameWarnTipWithMsgIDAndString(ID, param1, param2) end

---@param ID number
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgID(ID) end

---@param ID number
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgIDReliable(ID) end

---@param ID number
---@param param1 string
---@param param2 string
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgIDAndString(ID, param1, param2) end

---@param ID number
---@param param1 string
---@param param2 string
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgIDAndStringReliable(ID, param1, param2) end

---@param UIName string
---@param bIsShow boolean
function ASTExtraPlayerController:ClientDisplayUIWithUINameReliable(UIName, bIsShow) end

---@param ID number
---@param param1 string
---@param param2 string
---@param ExtraParam string
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgIDAndStringExtraParam(ID, param1, param2, ExtraParam) end

---@param ID number
---@param ExtraParam string
function ASTExtraPlayerController:ClientDisplayGameTipWithMsgIDAndExtraParam(ID, ExtraParam) end

---@param ID number
---@param param1 string
---@param param2 string
---@param Main FTopTipImageWidgetConfig
---@param sec FTopTipImageWidgetConfig
function ASTExtraPlayerController:ShowTipWithReplace(ID, param1, param2, Main, sec) end

---@param ID number
---@param param1 string
---@param param2 string
---@param Time number
function ASTExtraPlayerController:ShowTipWithTime(ID, param1, param2, Time) end

---@param ID number
---@param param1 string
---@param param2 string
---@param Time number
function ASTExtraPlayerController:ClientShowTipWithTime(ID, param1, param2, Time) end

---@param InMsgName string
---@param InModuleName string
---@param InParamsCollection string
function ASTExtraPlayerController:Notify_Client_UIMsg_WithParams(InMsgName, InModuleName, InParamsCollection) end

---@param Func string
---@param Module string
---@param Param1 string
function ASTExtraPlayerController:BPCastUIMsgWithParam(Func, Module, Param1) end

---@param Func string
---@param Module string
---@param Param1 string
---@param Param2 string
function ASTExtraPlayerController:BPCastUIMsgWithTwoParam(Func, Module, Param1, Param2) end

function ASTExtraPlayerController:GetGameStateReconnectInfoOnServer() end

function ASTExtraPlayerController:LocalGetGameStateReconnectInfo() end

---@param ReConnectInfo FReConnectGameStateInfo
function ASTExtraPlayerController:SetGameStateReconnectInfoToClient(ReConnectInfo) end

---@param StartLoc FVector
---@param Rot FRotator
function ASTExtraPlayerController:ShowBulletShoot(StartLoc, Rot) end

---@param Path ULuaArrayHelper<FVector>
function ASTExtraPlayerController:ShowMovePath(Path) end

---@param Points ULuaArrayHelper<FVector>
---@param Color FColor
---@param LifeTime number
function ASTExtraPlayerController:ShowPoints(Points, Color, LifeTime) end

---@param Center FVector
---@param Box FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
---@param Thickness number
function ASTExtraPlayerController:ShowBox(Center, Box, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end

function ASTExtraPlayerController:OnRep_Pawn_BP() end

---NOTE ： OB/Replay对接 pawn in/out的函数，因为OB/Replay不执行OnRep_Pawn   by: chasepeng zengzuo CG015临时增加，之后会统一到OB/Replay组件中处理 FuncCalledFrom: ob=1 , replay=2 IsInNotOut: in=1 out=0
---@param CurTargetPawn ASTExtraPlayerCharacter
---@param FuncCalledFrom number
---@param IsInNotOut number
---@param LastTargetPawn ASTExtraPlayerCharacter
function ASTExtraPlayerController:OnPlayerPawnInitOBOrReplay(CurTargetPawn, FuncCalledFrom, IsInNotOut, LastTargetPawn) end

function ASTExtraPlayerController:BP_RecoverStatusAfterReconnecting() end

---@param TargetCharacter ASTExtraBaseCharacter
---@param TargetWeapon ASTExtraShootWeapon
---@param InStartFireInfo FStartFireInfo
function ASTExtraPlayerController:ServerStartFire(TargetCharacter, TargetWeapon, InStartFireInfo) end

---@param TargetWeapon ASTExtraShootWeapon
---@param InAntiCheatData FSACData
function ASTExtraPlayerController:ServerHandleHitDataArray(TargetWeapon, InAntiCheatData) end

---@param TargetCharacter ASTExtraCharacter
---@param HandledTime number
function ASTExtraPlayerController:ServerStartPreBarrel(TargetCharacter, HandledTime) end

---@param TargetCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:ServerStartBarrel(TargetCharacter) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param shootType ESTEWeaponShootType
---@param TargetWeapon ASTExtraShootWeapon
function ASTExtraPlayerController:ServerSetShootType(TargetCharacter, shootType, TargetWeapon) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param AmmoID number
---@param TargetWeapon ASTExtraShootWeapon
function ASTExtraPlayerController:ServerChangeShootWeaponAmmoType(TargetCharacter, AmmoID, TargetWeapon) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param reloadMethod EWeaponReloadMethod
function ASTExtraPlayerController:ServerSetReloadMethod(TargetCharacter, reloadMethod) end

---@param TargetWeapon ASTExtraShootWeapon
---@param InAntiCheatData FSacStructNew
function ASTExtraPlayerController:ServerHandleHitDataArrayNew(TargetWeapon, InAntiCheatData) end

---@param TargetWeapon ASTExtraShootWeapon
---@param InAntiCheatData FSacStructSplit
function ASTExtraPlayerController:ServerHandleHitDataArraySplit(TargetWeapon, InAntiCheatData) end

-----story=874239511 【CG019】对未命中的射击上报，简化FShootTimeData上报数据量，优化流量
---@param TargetWeapon ASTExtraShootWeapon
---@param InData FSacStructSplit_Shoot
function ASTExtraPlayerController:ServerHandleHitDataArraySplit_Shoot(TargetWeapon, InData) end

---@param TargetWeapon ASTExtraShootWeapon
---@param AmmoType number
---@param ShootID number
function ASTExtraPlayerController:RPC_Server_ClientShootBulletAmmoType(TargetWeapon, AmmoType, ShootID) end

---@param Template ASTExtraExplosionEffect
---@param Trans FTransform
---@param ActorOwner AActor
---@param InstigatorPawn APawn
---@param Method ESpawnActorCollisionHandlingMethod
function ASTExtraPlayerController:ServerReplicateExplosionEffect(Template, Trans, ActorOwner, InstigatorPawn, Method) end

---@param Template ASTExtraExplosionEffect
---@param Trans FTransform
---@param ActorOwner AActor
---@param InstigatorPawn APawn
---@param Method ESpawnActorCollisionHandlingMethod
function ASTExtraPlayerController:BroadcastClientsSpawnExplosionEffect(Template, Trans, ActorOwner, InstigatorPawn, Method) end

---@param LogicSocket string
---@param ID FItemDefineID
---@param bEnableBroadcast boolean
function ASTExtraPlayerController:RPC_Client_DestroyWeapon(LogicSocket, ID, bEnableBroadcast) end

---@param Slot1 ESurviveWeaponPropSlot
---@param Slot2 ESurviveWeaponPropSlot
function ASTExtraPlayerController:RPC_Server_NotifySwapMainWeaponFinished(Slot1, Slot2) end

---@param InCorrectionId number
---@param ServerLocation FVector_NetQuantize100
---@param ServerLinearVelocity FVector_NetQuantize100
---@param ServerRotator FVector_NetQuantizeNormal
---@param ServerAngularVelocity FVector_NetQuantize100
---@param bIsSnap boolean
---@param Floor UPrimitiveComponent
function ASTExtraPlayerController:CorrectVehicleState(InCorrectionId, ServerLocation, ServerLinearVelocity, ServerRotator, ServerAngularVelocity, bIsSnap, Floor) end

---@param IsTurnInfo boolean
---@param InReduceTime number
---@param AutoRescue boolean
---@param ServerTime number
function ASTExtraPlayerController:S2C_HelpSelf(IsTurnInfo, InReduceTime, AutoRescue, ServerTime) end

---@param HelpWho ACharacter
---@param IsTurnInfo boolean
---@param InReduceTime number
function ASTExtraPlayerController:S2C_HelpOther(HelpWho, IsTurnInfo, InReduceTime) end

---@param InText string
function ASTExtraPlayerController:S2C_ChangeHelpSelfInfoText(InText) end

---@param ByWho ACharacter
---@param IsTurnInfo boolean
---@param InReduceTime number
function ASTExtraPlayerController:S2C_BeHelpedByOther(ByWho, IsTurnInfo, InReduceTime) end

function ASTExtraPlayerController:C2S_RequestBeingRescuedRemainingTime() end

---@param bIsSkill boolean
function ASTExtraPlayerController:C2S_RequestSkillPrompt(bIsSkill) end

---@param bShow boolean
---@param RemainingTime number
---@param promptText string
---@param TotalTime number
---@param bIsSkill boolean
function ASTExtraPlayerController:S2C_ResponseSkillPrompt(bShow, RemainingTime, promptText, TotalTime, bIsSkill) end

---@param DamagerID number
---@param bAI boolean
---@param fHealth number
---@param OtherHealthStatus number
---@param ShootDistance number
---@param damageType number
---@param CauserName string
---@param DamageCauserItemID number
function ASTExtraPlayerController:RPC_Client_OnDamageNotifyRecord(DamagerID, bAI, fHealth, OtherHealthStatus, ShootDistance, damageType, CauserName, DamageCauserItemID) end

---@param Index number
---@param TotalNum number
function ASTExtraPlayerController:RPC_Client_CircleRun(Index, TotalNum) end

function ASTExtraPlayerController:OnCharacterRecoveryHealthEvent() end

function ASTExtraPlayerController:RunOnNextFrameEvent() end

function ASTExtraPlayerController:OnTrainingSensitivityRefreshEvent() end

---@param Start FVector
---@param End FVector
---@param Color FColor
---@param LifeTime number
function ASTExtraPlayerController:RPC_DrawDebug_Line(Start, End, Color, LifeTime) end

---@param Center FVector
---@param Radius number
---@param Color FColor
---@param LifeTime number
function ASTExtraPlayerController:RPC_DrawDebug_Sphere(Center, Radius, Color, LifeTime) end

---@param Center FVector
---@param HalfHeight number
---@param Radius number
---@param Rotation FQuat
---@param Color FColor
---@param LifeTime number
function ASTExtraPlayerController:RPC_DrawDebug_Capsule(Center, HalfHeight, Radius, Rotation, Color, LifeTime) end

---@param Center FVector
---@param Extent FVector
---@param LineColor FLinearColor
---@param Rotation FRotator
---@param Duration number
---@param Thickness number
function ASTExtraPlayerController:RPC_DrawDebug_Box(Center, Extent, LineColor, Rotation, Duration, Thickness) end

---@param DebugStr string
---@param Location FVector
---@param LifeTime number
function ASTExtraPlayerController:RPC_DrawDebug_String(DebugStr, Location, LifeTime) end

---@param Center FVector
---@param Radius number
---@param Segments number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function ASTExtraPlayerController:RPC_DrawDebugSphereNew(Center, Radius, Segments, LineColor, Duration, Thickness) end

---@param StartPoint FVector
---@param EndPoint FVector
function ASTExtraPlayerController:ServerFindingPath(StartPoint, EndPoint) end

---@param PathPoints ULuaArrayHelper<FVector>
function ASTExtraPlayerController:ClientFindingPathRcv(PathPoints) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHits ULuaArrayHelper<FHitResult>
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function ASTExtraPlayerController:RPC_ClientDrawDebugBoxTraceMulti(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHits, TraceColor, TraceHitColor, DrawTime) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function ASTExtraPlayerController:RPC_ClientDrawDebugBoxTraceSingle(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param Start FVector
---@param End FVector
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function ASTExtraPlayerController:RPC_ClientDrawDebugLineTraceSingle(Start, End, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@return number
function ASTExtraPlayerController:GetCurFPS() end

---@return number
function ASTExtraPlayerController:GetStatDrawCalls() end

---@return number
function ASTExtraPlayerController:GetStatTriangles() end

---@return string
function ASTExtraPlayerController:GetStatMemory() end

---@return number
function ASTExtraPlayerController:GetMaxFPS() end

---@return boolean
function ASTExtraPlayerController:GetEnableFramePrediction() end

---@param FingerIndex ETouchIndex
---@param Priority number
---@param TouchLoc FVector
function ASTExtraPlayerController:AddTouchMoveFinger(FingerIndex, Priority, TouchLoc) end

---@return boolean
function ASTExtraPlayerController:ResetValidTouchMoveFrame() end

---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:RemoveTouchMoveFinger(FingerIndex) end

function ASTExtraPlayerController:CorrectLastTouchLocationAfterFreeCamera() end

function ASTExtraPlayerController:ChangeSpectatorStateToFreeView() end

function ASTExtraPlayerController:OnRep_ReplicatedServerLastTransformUpdateTimeStamp() end

function ASTExtraPlayerController:ForceServerSetControlRotationOnVehicle() end

---@param TargetCharacter ASTExtraBaseCharacter
---@param TargetWeapon ASTExtraShootWeapon
---@param InStopFireInfo FStopFireInfo
function ASTExtraPlayerController:ServerStopFire(TargetCharacter, TargetWeapon, InStopFireInfo) end

---@param EachMoveWeightSetting ULuaArrayHelper<number>
function ASTExtraPlayerController:SetTouchMoveCache(EachMoveWeightSetting) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param TargetWeapon ASTExtraShootWeapon
---@param CurClipID number
---@param CurrentBulletNum number
---@param bSkipFireRateOp boolean
function ASTExtraPlayerController:CallServerStopFire(TargetCharacter, TargetWeapon, CurClipID, CurrentBulletNum, bSkipFireRateOp) end

---@param ReloadPlayer ASTExtraCharacter
---@param graphTid number
---@param graphUid number
---@param effectTid number
---@param source AActor
---@param target AActor
---@param data ULuaArrayHelper<number>
function ASTExtraPlayerController:WeaponReload_C2S_CallRemoteEffect(ReloadPlayer, graphTid, graphUid, effectTid, source, target, data) end

---@param ReloadPlayer ASTExtraCharacter
---@param graphTid number
---@param graphUid number
---@param effectTid number
---@param source AActor
---@param target AActor
---@param data ULuaArrayHelper<number>
function ASTExtraPlayerController:WeaponReload_S2C_CallRemoteEffect(ReloadPlayer, graphTid, graphUid, effectTid, source, target, data) end

---@param TargetPlayer ASTExtraCharacter
---@param reloadMethod EWeaponReloadMethod
function ASTExtraPlayerController:Weapon_C2S_ServerSetReloadMethod(TargetPlayer, reloadMethod) end

---@param TargetPlayer ASTExtraCharacter
---@param Weapon ASTExtraWeapon
function ASTExtraPlayerController:Weapon_S2C_SetReloadCurWeapon(TargetPlayer, Weapon) end

---@param TargetPlayer ASTExtraCharacter
function ASTExtraPlayerController:WeaponReload_C2S_SaveWhetherCurUsingAdditionalWeapon(TargetPlayer) end

---@param TargetWeapon ASTExtraWeapon
---@param LeakState EFreshWeaponStateType
function ASTExtraPlayerController:Weapon_C2S_NotifyServerWeaponStateLeak(TargetWeapon, LeakState) end

---@param TargetWeapon ASTExtraWeapon
---@param RightState EFreshWeaponStateType
function ASTExtraPlayerController:Weapon_S2C_CorrectClientWeaponStateLeak(TargetWeapon, RightState) end

---@param ReportDataList ULuaArrayHelper<FClientWeaponAntiCheatShootReportData>
function ASTExtraPlayerController:Weapon_S2C_ReportClientWeaponAntiCheatShootReport(ReportDataList) end

---@param TargetWeapon ASTExtraShootWeapon
---@param ModeType EMultiFunctionalShootModeType
function ASTExtraPlayerController:Weapon_C2S_SwitchWeaponMultiFunctionalShootModeType(TargetWeapon, ModeType) end

---@param Msg string
function ASTExtraPlayerController:Weapon_C2S_SendServerPlayerWeaponMeshAbsoluteCheckMsg(Msg) end

---@param TargetWeapon AVehicleShootWeapon
function ASTExtraPlayerController:Weapon_C2S_SendServerVehicleWeaponPureReload(TargetWeapon) end

---@param LockTarget AActor
---@param LockWeapon ASTExtraShootWeapon
function ASTExtraPlayerController:Weapon_C2S_NotifyServerCancelLock(LockTarget, LockWeapon) end

function ASTExtraPlayerController:ReqStartExcellentOperationEffect() end

function ASTExtraPlayerController:ReqStopExcellentOperationEffect() end

function ASTExtraPlayerController:ReqStartKillOnceEffect() end

function ASTExtraPlayerController:OnRep_BackpackComponent() end

function ASTExtraPlayerController:OnRep_BigWorldBackpackComponent() end

function ASTExtraPlayerController:OnDSTravelRestoreBackpack() end

function ASTExtraPlayerController:InitChatComponent() end

function ASTExtraPlayerController:InitChatComponentWithPlayerKey() end

function ASTExtraPlayerController:InitTaskComponent() end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
function ASTExtraPlayerController:OnItemOperation(DefineID, OperationType, Reason) end

---@param ItemOperationInfo FItemOperationInfo
function ASTExtraPlayerController:OnItemOperationInfo(ItemOperationInfo) end

---@param DefineID FItemDefineID
function ASTExtraPlayerController:OnItemRemoved(DefineID) end

---@param InBackpackComponent UBackpackComponent
---@param InItemHandle UBattleItemHandleBase
---@param InDefineID FItemDefineID
---@param InTakenCount number
---@param bInCallHandleDrop boolean
function ASTExtraPlayerController:OnItemTaken(InBackpackComponent, InItemHandle, InDefineID, InTakenCount, bInCallHandleDrop) end

---@param InBackpackComponent UBackpackComponent
---@param ItemHandle UItemHandleBase
---@param InDefineID FItemDefineID
---@param Count number
function ASTExtraPlayerController:OnItemConsume(InBackpackComponent, ItemHandle, InDefineID, Count) end

function ASTExtraPlayerController:BackToGameDataRefresh() end

---@param ItemOperationInfo FItemOperationInfo
function ASTExtraPlayerController:OnBigWorldItemOperationInfo(ItemOperationInfo) end

---@param ItemOperationInfo FItemOperationInfo
function ASTExtraPlayerController:OnHomeItemOperationInfo(ItemOperationInfo) end

function ASTExtraPlayerController:ReceiveBackpackComponent() end

---@param TeammatePlayerid number
---@return number
function ASTExtraPlayerController:GotoSpectating(TeammatePlayerid) end

function ASTExtraPlayerController:RPC_Server_NotifyPlayDeathReplay() end

function ASTExtraPlayerController:RPC_Client_PlayDeathReplay() end

function ASTExtraPlayerController:RPC_Server_NotifyStopDeathReplay() end

function ASTExtraPlayerController:RPC_Client_OnConnectionResumeReplication() end

---@param FoundPlayerKey number
function ASTExtraPlayerController:QueryAutoSelectObservedTargetByServer(FoundPlayerKey) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraPlayerController:OnViewTargetAttachedToVehicle(InVehicle) end

---@param LastVehicle ASTExtraVehicleBase
function ASTExtraPlayerController:OnViewTargetDetachedFromVehicle(LastVehicle) end

function ASTExtraPlayerController:OnViewTargetChangeVehicleSeat() end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function ASTExtraPlayerController:OnViewTargetPoseChanged(LastPose, NewPose) end

---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function ASTExtraPlayerController:OnViewTargetAttachmentChanged(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end

---@param Vehicle ASTExtraVehicleBase
---@param bIsEnter boolean
function ASTExtraPlayerController:RefreshOBEnterOrLeaveFlyVehicleState(Vehicle, bIsEnter) end

---@param OutPlayers ULuaArrayHelper<ASTExtraPlayerState>
---@param ExcludeMyself boolean
function ASTExtraPlayerController:GetWatchPlayerList(OutPlayers, ExcludeMyself) end

---@return FVector
function ASTExtraPlayerController:GetCurPawnLocation() end

---@return FVector
function ASTExtraPlayerController:GetCurPawnLocationCache() end

---@return number
function ASTExtraPlayerController:GetCurPlayerId() end

---@return FVector
function ASTExtraPlayerController:GetFocalLocation() end

---@param pActor AActor
---@return boolean
function ASTExtraPlayerController:IsViewTarget(pActor) end

function ASTExtraPlayerController:OnPlayerStateChanged() end

---@param InRotation FRotator
function ASTExtraPlayerController:ServerSetFreeCamera(InRotation) end

function ASTExtraPlayerController:ServerExitFreeCamera() end

---@param InRotation FRotator
---@param IsFreeCamera boolean
function ASTExtraPlayerController:ServerSetControlRotationOnVehicle(InRotation, IsFreeCamera) end

---@param InRotation FRotator
---@param IsFreeCamera boolean
function ASTExtraPlayerController:ServerSetControlRotationOnVehicleUnreliable(InRotation, IsFreeCamera) end

---@param InRotation FRotator
---@param comp UActivitySpringArmComponent
function ASTExtraPlayerController:ServerSetControlRotationOnActivityUnreliable(InRotation, comp) end

---@param bAutoReturn boolean
---@param comp UActivitySpringArmComponent
function ASTExtraPlayerController:ServerSetAutoReturnOnActivity(bAutoReturn, comp) end

---@param InRotation FRotator
---@param IsAutoReturn boolean
function ASTExtraPlayerController:ServerSetFreeCameraRotationOnVehicle(InRotation, IsAutoReturn) end

function ASTExtraPlayerController:OnObservedItemsChanged() end

---@param InObservedBackpack UBackpackComponent
function ASTExtraPlayerController:GetObservedItemList(InObservedBackpack) end

---@param handle UItemHandleBase
function ASTExtraPlayerController:OnObservedItemUpdate(handle) end

---@param DefineID FItemDefineID
function ASTExtraPlayerController:OnObservedItemRemoved(DefineID) end

---@param ItemSpecifiedID ULuaArrayHelper<number>
function ASTExtraPlayerController:GetMultiItemFromItemList(ItemSpecifiedID) end

function ASTExtraPlayerController:OnObservedUsingWeaponChanged() end

function ASTExtraPlayerController:OnObservedBulletNumChanged() end

function ASTExtraPlayerController:OnObservedWeaponSightChanged() end

---@param PropSlot ESurviveWeaponPropSlot
function ASTExtraPlayerController:OnObservedDisuseWeapon(PropSlot) end

---@param CurState EFreshWeaponStateType
function ASTExtraPlayerController:OnObservedPlayerWeaponChangeState(CurState) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function ASTExtraPlayerController:OnObservedPlayerChangeCurrentUsingWeapon(TargetChangeSlot) end

function ASTExtraPlayerController:AutoSelectTeammateToView() end

---@param itemID number
---@param Count number
---@param ForceSell boolean
function ASTExtraPlayerController:PickupFromShop(itemID, Count, ForceSell) end

---@param ClientFatalItemType number
---@param CauserInfo string
---@param VictimInfo string
function ASTExtraPlayerController:SendToClientPlayerBePrompt(ClientFatalItemType, CauserInfo, VictimInfo) end

function ASTExtraPlayerController:SetViewPlane() end

function ASTExtraPlayerController:OnPreSetViewPlane() end

function ASTExtraPlayerController:TestSelfIsMaxKillerRecord() end

---@param bLocalDice boolean
function ASTExtraPlayerController:SetDice(bLocalDice) end

---@param typeID number
function ASTExtraPlayerController:AddMapPathOnBothMap(typeID) end

---@param typeID number
function ASTExtraPlayerController:MarkLocationToMapPath(typeID) end

---@param Count number
function ASTExtraPlayerController:TestSelfIsMaxKillerRecordCont(Count) end

function ASTExtraPlayerController:OnRep_ObservedItemList() end

---@param InNetItems FIncNetArrayNew
---@param InBackpack UBackpackComponent
---@param OutItems ULuaArrayHelper<FBattleItemData>
function ASTExtraPlayerController:BPRecoverNetArrayItem(InNetItems, InBackpack, OutItems) end

function ASTExtraPlayerController:OnRep_OBSimpleItemList() end

---@param InPlayerKey number
---@param IsFromClient boolean
function ASTExtraPlayerController:ServerCheckObserveCharacter(InPlayerKey, IsFromClient) end

---@param InPlayerKey number
---@param IsFromClient boolean
function ASTExtraPlayerController:ServerObserveCharacter(InPlayerKey, IsFromClient) end

---@param InPlayerKey string
---@param IsFromClient boolean
function ASTExtraPlayerController:ServerObserveCharacterFS(InPlayerKey, IsFromClient) end

function ASTExtraPlayerController:CheatCommand_ServerExitObserveCharacter() end

function ASTExtraPlayerController:OnObserverLevelLoaded() end

---@param InShow boolean
function ASTExtraPlayerController:CallShowTouchInterface(InShow) end

---@param InTeamID number
function ASTExtraPlayerController:OnTeammateLogin(InTeamID) end

function ASTExtraPlayerController:ClientFriendBattleEnd() end

function ASTExtraPlayerController:OnEagleGameEnterFinish() end

function ASTExtraPlayerController:ClientViewTargetWasDead() end

function ASTExtraPlayerController:ServerClearTeammatesCache() end

---生化团竞合入, feishen, 20200828
function ASTExtraPlayerController:QuitSpectating() end

---生化团竞合入, feishen, 20200828
---@param InController AUAEPlayerController
function ASTExtraPlayerController:LeaveObserveMe(InController) end

---@param ObPC ASTExtraPlayerController
function ASTExtraPlayerController:RegistConnectRepProperty(ObPC) end

function ASTExtraPlayerController:GetMyObserverList() end

---@param InTeamID number
function ASTExtraPlayerController:SetMyObserversTeamID(InTeamID) end

---@return boolean
function ASTExtraPlayerController:CalledOverrideClickQuitSpectating() end

function ASTExtraPlayerController:ServerLeaveCustomSpectating() end

---@param InPitch number
---@param InYaw number
function ASTExtraPlayerController:ClientSetOBControlRot(InPitch, InYaw) end

---@param InFov number
---@param CurViewPawn ASTExtraBaseCharacter
function ASTExtraPlayerController:ClientSetTPPDefaultFOV(InFov, CurViewPawn) end

---@param InFov number
---@param CurViewPawn ASTExtraBaseCharacter
function ASTExtraPlayerController:ClientSetFPPDefaultFOV(InFov, CurViewPawn) end

---@param InFov number
---@param CurViewPawn ASTExtraBaseCharacter
function ASTExtraPlayerController:ClientSetScopeFov(InFov, CurViewPawn) end

---@param InFov number
---@param CurViewPawn ASTExtraBaseCharacter
function ASTExtraPlayerController:ClientSetScopeZoomValue(InFov, CurViewPawn) end

---@param OutList ULuaArrayHelper<ASTExtraPlayerController>
function ASTExtraPlayerController:GetObserversList(OutList) end

function ASTExtraPlayerController:OnRep_OBAvaliablePlayerKeys() end

---@param InPlayerList ULuaArrayHelper<number>
function ASTExtraPlayerController:ChangeAllowOBPlayerKeys(InPlayerList) end

---@return number
function ASTExtraPlayerController:FindOBAvaliablePlayer() end

---@return boolean
function ASTExtraPlayerController:IsCanViewSameCamp() end

function ASTExtraPlayerController:ObserveSameCampPlayer() end

function ASTExtraPlayerController:ServerObserveSameCamp() end

function ASTExtraPlayerController:ClientQuitViewSameCamp() end

---@return boolean
function ASTExtraPlayerController:IsCanViewEnemy() end

function ASTExtraPlayerController:ObserveWhoKilledMe() end

function ASTExtraPlayerController:ServerObserveKiller() end

function ASTExtraPlayerController:ClientQuitViewEnemy() end

function ASTExtraPlayerController:OnTeammatesAllDie() end

---@param pCharacter ASTExtraBaseCharacter
---@param InEnable boolean
function ASTExtraPlayerController:SetGravityEnable(pCharacter, InEnable) end

---@return boolean
function ASTExtraPlayerController:IsUGCMobileMode() end

function ASTExtraPlayerController:OnRep_EagleWatch() end

---@param isEmpty boolean
function ASTExtraPlayerController:OnEagleWatchPlayerUIDChanged(isEmpty) end

function ASTExtraPlayerController:OnEagleWatchInitCompleted() end

---@param Rot FRotator
---@return FRotator
function ASTExtraPlayerController:UGCOverrideControlRotation(Rot) end

---@param out_Location FVector
---@param out_Rotation FRotator
function ASTExtraPlayerController:UGCOverridePlayerViewPoint(out_Location, out_Rotation) end

function ASTExtraPlayerController:RefreshGlobalObserverUI() end

function ASTExtraPlayerController:ServerGetTotalPlayers() end

---@param InPlayerStaticInfoList ULuaArrayHelper<FPlayerStaticInfoInOB>
---@param InTotalPlayers ULuaArrayHelper<FPlayerBaseInfoInOB>
---@param RouteSegmentData ULuaArrayHelper<FRouteSegment>
function ASTExtraPlayerController:ClientSetTotalPlayers(InPlayerStaticInfoList, InTotalPlayers, RouteSegmentData) end

---@param InTeamID number
function ASTExtraPlayerController:OnViewTargetTeamDataChanged(InTeamID) end

---@param InPlayerName string
function ASTExtraPlayerController:ObserveCharacter(InPlayerName) end

---@param InPlayerKey number
function ASTExtraPlayerController:ObserveCharacterByKey(InPlayerKey) end

function ASTExtraPlayerController:CheatCommand_ExitObserveCharacter() end

---@param InPlayerKey number
---@param IsOnPlane boolean
---@param StateType FStateType
---@param NextViewTarget AActor
---@param SelectOtherOnClient boolean
function ASTExtraPlayerController:ClientObserveCharacter(InPlayerKey, IsOnPlane, StateType, NextViewTarget, SelectOtherOnClient) end

---@param InPlayerName string
---@return FPlayerInfoInOB
function ASTExtraPlayerController:GetPlayerInfoInOBByName(InPlayerName) end

---@return boolean
function ASTExtraPlayerController:AutoSelectViewTarget() end

---@param State ExtraPlayerLiveState
---@param OwnerCharacter ACharacter
function ASTExtraPlayerController:PlayerLiveStateChangedInOB(State, OwnerCharacter) end

---@param NewSignalHP number
---@param InPS ASTExtraPlayerState
function ASTExtraPlayerController:OnViewTargetSignalHPChanged(NewSignalHP, InPS) end

---@param InPlayerState ASTExtraPlayerState
function ASTExtraPlayerController:OnViewTargetPlayerStateChanged(InPlayerState) end

---@param Chara ASTExtraBaseCharacter
function ASTExtraPlayerController:OnViewTargetSimulateViewChanged(Chara) end

function ASTExtraPlayerController:DumpTotalPlayers() end

---@param boxId number
function ASTExtraPlayerController:ObserveAirDropBox(boxId) end

---@param boxId number
function ASTExtraPlayerController:ServerObserveAirDropBox(boxId) end

---@param boxId number
function ASTExtraPlayerController:ClientEnterViewBox(boxId) end

---@return FVector
function ASTExtraPlayerController:GetNewestAirDropBoxPos() end

---@param InPlayerKey number
---@param InHitPos FVector
---@param bHitPlayer boolean
---@param InHitActor AActor
function ASTExtraPlayerController:ClientPlayerFiringInOB(InPlayerKey, InHitPos, bHitPlayer, InHitActor) end

function ASTExtraPlayerController:OnEntireOBMapOpen() end

function ASTExtraPlayerController:OnEntireOBMapClose() end

function ASTExtraPlayerController:HandleUpdateShoveling() end

function ASTExtraPlayerController:HandleUpdateShovelingPressed() end

function ASTExtraPlayerController:HandleUpdateShovelingRelease() end

function ASTExtraPlayerController:HandleSwitchPersonViewPress() end

function ASTExtraPlayerController:HandleToggleMapInOB() end

function ASTExtraPlayerController:HandleEnterFreeViewInOB() end

function ASTExtraPlayerController:HandleLeaveFreeViewInOB() end

function ASTExtraPlayerController:HandleToggleFreeViewReplay() end

function ASTExtraPlayerController:SwitchAutomaticOB() end

---@return boolean
function ASTExtraPlayerController:CustomShowHideUI() end

---@param BlendNum number
function ASTExtraPlayerController:SetSwitchTeammateWithBlend(BlendNum) end

function ASTExtraPlayerController:StartRotatingOBFreeViewCameraClockwise() end

function ASTExtraPlayerController:StopRotatingOBFreeViewCameraClockwise() end

function ASTExtraPlayerController:StartRotatingOBFreeViewCameraCounterclockwise() end

function ASTExtraPlayerController:StopRotatingOBFreeViewCameraCounterclockwise() end

function ASTExtraPlayerController:HandleOBSSwitchTeamLogo() end

function ASTExtraPlayerController:HandleOBChangeVehicleInfoPanel() end

function ASTExtraPlayerController:HandleOBSSwitchToPlayerFirst() end

function ASTExtraPlayerController:HandleOBSSwitchToPlayerSecond() end

function ASTExtraPlayerController:HandleOBSSwitchToPlayerThird() end

function ASTExtraPlayerController:HandleOBSSwitchToPlayerFourth() end

function ASTExtraPlayerController:HandleOBSSwitchToPreTeam() end

function ASTExtraPlayerController:HandleOBSSwitchToNextTeam() end

function ASTExtraPlayerController:HandleAddOBPositionDistance() end

function ASTExtraPlayerController:HandleReduceOBPositionDistance() end

function ASTExtraPlayerController:HandleReSetOBPositionDistance() end

function ASTExtraPlayerController:HandleOBToggleProjSmokeAlpha() end

function ASTExtraPlayerController:HandleTogglePlayerListInOB() end

function ASTExtraPlayerController:HandleBisOpenEnemyHeadUI() end

function ASTExtraPlayerController:HandleOBBisOpenAirDropBox() end

function ASTExtraPlayerController:HandleOBShowBigWorldEntry() end

function ASTExtraPlayerController:HandleSwitchToTeammatePrev() end

function ASTExtraPlayerController:HandleSwitchToTeammateNext() end

---@param InKey FKey
function ASTExtraPlayerController:HandleSwitchToTeammate(InKey) end

---@param InKey FKey
function ASTExtraPlayerController:HandleSwitchToTeammateWithBlend(InKey) end

---@param InKey FKey
function ASTExtraPlayerController:HandleSwitchToTeam_InputOneNum(InKey) end

function ASTExtraPlayerController:HandleSwitchToTeam_DelOneNum() end

function ASTExtraPlayerController:HandleSwitchToTeam_ClearInputNum() end

function ASTExtraPlayerController:HandleSwitchToTeam_PostTeamID() end

---@param InTeamID number
function ASTExtraPlayerController:HandleSwitchToTeam(InTeamID) end

---@param InShow boolean
function ASTExtraPlayerController:HandleToggleOBTeamList(InShow) end

function ASTExtraPlayerController:HandleOBRecentlyCauseHurt() end

function ASTExtraPlayerController:HandleOBToggleFog() end

function ASTExtraPlayerController:ServerObserveRecentlyCauseHurt() end

function ASTExtraPlayerController:CancelOBFreeView() end

function ASTExtraPlayerController:ToggleOBTPPFollowFreeView() end

function ASTExtraPlayerController:CancelOBTPPFollowFreeView() end

function ASTExtraPlayerController:ToggleAirPhotoView() end

function ASTExtraPlayerController:ToggleOBVehicleView() end

function ASTExtraPlayerController:OBVehicleViewLookBack() end

function ASTExtraPlayerController:OnClickToggleOBVehicleView() end

---@param InTargetVehicle ASTExtraVehicleBase
function ASTExtraPlayerController:OnOBPawnExitVehicle(InTargetVehicle) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraPlayerController:OnOBVehicleHitActor(SelfActor, OtherActor, NormalImpulse, Hit) end

function ASTExtraPlayerController:OBForceToggleOBTPPView() end

function ASTExtraPlayerController:OBCameraMoveFar() end

function ASTExtraPlayerController:OBCameraMoveNear() end

function ASTExtraPlayerController:OBCameraFOVReset() end

function ASTExtraPlayerController:SwitchMouseCursorShowState() end

---@param IsShow boolean
function ASTExtraPlayerController:SetMouseCursorShowState(IsShow) end

---@param X number
---@param Y number
function ASTExtraPlayerController:SetMouseViewportLocation(X, Y) end

---@return boolean
function ASTExtraPlayerController:GetOBTPPFreeViewValue() end

---@return boolean
function ASTExtraPlayerController:GetOBVehicleViewValue() end

---@param isActive boolean
function ASTExtraPlayerController:SetObVehicleView(isActive) end

---@param bAttach boolean
---@param WeaponID FItemDefineID
---@param AttachmentName string
---@param AttachmentSpecificID number
function ASTExtraPlayerController:OnWeaponAttachmentChanged(bAttach, WeaponID, AttachmentName, AttachmentSpecificID) end

---@param NewServerTimeSeconds number
function ASTExtraPlayerController:OnWorldTimeUpdateDelegate(NewServerTimeSeconds) end

function ASTExtraPlayerController:OnRep_WatchedStateType() end

function ASTExtraPlayerController:UpdateSurfboardUI() end

---@param cmd string
function ASTExtraPlayerController:ServerCMD(cmd) end

---@param cmd string
function ASTExtraPlayerController:ServerCMD_RPC(cmd) end

---GM面板用，白名单过滤
---@param cmd string
function ASTExtraPlayerController:ServerCMDByGmPanel(cmd) end

---@param cmd string
function ASTExtraPlayerController:ServerCMDByGmPanel_RPC(cmd) end

---@param cmd string
---@param bMulticast boolean
function ASTExtraPlayerController:ServerExecGMCommand(cmd, bMulticast) end

---@param cmd string
function ASTExtraPlayerController:MultiExecGMCommand(cmd) end

---@param cmd string
function ASTExtraPlayerController:ClientExecGMCommand(cmd) end

---@param ErrorMsg string
function ASTExtraPlayerController:ServerReportError(ErrorMsg) end

---@param ErrorMsg string
function ASTExtraPlayerController:ServerReportCoverKill(ErrorMsg) end

---@return number
function ASTExtraPlayerController:GetViewPortDPIScale() end

---@param GameModeType EGameModeType
function ASTExtraPlayerController:TryRecordingDeathPlaybackOnFightState(GameModeType) end

function ASTExtraPlayerController:ConditionalRecordingDeathPlaybackOnPossessPawn() end

---@param bExcludeSelf boolean
---@return number
function ASTExtraPlayerController:GetTeamAliveNum(bExcludeSelf) end

---@param other APawn
---@return boolean
function ASTExtraPlayerController:IsSameTeam(other) end

---@return boolean
function ASTExtraPlayerController:IsFollowFireMode() end

---@param _WallFeedBack boolean
function ASTExtraPlayerController:OnWallFeedBack(_WallFeedBack) end

---@param checkDis number
function ASTExtraPlayerController:DealGetAllNearMoveCharacter(checkDis) end

---@param checkDis number
---@param minSpeed number
function ASTExtraPlayerController:DealGetAllNearMoveVehicle(checkDis, minSpeed) end

---@param disRate number
function ASTExtraPlayerController:DealGetAllNearShotWeapon(disRate) end

---@param InString string
---@param TextColor FLinearColor
---@param Duration number
function ASTExtraPlayerController:PrintStringToScreen(InString, TextColor, Duration) end

---@param InString string
---@param TextColor FLinearColor
---@param Duration number
function ASTExtraPlayerController:ClientPrintStringToScreen(InString, TextColor, Duration) end

---@param CanJump boolean
function ASTExtraPlayerController:SetCanJump(CanJump) end

function ASTExtraPlayerController:OnRep_CanJump() end

---@param airattacktype EAirAttackInfo
---@param waveindex number
---@param AirAttackMode EAirAttackMode
function ASTExtraPlayerController:OnAirAttackEventNotify(airattacktype, waveindex, AirAttackMode) end

function ASTExtraPlayerController:OnRep_CanOpenParachute() end

---@param CanOpenParachute boolean
function ASTExtraPlayerController:SetCanOpenParachute(CanOpenParachute) end

---@param CanCloseParachute boolean
function ASTExtraPlayerController:SetCanCloseParachute(CanCloseParachute) end

---@param _CanOpenParachuteHeight number
---@param _ForceOpenParachuteHeight number
---@param _CloseParachuteHeight number
function ASTExtraPlayerController:SetParachuteHeights(_CanOpenParachuteHeight, _ForceOpenParachuteHeight, _CloseParachuteHeight) end

---@param InPlaneFlyHeightFromGameMode number
function ASTExtraPlayerController:SetPlaneFlyHeightFromGameMode(InPlaneFlyHeightFromGameMode) end

---@param InLockControllerYawToPlayer boolean
function ASTExtraPlayerController:ServerLockYawToPlayer(InLockControllerYawToPlayer) end

---@param CharacterGUID number
---@param DataList ULuaArrayHelper<FItemDefineID>
function ASTExtraPlayerController:SetClientSpawnAndBackpackWeaponReplicatedDataArray(CharacterGUID, DataList) end

---@param ID FItemDefineID
function ASTExtraPlayerController:RemoveClientSpawnAndBackpackWeaponReplicatedData(ID) end

function ASTExtraPlayerController:ShowSpeedAndAdditionalDamage() end

function ASTExtraPlayerController:GameModeGotoNextState() end

---@param locat FVector
function ASTExtraPlayerController:ServerSetObsverLocation(locat) end

---@param isFreeView boolean
function ASTExtraPlayerController:ServerSetIsFreeView(isFreeView) end

---@return boolean
function ASTExtraPlayerController:IsIngoreSvrSetViewTarget() end

function ASTExtraPlayerController:TeamNoAlwaysRelevant() end

function ASTExtraPlayerController:SetNoCollison() end

function ASTExtraPlayerController:FlushShapePool() end

---@param hasCollision boolean
function ASTExtraPlayerController:SetLandCollison(hasCollision) end

---@param value number
function ASTExtraPlayerController:SetNoFalling(value) end

function ASTExtraPlayerController:GotoFlying() end

function ASTExtraPlayerController:GameModeGotoFightingState() end

---@param bEnable boolean
function ASTExtraPlayerController:DebugEnableFerrisWheelTick(bEnable) end

---@param LostPlayerKey number
function ASTExtraPlayerController:OnPlayerLostConnection(LostPlayerKey) end

---@param LostPlayerKey number
function ASTExtraPlayerController:OnPlayerReConnected(LostPlayerKey) end

function ASTExtraPlayerController:DispatchPlayerLostEvent() end

function ASTExtraPlayerController:DispatchPlayerReconnectedEvent() end

function ASTExtraPlayerController:ServerInitOnReconnected() end

function ASTExtraPlayerController:DispatchPlayerExitEvent() end

function ASTExtraPlayerController:OnGameModeStateChanged() end

---@param NewTarget AActor
---@param PrevTarget AActor
function ASTExtraPlayerController:OnViewTargetChangeFunc(NewTarget, PrevTarget) end

---temporary for debug
function ASTExtraPlayerController:VisualizeItem() end

---@return boolean
function ASTExtraPlayerController:IsMoveable() end

---@return boolean
function ASTExtraPlayerController:IsMoveable_DontConsiderFollowingState() end

function ASTExtraPlayerController:OnRep_Plane() end

---@param TimeStamp number
function ASTExtraPlayerController:ServerReceiveThePlane(TimeStamp) end

function ASTExtraPlayerController:OnRep_STExtraBaseCharacter() end

---@param EntryEvent EUTSkillEntry
function ASTExtraPlayerController:ServerTriggerCharacterEntryEvent(EntryEvent) end

---@param SkillEvent EUAESkillEvent
function ASTExtraPlayerController:ServerTriggerCharacterCustomEvent(SkillEvent) end

---@param bEnable boolean
---@param ItemData FAttrModifyItem
function ASTExtraPlayerController:RPC_OwnerClient_PlayerEnableAttrModifier(bEnable, ItemData) end

---@param AddVal number
---@param Reason ERecoveryReasonType
function ASTExtraPlayerController:RPC_OwnerClient_PlayerAddHealth(AddVal, Reason) end

---@param AddVal number
---@param Reason ERecoveryReasonType
function ASTExtraPlayerController:RPC_OwnerClient_PlayerAddEnergy(AddVal, Reason) end

---@param ID FItemDefineID
---@param Count number
function ASTExtraPlayerController:RPC_OwnerClient_PlayerConsumeItem(ID, Count) end

---@param GrenadeID number
function ASTExtraPlayerController:ServerTriggerSelectGrenade(GrenadeID) end

---@param GrenadeID number
function ASTExtraPlayerController:InsertGrenadeIDInOrder(GrenadeID) end

---@param WeaponIDArray ULuaArrayHelper<FItemDefineID>
---@param CurWeaponSlot ESurviveWeaponPropSlot
---@param ClientSlotDataList ULuaArrayHelper<FWeaponSlotData>
function ASTExtraPlayerController:RPC_Server_NorifyServerClientHasFinishedHandleSpawnWeapon(WeaponIDArray, CurWeaponSlot, ClientSlotDataList) end

---@param ItemID number
function ASTExtraPlayerController:DelaySwitchSameSlotWeapon(ItemID) end

---@param Weapon ASTExtraWeapon
---@param WeaponPropSlot ESurviveWeaponPropSlot
---@param DefineID FItemDefineID
---@param bEquip boolean
function ASTExtraPlayerController:RPC_OwnerClient_NotifyClientEquipWeaponAttachment(Weapon, WeaponPropSlot, DefineID, bEquip) end

---@param DataList ULuaArrayHelper<FWeaponAttachmentEquipNotifyData>
function ASTExtraPlayerController:RPC_OwnerClient_NotifyClientEquipWeaponAttachmentList(DataList) end

---@param WeaponPropSlot ESurviveWeaponPropSlot
---@param DefineID FItemDefineID
---@param bEquip boolean
function ASTExtraPlayerController:OnWeaponEquipAttachment(WeaponPropSlot, DefineID, bEquip) end

function ASTExtraPlayerController:ResetMissingUIUpdate() end

function ASTExtraPlayerController:RPC_Server_NorifyServerClientHasFinishReconnectedWeaponSystem() end

---@param Weapon ASTExtraWeapon
---@param RecoverData FWeaponReconnectReplicateData
---@param ClientCurWeapon ASTExtraWeapon
function ASTExtraPlayerController:RPC_Server_ClientHasFinishedRecoverWeapon(Weapon, RecoverData, ClientCurWeapon) end

function ASTExtraPlayerController:RPC_Server_RefreshWeaponReconnect() end

---@param ShootWeapon ASTExtraShootWeapon
---@param ClientShootFrame number
---@param ShootID number
---@param PelletID number
function ASTExtraPlayerController:RPC_OwnerClient_NotifyClientShootCriticalVerifyFailed(ShootWeapon, ClientShootFrame, ShootID, PelletID) end

---@param ShootWeapon ASTExtraShootWeapon
---@param ClientShootFrame number
---@param MoveParam FCacheCriticalVerifyMoveParam
---@param ShootParam FCacheCriticalVerifyShootParam
---@param BulletHitUploadParam FCacheCriticalVerifyBulletHitUploadParam
---@param ExtraInfo string
---@param ShootFlag number
function ASTExtraPlayerController:RPC_Server_NotifyServerShootCriticalVerifyCacheData(ShootWeapon, ClientShootFrame, MoveParam, ShootParam, BulletHitUploadParam, ExtraInfo, ShootFlag) end

---@param ShootWeapon ASTExtraShootWeapon
---@param ClientShootFrame number
function ASTExtraPlayerController:RPC_OwnerClient_NotifyClientBulletTrackCriticalVerifyFailed(ShootWeapon, ClientShootFrame) end

---@param ShootWeapon ASTExtraShootWeapon
---@param ClientShootFrame number
---@param MsgData string
function ASTExtraPlayerController:RPC_Server_NotifyServerBulletTrackyCacheData(ShootWeapon, ClientShootFrame, MsgData) end

---@param InMoveParam FCacheCriticalVerifyMoveParam
---@param InShootParam FCacheCriticalVerifyShootParam
---@param InBulletHitUploadParam FCacheCriticalVerifyBulletHitUploadParam
---@param InExtraInfo string
---@param OutMoveParam FCacheCriticalVerifyMoveParam
---@param OutShootParam FCacheCriticalVerifyShootParam
---@param OutBulletHitUploadParam FCacheCriticalVerifyBulletHitUploadParam
---@param OutExtraInfo string
function ASTExtraPlayerController:PreUploadClientShootCriticalVerifyCacheData(InMoveParam, InShootParam, InBulletHitUploadParam, InExtraInfo, OutMoveParam, OutShootParam, OutBulletHitUploadParam, OutExtraInfo) end

---@param BlockComp UPrimitiveComponent
---@param TraceStart FVector
---@param TraceEnd FVector
---@param bShouldTrace boolean
function ASTExtraPlayerController:RPC_OwnerClient_NotifyClientShootBlockVerifyFailed(BlockComp, TraceStart, TraceEnd, bShouldTrace) end

---@param HitInfo string
---@param BlockActor AActor
---@param BlockComp UPrimitiveComponent
function ASTExtraPlayerController:RPC_OwnerClient_VerifyShootBlockInfo(HitInfo, BlockActor, BlockComp) end

---@param Info string
function ASTExtraPlayerController:RPC_Server_NotifyServerShootBlockActorInfo(Info) end

---@param InInfo string
---@param OutInfo string
function ASTExtraPlayerController:PreUploadClientShootBlockVerifyCacheData(InInfo, OutInfo) end

---@param MurderPlayerName string
---@param IsAI boolean
---@param murderUID string
---@param IsMurderSameTeam boolean
function ASTExtraPlayerController:RPC_OwnerClient_SetLastBreathMurder(MurderPlayerName, IsAI, murderUID, IsMurderSameTeam) end

function ASTExtraPlayerController:C2SRPC_RequestSyncReportInfo() end

---@param murderName string
---@param IsAI boolean
---@param murderUID string
---@param IsMurderSameTeam boolean
---@param InformPlayersListOnServer ULuaArrayHelper<FInformPlayerTypeInfo>
---@param TeammatesYouAttackFirstOnServer ULuaArrayHelper<string>
function ASTExtraPlayerController:S2CRPC_SyncReportInfoToClient(murderName, IsAI, murderUID, IsMurderSameTeam, InformPlayersListOnServer, TeammatesYouAttackFirstOnServer) end

---@param TeammateName string
function ASTExtraPlayerController:C2SRPC_ReportTeammateHurtMe(TeammateName) end

function ASTExtraPlayerController:ForceReleaseCurTouchMoveFinger() end

function ASTExtraPlayerController:BroadcastRespawnComplete() end

function ASTExtraPlayerController:OnRespawnCompleted() end

---@param PC AUAEPlayerController
function ASTExtraPlayerController:SoftReconnectRecoverData(PC) end

---@param PC AUAEPlayerController
function ASTExtraPlayerController:RespawnRecoverData(PC) end

---@param PlayerController AUAEPlayerController
function ASTExtraPlayerController:RespawnResetPlayerState(PlayerController) end

---@param PlayerController AUAEPlayerController
function ASTExtraPlayerController:RecordRespawnEvent(PlayerController) end

function ASTExtraPlayerController:DynamicCreateComponents() end

---@return boolean
function ASTExtraPlayerController:IsAGMPlayer() end

---@return boolean
function ASTExtraPlayerController:IsCharacterInAir() end

---@param MyGeometry FGeometry
---@return FVector2D
function ASTExtraPlayerController:ClampFreeCamIconOffset(MyGeometry) end

---@param Slot1 ESurviveWeaponPropSlot
---@param Slot2 ESurviveWeaponPropSlot
---@param bForce boolean
---@param TargetWeaponToCheck ASTExtraWeapon
function ASTExtraPlayerController:SwapWeaponByPropSlotOnServer(Slot1, Slot2, bForce, TargetWeaponToCheck) end

---@param Slot1 ESurviveWeaponPropSlot
---@param Slot2 ESurviveWeaponPropSlot
---@param bForce boolean
---@param TargetWeaponToCheck ASTExtraWeapon
function ASTExtraPlayerController:RPC_OwnerClient_SwapWeaponByPropSlot(Slot1, Slot2, bForce, TargetWeaponToCheck) end

---@param BulletStart FVector
---@param BulletEnd FVector
function ASTExtraPlayerController:RPC_OwnerClient_HandleAIShootBulletHit(BulletStart, BulletEnd) end

---@param LaunchTrans FTransform
---@param TargetWeapon ASTExtraShootWeapon
---@param bNotCostBullet boolean
function ASTExtraPlayerController:RPC_Server_ShootSpecialBullet(LaunchTrans, TargetWeapon, bNotCostBullet) end

---@param TargetWeapon ASTExtraShootWeapon
---@param Trans FTransform
---@param Pellet number
---@param InShootTimeInf FShootTimeData
function ASTExtraPlayerController:RPC_Server_ShootProjectileBullet(TargetWeapon, Trans, Pellet, InShootTimeInf) end

---@param TargetWeapon ASTExtraShootWeapon
---@param ShootID number
---@param LaunchPos FVector
---@param LaunchRot FRotator
function ASTExtraPlayerController:RPC_Server_PreShootProjectileBullet(TargetWeapon, ShootID, LaunchPos, LaunchRot) end

---@param TargetWeapon ASTExtraShootWeapon
---@param LaunchParams ULuaArrayHelper<FShootMultiBulletsParam>
---@param CurAccEnergyPercent number
function ASTExtraPlayerController:RPC_Server_ShootMultiEnergyAccumulateProjectileBulletsSimulate(TargetWeapon, LaunchParams, CurAccEnergyPercent) end

---@param TargetWeapon ASTExtraShootWeapon
---@param Trans FTransform
---@param Pellet number
---@param InShootTimeInf FShootTimeData
---@param UploadData FSeekAndLockRPGBulletUploadData
function ASTExtraPlayerController:RPC_Server_ShootSeekAndLockProjectileBullet(TargetWeapon, Trans, Pellet, InShootTimeInf, UploadData) end

---@param AirDropBoxIDArray ULuaArrayHelper<number>
function ASTExtraPlayerController:RPC_Server_NorifyServerAddFirstOpenedAirDropBoxes(AirDropBoxIDArray) end

---@param MonsterUniqueIDArray ULuaArrayHelper<number>
function ASTExtraPlayerController:RPC_Server_NorifyServerAddFirstOpenedMonsterTombBoxes(MonsterUniqueIDArray) end

---@param BoxUniqueIDList ULuaArrayHelper<number>
---@param BoxType EPickUpBoxType
function ASTExtraPlayerController:RPC_Server_NorifyServerOpenedPickUpBoxes(BoxUniqueIDList, BoxType) end

function ASTExtraPlayerController:RecordPathPoint() end

---@param ExcellentOperationInfos ULuaArrayHelper<FExcellentOperationRecordData>
---@param causerName string
---@param victimName string
---@param damageType number
---@param AdditionalParam number
---@param IsHeadshot boolean
---@param ResultHealthStatus number
---@param Relationship number
---@param PreviousHealthStatus number
---@param realKillerName string
---@param realKillerNewKillNum number
---@param victimAnchorPlatformResID number
---@param IsKilledByMonster boolean
---@param bIsVictimMonster boolean
---@param LocalPlayerAssistNum number
---@param Data FClientFatalDamageRecordData
function ASTExtraPlayerController:BPHandleKillTipInfo(ExcellentOperationInfos, causerName, victimName, damageType, AdditionalParam, IsHeadshot, ResultHealthStatus, Relationship, PreviousHealthStatus, realKillerName, realKillerNewKillNum, victimAnchorPlatformResID, IsKilledByMonster, bIsVictimMonster, LocalPlayerAssistNum, Data) end

---@param causerName string
---@param victimName string
---@param revivalType number
function ASTExtraPlayerController:HandleRevivalTipsInfo(causerName, victimName, revivalType) end

---@param TemplatePlayerName string
---@param AdditionalParams ULuaArrayHelper<FUAEBlackboardParameter>
---@param TemplatePlayerType number
---@return string
function ASTExtraPlayerController:ReplacePlayerNameByRandomTeamID(TemplatePlayerName, AdditionalParams, TemplatePlayerType) end

function ASTExtraPlayerController:HandleClientHasReactivated() end

function ASTExtraPlayerController:RPC_Server_ClientHasReactivated() end

function ASTExtraPlayerController:RequireNetCullingDistanceByDevice() end

---@return number
function ASTExtraPlayerController:GetWriteCircleDistance() end

---@return number
function ASTExtraPlayerController:GetFriendDistance() end

---@param BeginX number
---@param CurViewPortDPIScale number
---@return boolean
function ASTExtraPlayerController:IsStartInRightHalfScreen(BeginX, CurViewPortDPIScale) end

function ASTExtraPlayerController:MoveToAI() end

function ASTExtraPlayerController:MoveToSuperTeamAI() end

---@param bEnable boolean
---@param DistanceLimit number
function ASTExtraPlayerController:TestFindStraightPath(bEnable, DistanceLimit) end

function ASTExtraPlayerController:StatFindStraightPath() end

function ASTExtraPlayerController:AsanTest() end

function ASTExtraPlayerController:CheckGoalAchieved() end

function ASTExtraPlayerController:OnRep_TeamID() end

---@param Unload boolean
function ASTExtraPlayerController:UnLoadAllCollision(Unload) end

---@param bLoadAll boolean
function ASTExtraPlayerController:LoadAllLand(bLoadAll) end

---@param bUnLoadAll boolean
function ASTExtraPlayerController:UnLoadAllLand(bUnLoadAll) end

---@param bNewLoadAll boolean
function ASTExtraPlayerController:SetServerLevelLoadingMode(bNewLoadAll) end

---@param Meters number
function ASTExtraPlayerController:ShowNavLink(Meters) end

function ASTExtraPlayerController:ShowHistoryMoveLocations() end

---@param AvatarItemTypeSpecificID number
function ASTExtraPlayerController:CreateVehicleWithSkinAvatarIDInController(AvatarItemTypeSpecificID) end

---@param Actor AActor
function ASTExtraPlayerController:TestInvalidServerRPC(Actor) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestNetFlowServerRPC_UnReliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestNetFlowServerRPC_Reliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestNetFlowClientRPC_UnReliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestNetFlowClientRPC_Reliable(TestArray) end

function ASTExtraPlayerController:OnRep_TestNetArray() end

---@param LinkDatas ULuaArrayHelper<FNavLinkInfo>
function ASTExtraPlayerController:ClientShowNavLink(LinkDatas) end

---@param Points ULuaArrayHelper<FVector>
function ASTExtraPlayerController:ClientShowPoints(Points) end

---@return boolean
function ASTExtraPlayerController:BPGetIsAndroidSimulator() end

---@param OwnerTarget AUAEHouseActor
---@param Window FUAEWindowRepData
---@param InCount boolean
function ASTExtraPlayerController:RPC_Server_NotifyBreakWindow(OwnerTarget, Window, InCount) end

---@param BankName string
---@param SoundName string
---@param TargetActor AActor
function ASTExtraPlayerController:RPC_OwnerClient_ClientPlayItemOperationSound(BankName, SoundName, TargetActor) end

---@param BankName string
---@param SoundName string
---@param TargetActor AActor
function ASTExtraPlayerController:PlayItemOperationSoundByBP(BankName, SoundName, TargetActor) end

---@param bVisible boolean
function ASTExtraPlayerController:RPC_OwnerClient_SetCurrentWeaponVisible(bVisible) end

---@param Weapon ASTExtraWeapon
---@param StateType EFreshWeaponStateType
---@param ConditionStateType EFreshWeaponStateType
function ASTExtraPlayerController:RPC_Server_ChangeWeaponState(Weapon, StateType, ConditionStateType) end

---@param Ratio number
function ASTExtraPlayerController:RPC_Server_RefreshHandFoldRatio(Ratio) end

---@param Weapon ASTExtraWeapon
function ASTExtraPlayerController:RPC_OwnerClient_WeaponWarmUpEnd(Weapon) end

---@param DynamicWeatherMgr ADynamicWeatherMgr
function ASTExtraPlayerController:RPC_RequireDynamicWeatherInfo(DynamicWeatherMgr) end

---@param DynamicWeatherMgr ADynamicWeatherMgr
---@param RepWeatherInfo FWeatherControllerRepData
function ASTExtraPlayerController:RPC_PushDynamicWeatherInfo(DynamicWeatherMgr, RepWeatherInfo) end

---@param OceansideLocation FVector
---@param bDetectedRiver boolean
function ASTExtraPlayerController:BP_OceanSideDetected(OceansideLocation, bDetectedRiver) end

---@param boxID number
function ASTExtraPlayerController:GenerateAirDropData(boxID) end

---@param boxID number
---@return boolean
function ASTExtraPlayerController:IsAirDropRep2Client(boxID) end

---@param UIMsg string
function ASTExtraPlayerController:SendEndTouchScreenUICommand(UIMsg) end

---@param LeftTime number
function ASTExtraPlayerController:SetStateLeftTime(LeftTime) end

---@param bEnabled number
function ASTExtraPlayerController:DebugEnableBulletImpact(bEnabled) end

---@param bEnabled number
function ASTExtraPlayerController:DebugEnableDrawSearchLine(bEnabled) end

function ASTExtraPlayerController:StatBackpackItemsData() end

function ASTExtraPlayerController:StatClientAllWeaponsInfo() end

function ASTExtraPlayerController:DebugPlayerVision() end

---@param PrintLog number
function ASTExtraPlayerController:PrintMovementLog(PrintLog) end

function ASTExtraPlayerController:ScopeIn() end

function ASTExtraPlayerController:ScopeOut() end

---@param Origin FVector
---@param Radius number
---@param _RetWillLoadLevel number
function ASTExtraPlayerController:SetAlwaysLoadLevelDataWithDelegate(Origin, Radius, _RetWillLoadLevel) end

function ASTExtraPlayerController:ClearAlwaysLoadLevelDate() end

function ASTExtraPlayerController:OnAlwaysLoadLevelLoaded() end

---@param StartX number
---@param StartY number
---@param EndX number
---@param EndY number
function ASTExtraPlayerController:SetCustomFlightRoute(StartX, StartY, EndX, EndY) end

---@param DrawTime number
---@param BoxDrawSize number
---@param BoxDrawLineLength number
---@param ListWrapperDrawSize number
---@param ListWrapperDrawLineLength number
function ASTExtraPlayerController:DebugAirDropPickInfo(DrawTime, BoxDrawSize, BoxDrawLineLength, ListWrapperDrawSize, ListWrapperDrawLineLength) end

function ASTExtraPlayerController:CollectAllPlayerWeaponPosInfo() end

function ASTExtraPlayerController:PrintDownCollision() end

---@param gmType number
---@param GeneralBoxTime number
function ASTExtraPlayerController:AddSignalGunGM(gmType, GeneralBoxTime) end

---@param OpenID number
function ASTExtraPlayerController:IgnoreFilterSignalGunPoints(OpenID) end

---@param DSCommand string
function ASTExtraPlayerController:ExecDSCommand(DSCommand) end

---@param ProfileName string
function ASTExtraPlayerController:ApplyGameModeProfile(ProfileName) end

function ASTExtraPlayerController:RequireDeviceInfo() end

---@param PlatformProfileName string
---@param deviceinfo FDeviceInfo
function ASTExtraPlayerController:SendDeviceInfo(PlatformProfileName, deviceinfo) end

function ASTExtraPlayerController:OnAllPostExecDSCommandArrived() end

---@param HitVehicle AActor
---@param Loc FVector
---@param Rot FRotator
---@param SurfaceType number
function ASTExtraPlayerController:RPC_Client_PlayerBulletHitVehicleSound(HitVehicle, Loc, Rot, SurfaceType) end

---@param bShow boolean
---@param bAttemptToReleaseUI boolean
function ASTExtraPlayerController:ToShowOrHideParachutingPanel(bShow, bAttemptToReleaseUI) end

---@param TargetStateType EStateType
function ASTExtraPlayerController:ServerChangeStatePC(TargetStateType) end

---@param TargetStateType FStateType
function ASTExtraPlayerController:ClientChangeStatePC(TargetStateType) end

---@param SkipOpenParachute boolean
function ASTExtraPlayerController:ClientExitFromHelicopter(SkipOpenParachute) end

---@param ExitVehicle ASTExtraVehicleBase
function ASTExtraPlayerController:ServerExitFromHelicopter(ExitVehicle) end

---@param ExitVehicle ASTExtraVehicleBase
---@param IsEnter boolean
function ASTExtraPlayerController:ServerClientEnterOrExitSnowBoard(ExitVehicle, IsEnter) end

---@param Msg EMsgType
function ASTExtraPlayerController:HandleMsg(Msg) end

---@param Msg EMsgType
function ASTExtraPlayerController:ServerHandleMsg(Msg) end

function ASTExtraPlayerController:OnRep_ServerStateType() end

---@param ReceivedType FStateType
---@param ClientType FStateType
---@param TimeStamp number
function ASTExtraPlayerController:ServerReceiveServerStateType(ReceivedType, ClientType, TimeStamp) end

---@return EStateType
function ASTExtraPlayerController:GetCurrentStateType() end

---@return boolean
function ASTExtraPlayerController:IsInInitial() end

---@return boolean
function ASTExtraPlayerController:IsInPlane() end

---@return boolean
function ASTExtraPlayerController:IsInFight() end

---@return boolean
function ASTExtraPlayerController:IsInParachuteJump() end

---@return boolean
function ASTExtraPlayerController:IsInParachuteOpen() end

---@return boolean
function ASTExtraPlayerController:IsInParachute() end

---@return boolean
function ASTExtraPlayerController:IsInDead() end

---@return boolean
function ASTExtraPlayerController:IsInRevival() end

---@return boolean
function ASTExtraPlayerController:IsInFinish() end

---@return boolean
function ASTExtraPlayerController:IsInExPlane() end

---@return boolean
function ASTExtraPlayerController:IsInRevivalExPlane() end

---@return boolean
function ASTExtraPlayerController:IsInEmergencyCallBag() end

---@param InEnable boolean
function ASTExtraPlayerController:SetPlaneEnabled(InEnable) end

---add. feishen, 20210616
---@return boolean
function ASTExtraPlayerController:IsPlayerStateInDying() end

---@return boolean
function ASTExtraPlayerController:IsPlayerStateInDied() end

---@return boolean
function ASTExtraPlayerController:IsPlayerStateInVehicle() end

---空投载具调试用
---@param Index number
---@param z number
function ASTExtraPlayerController:AirDropVehicle(Index, z) end

function ASTExtraPlayerController:OnEnterBattleResultStep() end

function ASTExtraPlayerController:OnQuitBattleResultStep() end

function ASTExtraPlayerController:PostInitPlayerParams() end

function ASTExtraPlayerController:RPC_GetPlayerInitialItemListFromServer() end

---@param InServerInitialItemList ULuaArrayHelper<FGameModePlayerItem>
function ASTExtraPlayerController:RPC_SetPlayerInitialItemListForClient(InServerInitialItemList) end

function ASTExtraPlayerController:StartCheckCriticalLevelLoaded() end

function ASTExtraPlayerController:StopCheckCriticalLevelLoaded() end

function ASTExtraPlayerController:OnPlayerExitParachuteEvent() end

function ASTExtraPlayerController:StartTestFloat() end

---@param WrongResultInfo FRCRResultDebugInfoByClient
function ASTExtraPlayerController:RPC_ServerReportRCRWrongResultByClient(WrongResultInfo) end

---@param TheCharacter ASTExtraBaseCharacter
---@param Location FVector
function ASTExtraPlayerController:RPC_ClientNotifyRCRLocation(TheCharacter, Location) end

---@param TheCharacter ASTExtraBaseCharacter
---@param AttachParent AActor
---@param AttachParent_D AActor
---@param AttachComponent USceneComponent
---@param LocationOffset FVector
---@param RelativeScale3D FVector
---@param RotationOffset FRotator
---@param AttachSocket string
function ASTExtraPlayerController:RPC_ClientNotifyRCRLocationOffset(TheCharacter, AttachParent, AttachParent_D, AttachComponent, LocationOffset, RelativeScale3D, RotationOffset, AttachSocket) end

---@param TheCharacter ASTExtraBaseCharacter
---@param Location FVector
---@param Rotation FRotator
function ASTExtraPlayerController:RPC_ClientNotifyRCRRelevant(TheCharacter, Location, Rotation) end

---@param TheCharacter ASTExtraBaseCharacter
---@param Location FVector
---@param Rotation FRotator
function ASTExtraPlayerController:RPC_ClientNotifyTruesightRelevant(TheCharacter, Location, Rotation) end

---@param TheCharacter ASTExtraBaseCharacter
---@param VoiceCheckVector FVector
function ASTExtraPlayerController:RPC_ClientTriggerMoveVoice(TheCharacter, VoiceCheckVector) end

---@param TheShootWeapon ASTExtraWeapon
---@param TheCharacterLoc FVector
---@param WeaponStateType EFreshWeaponStateType
function ASTExtraPlayerController:RPC_ClientTriggerWeaponVoiceAndSound(TheShootWeapon, TheCharacterLoc, WeaponStateType) end

---@param TheCharacter ASTExtraBaseCharacter
---@param Location FVector
---@param FootStepState EFootStepState
function ASTExtraPlayerController:RPC_ClientTriggerMoveSound(TheCharacter, Location, FootStepState) end

---@param TheCharacter ASTExtraBaseCharacter
---@param Location FVector
---@param CustomMovementMode ECustomMovmentMode
---@param Param number
function ASTExtraPlayerController:RPC_ClientTriggerCustomMovementSound(TheCharacter, Location, CustomMovementMode, Param) end

---@param TheWeapon ASTExtraWeapon
---@param WeaponStateType EFreshWeaponStateType
function ASTExtraPlayerController:OnDSOthersWeaponVS(TheWeapon, WeaponStateType) end

---@param LandedCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:OnDSOthersLandedSound(LandedCharacter) end

---@param SkillCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:OnDSOthersSkillStart(SkillCharacter) end

---@param TheCharacter ASTExtraBaseCharacter
---@param CustomMovementMode ECustomMovmentMode
---@param Param number
function ASTExtraPlayerController:OnDSCustomMovementSound(TheCharacter, CustomMovementMode, Param) end

---@param bOpen boolean
function ASTExtraPlayerController:InvalidRCRByPlayer(bOpen) end

function ASTExtraPlayerController:RCRDebugCmd() end

---@param VisualizationLevel number
function ASTExtraPlayerController:EnableRCRVisualization(VisualizationLevel) end

---@param bFreeze boolean
function ASTExtraPlayerController:FreezeRCRVisualization(bFreeze) end

---@param bEnable boolean
function ASTExtraPlayerController:EnableRCRDebugInfoVisualization(bEnable) end

---@param RelativeUnits number
function ASTExtraPlayerController:EnableRCRCameraLocVisualization(RelativeUnits) end

---@param bEnable boolean
---@param ViewerLocX number
---@param ViewerLocY number
---@param ViewerLocZ number
---@param TargetLocX number
---@param TargetLocY number
---@param TargetLocZ number
function ASTExtraPlayerController:RCRVisualization(bEnable, ViewerLocX, ViewerLocY, ViewerLocZ, TargetLocX, TargetLocY, TargetLocZ) end

---@param bEnable boolean
---@param bPersistentLines boolean
---@param LifeTime number
---@param StartLocX number
---@param StartLocY number
---@param StartLocZ number
---@param EndLocX number
---@param EndLocY number
---@param EndLocZ number
---@param Pitch number
---@param Yaw number
---@param Roll number
---@param SizeX number
---@param SizeY number
---@param SizeZ number
function ASTExtraPlayerController:RCRVisualizationSweep(bEnable, bPersistentLines, LifeTime, StartLocX, StartLocY, StartLocZ, EndLocX, EndLocY, EndLocZ, Pitch, Yaw, Roll, SizeX, SizeY, SizeZ) end

---@param bEnable boolean
---@param bPersistentLines boolean
---@param LifeTime number
---@param LocX number
---@param LocY number
---@param LocZ number
---@param Pitch number
---@param Yaw number
---@param Roll number
---@param SizeX number
---@param SizeY number
---@param SizeZ number
function ASTExtraPlayerController:RCRVisualizationBox(bEnable, bPersistentLines, LifeTime, LocX, LocY, LocZ, Pitch, Yaw, Roll, SizeX, SizeY, SizeZ) end

function ASTExtraPlayerController:RCRForceInit() end

---@param VisibleCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@param DebugLines ULuaArrayHelper<FBatchedLine>
---@param GridLocation FVector
---@param GridSize number
function ASTExtraPlayerController:ClientOnGetShelterKillDebugData(VisibleCharacters, DebugLines, GridLocation, GridSize) end

---@param bNewHidden boolean
function ASTExtraPlayerController:SetBlueCircleHiddenInGame(bNewHidden) end

---@param bNewHidden boolean
function ASTExtraPlayerController:SetBlueCircleRaidationHiddenInGame(bNewHidden) end

---@param PressType EPressType
function ASTExtraPlayerController:TouchBegin(PressType) end

---@param PressType EPressType
---@return boolean
function ASTExtraPlayerController:TouchEnd(PressType) end

function ASTExtraPlayerController:MarkStartFireFrame() end

---启动怪物宝箱
function ASTExtraPlayerController:ServerStartMonsterTreasureBox() end

---@param Box AMonsterTreasureBox
function ASTExtraPlayerController:InternalServerStartMonsterTreasureBox(Box) end

function ASTExtraPlayerController:ClientStartMonsterTreasureBox() end

function ASTExtraPlayerController:GetMonsterTreasureBoxList() end

function ASTExtraPlayerController:GetTeamMonsterTreasureBoxList() end

function ASTExtraPlayerController:GMSpawnMonsterBox() end

---@param x number
---@param y number
function ASTExtraPlayerController:GMSpawnWingManMiniMap(x, y) end

---@param ID number
---@param param1 string
---@param param2 string
function ASTExtraPlayerController:GMDisplayGameTipWithParam(ID, param1, param2) end

---@param x number
---@param y number
---@param z number
function ASTExtraPlayerController:GMSpawnMonsterBoxWithPos(x, y, z) end

---操作Actor, Client->DS, feishen, 20190925
---@param Actor AActor
---@param OperateType number
function ASTExtraPlayerController:ClientOperateActor(Actor, OperateType) end

---@param Box AActor
---@param OperateType number
function ASTExtraPlayerController:ServerOperateActor(Box, OperateType) end

---@param DeltaTime number
function ASTExtraPlayerController:ClientHeartbeat(DeltaTime) end

---@param InHeartbeatData FHeartbeatData
function ASTExtraPlayerController:ServerHeartbeat(InHeartbeatData) end

---记录当前PVE到第几阶段
function ASTExtraPlayerController:OnRep_PVECurrentStage() end

---设置当前是第几关, 切换副本时调用
---@param Stage number
function ASTExtraPlayerController:SetPVECurrentStage(Stage) end

---@param ModeUIMgr ULuaArrayHelper<string>
function ASTExtraPlayerController:SetGameStateModeUI(ModeUIMgr) end

---@param bRainy boolean
function ASTExtraPlayerController:SetIsRainy(bRainy) end

---@param bSnowy boolean
function ASTExtraPlayerController:SetIsSnowy(bSnowy) end

---@param bBlizzard boolean
function ASTExtraPlayerController:SetIsBlizzard(bBlizzard) end

---@param InMysteriosID number
function ASTExtraPlayerController:ServerPayMysteriosPointEscapeCash(InMysteriosID) end

---@param InMysteriosID number
function ASTExtraPlayerController:ServerTriggerMysteriosPointEscape(InMysteriosID) end

---@param InBuyingInfo FBountyBuyingInfo
function ASTExtraPlayerController:ServerBountyBuyItem(InBuyingInfo) end

---@param itemID number
---@param itemCount number
function ASTExtraPlayerController:ServerBountyBuyItemSingle(itemID, itemCount) end

---@param InBuyingResultInfo FBountyBuyingResultInfo
function ASTExtraPlayerController:ClientBountyBuyItemResult(InBuyingResultInfo) end

---@param ServerBountyBoughtItemList ULuaArrayHelper<FBountyBoughtInfo>
function ASTExtraPlayerController:ClientSyncBountyBoughtItemList(ServerBountyBoughtItemList) end

---@param InCheatCommandInfo FCheatCommandInfo
function ASTExtraPlayerController:ServerCheatCommand(InCheatCommandInfo) end

---@param InCheatCommandResultInfo FCheatCommandResultInfo
function ASTExtraPlayerController:ClientCheatCommandResult(InCheatCommandResultInfo) end

---@param InCheatCommandResultInfo FCheatCommandResultInfo
function ASTExtraPlayerController:BPClientCheatCommandResult(InCheatCommandResultInfo) end

---@param InTargetHelicopter AActor
function ASTExtraPlayerController:ServerBoardHelicopter_GunMaster(InTargetHelicopter) end

---@param InFeatureNetMetaData FModeAvatarFeatureNetMetaData
function ASTExtraPlayerController:Server_TryActivateModeAvatarFeature(InFeatureNetMetaData) end

---@param InFeatureNetMetaData FModeAvatarFeatureNetMetaData
function ASTExtraPlayerController:Server_TryRevertModeAvatarFeature(InFeatureNetMetaData) end

---@param Helicopter ARescueHelicopterBase
function ASTExtraPlayerController:ServerBoardHelicopter(Helicopter) end

---@param Helicopter ARescueHelicopterBase
---@return boolean
function ASTExtraPlayerController:IsOwningHelicopter(Helicopter) end

---@param Pos FVector
function ASTExtraPlayerController:SpawnWingManMiniMap(Pos) end

---@return FTransform
function ASTExtraPlayerController:GetPaintDecalTargetTransform() end

---@param ItemID number
---@param Count number
function ASTExtraPlayerController:AddDecalDyeItem(ItemID, Count) end

---@param ItemID number
---@param Count number
function ASTExtraPlayerController:ConsumeDecalItem(ItemID, Count) end

---@param ItemID number
---@param Count number
function ASTExtraPlayerController:ConsumeLobbyItem(ItemID, Count) end

---@param ZombieWaveIndex number
function ASTExtraPlayerController:ServerSelectZombieWave(ZombieWaveIndex) end

function ASTExtraPlayerController:OnRep_SelectedZombieWaveIndex() end

---@param IsOpen boolean
---@param IsSelfOnly boolean
function ASTExtraPlayerController:SetTickBuild(IsOpen, IsSelfOnly) end

---@param BuildIndexByUser number
---@param BuildMaxByUser number
function ASTExtraPlayerController:OpenOnceBuild(BuildIndexByUser, BuildMaxByUser) end

function ASTExtraPlayerController:BuildArroundMySelf() end

function ASTExtraPlayerController:SwitchGenerateItem() end

---@param UAEPC AUAEPlayerController
function ASTExtraPlayerController:ReInitUIAfterReCreatePawn(UAEPC) end

function ASTExtraPlayerController:SwitchSpawnZombie() end

function ASTExtraPlayerController:SwitchStaticConfigZombie() end

---@param Id number
function ASTExtraPlayerController:LocalTestPaintDecal(Id) end

function ASTExtraPlayerController:LocalProfileDecal() end

---@param Id number
---@param DecalData FPlayerDecalData
function ASTExtraPlayerController:ServerTestPaintDecal(Id, DecalData) end

function ASTExtraPlayerController:ClientStartOnPlane() end

---@param InExProjectileHitInfo FExplosionProjectileHitInfo
---@param Bullet AProjectileBulletBase
function ASTExtraPlayerController:RPC_Server_NotifyServerProjectileBulletImpact(InExProjectileHitInfo, Bullet) end

---@param Bullet AProjectileBulletBase
---@param InExpProjectileInfo FExplosionProjectileHitInfo
function ASTExtraPlayerController:RPC_Server_NotifyServerLaserProjectileBulletAutoExplode(Bullet, InExpProjectileInfo) end

function ASTExtraPlayerController:ReportWatchGamePlayerInfoButtonClick() end

---@param PlayerInfoButtonClick FWatchGamePlayerInfoButtonClick
function ASTExtraPlayerController:ServerReportWatchGamePlayerInfoButtonClick(PlayerInfoButtonClick) end

---@param CampID number
---@param VisualFieldActorList ULuaArrayHelper<AActor>
function ASTExtraPlayerController:RPC_Server_ReportPeerVisualFieldActorList(CampID, VisualFieldActorList) end

function ASTExtraPlayerController:RefreshPlayerOBInfoButtonState() end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param SwitchWeaponFlag number
---@param ServerWeaponReconnectOpIndex number
function ASTExtraPlayerController:RPC_Client_SwitchWeapon(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, SwitchWeaponFlag, ServerWeaponReconnectOpIndex) end

---@param HitDamageEffectSwitchOut FHitDamageEffectSwitch
---@param DamageCauser AActor
---@param DamagedActor AActor
---@param DamageTypeID number
function ASTExtraPlayerController:GetHitDamageEffectSwitchOnInstigator(HitDamageEffectSwitchOut, DamageCauser, DamagedActor, DamageTypeID) end

---@param TeammateName string
function ASTExtraPlayerController:ImprisonmentTeammate(TeammateName) end

---@param TeammateName string
---@param bDoImprisonment boolean
function ASTExtraPlayerController:ToServerRPC_ChangeTeammateImprisonmentStatus(TeammateName, bDoImprisonment) end

function ASTExtraPlayerController:OnRep_ImprisonmentTeammateSucess() end

---@param TeammateName string
function ASTExtraPlayerController:RPC_C2S_RequestSyncMurderImprisonmentStatus(TeammateName) end

---@param TeammateName string
function ASTExtraPlayerController:RPC_C2S_RequestSyncAttackerImprisonmentStatus(TeammateName) end

---@param KillerName string
---@param bDoImprisonment boolean
function ASTExtraPlayerController:ToServerRPC_ImprisonmentKillerByIncivilizedReport(KillerName, bDoImprisonment) end

---@return boolean
function ASTExtraPlayerController:IsScopeFireEnabled() end

---@param WeaponIDList ULuaArrayHelper<FItemDefineID>
---@param PawnGUID number
function ASTExtraPlayerController:RPC_OwnerClient_ClearAllInventoryData(WeaponIDList, PawnGUID) end

function ASTExtraPlayerController:OnRep_UsedSimulation() end

---@param WeatherMgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function ASTExtraPlayerController:HandleDynamicWeatherChanged(WeatherMgr, Event) end

function ASTExtraPlayerController:RPC_CheckAliveTeammateNum() end

---@param TeamAliveNum number
function ASTExtraPlayerController:RPC_NotifyAliveTeammateNum(TeamAliveNum) end

function ASTExtraPlayerController:RPC_GiveUpGame() end

function ASTExtraPlayerController:RPC_ReviveState_GiveUpRevive() end

function ASTExtraPlayerController:RPC_TopFiveChooseContinue() end

function ASTExtraPlayerController:RPC_ShowTopFiveTipsNotify() end

function ASTExtraPlayerController:OnGMEnterFinish() end

---@return boolean
function ASTExtraPlayerController:IsLycanGameMode() end

---@param TaskType number
---@param Count number
---@param Location FVector
---@param ExtraParam string
---@param IsCumulative boolean
function ASTExtraPlayerController:ReportSimpleTask(TaskType, Count, Location, ExtraParam, IsCumulative) end

---@param TaskType number
---@param Count number
---@param Location FVector
---@param ExtraParam string
---@param IsCumulative boolean
function ASTExtraPlayerController:ReportSimpleTaskForTeam(TaskType, Count, Location, ExtraParam, IsCumulative) end

---@param TaskID number
---@param Count number
---@param IsCumulative boolean
function ASTExtraPlayerController:ReportSimpleTaskByTaskID(TaskID, Count, IsCumulative) end

---@param TaskID number
---@param Count number
---@param IsCumulative boolean
function ASTExtraPlayerController:ReportSimpleTaskByTaskIDForTeam(TaskID, Count, IsCumulative) end

---ExtendTask Start *
---@param EventID number
---@param ObjList ULuaArrayHelper<UObject>
---@param StrList ULuaArrayHelper<string>
function ASTExtraPlayerController:OnReportExtendTaskEvent(EventID, ObjList, StrList) end

---ExtendTask End *
---@param AnotherRescuePC ASTExtraPlayerController
function ASTExtraPlayerController:HandleRescueInterruptedOnPC(AnotherRescuePC) end

---@param TeammateYouKill ASTExtraPlayerController
function ASTExtraPlayerController:AddTeammatesYouKilled(TeammateYouKill) end

---@param InformMurderName string
---@return boolean
function ASTExtraPlayerController:IsMurderSelfDefense(InformMurderName) end

function ASTExtraPlayerController:OnRep_TeammatesCanBeReported() end

function ASTExtraPlayerController:OnRep_ClientSettingBaseOnGameMode() end

---@param RevivalGotoSpectatingTime number
---@param RevivalGotoSpectatingTips string
---@return boolean
function ASTExtraPlayerController:GetRevivalGotoSpectatingConfig(RevivalGotoSpectatingTime, RevivalGotoSpectatingTips) end

function ASTExtraPlayerController:RPC_OwnerClient_SetIsUsingBattery() end

function ASTExtraPlayerController:NotifyEnterAvatarDisplayState() end

---@param loc FVector
function ASTExtraPlayerController:TriggerOnUITouchMoveEvent(loc) end

function ASTExtraPlayerController:ServerDoPickupRevivalFlag() end

function ASTExtraPlayerController:OnServerFinishPickupRevivalFlag() end

---@param Reason string
function ASTExtraPlayerController:RevivalTemateFail(Reason) end

---@return boolean
function ASTExtraPlayerController:CientRevivalTemmates() end

---@param RevivalPoint ARevivalPointActor
function ASTExtraPlayerController:DoRevivalTemmates(RevivalPoint) end

function ASTExtraPlayerController:ClientGiveUpRevivalTemmates() end

---@param RevivalPoint ARevivalPointActor
function ASTExtraPlayerController:DoGiveUpRevivalTemmates(RevivalPoint) end

function ASTExtraPlayerController:RevivalTemateSuccess() end

function ASTExtraPlayerController:OnBuyRevivalSign() end

---@param TeammateIndex number
function ASTExtraPlayerController:OnBuyRevivalTeammate(TeammateIndex) end

function ASTExtraPlayerController:ConsumeRevivalSign() end

---@param CurCountdown number
function ASTExtraPlayerController:UpdateSelfRevivalCountdown(CurCountdown) end

---@param inAlertID number
---@param iconID number
---@param testFuncIndex number
function ASTExtraPlayerController:TestMapMarkClient(inAlertID, iconID, testFuncIndex) end

---@param Start boolean
function ASTExtraPlayerController:RecordTouch(Start) end

---@param IsLoop boolean
function ASTExtraPlayerController:SimulateTouch(IsLoop) end

---@param Pitch number
---@param Yaw number
---@param Roll number
function ASTExtraPlayerController:ResetRotation(Pitch, Yaw, Roll) end

---@param Pitch number
---@param Yaw number
---@param Roll number
function ASTExtraPlayerController:ResetRotationWithParam(Pitch, Yaw, Roll) end

function ASTExtraPlayerController:SaveRotation() end

function ASTExtraPlayerController:ResetToSavedRotation() end

function ASTExtraPlayerController:OnStartFireSign() end

function ASTExtraPlayerController:ClearFireSign() end

---@param state EPawnState
function ASTExtraPlayerController:StartStateSign(state) end

---@param state EPawnState
function ASTExtraPlayerController:ClearStateSign(state) end

function ASTExtraPlayerController:EnterNightState() end

function ASTExtraPlayerController:ExitNightState() end

---@return number
function ASTExtraPlayerController:GetRevivalCountDownTime() end

---@param NewInWateringRange boolean
function ASTExtraPlayerController:SetInWateringRange(NewInWateringRange) end

function ASTExtraPlayerController:OnRep_InWateringRangeBP() end

---@param IsShow boolean
---@param NewUIType number
function ASTExtraPlayerController:OnShowAnimationButton(IsShow, NewUIType) end

---@param IsShow boolean
---@param NewUIType number
function ASTExtraPlayerController:ShowAnimationButton(IsShow, NewUIType) end

---@param Rabbit AActor
function ASTExtraPlayerController:ServerCatchRabbit(Rabbit) end

---@param InVehicle ASTExtraVehicleBase
---@param InTargetVehicleID number
function ASTExtraPlayerController:GetVehicleAvatarSkinListFilter(InVehicle, InTargetVehicleID) end

---@param InVehicle ASTExtraVehicleBase
---@return boolean
function ASTExtraPlayerController:IsChangeUseVehicleAvatar(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param InChangeTargetSkinID number
function ASTExtraPlayerController:ServerRPC_ChangeVehicleAvatar(InVehicle, InChangeTargetSkinID) end

---@param InVehicle ASTExtraVehicleBase
---@param InChangeTargetSkinID number
---@param bDisplayTips boolean
---@param bReport boolean
function ASTExtraPlayerController:DoChangeVehicleAvatar(InVehicle, InChangeTargetSkinID, bDisplayTips, bReport) end

---@param UserName string
---@param VehicleAvatarID number
function ASTExtraPlayerController:ClientRPC_ChangeVehicleAvatarSucceedNotify(UserName, VehicleAvatarID) end

---@param inUIDStr string
function ASTExtraPlayerController:ServerRPC_RequestPlayerInfo(inUIDStr) end

---@param inInfo FPlayerOBInfo
function ASTExtraPlayerController:ClientRPC_NotifyRequestDone(inInfo) end

---@param inUIDStr string
function ASTExtraPlayerController:GMTest_ReqPlayerInfo(inUIDStr) end

---@param Allow_View boolean
function ASTExtraPlayerController:ServerSetAllowViewCharmInfo(Allow_View) end

function ASTExtraPlayerController:OnRep_NeedScreenShot() end

function ASTExtraPlayerController:OnRep_GlideCount() end

function ASTExtraPlayerController:OnRep_LargeAircraftData() end

function ASTExtraPlayerController:OnRep_BigwarAvatarSettingType() end

---@param InWeaponSkinID number
---@return number
function ASTExtraPlayerController:GetWeaponSkinBaseID(InWeaponSkinID) end

function ASTExtraPlayerController:OnRep_SelfWingInfo() end

---@param bForbid boolean
function ASTExtraPlayerController:ServerSetWingForbid(bForbid) end

---@param ItemID number
---@param ItemNum number
function ASTExtraPlayerController:ReceiveAddFuelItemsFromLobby(ItemID, ItemNum) end

---@param ItemID number
---@param ItemNum number
function ASTExtraPlayerController:ReceiveAddPlaneItemsFromLobby(ItemID, ItemNum) end

---@param bOnBoard boolean
function ASTExtraPlayerController:ServerRPC_RequestWindOnBoard(bOnBoard) end

---@param EffectID number
function ASTExtraPlayerController:ServerRPC_RequestCallWingPlane(EffectID) end

function ASTExtraPlayerController:OnRep_SpecMotionRestCostCount() end

---@return boolean
function ASTExtraPlayerController:ShouldShowGlideTrailParticle() end

function ASTExtraPlayerController:OnRep_ShouldShowGlideConfig() end

function ASTExtraPlayerController:OnRep_GlideConfigState() end

function ASTExtraPlayerController:ServerChangeGlideConfigState() end

function ASTExtraPlayerController:ChangeGlideState() end

---@return number
function ASTExtraPlayerController:GetGlideCount() end

---@return number
function ASTExtraPlayerController:GetSpecMotionRestCount() end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function ASTExtraPlayerController:ShowVehicleBtnCondition(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function ASTExtraPlayerController:ShowVehicleSkinBtnCondition(Vehicle) end

---@param Widget UUAEUserWidget
function ASTExtraPlayerController:BlueprintOnWidgetInit(Widget) end

---@param Widget UUAEUserWidget
---@param NetObj string
function ASTExtraPlayerController:RegisterWaitNetObj(Widget, NetObj) end

---@return boolean
function ASTExtraPlayerController:IsOnOBTransformState() end

---@return boolean
function ASTExtraPlayerController:IsGameModeSupportOBTransform() end

---@return boolean
function ASTExtraPlayerController:IsObserverModeSupportOBTransform() end

---@param bEnable boolean
function ASTExtraPlayerController:SetEnableShowOtherOBTransformPawn(bEnable) end

---@param bEnable boolean
function ASTExtraPlayerController:SetEnableEscapeShowOtherOBTransformPawn(bEnable) end

function ASTExtraPlayerController:TryDestroyOBTransformComp() end

function ASTExtraPlayerController:OnRep_bEnableShowOtherOBTransformPawn() end

---@param CurrentPawnState number
function ASTExtraPlayerController:CurrentPawnStateChange(CurrentPawnState) end

function ASTExtraPlayerController:RefreshPawnStateUI() end

---@param inNumber number
function ASTExtraPlayerController:CreateNewClientFatalDamageInfo(inNumber) end

---@param inNumber number
function ASTExtraPlayerController:TestCreateNewEspecialFatalDamage(inNumber) end

---@param inNumber number
function ASTExtraPlayerController:TextCreateAddKillMaxKillerTip(inNumber) end

---@param inNumber number
function ASTExtraPlayerController:TextCreateBeKilledMaxKillerTip(inNumber) end

function ASTExtraPlayerController:TestShowLeftQueueTip() end

---@param NewData FClientFatalDamageRecordData
function ASTExtraPlayerController:TestNewFatalDamage(NewData) end

function ASTExtraPlayerController:InitWeatherConfigComponent() end

---@param IsEnable boolean
function ASTExtraPlayerController:SwitchTeamAssembleDisplayGlobally(IsEnable) end

function ASTExtraPlayerController:ForceHideLoadingUIForEscapeMode() end

---@return boolean
function ASTExtraPlayerController:IsInEscapeMode() end

---@return boolean
function ASTExtraPlayerController:IsMechaOrUnderCoverInEscapeMode() end

---@return boolean
function ASTExtraPlayerController:IsInEscapeModeTeamAssemble() end

function ASTExtraPlayerController:DirectCloseLoadingUIForEscapeMode() end

function ASTExtraPlayerController:OnRep_EnableTeamAssembleDisplay() end

function ASTExtraPlayerController:OnRep_IsEnableTeamAssembleDisplayForEscapeMode() end

function ASTExtraPlayerController:BP_OnRep_IsEnableTeamAssembleDisplayForEscapeMode() end

---@param IsEnable boolean
function ASTExtraPlayerController:OnEnableTeamAssembleDisplayView(IsEnable) end

---@return boolean
function ASTExtraPlayerController:IsTeamAssembleDisplayLevelLoaded() end

---@return boolean
function ASTExtraPlayerController:IsTeamAssembleDisplayEnabled() end

function ASTExtraPlayerController:OnRep_TeamAssemableDisplayInfoList() end

function ASTExtraPlayerController:SetupTeamAssembleDisplayInfo() end

function ASTExtraPlayerController:CheckUpdateTeamAssembleDisplayInfo() end

function ASTExtraPlayerController:SetupTeamAssembleDisplayInfoBlueprint() end

---@param bEnable boolean
---@return boolean
function ASTExtraPlayerController:IsForceSwitchTeamView(bEnable) end

---@param DetailInfo FTeamAssembleAvatarDisplayInfo
---@param PlayerParam FGameModePlayerParams
---@param PlayerPawn APawn
function ASTExtraPlayerController:FillTeamAssemableDisplayItemDetail(DetailInfo, PlayerParam, PlayerPawn) end

---@param CountDown number
function ASTExtraPlayerController:OnClientGameCountDown(CountDown) end

---@param PlayerID FPlayerID
---@return FGameModePlayerParams
function ASTExtraPlayerController:RetrievePlayerParamTest(PlayerID) end

---@param IsEnable boolean
function ASTExtraPlayerController:ChangeTeamAssembleDisplayViewState(IsEnable) end

function ASTExtraPlayerController:RecoverTeamAssembleState() end

function ASTExtraPlayerController:TestEnableTeamAssemable() end

---@return boolean
function ASTExtraPlayerController:IsTeamAssemblePlaying() end

---@return boolean
function ASTExtraPlayerController:IsCompleteReplayPlaying() end

---@return boolean
function ASTExtraPlayerController:InRemoteControlState() end

---@param inGuideID number
function ASTExtraPlayerController:OnOccupyNewbieGuide(inGuideID) end

---@param inPickUpID number
function ASTExtraPlayerController:OnNewbieGuideHandlePickUp(inPickUpID) end

function ASTExtraPlayerController:RequestPlayerNewbieInfo() end

---@param FinishedGuide ULuaArrayHelper<number>
---@param FinishedCounts ULuaArrayHelper<number>
---@param PlayerLevel number
---@param PlayerExperienceType number
function ASTExtraPlayerController:InitNewbieComponent(FinishedGuide, FinishedCounts, PlayerLevel, PlayerExperienceType) end

---@param bInInterruptDrawStyle boolean
function ASTExtraPlayerController:ServerReceiveUIInitMsgFromClient(bInInterruptDrawStyle) end

---@param bInEnableGlobalFastDraw boolean
---@param bInEnableScopeJump boolean
function ASTExtraPlayerController:ServerReceiveLocalSettingChangedFromClient(bInEnableGlobalFastDraw, bInEnableScopeJump) end

---单端数据直接上报
---@param ExceptionType string
---@param StackStr string
---@param DetailStr string
---@param bForceReport boolean
function ASTExtraPlayerController:ExceptionReport(ExceptionType, StackStr, DetailStr, bForceReport) end

---双端数据对比上报
---@param Context UObject
---@param ExceptionType string
---@param HandleFunctionTarget UObject
function ASTExtraPlayerController:ExceptionReport_DataCompare(Context, ExceptionType, HandleFunctionTarget) end

---@param InPlayerName string
---@param InReduceTime number
function ASTExtraPlayerController:GMCSaveTeammate(InPlayerName, InReduceTime) end

---@param InSkillIndex number
---@param ExecuteTime number
function ASTExtraPlayerController:GMCUseSkill(InSkillIndex, ExecuteTime) end

function ASTExtraPlayerController:RPC_NotifyClientLoadingComplete() end

---@param FireBalloon ASTExtraFireBalloon
---@param bNewDrive boolean
function ASTExtraPlayerController:ServerDriveFireBalloon(FireBalloon, bNewDrive) end

---@param FireBalloon ASTExtraFireBalloon
---@param MoveUpValue number
function ASTExtraPlayerController:ServerControlFireBalloonMove(FireBalloon, MoveUpValue) end

function ASTExtraPlayerController:C2S_GetQuestionRequest() end

---@param QuestionID number
---@param CurrentNPC AWarteringAreaCPP
function ASTExtraPlayerController:S2C_GetQuestionResponse(QuestionID, CurrentNPC) end

---@param QuestionID number
---@param AnswerID number
function ASTExtraPlayerController:C2S_SubmitQuestionRequest(QuestionID, AnswerID) end

---@param AnswerResult boolean
function ASTExtraPlayerController:S2C_SubmitQuestionResponse(AnswerResult) end

---@param WinNum number
function ASTExtraPlayerController:HandleBreakUAEWindow(WinNum) end

---@param HitPlayer AActor
---@param bNeedJudgeCamp boolean
function ASTExtraPlayerController:CallShowMedicBulletHitTips(HitPlayer, bNeedJudgeCamp) end

---@param ShootPlayerName string
---@param ShootPlayerUID number
---@param ShootPlayerTeamID number
---@param ShootPlayerCampID number
---@param HitPlayerName string
---@param HitPlayerUID number
---@param HitPlayerTeamID number
---@param HitPlayerCampID number
---@param bNeedJudgeCamp boolean
function ASTExtraPlayerController:HandleShowMedicBulletHitTips(ShootPlayerName, ShootPlayerUID, ShootPlayerTeamID, ShootPlayerCampID, HitPlayerName, HitPlayerUID, HitPlayerTeamID, HitPlayerCampID, bNeedJudgeCamp) end

---@param NewWeaponFunction EWeaponOperationMode
function ASTExtraPlayerController:ChangeWeaponFunction(NewWeaponFunction) end

---@param NewWeaponFunction EWeaponOperationMode
function ASTExtraPlayerController:ServerChangeWeaponFunction(NewWeaponFunction) end

---@param NewWeaponFunction EWeaponOperationMode
function ASTExtraPlayerController:ClientChangeWeaponFunction(NewWeaponFunction) end

function ASTExtraPlayerController:OnRep_WeaponFunctionChanged() end

function ASTExtraPlayerController:DorepWeatherIndex() end

function ASTExtraPlayerController:OnRep_SwitchWeatherByIndex() end

---@param WeatherID number
function ASTExtraPlayerController:ReplaySwitchWeatherByWeatherID(WeatherID) end

---@param bInDstWeatherFog boolean
function ASTExtraPlayerController:SetDstWeatherFog(bInDstWeatherFog) end

function ASTExtraPlayerController:OnRep_WeatherFog() end

function ASTExtraPlayerController:ServerDumpPlayerInfo() end

---@param BShow boolean
function ASTExtraPlayerController:ShowTouchInterface(BShow) end

---@param IsShow boolean
function ASTExtraPlayerController:SetIsJoyStickShow(IsShow) end

function ASTExtraPlayerController:HandleOBHostCloseBattle() end

function ASTExtraPlayerController:OnReInitOnReplayFinializeFastforward() end

---@return boolean
function ASTExtraPlayerController:IsPlayingOBReplay() end

---@return boolean
function ASTExtraPlayerController:IsOBTypeUIState() end

---@param InConcertPlayerActor AConcertPlayerActor
function ASTExtraPlayerController:ServerDoRequestConcertSync(InConcertPlayerActor) end

---@param InConcertPlayerActor AConcertPlayerActor
---@param InSyncData FConcertSendSyncData
function ASTExtraPlayerController:ClientReceiveConcertSyncData(InConcertPlayerActor, InSyncData) end

---@param index number
---@param type number
function ASTExtraPlayerController:TestAyncLoadFXWidget(index, type) end

function ASTExtraPlayerController:OnLoadAsyncWidget() end

function ASTExtraPlayerController:BroadcastVaultFailDSCpp() end

---@param bSet boolean
function ASTExtraPlayerController:FadeSceneToGrayOnDeath(bSet) end

function ASTExtraPlayerController:OnRep_RoomMode() end

function ASTExtraPlayerController:OnMainControlPanelHideAllUI() end

---@param Enable boolean
function ASTExtraPlayerController:SetEnableMoveInputStateSixteenDir(Enable) end

---@param InShowResPoint boolean
function ASTExtraPlayerController:SetShowResPoint(InShowResPoint) end

function ASTExtraPlayerController:OnRep_CampToolStatus() end

---@param InCampToolStatusFromServer number
function ASTExtraPlayerController:SetCampToolStatusFromServer(InCampToolStatusFromServer) end

---@param InCampPrivileges boolean
function ASTExtraPlayerController:SetCampPrivileges(InCampPrivileges) end

---@param InShowAirLine boolean
function ASTExtraPlayerController:SetShowAirLine(InShowAirLine) end

---@param InUseDistanceMeasurement boolean
function ASTExtraPlayerController:SetUseDistanceMeasurement(InUseDistanceMeasurement) end

---@param InShowTeammateKillInfo boolean
function ASTExtraPlayerController:SetShowTeammateKillInfo(InShowTeammateKillInfo) end

function ASTExtraPlayerController:OnRep_EnableAirPointEnhance() end

---@param InOpenCampToolAutoHitPoint boolean
function ASTExtraPlayerController:ServerSetOpenCampToolAutoHitPoint(InOpenCampToolAutoHitPoint) end

function ASTExtraPlayerController:OnRep_EnablePointEnhance() end

---@param InEnablePointEnhance boolean
function ASTExtraPlayerController:SetEnablePointEnhance(InEnablePointEnhance) end

---@param InEnablePointEnhance boolean
function ASTExtraPlayerController:SetEnablePointEnhanceNative(InEnablePointEnhance) end

---@param InEnableSoundPromptEnhance boolean
function ASTExtraPlayerController:SetEnableSoundPromptEnhance(InEnableSoundPromptEnhance) end

---@param InEnableSoundPromptEnhance boolean
function ASTExtraPlayerController:SetEnableSoundPromptEnhanceClient(InEnableSoundPromptEnhance) end

function ASTExtraPlayerController:OnRep_EnableSoundPromptEnhance() end

---@param TaskData FGameModePlayerTaskData
---@return boolean
function ASTExtraPlayerController:IsTaskFit(TaskData) end

---@param StartPos FVector
---@param EndPos FVector
---@param RouteLengthInMap number
---@param RouteWidgetRotateAngle number
---@param CanJumpLocInMap FVector2D
function ASTExtraPlayerController:OnSetPlaneRouteForCamp(StartPos, EndPos, RouteLengthInMap, RouteWidgetRotateAngle, CanJumpLocInMap) end

---@param X number
---@param Y number
---@param Z number
function ASTExtraPlayerController:TraceTestLandscape(X, Y, Z) end

---@param ObjectName string
function ASTExtraPlayerController:DumpObjectByName(ObjectName) end

---@param ImpactActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraPlayerController:RPC_Server_RemoveFracturedMeshFragment(ImpactActor, OtherActor, NormalImpulse, Hit) end

---@param Hit FHitResult
function ASTExtraPlayerController:RPC_Server_RemovePhotonDestructibleFragment(Hit) end

---@return string
function ASTExtraPlayerController:OnGetCrashInfo() end

---@return string
function ASTExtraPlayerController:OnRecieveCrash() end

---@param Style UUserWidgetStyle
function ASTExtraPlayerController:LoadUserWidgetStyle(Style) end

---@param PathString string
function ASTExtraPlayerController:LoadUserWidgetStyleByPath(PathString) end

---@param PathString string
function ASTExtraPlayerController:LoadUserWidgetStyleByPathWidthRemove(PathString) end

---@param PathString string
---@param DoLoad boolean
function ASTExtraPlayerController:AsyncDoUserWidgetStyleByPath(PathString, DoLoad) end

---@param SoftPath string
function ASTExtraPlayerController:OnLoadWidgetStyle(SoftPath) end

---@param Style UUserWidgetStyle
function ASTExtraPlayerController:UnLoadUserWidgetStyle(Style) end

function ASTExtraPlayerController:UnLoadAllUserWidgetStyle() end

---@param PathString string
function ASTExtraPlayerController:UnLoadUserWidgetStyleByPath(PathString) end

---@param UISlotType EPESkillUISlotMapping
---@param SkillUIWidget UUAEUserWidget
---@return boolean
function ASTExtraPlayerController:AttachSkillUIToMainUI(UISlotType, SkillUIWidget) end

---@param UISlotType EPESkillUISlotMapping
---@param SkillUIWidget UUAEUserWidget
---@return boolean
function ASTExtraPlayerController:DetachSkillUIFromMainUI(UISlotType, SkillUIWidget) end

---@param InPlayerKey number
---@param Reason string
function ASTExtraPlayerController:OnPlayerSendUIStyleTLog(InPlayerKey, Reason) end

function ASTExtraPlayerController:ReportUIStyleClientException() end

---@param Style UUserWidgetStyle
function ASTExtraPlayerController:CheckAddUnLoadUserWidgetStyleTimerHandle(Style) end

---@param TimerHandle FTimerHandle
function ASTExtraPlayerController:RemoveTimerHandle(TimerHandle) end

---@param bIsLoad boolean
---@param UIStyleName string
---@param bShouldReport boolean
function ASTExtraPlayerController:C2S_SendUIStyleInfoToDS(bIsLoad, UIStyleName, bShouldReport) end

---@param MicPhoneIsOpen boolean
---@param SpeakerIsOpen boolean
function ASTExtraPlayerController:C2S_UpdateMicPhoneAndSpeakerStateToDS(MicPhoneIsOpen, SpeakerIsOpen) end

---@param TeamRoomName string
function ASTExtraPlayerController:C2S_UpdateGVoiceTeamRoomToDS(TeamRoomName) end

function ASTExtraPlayerController:InitMicPhoneAndSpeakerStateToDS() end

function ASTExtraPlayerController:OnUIStyleCreateJoystick() end

---@param Widget UUAEUserWidget
---@param InWorld UWorld
function ASTExtraPlayerController:OnUAEUserWdigetNativeConstruct(Widget, InWorld) end

---@param Path string
function ASTExtraPlayerController:PlaySequencer(Path) end

---@param InTeamID number
function ASTExtraPlayerController:NormalTeamateLogin(InTeamID) end

---@param FixConfigIndex number
---@param bUnLoad boolean
function ASTExtraPlayerController:NotifyServerFixLevel(FixConfigIndex, bUnLoad) end

function ASTExtraPlayerController:RPC_Client_ForceClearMoveAndStyle() end

---@param Distance number
function ASTExtraPlayerController:SpawnWeaponDamageMonitor(Distance) end

---@param bEnable boolean
function ASTExtraPlayerController:EnablePlayerWeaponModuleSystem(bEnable) end

---@param bEnable boolean
function ASTExtraPlayerController:RPC_Server_EnablePlayerWeaponModuleSystem(bEnable) end

---@param Inviter ASTExtraBaseCharacter
---@param Recevier ASTExtraBaseCharacter
---@param type number
function ASTExtraPlayerController:SpawnBattleFlagActor(Inviter, Recevier, type) end

function ASTExtraPlayerController:RPC_Server_FetchIsPlayGunMasterVideoValue() end

---@param InIsPlayGunMasterVideo boolean
function ASTExtraPlayerController:RPC_Client_SetIsPlayGunMasterVideoValue(InIsPlayGunMasterVideo) end

---@param Func string
---@param Params string
function ASTExtraPlayerController:ExcuteLuaGM(Func, Params) end

---@param inObFlowIndex EObserveFlowState
function ASTExtraPlayerController:ServerRPC_EnterObserveFlow(inObFlowIndex) end

---@param inSelfCount number
function ASTExtraPlayerController:ServerRPC_GunMasterMediaPlayCounter(inSelfCount) end

---@param ShowAirLine boolean
---@param UseDistanceMeasurement boolean
---@param ShowTeammateKillInfo boolean
---@param Dice boolean
---@param AIHelper boolean
---@param CampStatusFromServer number
---@param ShowResPoint boolean
---@param VoiceChanger boolean
---@param EnableSuperHumanCampSkillMonitor boolean
---@param EnablePointEnhance boolean
---@param EnableSoundPromptEnhance boolean
---@param EnableAirPointEnhance boolean
function ASTExtraPlayerController:ChangeCampStatus(ShowAirLine, UseDistanceMeasurement, ShowTeammateKillInfo, Dice, AIHelper, CampStatusFromServer, ShowResPoint, VoiceChanger, EnableSuperHumanCampSkillMonitor, EnablePointEnhance, EnableSoundPromptEnhance, EnableAirPointEnhance) end

---@param CVarsToSync FRenderQualityCVarsToSync
function ASTExtraPlayerController:RPC_Server_ReportRenderQualityCVars(CVarsToSync) end

---@param InPlayerKey string
function ASTExtraPlayerController:ClientObJudgeKill(InPlayerKey) end

function ASTExtraPlayerController:LocalRefreshObMapPlayerList() end

---@param bShowJudge boolean
function ASTExtraPlayerController:SetbShowJudgePlayerList(bShowJudge) end

---@param SyncData FMarkSyncData
function ASTExtraPlayerController:ServerShowSyncVehicleMark(SyncData) end

function ASTExtraPlayerController:ServerSendTeammatesKDA() end

function ASTExtraPlayerController:ServerSendVeheclePoint() end

---@return boolean
function ASTExtraPlayerController:IsEnableGalaxyFace() end

---@return boolean
function ASTExtraPlayerController:IsOBGM() end

---@param InPlayerKey string
---@return boolean
function ASTExtraPlayerController:CanClientObJudgeKill(InPlayerKey) end

function ASTExtraPlayerController:TestSpawnFakeChar() end

function ASTExtraPlayerController:RPC_Server_RequestRefreshOwnerPawnHealth() end

---@param ChangeHistory ULuaArrayHelper<number>
---@param TargetPlayer ASTExtraBaseCharacter
function ASTExtraPlayerController:RPC_OwnerClient_FlushPlayerHealthChangeHistory(ChangeHistory, TargetPlayer) end

---附近是否有可拾取物品
---@return boolean
function ASTExtraPlayerController:HasPickupPropsNearby() end

---附近是否有死亡盒子
---@return boolean
function ASTExtraPlayerController:HasDeathBoxesNearby() end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
function ASTExtraPlayerController:DropItem(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
function ASTExtraPlayerController:EnableItem(DefineID) end

---@param DefineID FItemDefineID
function ASTExtraPlayerController:DisableItem(DefineID) end

---@return number
function ASTExtraPlayerController:GetOccupiedCapacity() end

---@param DefineID FItemDefineID
---@param Count number
---@param bCallHandleDrop boolean
---@return number
function ASTExtraPlayerController:TakeItem(DefineID, Count, bCallHandleDrop) end

---@param WidgetClass UUserWidget
function ASTExtraPlayerController:LoadMainUIWidgetLayoutByClass(WidgetClass) end

---@param WidgetClass UUserWidget
function ASTExtraPlayerController:UnloadMainUIWidgetLayoutByClass(WidgetClass) end

---@param UISlotSelector FUISlotSelector
---@param UserWidget UUserWidget
function ASTExtraPlayerController:AddChildToUISlotWithUserWidget(UISlotSelector, UserWidget) end

---@param UISlotSelector FUISlotSelector
---@param UserWidget UUserWidget
---@return boolean
function ASTExtraPlayerController:IsParentUISlotExist(UISlotSelector, UserWidget) end

---@param UIName string
---@param BPPath string
---@param AnchorData FAnchorData
function ASTExtraPlayerController:ReplaceWidgetPathByTemplate(UIName, BPPath, AnchorData) end

---@param OBPlayerkey number
function ASTExtraPlayerController:EnterSpectating(OBPlayerkey) end

function ASTExtraPlayerController:LeaveSpectating() end

---@param SeatType ESTExtraVehicleSeatType
function ASTExtraPlayerController:TryEnterClosestVehicle(SeatType) end

---@param vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function ASTExtraPlayerController:TryEnterVehicle(vehicle, SeatType) end

function ASTExtraPlayerController:TryExitVehicle() end

function ASTExtraPlayerController:TryChangeSeatVehicle() end

---@param SeatIndex number
function ASTExtraPlayerController:TryChangeToVehicleSeat(SeatIndex) end

---@return boolean
function ASTExtraPlayerController:CanUseRemmoteControl() end

---@param ControledPawn APawn
---@return boolean
function ASTExtraPlayerController:TryControlRemotePawn(ControledPawn) end

---@param RemoteControl URemoteControlComponent
function ASTExtraPlayerController:ReqControlRemotePawn(RemoteControl) end

---@param ControledPawn APawn
---@param bSucceed boolean
function ASTExtraPlayerController:RspControlRemotePawn(ControledPawn, bSucceed) end

---@param RemoteControl URemoteControlComponent
function ASTExtraPlayerController:ReqPauseRemotePawn(RemoteControl) end

---@param ControledPawn APawn
---@param bSucceed boolean
function ASTExtraPlayerController:RspPauseRemotePawn(ControledPawn, bSucceed) end

---@param RemoteControl URemoteControlComponent
function ASTExtraPlayerController:ReqRecallRemotePawn(RemoteControl) end

---@param ControledPawn APawn
---@param bSucceed boolean
---@param MaxRecallTime number
function ASTExtraPlayerController:RspRecallRemotePawn(ControledPawn, bSucceed, MaxRecallTime) end

---@param PawnType ESTRemoteControlPawnType
---@param ShutDownTime number
function ASTExtraPlayerController:RspShutdownRemotePawn(PawnType, ShutDownTime) end

---@param RemoteControl URemoteControlComponent
function ASTExtraPlayerController:SendToServerRemoteControlClientInitOK(RemoteControl) end

---@param ControledPawn ASTExtraBaseCharacter
function ASTExtraPlayerController:ClientUnpossessPawn(ControledPawn) end

---@param ProductList ULuaArrayHelper<FStoreProductInfo>
function ASTExtraPlayerController:InitBountySystemProductList(ProductList) end

---@param InBuyingInfo FBountyBuyingInfo
function ASTExtraPlayerController:UGCServerBountyBuyItem(InBuyingInfo) end

---@param itemID number
---@param itemCount number
function ASTExtraPlayerController:UGCServerBountyBuyItemSingle(itemID, itemCount) end

---@param InBuyingResultInfo FBountyBuyingResultInfo
function ASTExtraPlayerController:UGCClientBountyBuyItemResult(InBuyingResultInfo) end

---@param ServerBountyBoughtItemList ULuaArrayHelper<FBountyBoughtInfo>
function ASTExtraPlayerController:UGCClientSyncBountyBoughtItemList(ServerBountyBoughtItemList) end

---@param ForceFeedbackEffect FSoftObjectPath
---@param bLooping boolean
---@param bIgnoreTimeDilation boolean
---@param Tag string
function ASTExtraPlayerController:Sequence_ForceFeedBack(ForceFeedbackEffect, bLooping, bIgnoreTimeDilation, Tag) end

---@param ID number
---@param VirateAlpha number
function ASTExtraPlayerController:Sequence_HapticFeedBackByID(ID, VirateAlpha) end

---@param Shake UCameraShake
---@param Scale number
---@param PlaySpace ECameraAnimPlaySpace
---@param UserPlaySpaceRot FRotator
function ASTExtraPlayerController:Sequence_PlayCameraShake(Shake, Scale, PlaySpace, UserPlaySpaceRot) end

---@param bEnable boolean
---@param NearClip number
---@param DataPriority number
---@param CmdNameExt string
function ASTExtraPlayerController:Sequence_SetNearClipPlane(bEnable, NearClip, DataPriority, CmdNameExt) end

---@param vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function ASTExtraPlayerController:TryEnterVehicle_IgnoreDistanceAndBlock(vehicle, SeatType) end

---@param ReportDataList ULuaArrayHelper<FClientWeaponShootReportData>
function ASTExtraPlayerController:RPC_Server_UploadClientWeaponShootDataRecordList(ReportDataList) end

---@param bIgnore boolean
function ASTExtraPlayerController:SetIgnoreCustomActorsReplication(bIgnore) end

---@param bClose boolean
function ASTExtraPlayerController:SetCloseRelevantCustomActorReplication(bClose) end

---@param ShootWeapon ASTExtraShootWeapon
---@param NewBulletNum number
---@param NewClipID number
function ASTExtraPlayerController:RPC_OwnerClient_ForceModifyWeaponBulletNumInClip(ShootWeapon, NewBulletNum, NewClipID) end

---@param IsDetach boolean
---@param UnPossessReason EUnPossessReason
function ASTExtraPlayerController:ServerHandleFakeUnPossess(IsDetach, UnPossessReason) end

---@param AnimState number
function ASTExtraPlayerController:ServerHandleHomeActivityAnimState(AnimState) end

---@param InUIDStr string
---@param InNameStr string
function ASTExtraPlayerController:AddHomeTeammate(InUIDStr, InNameStr) end

---@param InUIDStr string
---@return boolean
function ASTExtraPlayerController:IsHomeTeammateByUIDStr(InUIDStr) end

---@param InNameStr string
---@return boolean
function ASTExtraPlayerController:IsHomeTeammateByNameStr(InNameStr) end

---@param InUIDStr string
---@param InNameStr string
---@return boolean
function ASTExtraPlayerController:IsHomeTeammate(InUIDStr, InNameStr) end

function ASTExtraPlayerController:ClearHomeTeammate() end

function ASTExtraPlayerController:HomeTeammateChange() end

---@param FingerIndex ETouchIndex
---@return boolean
function ASTExtraPlayerController:IsThisFingerIndexCannotTouchMove(FingerIndex) end

function ASTExtraPlayerController:OnPlayerHitFireBtnInUGC() end

---@param Title string
---@param Content string
---@param Level number
function ASTExtraPlayerController:ClientOnSystemNotify(Title, Content, Level) end

---@param TLogID number
---@param TLogKey string
---@param TLogValue string
function ASTExtraPlayerController:ServerSendTLog(TLogID, TLogKey, TLogValue) end

---@param TLogID number
---@param TLogKey string
---@param TLogValue string
function ASTExtraPlayerController:UGCSendTLog(TLogID, TLogKey, TLogValue) end

function ASTExtraPlayerController:UGC_OnPlayerControllerReconnected() end

function ASTExtraPlayerController:UGC_OnPlayerControllerRecovered() end

---Event
---玩家断线事件。
function ASTExtraPlayerController:UGC_PlayerLostConnectionEvent() end

---Event
---玩家重连事件。
---@param IsRecovered boolean @是否为静默重连，为false则为杀进程重连
function ASTExtraPlayerController:UGC_PlayerReconnectedEvent(IsRecovered) end

function ASTExtraPlayerController:UGC_PreReceiveBeginPlay() end

---@param EndPlayReason EEndPlayReason
function ASTExtraPlayerController:UGC_PreReceiveEndPlay(EndPlayReason) end

---@param TLogID number
---@param Str1 string
---@param Str2 string
---@param InPlayerKey number
---@param Position FVector
---@param IsPersonal boolean
---@param SendTLog boolean
function ASTExtraPlayerController:RPC_Server_RecordClientActivityToTLog(TLogID, Str1, Str2, InPlayerKey, Position, IsPersonal, SendTLog) end

function ASTExtraPlayerController:OnRep_OBSimulateViewData() end

function ASTExtraPlayerController:ForceSyncOBSimulateViewDataToCurPawn() end

---Event
---初始化完毕
---生效范围S
function ASTExtraPlayerController:UGC_InitializationCompleteEvent() end

---Event
---获取道具事件，可控制当前道具是否允许获取
---生效范围S
---@param ItemID number @物品ID
---@param Count number @拾取数量 (-1表示此时数量未知)
---@return boolean @是否允许拾取
function ASTExtraPlayerController:UGC_PickupItemEvent(ItemID, Count) end

---Event
---切换武器控制事件，可控制当前武器是否允许切换，返回false则无法切换
---生效范围C
---@param SwitchSlot ESurviveWeaponPropSlot @武器槽位
---@return boolean @是否允许切换
function ASTExtraPlayerController:UGC_SwitchWeaponControlEvent(SwitchSlot) end

---Event
---开火控制事件，可控制是否允许开火，返回false则无法开火
---生效范围C
---@return boolean @是否允许开火
function ASTExtraPlayerController:UGC_StartFireControlEvent() end

---Event
---换弹控制事件，可控制是否允许换弹，返回false则无法换弹
---生效范围C
---@return boolean @是否允许开火
function ASTExtraPlayerController:UGC_ReloadControlEvent() end

---Event
---开镜控制事件，可控制是否允许开镜，返回false则无法开镜
---生效范围C
---@return boolean @是否允许开镜
function ASTExtraPlayerController:UGC_OpenScopeControlEvent() end

---Event
---投掷控制事件，可控制是否允许投掷，返回false则无法投掷
---生效范围C
---@return boolean @是否允许投掷
function ASTExtraPlayerController:UGC_ThrowGrenadeEvent() end

---Event
---是否在观战事件
---生效范围SC
---@param bIsSpec boolean
function ASTExtraPlayerController:UGC_IsSpectatingEvent(bIsSpec) end

---Event
---手指移动事件
---生效范围SC
---@param FingerIndex ETouchIndex
---@param Loc FVector
function ASTExtraPlayerController:UGC_FingerMoveEvent(FingerIndex, Loc) end

---Event
---松开屏幕事件
---生效范围SC
---@param FingerIndex ETouchIndex
function ASTExtraPlayerController:UGC_ReleaseScreenEvent(FingerIndex) end

---Event
---触摸屏幕事件
---生效范围SC
---@param FingerIndex ETouchIndex
---@param Loc FVector
function ASTExtraPlayerController:UGC_TouchScreenEvent(FingerIndex, Loc) end

---@param LevelName string
function ASTExtraPlayerController:AddTriggerLevelsClientWhiteList(LevelName) end

---@param LevelName string
function ASTExtraPlayerController:RemoveTriggerLevelsClientWhiteList(LevelName) end

---@param LevelName string
function ASTExtraPlayerController:AddTriggerLevelsClientBlackList(LevelName) end

---@param LevelName string
function ASTExtraPlayerController:RemoveTriggerLevelsClientBlackList(LevelName) end

function ASTExtraPlayerController:OnRep_TriggerLevelsClientWhiteList() end

function ASTExtraPlayerController:OnRep_TriggerLevelsClientBlackList() end

---@param bIsMovable boolean
function ASTExtraPlayerController:ServerReportMovable(bIsMovable) end

---@param InNewRecord FClientFatalDamageRecordData
function ASTExtraPlayerController:BroadcastFatalDamageToClientInternal(InNewRecord) end

---@param Data FClientFatalDamageRecordDataSimple
function ASTExtraPlayerController:BroadcastFatalDamageToClientSimpleInternal(Data) end

---@return boolean
function ASTExtraPlayerController:GetWeaponsCompanionFighting() end

---@param fighting boolean
---@param force boolean
function ASTExtraPlayerController:SetLocalWeaponsCompanionFighting(fighting, force) end

---@param triggerPlayerKey number
---@param voiceID number
---@param voiceIndex number
---@param score number
---@param baseScore number
function ASTExtraPlayerController:RPC_Client_WeaponsCompanionPlayVoice(triggerPlayerKey, voiceID, voiceIndex, score, baseScore) end

---@param play boolean
function ASTExtraPlayerController:RPC_Server_SetWeaponsCompanionPlayTag(play) end

function ASTExtraPlayerController:RPC_Server_ShowWeaponsCompanionDebugInfo() end

---@param fighting boolean
function ASTExtraPlayerController:RPC_Server_WeaponsCompanionFightingChange(fighting) end

function ASTExtraPlayerController:OnRep_WeaponsCompanionSyncAbilityList() end

function ASTExtraPlayerController:OnRep_bNeedWeaponsCompanionComp() end

---@param compAssPath FSoftObjectPath
function ASTExtraPlayerController:OnAsyncLoadedWeaponsCompanionComp(compAssPath) end

function ASTExtraPlayerController:OnRep_bNeedWeaponsCompanionClinetComp() end

---@param compAssPath FSoftObjectPath
function ASTExtraPlayerController:OnAsyncLoadedWeaponsCompanionClinetComp(compAssPath) end

---@param ruleID number
function ASTExtraPlayerController:Add_WCV_Rule(ruleID) end

function ASTExtraPlayerController:ShowWeaponsCompanionDebugInfo() end

---@param scale number
---@param x number
---@param y number
function ASTExtraPlayerController:SetWeaponsCompanionDrawParam(scale, x, y) end

---@param voiceID number
---@param voiceIndex number
function ASTExtraPlayerController:WeaponsCompanionPlayVoice_GM(voiceID, voiceIndex) end

---@param InPlayerKey number
---@param Reason string
function ASTExtraPlayerController:OnPlayerSendBattleResult(InPlayerKey, Reason) end

---@param InEnable boolean
---@param InTimeLimit number
---@param CacheTypeKey string
---@param bForceOpenLog boolean
function ASTExtraPlayerController:SetEnableLogCacheWithTimeLimit(InEnable, InTimeLimit, CacheTypeKey, bForceOpenLog) end

---@param InEnable boolean
---@param InTimeLimit number
---@param CacheTypeKey string
---@param OpenLogTypes ULuaArrayHelper<string>
---@param bForceOpenLog boolean
function ASTExtraPlayerController:SetEnableLogCacheWithTimeAndTypes(InEnable, InTimeLimit, CacheTypeKey, OpenLogTypes, bForceOpenLog) end

function ASTExtraPlayerController:TimerDisableLogCache() end

---@param InCharacter ASTExtraBaseCharacter
function ASTExtraPlayerController:RequestVerifyCharacterPoseState(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
---@param InPoseState ESTEPoseState
function ASTExtraPlayerController:ResponseVerifyCharacterPoseState(InCharacter, InPoseState) end

---@param bEnable boolean
function ASTExtraPlayerController:SetForceSetControlRotation(bEnable) end

---@param PlayerController AUAEPlayerController
function ASTExtraPlayerController:CalculateRespawnTimes(PlayerController) end

---@param PlayerController AUAEPlayerController
function ASTExtraPlayerController:RemoveWaitRevivalPlayer(PlayerController) end

---@param Key string
---@param Value string
function ASTExtraPlayerController:ShowCustomInfo(Key, Value) end

---@param DynamicLevels ULuaArrayHelper<string>
---@param BlackLevels ULuaArrayHelper<string>
function ASTExtraPlayerController:S2C_SendDSDynamicLevels(DynamicLevels, BlackLevels) end

---@param Compoent UClickActorComponentBase
---@param ID number
function ASTExtraPlayerController:ExcuteClientClickRequest(Compoent, ID) end

---@param Actor AActor
---@param ID number
function ASTExtraPlayerController:ExcuteClickActorDelegate(Actor, ID) end

function ASTExtraPlayerController:CallServerActiveMoveStuck() end

function ASTExtraPlayerController:CallServerActiveMoveStuckRPC() end

---@param MoveStuckResult number
function ASTExtraPlayerController:SendActiveMoveStuckResult(MoveStuckResult) end

---@param RecordName string
function ASTExtraPlayerController:LocalStartMovementLogRecord(RecordName) end

---@param RecordName string
function ASTExtraPlayerController:StartMovementLogRecord(RecordName) end

---@param RecordName string
function ASTExtraPlayerController:ServerStartMovementLogRecord(RecordName) end

---@param OldValue number
function ASTExtraPlayerController:OnRep_ServerWorldTimeSeconds(OldValue) end

---@param OldValue number
function ASTExtraPlayerController:OnRep_ServerWorldRealTimeSeconds(OldValue) end

---@param RegionID string
---@param bAdd boolean
---@param bUnique boolean
function ASTExtraPlayerController:ModifyRegionIDList(RegionID, bAdd, bUnique) end

---@param InRegionIDList ULuaArrayHelper<string>
---@param bAdd boolean
function ASTExtraPlayerController:BatchModifyRegionIDList(InRegionIDList, bAdd) end

function ASTExtraPlayerController:OnRep_RegionIDList() end

---@param ItemInfoList ULuaArrayHelper<FBatttleItemInfo>
---@param AdditionInfo string
function ASTExtraPlayerController:ShowCongratulationsGetItemUI(ItemInfoList, AdditionInfo) end

function ASTExtraPlayerController:OnRep_NotNetRelevantDoorList() end

---@param CVarNames ULuaArrayHelper<string>
function ASTExtraPlayerController:ClientRequestCVarDefaultValue(CVarNames) end

---@param CVarNameValues ULuaArrayHelper<string>
function ASTExtraPlayerController:ServerReportCVarDefaultValue(CVarNameValues) end

---PlayerUID开始跟随，主控端调用，RPC同步到DS执行
---@param Uid string
function ASTExtraPlayerController:RPC_Server_StartFollowWithPlayerUID(Uid) end

---开始跟随，DS调用，RPC同步到主控端执行
---@param followPos FVector
function ASTExtraPlayerController:RPC_Client_PreFollow(followPos) end

function ASTExtraPlayerController:RPC_Server_RequestAllAliveAIState() end

---@param AIStates ULuaArrayHelper<string>
function ASTExtraPlayerController:RPC_Client_ReportAllAliveAIState(AIStates) end

function ASTExtraPlayerController:RPC_Server_RequestAllAILevel() end

---@param AILevels ULuaArrayHelper<string>
function ASTExtraPlayerController:RPC_Client_ReportAllAILevel(AILevels) end

---@param bIsAutoSwitchDS boolean
function ASTExtraPlayerController:ClientNotifySwitchingOutDS(bIsAutoSwitchDS) end

function ASTExtraPlayerController:ClientNotifySwitchOutDSFailure() end

function ASTExtraPlayerController:OnRep_ClickInfo() end

function ASTExtraPlayerController:ForceProcessPendingNetwork() end

function ASTExtraPlayerController:RPC_TryEnterClientInteractive() end

---@param ItemTableID number
---@param Count number
---@param bUseDirectly boolean
function ASTExtraPlayerController:SendUseItemReqToLobby(ItemTableID, Count, bUseDirectly) end

---@param ItemTableID number
---@param Count number
---@param bUseDirectly boolean
function ASTExtraPlayerController:NotifyLobbyUseBigWorldToBattleRoyaleItem(ItemTableID, Count, bUseDirectly) end

---@param GuideClass UNewbieGuideItemObject
function ASTExtraPlayerController:ClientRegisterNewbieGuide(GuideClass) end

---@param GuideClass UNewbieGuideItemObject
function ASTExtraPlayerController:ClientRegisterNewbieGuideReliable(GuideClass) end

function ASTExtraPlayerController:OnRep_ToClientScopeZoomValue() end

---@return number
function ASTExtraPlayerController:GetFPPDefaultFov() end

---@return number
function ASTExtraPlayerController:GetTPPDefaultFov() end

---@param InFov number
function ASTExtraPlayerController:SetFPPDefaultFov(InFov) end

---@param InFov number
function ASTExtraPlayerController:SetTPPDefaultFov(InFov) end

---@param InFov number
function ASTExtraPlayerController:SetCurScopeFov(InFov) end

---@param InFov number
function ASTExtraPlayerController:RPC_Server_SetCurScopeFov(InFov) end

---@param NewZoomIndex number
function ASTExtraPlayerController:SetScopeZoomValue(NewZoomIndex) end

---@param NewZoomIndex number
function ASTExtraPlayerController:RPC_Server_SetCurZoomIndex(NewZoomIndex) end

---@param InFov number
function ASTExtraPlayerController:RPC_Server_SetFPPDefaultFov(InFov) end

---@param InFov number
function ASTExtraPlayerController:RPC_Server_SetTPPDefaultFov(InFov) end

---@param CurViewPawn ASTExtraBaseCharacter
---@param ForceUpdate boolean
function ASTExtraPlayerController:SyncFOVOnServer(CurViewPawn, ForceUpdate) end

---@param ResourceName string
---@param DependencyChain string
function ASTExtraPlayerController:OnDSMissingFile(ResourceName, DependencyChain) end

---@param ResourceName string
---@param DependencyChain string
function ASTExtraPlayerController:ClientNotifyMissingResource(ResourceName, DependencyChain) end

---@param CurTimeStamp number
---@param CatonDelta number
---@param TickIndex number
function ASTExtraPlayerController:OnDSCaton(CurTimeStamp, CatonDelta, TickIndex) end

---@param CurTimeStamp number
---@param CatonDelta number
---@param TickIndex number
function ASTExtraPlayerController:ClientNotifyDSCaton(CurTimeStamp, CatonDelta, TickIndex) end

---@param flag boolean
function ASTExtraPlayerController:RPC_Server_BlockNonTeammates(flag) end

function ASTExtraPlayerController:OnCurrentSuitSkinChange() end

function ASTExtraPlayerController:SpawnAircraftForRespawn() end

---@param RequestedSimulateCharacter ASTExtraBaseCharacter
---@param ClientPoseState ESTEPoseState
function ASTExtraPlayerController:ServerRequestVerifyPoseState(RequestedSimulateCharacter, ClientPoseState) end

---@param RequestedSimulateCharacter ASTExtraBaseCharacter
---@param ServerPoseState ESTEPoseState
function ASTExtraPlayerController:ClientResponseVerifyPoseState(RequestedSimulateCharacter, ServerPoseState) end

function ASTExtraPlayerController:ForceUpdataCamera() end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraPlayerController:ReserveServerRPC(ReserveParam, ReserveActor) end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraPlayerController:ReserveClientRPC(ReserveParam, ReserveActor) end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraPlayerController:HandleReserveClientRPC(ReserveParam, ReserveActor) end

---@param BitArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestBigClientPRC(BitArray) end

---@param BitArray ULuaArrayHelper<number>
function ASTExtraPlayerController:TestBigSeverPRC(BitArray) end

---@param ShootID number
---@param Killer ASTExtraBaseCharacter
---@param TotalDelayTime number
---@param VictimLocalLocation FVector
---@param KillerSimMoveTimeOnVictimClient number
---@param KillerMoveRepFrameIDOnVictimClient number
---@param ExtraMsg string
function ASTExtraPlayerController:RPC_Server_DelayKill(ShootID, Killer, TotalDelayTime, VictimLocalLocation, KillerSimMoveTimeOnVictimClient, KillerMoveRepFrameIDOnVictimClient, ExtraMsg) end

---@param Context ILobbyServerUseItemContext
---@param ItemId number
---@param count number
function ASTExtraPlayerController:ServerSendToLobbyServerUseItem(Context, ItemId, count) end

---@param Result number
---@param ItemID number
---@param UseCount number
function ASTExtraPlayerController:LobbyServerResponseUseItem(Result, ItemID, UseCount) end

---@return string
function ASTExtraPlayerController:GetDebugString() end

---@param BTAsset UBehaviorTree
---@return boolean
function ASTExtraPlayerController:RunBehaviorTree(BTAsset) end

function ASTExtraPlayerController:StopBehaviorTree() end

---@param Target ASTExtraPlayerController
---@param GVoiceRoomID string
---@return boolean
function ASTExtraPlayerController:OnNotifyPlayerAIHost(Target, GVoiceRoomID) end

---@param Target ASTExtraPlayerController
function ASTExtraPlayerController:OnStopPlayerAIHost(Target) end

---@param AIHostCompPath string
---@return boolean
function ASTExtraPlayerController:DynamicLoadAIHostComp(AIHostCompPath) end

---@param Target ASTExtraCharacter
---@param FollowOuterRadius number
---@param FollowInnerRadius number
---@return boolean
function ASTExtraPlayerController:SetBTAIHostFollowTarget(Target, FollowOuterRadius, FollowInnerRadius) end

---@return boolean
function ASTExtraPlayerController:StartAIHosting() end

function ASTExtraPlayerController:StopAIHosting() end

---@return boolean
function ASTExtraPlayerController:IsAIHosting() end

---@return boolean
function ASTExtraPlayerController:GetIsAIHostingEnabled() end

function ASTExtraPlayerController:OnAIHostingStarted() end

function ASTExtraPlayerController:OnAIHostingStopped() end

---@param ReportExecID number
---@param ClientExecResultMsg string
function ASTExtraPlayerController:RPC_Server_ReportBugExecFunction(ReportExecID, ClientExecResultMsg) end

---@param InOutNetItems FIncNetArrayNew
---@param NewItems ULuaArrayHelper<FBattleItemData>
---@param OldItems ULuaArrayHelper<FBattleItemData>
function ASTExtraPlayerController:BPRefreshNetArrayItem(InOutNetItems, NewItems, OldItems) end

---@param Record FClientFatalDamageRecordData
---@return boolean
function ASTExtraPlayerController:CanCastLeftQueueFatalMsg(Record) end

---@param Weapon ASTExtraWeapon
---@param WeaponHandle UBackpackWeaponHandle
function ASTExtraPlayerController:PostLocalHandleUseAWeapon(Weapon, WeaponHandle) end

---@param bIsHost boolean
---@param Target ASTExtraPlayerController
---@return boolean
function ASTExtraPlayerController:OnPrePlayerAIHost(bIsHost, Target) end

---@param Target ASTExtraPlayerCharacter
---@param bNewHidden boolean
function ASTExtraPlayerController:SetEnemyHiddenInGameOnNetLost(Target, bNewHidden) end

function ASTExtraPlayerController:OnTimeWatchDogError() end

---@param Info string
function ASTExtraPlayerController:PassAIDeliveryInfoClientRPC(Info) end

---@param SummaryInfos ULuaArrayHelper<FCharacterMovementSimulatorMonitorSummaryInfo>
function ASTExtraPlayerController:OnServerRecievedSimulatorMoveInfo(SummaryInfos) end

function ASTExtraPlayerController:DoSendAvatarDownloadManagerTLog() end

---@param ID number
function ASTExtraPlayerController:ReplacePlane(ID) end

---@param WorldLocation FVector
---@param WorldDirection FVector
function ASTExtraPlayerController:CampToolAirQuickPoint(WorldLocation, WorldDirection) end

---@param DelayTime number
function ASTExtraPlayerController:SetCampToolPointDelayTime(DelayTime) end

---@param FingerIndex ETouchIndex
---@param InLocation FVector
function ASTExtraPlayerController:AddTouchFingerData(FingerIndex, InLocation) end

---@param FingerIndex ETouchIndex
---@param InLocation FVector
---@return boolean
function ASTExtraPlayerController:HandleTouchFingerData(FingerIndex, InLocation) end

---@param FingerIndex ETouchIndex
---@param InLocation FVector
---@param bIsStart boolean
---@return boolean
function ASTExtraPlayerController:HandleJoystickTouchFingerData(FingerIndex, InLocation, bIsStart) end

---@param VictimActor AActor
---@param Damage number
---@param DamageFlags number
---@param DamageType number
---@param DamageTags ULuaArrayHelper<string>
---@param DamageInstigatorPawn APawn
---@param bIncludeSpecator boolean
---@param DamagePoint FVector
---@param DamageBodyType number
function ASTExtraPlayerController:PushDamageNumberRecord(VictimActor, Damage, DamageFlags, DamageType, DamageTags, DamageInstigatorPawn, bIncludeSpecator, DamagePoint, DamageBodyType) end

---@param VictimActor AActor
---@param Damage number
---@param DamageFlags number
---@param DamageType number
---@param DamageTags ULuaArrayHelper<string>
---@param DamageInstigatorPawn APawn
---@param DamagePoint FVector
---@param DamageBodyType number
function ASTExtraPlayerController:PushDamageNumberRecordInner(VictimActor, Damage, DamageFlags, DamageType, DamageTags, DamageInstigatorPawn, DamagePoint, DamageBodyType) end

function ASTExtraPlayerController:CheckAndFlushDamageNumberRecord() end

---@param WrapperList ULuaArrayHelper<FDamageNumberWrapper>
function ASTExtraPlayerController:RPC_OwnerClient_FlushDamageNumberWrapperList(WrapperList) end

---@param WrapperList ULuaArrayHelper<FDamageNumberWrapper>
function ASTExtraPlayerController:RPC_OwnerClient_FlushDamageNumberWrapperList_Unreliable(WrapperList) end

---@return number
function ASTExtraPlayerController:K2_GetViewportCacheGeometryScale() end

---@param threshold number
function ASTExtraPlayerController:ChangeRoulettethreshold(threshold) end

---@param bEnabled boolean
function ASTExtraPlayerController:ToggleGameFeelTestSphere(bEnabled) end

function ASTExtraPlayerController:RegisterPlayerPickUpList() end

function ASTExtraPlayerController:UnRegisterPlayerPickUpList() end

---@param DeltaTime number
function ASTExtraPlayerController:CheckPickupAvailableActorPoolMiss(DeltaTime) end

---@param TargetActor AActor
---@param OutInfo string
function ASTExtraPlayerController:CheckPickupAvailableActorPoolMissInternal(TargetActor, OutInfo) end

---@param InPlayer ASTExtraCharacter
---@return boolean
function ASTExtraPlayerController:CheckCharacterLocalControlled(InPlayer) end

---@param InWeapon ASTExtraWeapon
---@return boolean
function ASTExtraPlayerController:CheckWeaponLocalControlled(InWeapon) end

---@param SkillUID number
---@return boolean
function ASTExtraPlayerController:CanChargeEnergyCastSkill(SkillUID) end

---@return FItemDefineID
function ASTExtraPlayerController:GetFalconDropItem() end

---@return boolean
function ASTExtraPlayerController:FalconDropItemPunishment() end

---@param Damage number
---@param Victim AActor
---@param DamageCauser AActor
---@param bHeadShot boolean
---@param IsShowDamageNum boolean
---@param GameplayTags ULuaArrayHelper<string>
---@param DamageTypeID number
function ASTExtraPlayerController:UGCClientAddShowHitDamageEffect(Damage, Victim, DamageCauser, bHeadShot, IsShowDamageNum, GameplayTags, DamageTypeID) end

---@param Killer AController
function ASTExtraPlayerController:HandlePlayerKillByTeammateTips(Killer) end

---@param PreFix string
function ASTExtraPlayerController:LogCameraAndControlRotationInfo(PreFix) end

---@return boolean
function ASTExtraPlayerController:HandleNetCleanup() end

---@return boolean
function ASTExtraPlayerController:HandleNetConnectionClosed() end

---@return boolean
function ASTExtraPlayerController:HandleNetConnectionLongTimeNoReceived() end

---@param bCanHost boolean
---@param HostCount number
function ASTExtraPlayerController:InitAITutelageManagerComponent(bCanHost, HostCount) end

---@param inSoftClass UAITutelageManagerComponent
function ASTExtraPlayerController:OnLoadAITutelageManagerComponent(inSoftClass) end

function ASTExtraPlayerController:OnRep_AITutelageManagerComponent() end

---@param ResourceID number
function ASTExtraPlayerController:PlayAIResponseVoice(ResourceID) end

function ASTExtraPlayerController:RPC_Server_RequestForceSetupPersonPerspective() end

---@return boolean
function ASTExtraPlayerController:IsEnableFakeDie() end

function ASTExtraPlayerController:ServerInterruptDuoActionPerformanceAndRecoverTeamAssemble() end

function ASTExtraPlayerController:ClientInterruptDuoActionPerformanceAndRecoverTeamAssemble() end

---@param Actor AActor
function ASTExtraPlayerController:OnPlayerEnterPossessActorFunc(Actor) end

function ASTExtraPlayerController:RecoverTeamAssemable() end

function ASTExtraPlayerController:PreCreatePlayerDeadBox() end

---@param FilterItemDataList ULuaArrayHelper<FPickUpItemData>
function ASTExtraPlayerController:FilterPlayerDeadBoxItems(FilterItemDataList) end

---@param DeadBox APlayerTombBox
function ASTExtraPlayerController:OnCreatePlayerDeadBoxOver(DeadBox) end

function ASTExtraPlayerController:OnRep_CampToolComponent() end

function ASTExtraPlayerController:RPC_Client_ShowVehicleHitCharacter() end

function ASTExtraPlayerController:ToggleAIDebugPanel() end

---@param Uid number
function ASTExtraPlayerController:RefreshAIDebugPanelInfo(Uid) end

---@param Info FAIDebugPanelSingleInfo
function ASTExtraPlayerController:Client_SetAIDebugPanelInfos(Info) end

---@param GlobalModeInfo string
function ASTExtraPlayerController:Client_SetAIDebugPanelGlobalModeInfo(GlobalModeInfo) end

---@param DropInfo FAIDebugPanelDropInfo
function ASTExtraPlayerController:Client_SetAIDebugPanelDropInfo(DropInfo) end

function ASTExtraPlayerController:RefreshAIDebugPanelOptions() end

---@param Options ULuaArrayHelper<string>
function ASTExtraPlayerController:Client_SetAIDebugPanelOptions(Options) end

---@param InValue boolean
function ASTExtraPlayerController:SetIsOutofWorld(InValue) end

---@param InClothID number
---@return number
function ASTExtraPlayerController:GeneratedAllCharacterAvatarAbilityListByClothID(InClothID) end

---@param InWeaponID number
---@return number
function ASTExtraPlayerController:GeneratedAllWeaponAvatarAbilityListByWeaponID(InWeaponID) end

---@param WeaponSkinID number
function ASTExtraPlayerController:AddWeaponAllAvatarList(WeaponSkinID) end

---@param WeaponSkinID number
function ASTExtraPlayerController:AddWeaponAllAvatarListWithReasearchData(WeaponSkinID) end

---@param bEnable boolean
function ASTExtraPlayerController:EnableShippingLog(bEnable) end

---@param Str string
---@param FontSize number
---@param bOnScreen boolean
---@param bPrintLog boolean
function ASTExtraPlayerController:PrintShippingLog(Str, FontSize, bOnScreen, bPrintLog) end

function ASTExtraPlayerController:ClearShippingLog() end

---@param PosX number
---@param PosY number
function ASTExtraPlayerController:UpdateShippingLogPos(PosX, PosY) end

---@param UI UWidget
function ASTExtraPlayerController:OnUpdateShippingLogPos(UI) end

---@param InCaptureActor AActor
function ASTExtraPlayerController:SetEliteOBCaptureActor(InCaptureActor) end

---@return boolean
function ASTExtraPlayerController:IsEliteOBCaptureEnable() end

---@param bNewEnable boolean
function ASTExtraPlayerController:SetEliteOBCaptureEnable(bNewEnable) end

---@param ItemID number
---@return number
function ASTExtraPlayerController:TryGetModeRelatedSkinID(ItemID) end

---@param OriginItemID number
---@param SlotID number
---@return boolean
function ASTExtraPlayerController:TryRecordModeRelatedSkinID(OriginItemID, SlotID) end

---@param SlotID number
---@return number
function ASTExtraPlayerController:TryGetModeRelatedOriginSkinID(SlotID) end

---@param GenericReportDataArray ULuaArrayHelper<FGenericReportData>
function ASTExtraPlayerController:ServerUploadGenericReportDataArray(GenericReportDataArray) end

---@param InCampAbilityID number
---@return boolean
function ASTExtraPlayerController:IsCampAbilityOpen(InCampAbilityID) end

function ASTExtraPlayerController:ShutDownTipsManager() end

---@param FormatParamString string
function ASTExtraPlayerController:ShowFancyTip(FormatParamString) end

---@param FormatParamString string
function ASTExtraPlayerController:ClientShowFancyTip(FormatParamString) end

function ASTExtraPlayerController:SetPetDataInfo() end

---@param InPlayerName string
---@param ItemTypeSpecificID number
function ASTExtraPlayerController:S2C_ShowPlayerPickUpHighValueItem(InPlayerName, ItemTypeSpecificID) end

---@param InPlayerName string
---@param AirDropTotalValue number
function ASTExtraPlayerController:S2C_ShowFirstPlayerOpenAirDrop(InPlayerName, AirDropTotalValue) end

---@param PackageName string
---@param bAdd boolean
function ASTExtraPlayerController:ServerUpdateLevelBlackList(PackageName, bAdd) end
