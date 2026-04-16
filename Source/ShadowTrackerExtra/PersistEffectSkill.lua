---@meta

---@class EPESkillActivatableReason
---@field E_PESKILL_ActivatableReason_OK number @//*UGC* 可触发
---@field E_PESKILL_ActivatableReason_Failed_InvalidParam number @//*UGC* 参数错误
---@field E_PESKILL_ActivatableReason_Failed_CD number @//*UGC* CD不满足
---@field E_PESKILL_ActivatableReason_Failed_Cost number @//*UGC* Cost不满足
---@field E_PESKILL_ActivatableReason_Failed_ActiveTag number @//*UGC* ActiveTag不满足
---@field E_PESKILL_ActivatableReason_Failed_Blueprint number @//*UGC* 定制逻辑不满足
---@field E_PESKILL_ActivatableReason_Failed_Disable number @//*UGC* 技能处于Disable状态
---@field E_PESKILL_ActivatableReason_Failed_Activating number @//*UGC* 技能已处于激活状态
---@field E_PESKILL_ActivatableReason_Failed_CustomCheck number @//*UGC* 自定义技能激活条件
---@field E_PESKILL_ActivatableReason_Failed_Unknown number @//*UGC* Unknown
EPESkillActivatableReason = {}


---@class FPESkillBaseEvent
---@field EventName string
---@field StateName string
---@field SkillEvent FPESkillEventContainer
---@field bInitializedBeforeSkillActivated boolean
---@field bIsInitialized boolean
FPESkillBaseEvent = {}


---@class FPESkillOfflineData
---@field SocketAnimCurveData FMontageSocketAnimCurveData_PersistEffect
FPESkillOfflineData = {}


---@class FPEPendingTransitionStateData
FPEPendingTransitionStateData = {}


---@class FPETrackConditionsWrapper
---@field ActiveConditions ULuaArrayHelper<UPESkillExtConditionBase>
FPETrackConditionsWrapper = {}


---@class FPESkillActionGroup
---@field ActionGroupName string
---@field ActionContainer FPESkillActionContainer
---@field bIsInitialized boolean
FPESkillActionGroup = {}


---@class FPEActiveActionGroupData
FPEActiveActionGroupData = {}


---@class FPersistEffectSkillClientDataVerifyConfig
---@field ClientMuzzlePosToPawnDisVerifyThreshold number
---@field ClientMuzzlePosToPawnDisVerifyThreshold_Movebase number
---@field ClientTargetAimPosDirToControlDirVerifyThreshold number
FPersistEffectSkillClientDataVerifyConfig = {}


---@class FOnUIInfoChange : ULuaSingleDelegate
FOnUIInfoChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUIInfoChange:Bind(Callback, Obj) end

---执行委托
function FOnUIInfoChange:Execute() end


---@class FOnStateChange : ULuaMulticastDelegate
FOnStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsTrue: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsTrue boolean
function FOnStateChange:Broadcast(IsTrue) end


---@class FOnSequenceStopOrFinished : ULuaMulticastDelegate
FOnSequenceStopOrFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsStop: boolean, StateName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSequenceStopOrFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsStop boolean
---@param StateName string
function FOnSequenceStopOrFinished:Broadcast(IsStop, StateName) end


---@class FOnActivateSkillFailed : ULuaMulticastDelegate
FOnActivateSkillFailed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Reason: EPESkillActivatableReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivateSkillFailed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Reason EPESkillActivatableReason
function FOnActivateSkillFailed:Broadcast(Reason) end


---@class FOnNotifyServerClientMuzzlePosAndShootDir : ULuaMulticastDelegate
FOnNotifyServerClientMuzzlePosAndShootDir = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MuzzlePos: FVector, ShootDir: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNotifyServerClientMuzzlePosAndShootDir:Add(Callback, Obj) end

---触发 Lua 广播
---@param MuzzlePos FVector
---@param ShootDir FVector
function FOnNotifyServerClientMuzzlePosAndShootDir:Broadcast(MuzzlePos, ShootDir) end


---@class FOnInputEventTriggeredDelegate : ULuaMulticastDelegate
FOnInputEventTriggeredDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventType: EPersistEffectClientEvent, TimeStamp: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInputEventTriggeredDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function FOnInputEventTriggeredDelegate:Broadcast(EventType, TimeStamp) end


---@class FSimpleSkillDebugDelegate : ULuaSingleDelegate
FSimpleSkillDebugDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSimpleSkillDebugDelegate:Bind(Callback, Obj) end

---执行委托
function FSimpleSkillDebugDelegate:Execute() end


---技能实体
---@class UPersistEffectSkill: UPersistEffectWithState, ISkillObjectInterface, IPESkillTaskTrackConditionFilterInterface
---@field PESkillSlot FGameplayTag @技能槽位Tag
---@field ApplyTagGroup FGameplayTagGroups @Tag的配置组，包含该技能与各个Tag的互斥关系
---@field CustomActivateConditions FPESkillConditionContainer @技能激活自定义条件
---@field ConsumeTime EPESkillConsumeTimeType @CD/能量和消耗扣除时机
---@field SkillCD FPESkillCDWapper @技能CD
---@field CostConsume FPESkillConsume @技能消耗
---@field UIInfo FPESkillUIInfo @技能外显信息
---@field SkillGroup FGameplayTag @技能组，同组互斥，不能同时激活同组的技能，如果填空的话则没有任何互斥关系
---@field bDefaultEnable boolean @默认是否可用，如果配置了false，则需要调用enable才能激活技能
---@field OnUIInfoChange FOnUIInfoChange @Event 生效范围：客户端 技能的UI信息改变事件
---@field CDStateChangeHandle FOnStateChange @Event 生效范围：客户端 客户端同步技能CD状态变化
---@field OnSequenceStopOrFinished FOnSequenceStopOrFinished
---@field OnDeactivateSkill FOnDeactivateSkill
---@field TrackConditionsMap ULuaMapHelper<UObject, FPETrackConditionsWrapper>
---@field bIsActivate boolean
---@field DeActivateReason EPESkillDeActivateReason
---@field bIsEnable boolean
---@field EnableChangeHandle FOnStateChange
---@field CheckActivateFailedHandle FOnActivateSkillFailed
---@field InnerSequnce ULuaArrayHelper<ULevelSequence>
---@field InnerSkillSequence ULuaArrayHelper<UPersistSkillSequence>
---@field SelectTargetActors ULuaArrayHelper<AActor>
---@field SelectTransforms ULuaArrayHelper<FTransform>
---@field SelectDirection FVector
---@field bEnableSkillActivatingLog boolean
---@field bEnableSkillActivatingTag boolean
---@field bCanCharge boolean
---@field CurrentChargeTime number
---@field MinChargeTime number
---@field CurrentChargeState EPESkillChargeState
---@field NotifyServerClientMuzzlePosAndShootDirHandle FOnNotifyServerClientMuzzlePosAndShootDir
---@field OnInputEventTriggered FOnInputEventTriggeredDelegate
---@field IsPressed boolean
---@field DirInput FVector2D
---@field SkillEvents ULuaArrayHelper<FPESkillBaseEvent>
---@field SkillActionGroups ULuaMapHelper<string, FPESkillActionGroup>
---@field Transitions ULuaArrayHelper<FPESkillTransition>
---@field PendingExit boolean
---@field PendingTransitStateName string
---@field ActiveActionGroupData ULuaArrayHelper<FPEActiveActionGroupData>
---@field OfflineData FPESkillOfflineData
---@field ActivatedSkillTasks ULuaArrayHelper<UPESkillTaskBase>
---@field SkillTasksCache ULuaMapHelper<FGuid, UMovieScenePESkillTask>
---@field NeedDeactivateSkillTasksUID ULuaArrayHelper<FGuid>
local UPersistEffectSkill = {}

---@param BC ASTExtraBaseCharacter
---@param PC AController
function UPersistEffectSkill:OnPawnChange(BC, PC) end

---生效范围：S
---使技能可用
function UPersistEffectSkill:EnableSkill() end

---生效范围：S
---使技能不可用
function UPersistEffectSkill:DisableSkill() end

---生效范围：SC
---@return boolean @技能是否可用
function UPersistEffectSkill:IsSkillEnable() end

---生效范围：SC
---取消技能释放
---@param Reason EPESkillDeActivateReason
function UPersistEffectSkill:DeActivateSkill(Reason) end

---生效范围：SC
---@return boolean @技能是否可用
function UPersistEffectSkill:CanActivateSkill() end

---生效范围：SC
---释放技能
function UPersistEffectSkill:ActivateSkill() end

function UPersistEffectSkill:ActivateSkillWithoutCheck() end

---生效范围：SC
---@return boolean @技能是否正在激活
function UPersistEffectSkill:IsActivating() end

function UPersistEffectSkill:NextStep() end

function UPersistEffectSkill:ServerNextStep() end

---生效范围：服务器&客户端
---@return boolean @技能CD是否已准备好
function UPersistEffectSkill:CheckCDReady() end

---生效范围：服务器
---@return boolean @技能需要的消耗是否已准备好
function UPersistEffectSkill:CheckCostReady() end

---生效范围：服务器
---消耗CD
---* @return 是否成功消耗
---@return boolean
function UPersistEffectSkill:ConsumeCD() end

---生效范围：服务器
---消耗道具
---@return boolean @是否成功消耗
function UPersistEffectSkill:ConsumeCost() end

---生效范围：服务器&客户端
---获取CD剩余时间
---@return number @剩余时间
function UPersistEffectSkill:GetRemainingCDTime() end

---生效范围：服务器&客户端
---获取CD恢复时间
---@return number @剩余时间
function UPersistEffectSkill:GetCDRecoveryTime() end

---生效范围：服务器
---设置CD恢复时间
---@param CDRecoveryTime number
function UPersistEffectSkill:SetCDRecoveryTime(CDRecoveryTime) end

---生效范围：服务器&客户端
---获取CD恢复速率
---@return number @CD恢复速率
function UPersistEffectSkill:GetCDRecoverRate() end

---生效范围：服务器
---设置CD恢复速率
---@param Rate number @CD恢复速率
function UPersistEffectSkill:SetCDRecoverRate(Rate) end

---生效范围：服务器
---恢复CD比例，1代表完全恢复一层CD，大于1代表恢复多层，不超过层数上限
---@param ChargeRate number @恢复的层数
function UPersistEffectSkill:ChargeCDEnergy(ChargeRate) end

---生效范围：服务器
---恢复CD固定时间，不超过层数上限
---@param ChargeTime number @恢复的时间，单位秒
function UPersistEffectSkill:ChargeCDTime(ChargeTime) end

---生效范围：服务器
---刷新技能CD
function UPersistEffectSkill:RefreshCD() end

---生效范围：服务器
---设置CD最大层数
---@param InMaxLayer number
function UPersistEffectSkill:SetCDMaxLayer(InMaxLayer) end

---生效范围：服务器&客户端
---更改UI信息，但双端不同步
---@param SkillName string @技能名字
---@param SkillDetail string @技能描述
---@param SkillIconPath string @技能图标路径
function UPersistEffectSkill:OverwriteSkillUIInfo(SkillName, SkillDetail, SkillIconPath) end

---@param bVisible boolean
function UPersistEffectSkill:SetSkillUIVisible(bVisible) end

---生效范围：服务器&客户端
---获取技能名字
---@return string @技能名字
function UPersistEffectSkill:GetSkillName() end

---生效范围：服务器&客户端
---获取技能描述
---@return string @技能描述
function UPersistEffectSkill:GetSkillDetail() end

---生效范围：服务器&客户端
---获取技能图标路径
---@return string @技能图标路径
function UPersistEffectSkill:GetSkillIconPath() end

---生效范围：服务器
---设置是否开启技能激活检查失败显示Tips
---@param bEnable boolean @是否开启提示
function UPersistEffectSkill:SetShowTipsEnable(bEnable) end

---生效范围：服务器
---设置是否开启技能激活检查失败播放提示音
---@param bEnable boolean @是否开启提示
function UPersistEffectSkill:SetPlayActivateFailedSoundEnable(bEnable) end

---@return FGameplayTag
function UPersistEffectSkill:GetActivatingSkillTag() end

---Event
---生效范围：服务器
---技能可用通知
---@return boolean
function UPersistEffectSkill:OnEnableSkill_BP() end

---Event
---生效范围：服务器
---技能不可用通知
---@return boolean
function UPersistEffectSkill:OnDisableSkill_BP() end

---Event
---生效范围：服务器
---技能被触发
---@return boolean
function UPersistEffectSkill:OnActivateSkill_BP() end

---Event
---生效范围：服务器
---技能结束
---@param Reason EPESkillDeActivateReason @结束原因
function UPersistEffectSkill:OnDeActivateSkill_BP(Reason) end

function UPersistEffectSkill:OnNextStep_BP() end

---@return EPESkillActivatableReason
function UPersistEffectSkill:GetActivatableReason() end

---Event
---生效范围：服务器&客户端
---技能是否可用
---@return boolean @技能是否可释放
function UPersistEffectSkill:CanActivateSkill_BP() end

---Event
---生效范围：服务器&客户端
---技能CD状态改变
---@param bIsCD boolean @技能是否CD中
function UPersistEffectSkill:OnCDStateChange_BP(bIsCD) end

---获取技能目标角色
---@param SelectType EPESkillSelectTarget @选择类型
function UPersistEffectSkill:GetSelectTargetActor(SelectType) end

---设置技能目标角色
---@param Actors ULuaArrayHelper<AActor> @Actor数组
function UPersistEffectSkill:SetSelectTargetActor(Actors) end

---设置技能目标角色
---@param pActor AActor
function UPersistEffectSkill:SetSelectTargetOneActor(pActor) end

---设置技能方向
---@param Direction FVector @方向
function UPersistEffectSkill:SetSelectDirection(Direction) end

---设置技能目标位置
---@param Transform FTransform @技能目标位置
function UPersistEffectSkill:SetSelectTransform(Transform) end

---设置技能多目标位置
---@param Transforms ULuaArrayHelper<FTransform>
function UPersistEffectSkill:SetSelectTransforms(Transforms) end

---清除技能目标位置
function UPersistEffectSkill:ClearSelectTransforms() end

function UPersistEffectSkill:CreateInnerSkillSequence() end

function UPersistEffectSkill:CancelSkill() end

---@return boolean
function UPersistEffectSkill:TryAutoJumpToNextState() end

function UPersistEffectSkill:ServerActivateSkill() end

---@return boolean
function UPersistEffectSkill:CanServerRPCActivateSkill() end

---@param Reason EPESkillDeActivateReason
function UPersistEffectSkill:ServerDeActivateSkill(Reason) end

---@param Reason EPESkillDeActivateReason
---@return boolean
function UPersistEffectSkill:CanServerRPCDeactivateSkill(Reason) end

---@param InIsActivate boolean
function UPersistEffectSkill:SetActivate(InIsActivate) end

---@param bIsEnable boolean
function UPersistEffectSkill:SetEnable(bIsEnable) end

function UPersistEffectSkill:OnCDStateChange() end

---@param InAttrName string
---@param CurValue number
function UPersistEffectSkill:OnAttrCDRecoverRateChanged(InAttrName, CurValue) end

function UPersistEffectSkill:OnRep_CDSyncData() end

function UPersistEffectSkill:OnRep_bIsActivate() end

function UPersistEffectSkill:OnRep_DeActivateReason() end

function UPersistEffectSkill:OnRep_bIsEnable() end

function UPersistEffectSkill:OnRep_PESkillSlot() end

function UPersistEffectSkill:HandleSequenceOnStop() end

function UPersistEffectSkill:HandleSequenceOnFinished() end

---@return number
function UPersistEffectSkill:GetChargeTime() end

---@param InChargeTime number
function UPersistEffectSkill:SetChargeTime(InChargeTime) end

---@param InChargeTime number
---@param InNewState EPESkillChargeState
function UPersistEffectSkill:UpdateChargeState(InChargeTime, InNewState) end

---@return boolean
function UPersistEffectSkill:OnUpdateChargeState_BP() end

---@param InChargeTime number
---@param InNewState EPESkillChargeState
function UPersistEffectSkill:SyncChargeTimeAndState(InChargeTime, InNewState) end

---@param InMinChargeTime number
function UPersistEffectSkill:ResetChargeData(InMinChargeTime) end

---@param bEnable boolean
function UPersistEffectSkill:SetEnableDirectionInput(bEnable) end

---@return boolean
function UPersistEffectSkill:IsEnableDirectionInput() end

---@return FVector2D
function UPersistEffectSkill:GetDirectionInput() end

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPersistEffectSkill:ServerTriggerInputEvent(EventType, TimeStamp) end

---@param NewDirInput FVector2D
function UPersistEffectSkill:ServerUpdateDirectionInput(NewDirInput) end

---@param NewDirInput FVector2D
function UPersistEffectSkill:ServerUpdateDirectionInputForce(NewDirInput) end

---@param InputEvent EPersistEffectClientEvent
function UPersistEffectSkill:OnInputActionTriggered_BP(InputEvent) end

---@param ActivateActionGroupName string
---@param bIsTriggerFromGlobalEvent boolean
function UPersistEffectSkill:ClientStartActiveActionGroup(ActivateActionGroupName, bIsTriggerFromGlobalEvent) end

---@param ActivateActionGroupName string
function UPersistEffectSkill:ClientStopActiveActionGroup(ActivateActionGroupName) end
