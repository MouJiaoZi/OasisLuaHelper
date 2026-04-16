---@meta

---@class FPersistEffectTickFunction
FPersistEffectTickFunction = {}


---@class FCanclePersistEffect : ULuaMulticastDelegate
FCanclePersistEffect = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Buff: UPersistEffectBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCanclePersistEffect:Add(Callback, Obj) end

---触发 Lua 广播
---@param Buff UPersistEffectBase
function FCanclePersistEffect:Broadcast(Buff) end


---@class FUnApplyPersistEffect : ULuaMulticastDelegate
FUnApplyPersistEffect = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Buff: UPersistEffectBase, Reason: EPersistEffectUnApplyReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUnApplyPersistEffect:Add(Callback, Obj) end

---触发 Lua 广播
---@param Buff UPersistEffectBase
---@param Reason EPersistEffectUnApplyReason
function FUnApplyPersistEffect:Broadcast(Buff, Reason) end


---PersistEffectBase, PersistEffectSkill和PersistEffectBuff的基类
---@class UPersistEffectBase: UBasicPersistEffect, IGameplayTaskOwnerInterface, ILimitationInterface, IOwnershipChainInterface
---@field bUseCustomTickFunction boolean
---@field PersistEffectTickFunction FPersistEffectTickFunction
---@field ApplyTime number
---@field BuffTags FGameplayTagContainer
---@field PETags FGameplayTagContainer
---@field bUseApplyWhitelist boolean
---@field Whitelist_PawnState ULuaArrayHelper<EPawnState>
---@field DelayDestroy boolean
---@field bNetUpdatePostNetReceive boolean
---@field TargetDuringTime number
---@field ApplyStartTime number
---@field ApplyVaildTime number
---@field OnCanclePersistEffect FCanclePersistEffect
---@field OnUnApplyPersistEffectEvent FUnApplyPersistEffect
local UPersistEffectBase = {}

---@param OwnerActor AActor
---@return boolean
function UPersistEffectBase:CanApply(OwnerActor) end

function UPersistEffectBase:ForceNetUpdate() end

---@return boolean
function UPersistEffectBase:UseCustomTickFunction() end

---@param bEnabled boolean
function UPersistEffectBase:SetCustomEffectTickEnabled(bEnabled) end

---Event
---当PersistEffect挂载到角色身上时调用
---生效范围: 服务器&客户端
---@param Character AActor @挂载的角色
function UPersistEffectBase:OnApply_BP(Character) end

---Event
---当PersistEffect从角色身上移除时调用
---生效范围: 服务器&客户端
---@param Character AActor @挂载的角色
---@param Reason EPersistEffectUnApplyReason @移除的原因
function UPersistEffectBase:OnUnApply_BP(Character, Reason) end

---Event
---当PersistEffect挂载到角色身上前检查是否可挂载时调用
---生效范围: 服务器
---@param Character AActor @尝试挂载的角色
---@return boolean @是否可以挂载
function UPersistEffectBase:CanApply_BP(Character) end

---Event
---当PersistEffect合并时调用
---生效范围: 服务器
---@param Target UPersistEffectBase @被合并的PersistEffect
---@param ApplyTime number @被合并的PersistEffect的生效时长
function UPersistEffectBase:OnMerge_BP(Target, ApplyTime) end

---Event
---当PersistEffect合并前检查是否可合并时调用
---生效范围: 服务器
---@param Target UPersistEffectBase @被合并的PersistEffect
---@return boolean @是否可以合并
function UPersistEffectBase:CanMerge_BP(Target) end

---Event
---PersistEffect每帧调用，开启Tick需要SetTickEnable(true)
---生效范围: 服务器&客户端
---@param Character AActor @挂载的角色
---@param DeltaTime number @距离上次触发后经过的时间
function UPersistEffectBase:Tick_BP(Character, DeltaTime) end

---Event
---当PersistEffect被打断时调用
---生效范围: 服务器
---@param Character AActor @挂载的角色
function UPersistEffectBase:OnInterrupted_BP(Character) end

---检查当前对象是否运行在服务器端
---生效范围: 服务器&客户端
---@return boolean @否运行在服务器端
function UPersistEffectBase:HasAuthority() end

---检查当前对象是否运行在主控客户端
---生效范围: 服务器&客户端
---@param bConsiderObReplay boolean @是否包含观战和回放时的主控端
---@return boolean @否运行在主控客户端
function UPersistEffectBase:IsAutonomous(bConsiderObReplay) end

---刷新PersistEffect的生效时间
---生效范围: 服务器
function UPersistEffectBase:RefreshValidTime() end

function UPersistEffectBase:RefreshVaildTime() end

---@param Reason EPersistEffectUnApplyReason
---@return boolean
function UPersistEffectBase:Cancel(Reason) end

---@param Reason EPersistEffectUnApplyReason
---@return boolean
function UPersistEffectBase:Cancle(Reason) end

---设置PersistEffect是否每帧执行Tick函数，在服务器调用只会开启服务器的Tick，在客户端调用只会开启客户端的Tick
---生效范围: 服务器&客户端
---@param bEnable boolean
function UPersistEffectBase:SetTickEnable(bEnable) end

---@return boolean
function UPersistEffectBase:IsNeedTick() end

---@return boolean
function UPersistEffectBase:CheckFinished() end

---设置PersistEffect的生效时间
---生效范围: 服务器
---@param Time number
function UPersistEffectBase:SetApplyTime(Time) end

---获取PersistEffect的生效时间
---生效范围: 服务器&客户端
---@return number
function UPersistEffectBase:GetApplyTime() end

---@param Time number
function UPersistEffectBase:SetStartTimeStamp(Time) end

---@return number
function UPersistEffectBase:GetStartTimeStamp() end

---获取当前服务器时间戳
---生效范围: 服务器&客户端
---@return number
function UPersistEffectBase:GetTimeStamp() end

---@param InSource UObject
function UPersistEffectBase:SetSource(InSource) end

---检查当前技能或Buff是否有某个类型的Tag
---生效范围SC
---@param Tag FGameplayTag @要检查的Tag
---@return boolean @是否有对应的Tag
function UPersistEffectBase:HasTag(Tag) end

---获取剩余时间
---@return number @剩余时间
function UPersistEffectBase:GetRemainingTime() end

---@return string
function UPersistEffectBase:GetDebugString_BP() end

---@param PersistComp UPersistBaseComponent
---@param Tag FGameplayTag
function UPersistEffectBase:OnDynamicStateInterrupted(PersistComp, Tag) end

---@param PawnState EPawnState
function UPersistEffectBase:OnPawnStateEnter(PawnState) end

function UPersistEffectBase:OnRep_Source() end

---@param OwnerActor AActor
function UPersistEffectBase:HandleOBIn_BP(OwnerActor) end

---@param OwnerActor AActor
function UPersistEffectBase:HandleOBOut_BP(OwnerActor) end
