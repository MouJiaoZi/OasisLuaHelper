---@meta

---@class EPersistEffectUnApplyReason
---@field Normal number @正常结束
---@field Interrupt number @被打断
---@field Cancel number @取消使用
---@field SwitchDS number @切DS打断
---@field ClientLimit number @客户端限制
---@field ComponentEndPlay number @角色销毁
---@field Recycled number @对象池回收
---@field Slot number @Slot顶替
---@field None number @无效
EPersistEffectUnApplyReason = {}


---@class EPersistEffectClientEvent
---@field InputPress number @按键按下
---@field InputRelease number @按键抬起
EPersistEffectClientEvent = {}


---@class FPESlotInfo
---@field SlotName FGameplayTag
FPESlotInfo = {}


---@class FInitialPersistEffect
---@field PEClass UPersistEffectBase
---@field InitialSlot FGameplayTag
---@field bShowSlot boolean
FInitialPersistEffect = {}


---@class FInputActionSkillSlotPair
---@field InputAction FGameplayTag
---@field InputCancel FGameplayTag
---@field InputDirectionX FGameplayTag
---@field InputDirectionY FGameplayTag
---@field SkillSlot FGameplayTag
FInputActionSkillSlotPair = {}


---@class FOnDynamicStateEnter : ULuaMulticastDelegate
FOnDynamicStateEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: UPersistBaseComponent, state: FGameplayTag) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDynamicStateEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef UPersistBaseComponent
---@param state FGameplayTag
function FOnDynamicStateEnter:Broadcast(SelfRef, state) end


---@class FOnDynamicStateInterruptWithSource : ULuaMulticastDelegate
FOnDynamicStateInterruptWithSource = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: UPersistBaseComponent, InterruptedState: FGameplayTag, SourceState: FGameplayTag) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDynamicStateInterruptWithSource:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef UPersistBaseComponent
---@param InterruptedState FGameplayTag
---@param SourceState FGameplayTag
function FOnDynamicStateInterruptWithSource:Broadcast(SelfRef, InterruptedState, SourceState) end


---@class FOnDynamicStateDisabledChanged : ULuaMulticastDelegate
FOnDynamicStateDisabledChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: UPersistBaseComponent, state: FGameplayTag, bNewDisabled: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDynamicStateDisabledChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef UPersistBaseComponent
---@param state FGameplayTag
---@param bNewDisabled boolean
function FOnDynamicStateDisabledChanged:Broadcast(SelfRef, state, bNewDisabled) end


---@class FOnRegisteredSlotInfoChanged : ULuaMulticastDelegate
FOnRegisteredSlotInfoChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Slot: FGameplayTag, NewSkill: UPersistEffectBase, OldSkill: UPersistEffectBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRegisteredSlotInfoChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Slot FGameplayTag
---@param NewSkill UPersistEffectBase
---@param OldSkill UPersistEffectBase
function FOnRegisteredSlotInfoChanged:Broadcast(Slot, NewSkill, OldSkill) end


---技能/Buff组件
---@class UPersistBaseComponent: UGameplayTasksComponent, IObjectPoolInterface
---@field InitialPEClasses ULuaArrayHelper<FInitialPersistEffect>
---@field SlotInfoList ULuaArrayHelper<FPESlotInfo>
---@field OnPESlotInfoChanged FOnRegisteredSlotInfoChanged
---@field LocalSlotInfoMap ULuaMapHelper<FGameplayTag, UPersistEffectBase>
---@field PersistDataArray ULuaArrayHelper<UPersistEffectBase>
---@field TickValidTimePEArray ULuaArrayHelper<UPersistEffectBase>
---@field TickPEArray ULuaArrayHelper<UPersistEffectBase>
---@field DelayUnapplyEffects ULuaMapHelper<UPersistEffectBase, EPersistEffectUnApplyReason>
---@field ClientWaitApplyPersist ULuaArrayHelper<UPersistEffectBase>
---@field RepCurrentDynamicState FGameplayTagContainer
---@field RepDisableDynamicTag FGameplayTagContainer
---@field TagRelationshipOverride ULuaArrayHelper<FDynamicStateTagRelationship>
---@field DynamicStateEnterHandle FOnDynamicStateEnter @Event 生效范围：服务器&客户端 进入状态事件, 注意：服务端DynamicState是有计数的, 服务端多次EnterDynamicState都会触发这个代理 @param SelfRef 监听的组件 @param state 进入的状态
---@field DynamicStateLeaveHandle FOnDynamicStateEnter @Event 生效范围：服务器&客户端 离开状态事件, 注意：服务端DynamicState是有计数的, 服务端多次LeaveDynamicState都会触发这个代理, 只有当前计数为0时再Leave就不会触发 @param SelfRef 监听的组件 @param state 离开的状态
---@field DynamicStateInterruptedHandle FOnDynamicStateEnter @Event 生效范围：服务器&客户端 打断状态事件 @param SelfRef 监听的组件 @param state 打断的状态
---@field DynamicStateInterruptedWithSourceHandle FOnDynamicStateInterruptWithSource @Event 生效范围：服务器 打断状态事件 @param SelfRef 监听的组件 @param state 打断的状态 @param SourceState 打断的状态的来源
---@field DynamicStateDisabledChangedHandle FOnDynamicStateDisabledChanged @Event 生效范围：服务器&客户端 禁用状态事件 @param SelfRef 监听的组件 @param state 禁用的状态 @param bNewDisabled 禁用/解除禁用
---@field DynamicStateDisabledResetHandle FOnDynamicStateEnter @Event 生效范围：服务器&客户端 重置禁用状态事件 @param SelfRef 监听的组件 @param state 重置禁用的状态
---@field DelayDestroyEffects ULuaMapHelper<UPersistEffectBase, number>
---@field InputActionSkillSlotPairs ULuaArrayHelper<FInputActionSkillSlotPair>
---@field RegisteredInputBufferTasks ULuaArrayHelper<UPESkillTask_InputBuffer>
local UPersistBaseComponent = {}

function UPersistBaseComponent:OnControllerArrived() end

---@param DataModel UPersistEffectBase
---@param OverrideApplyTime number
---@return boolean
function UPersistBaseComponent:ApplyPersistEffectData(DataModel, OverrideApplyTime) end

---@param Class UPersistEffectBase
---@param bNotConsiderChild boolean
function UPersistBaseComponent:GetPersistEffectDataByClass(Class, bNotConsiderChild) end

---@param Tag FGameplayTag
function UPersistBaseComponent:GetPersistEffectDataByTag(Tag) end

function UPersistBaseComponent:GetAllPersistEffectData() end

---@param Data UPersistEffectBase
---@param Reason EPersistEffectUnApplyReason
function UPersistBaseComponent:UnApplyPersistEffectData(Data, Reason) end

---@param Data UPersistEffectBase
---@return boolean
function UPersistBaseComponent:IsApplayedPersistEffectData(Data) end

---@param Container FGameplayTagContainer
function UPersistBaseComponent:InterruptAllByGameTag(Container) end

---@param Container FGameplayTagContainer
function UPersistBaseComponent:InterruptCharacterDynamicState(Container) end

---@param Tag FGameplayTag
function UPersistBaseComponent:ApplyInterruptTagsByTag(Tag) end

---@param Tag FGameplayTag
function UPersistBaseComponent:ApplyDisabledTagsByTag(Tag) end

---@param Tag FGameplayTag
function UPersistBaseComponent:UnApplyDisabledTagsByTag(Tag) end

---@param Slot FGameplayTag
---@return boolean
function UPersistBaseComponent:AddSlot(Slot) end

---@param Slot FGameplayTag
---@return boolean
function UPersistBaseComponent:RemoveSlot(Slot) end

---生效范围：服务器
---将PersistEffect注册到目标槽位中
---@param Slot FGameplayTag @槽位
---@param InPE UPersistEffectBase @注册到槽位的PersistEffect
---@param bShouldUnapply boolean @是否将原来槽位上的PersistEffect进行Unapply
---@return boolean @注册是否成功
function UPersistBaseComponent:RegisterPersistEffectWithSlot(Slot, InPE, bShouldUnapply) end

---生效范围：服务器
---将目标槽位中的PersistEffect解除注册
---@param Slot FGameplayTag @槽位
---@param bShouldUnapply boolean
---@return boolean @解除注册是否成功
function UPersistBaseComponent:UnRegisterPersistEffectWithSlot(Slot, bShouldUnapply) end

function UPersistBaseComponent:OnRep_SlotInfo() end

function UPersistBaseComponent:OnRep_PlayerController() end

---@param WaitApplyPersist UPersistEffectBase
function UPersistBaseComponent:AddToWaitApply(WaitApplyPersist) end

function UPersistBaseComponent:OnPostNetDriverTickDispatch() end

---@param PrevData FGameplayTagContainer
function UPersistBaseComponent:OnRep_RepCurrentDynamicState(PrevData) end

---@param PrevData FGameplayTagContainer
function UPersistBaseComponent:OnRep_RepDisableDynamicTag(PrevData) end

---@param Tag FGameplayTag
---@param PESkill UPersistEffectSkill
function UPersistBaseComponent:AddActivatedGroupTagBySkill(Tag, PESkill) end

---@param Tag FGameplayTag
function UPersistBaseComponent:RemoveActivatedGroupTag(Tag) end

---@param DisableTag FGameplayTag
---@param bNewDisabled boolean
function UPersistBaseComponent:SetDisableTagRelationshipMapping(DisableTag, bNewDisabled) end

---@return FGameplayTagContainer
function UPersistBaseComponent:GetAllDynamicState() end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:EnterDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@param bLeaveAll boolean
---@return boolean
function UPersistBaseComponent:LeaveDynamicState(DynamicState, bLeaveAll) end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:InterruptDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@param InterruptSourceState FGameplayTag
---@return boolean
function UPersistBaseComponent:InterruptDynamicStateWithSource(DynamicState, InterruptSourceState) end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:AllowDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:HasDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:HasDynamicStateExact(DynamicState) end

---@param DynamicState FGameplayTag
---@param bNewDisabled boolean
---@param bInterrupt boolean
function UPersistBaseComponent:SetDynamicStateDisabled(DynamicState, bNewDisabled, bInterrupt) end

---@param DynamicState FGameplayTag
---@return boolean
function UPersistBaseComponent:IsDynamicStateDisabled(DynamicState) end

---@param DynamicState FGameplayTag
function UPersistBaseComponent:ResetDynamicStateDisabled(DynamicState) end

---@param DynamicState FGameplayTag
---@param bExact boolean
---@return number
function UPersistBaseComponent:GetDynamicStateCount(DynamicState, bExact) end

---@param Tag FGameplayTag
---@return boolean
function UPersistBaseComponent:HasActivatedGroupTag(Tag) end

---@param InputAction FGameplayTag
---@return FGameplayTag
function UPersistBaseComponent:GetSkillSlotByInputAction(InputAction) end

---@param SkillSlot FGameplayTag
---@return FGameplayTag
function UPersistBaseComponent:GetInputActionBySkillSlot(SkillSlot) end

---@param SkillSlot FGameplayTag
---@return FInputActionSkillSlotPair
function UPersistBaseComponent:GetInputSkillSlotPairBySkillSlot(SkillSlot) end
