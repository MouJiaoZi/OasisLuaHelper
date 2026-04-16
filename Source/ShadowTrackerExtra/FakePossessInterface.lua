---@meta

---@class EUnPossessReason
---@field None number
---@field Interrupt number @打断
---@field Finished number @正常结束
---@field MaxInvalid number
EUnPossessReason = {}


---@class EPossessClearState
---@field SwitchWeaponNone number @切空手
---@field SwitchPoseStand number @切站立
---@field SwitchFpp number @切一人称
---@field SwitchTpp number @切三人称
---@field StopSkill number @打断技能
---@field SwitchWeaponNoneWithAnimation number @切空手带动画
---@field StopVault number @停止攀爬
---@field StopSave number @停止救援
---@field ExitDying number @倒地立即恢复
---@field StopPlayEmote number @停止播放表情
---@field ExitCarring number @退出背负
---@field ExitCarringBox number @退出背盒子
---@field ExitBuild number @退出建造
---@field ExitVehicle number @强制下车
EPossessClearState = {}


---@class EPossessRejectEvent
---@field TakeDamage number @受击
---@field GameEnd number @游戏结束
---@field PawnDestory number @玩家销毁
---@field PawnLost number @玩家断线
---@field ClientInteractive number @客户端交互
---@field PawnExit number @玩家退出
---@field PawnTeleport number @玩家传送
---@field PawnClientReactivate number @玩家切后台后恢复
EPossessRejectEvent = {}


---@class ERegistPossessValueType
---@field Custom number @自定义
---@field DefaultInteracting number @默认交互
---@field DefaultSkill number @默认技能
---@field Transform number @变身技能
---@field ShowUIInteracting number @显示UI交互
---@field StrongInteracting number @固定位置强交互
---@field PassiveSkill number @被动技能
---@field MovementModeSkill number @移动模式技能
---@field ForcedPerformance number @无法被打断的流程表演或传送表演等强制表演
---@field AIFollow number @AI跟随
---@field InstantTrigger number @仅考虑不能进入状态的按键触发
---@field NewInteracting number @交互2.0
---@field NewSkill number @技能2.0
ERegistPossessValueType = {}


---@class FRegistPossessValue
---@field EnterDynamicPawnState FGameplayTagContainer
---@field DisablePawnState ULuaArrayHelper<EPawnState>
---@field DisableDynamicPawnState FGameplayTagContainer
---@field RejectPawnState ULuaArrayHelper<EPawnState>
---@field RejectDynamicPawnState FGameplayTagContainer
---@field CantPossessState ULuaArrayHelper<EPawnState>
---@field CantPossessDynamicState FGameplayTagContainer
---@field ClearPawnState ULuaArrayHelper<EPossessClearState>
---@field RejectEvent ULuaArrayHelper<EPossessRejectEvent>
---@field ValueType ERegistPossessValueType
FRegistPossessValue = {}


---@class FFakePossessConfigValue
---@field EnterDynamicPawnState FGameplayTagContainer
---@field DisableDynamicPawnState FGameplayTagContainer
---@field RejectDynamicPawnState FGameplayTagContainer
---@field CantPossessDynamicState FGameplayTagContainer
FFakePossessConfigValue = {}


---@class FFakePossessQueue_Node
---@field bPossessOrUnPossess boolean
---@field Reason EUnPossessReason
FFakePossessQueue_Node = {}


---@class FFakePossessQueue
---@field PossessQueue ULuaArrayHelper<FFakePossessQueue_Node>
FFakePossessQueue = {}


---@class FFakePossessQueueLock
FFakePossessQueueLock = {}


---@class FFakePossesseIncludingAIDelegate : ULuaMulticastDelegate
FFakePossesseIncludingAIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: AController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossesseIncludingAIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC AController
function FFakePossesseIncludingAIDelegate:Broadcast(PC) end


---@class FFakeUnPossessIncludingAIDelegate : ULuaMulticastDelegate
FFakeUnPossessIncludingAIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: AController, Reason: EUnPossessReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakeUnPossessIncludingAIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC AController
---@param Reason EUnPossessReason
function FFakeUnPossessIncludingAIDelegate:Broadcast(PC, Reason) end


---@class FFakePossesserChangeDelegate : ULuaMulticastDelegate
FFakePossesserChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossesserChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FFakePossesserChangeDelegate:Broadcast(PC) end


---@class FFakeUnPossessDelegate : ULuaMulticastDelegate
FFakeUnPossessDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController, Reason: EUnPossessReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakeUnPossessDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
---@param Reason EUnPossessReason
function FFakeUnPossessDelegate:Broadcast(PC, Reason) end


---@class FFakePossessHookDelegate : ULuaSingleDelegate
FFakePossessHookDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePossessHookDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 AController
function FFakePossessHookDelegate:Execute(Param1) end


---@class FFakeUnPossessHookDelegate : ULuaSingleDelegate
FFakeUnPossessHookDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: EUnPossessReason) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakeUnPossessHookDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 EUnPossessReason
function FFakeUnPossessHookDelegate:Execute(Param1) end


---@class URegistPossessConfigSetting: UDeveloperSettings
---@field DefaultInteractingConfig FFakePossessConfigValue
---@field DefaultSkillConfig FFakePossessConfigValue
---@field TransformConfig FFakePossessConfigValue
---@field ForcedPerformanceConfig FFakePossessConfigValue
---@field ShowUIInteractingConfig FFakePossessConfigValue
---@field StrongInteractingConfig FFakePossessConfigValue
---@field AIFollowConfig FFakePossessConfigValue
---@field InstantTriggerConfig FFakePossessConfigValue
---@field PassiveSkillConfig FFakePossessConfigValue
---@field MovementModeSkillConfig FFakePossessConfigValue
---@field NewInteractiongConfig FFakePossessConfigValue
---@field NewSkillConfig FFakePossessConfigValue
local URegistPossessConfigSetting = {}


---@class UActivityFakePossessCore: UObject
---@field OnPossess FFakePossesserChangeDelegate
---@field OnUnPossess FFakePossesserChangeDelegate
---@field OnUnPossessWithReason FFakeUnPossessDelegate
---@field OnPossessIncludingAI FFakePossesseIncludingAIDelegate
---@field OnUnPossessIncludingAI FFakeUnPossessIncludingAIDelegate
---@field PossessValue FRegistPossessValue
---@field PossessQueue FFakePossessQueue
---@field PossessQueueLock FFakePossessQueueLock
local UActivityFakePossessCore = {}

---@param Value FRegistPossessValue
function UActivityFakePossessCore:Init(Value) end

function UActivityFakePossessCore:UnInit() end

---@param PC AController
---@return boolean
function UActivityFakePossessCore:FakePossess(PC) end

---@param Reason EUnPossessReason
function UActivityFakePossessCore:FakeUnPossess(Reason) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UActivityFakePossessCore:CanBePossess(Character) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UActivityFakePossessCore:IsPossessedBy(Character) end

---@param Setup boolean
function UActivityFakePossessCore:SetDoNotSwitchWeaponWhenRecover(Setup) end

---@param PC AController
---@return boolean
function UActivityFakePossessCore:FakePossess_Inner(PC) end

---@param Reason EUnPossessReason
function UActivityFakePossessCore:FakeUnpossessByOuter(Reason) end

---@param State EPawnState
function UActivityFakePossessCore:OnPawnStateEnter(State) end

---@param State FGameplayTag
function UActivityFakePossessCore:OnPawnDynamicStateEnter(State) end

---@param State FGameplayTag
function UActivityFakePossessCore:OnInterrupt(State) end

function UActivityFakePossessCore:OnEventMeetEnter() end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UActivityFakePossessCore:OnHit(Character, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param PlayerKey number
---@param Reason string
function UActivityFakePossessCore:OnGameEnd(PlayerKey, Reason) end

---@param Actor AActor
function UActivityFakePossessCore:OnDestroyPawn(Actor) end

function UActivityFakePossessCore:OnLostPawn() end

---@param PC ASTExtraPlayerController
function UActivityFakePossessCore:OnClientInteractive(PC) end

function UActivityFakePossessCore:OnExitPawn() end

function UActivityFakePossessCore:ClientHasReactivated() end

---@param PlayerCharacter ASTExtraBaseCharacter
---@param FromTransform FTransform
---@param DestinationTransform FTransform
function UActivityFakePossessCore:OnPlayerTeleport(PlayerCharacter, FromTransform, DestinationTransform) end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UActivityFakePossessCore:HandleRegistEvent(Character, bRecover) end

---@param Character ASTExtraBaseCharacter
---@param bRecover boolean
function UActivityFakePossessCore:HandleClearState(Character, bRecover) end

function UActivityFakePossessCore:LockQueuePossess() end

function UActivityFakePossessCore:UnlockQueuePossess() end

---@return boolean
function UActivityFakePossessCore:IsLockedQueuePossess() end

---@param PC AController
---@param ReportKey string
function UActivityFakePossessCore:FakePossessErrorReport(PC, ReportKey) end
