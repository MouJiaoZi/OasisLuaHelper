---@meta

---@class EPEBuffMergeConditionType
---@field PEBuffMergeConditionType_Block number @//*UGC* 无法合并
---@field PEBuffMergeConditionType_InstanceByClass number @//*UGC* 同类型合并
---@field PEBuffMergeConditionType_InstanceByCauser number @//*UGC* 同施放者且同类型合并
EPEBuffMergeConditionType = {}


---@class EPEBuffMergeType
---@field PEBuffMergeType_Refresh number @//*UGC* 刷新Buff
---@field PEBuffMergeType_AppendDuration number @//*UGC* 追加时长
---@field PEBuffMergeType_Stack number @//*UGC* 堆叠
---@field PEBuffMergeType_RefreshTimeOnly number @重置时长
EPEBuffMergeType = {}


---@class EPEBuffDurationType
---@field PEBuffDurationType_Normal number @//*UGC* 结束
---@field PEBuffDurationType_ReduceStackAndRefresh number @//*UGC* 每层结束刷新时间
---@field PEBuffDurationType_IndependentCount number @//*UGC* 每层独立计算时间
EPEBuffDurationType = {}


---包含了Buff的所有配置信息
---@class FPEBuffInfo
---@field UIInfo FPEBuffUIInfo @Buff的UI信息
---@field ApplyTagGroup FGameplayTagGroups @Tag的配置组，包含该Buff与各个Tag的互斥关系
---@field MergeConditionType EPEBuffMergeConditionType @配置另一个Buff能够与当前Buff合并的判断条件，可以通过CanMerge_BP扩展这个条件，CanMerge_BP与当前条件是“与”的关系
---@field MergeTypeMask number @配置另一个Buff合并到当前后的行为，可通过OnMerge_BP扩展这些行为
---@field MaxStackNum number @最大堆叠次数
---@field DurationStrategy EPEBuffDurationType @堆叠持续时长计算方式
---@field BuffEffects ULuaArrayHelper<UPEBuffEffectBase> @触发效果
FPEBuffInfo = {}


---@class FOnBuffUIInfoChange : ULuaSingleDelegate
FOnBuffUIInfoChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBuffUIInfoChange:Bind(Callback, Obj) end

---执行委托
function FOnBuffUIInfoChange:Execute() end


---@class FOnStackNumChange : ULuaMulticastDelegate
FOnStackNumChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangeNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStackNumChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangeNum number
function FOnStackNumChange:Broadcast(ChangeNum) end


---Buff系统归属与和平精英的技能系统，用于帮助开发者更方便快捷地实现Buff效果
---通过与Tag、Attribute等系统的配合能够通过配置就实现大部分所需的效果
---对于更细致的Buff效果也可以通过重写BP结尾的函数来实现定制化效果。
---@class UPersistEffectBuff: UPersistEffectBase
---@field BuffInfo FPEBuffInfo @生效范围：服务器&客户端 Buff蓝图的配置信息
---@field OnStackNumChange FOnStackNumChange @Event 生效范围：服务器&客户端 Buff层数改变事件 @param ChangeNum 改变的层数
---@field OnUIInfoChange FOnBuffUIInfoChange @Event 生效范围：客户端 Buff的UI信息改变事件
---@field CurrentStackNum number
---@field bIsEnable boolean
---@field bPaused boolean
---@field BeginEffects ULuaArrayHelper<UPEBuffEffectBase>
---@field EndEffects ULuaArrayHelper<UPEBuffEffectBase>
---@field IntervalEffects ULuaArrayHelper<UPEBuffEffectBase>
---@field StackEffects ULuaArrayHelper<UPEBuffEffectBase>
---@field AllBuffEffects ULuaArrayHelper<UPEBuffEffectBase>
---@field BuffEffects ULuaArrayHelper<FPEBuffTemplatePtr>
---@field BeginEffectTemplates ULuaArrayHelper<FPEBuffTemplatePtr>
---@field EndEffectTemplates ULuaArrayHelper<FPEBuffTemplatePtr>
---@field IntervalEffectTemplates ULuaArrayHelper<FPEBuffTemplatePtr>
---@field StackEffectTemplates ULuaArrayHelper<FPEBuffTemplatePtr>
local UPersistEffectBuff = {}

function UPersistEffectBuff:ClientRefreshBuff() end

function UPersistEffectBuff:OnRep_CurrentStackNum() end

function UPersistEffectBuff:OnRep_IsEnable() end

function UPersistEffectBuff:OnRep_Paused() end

---Event
---生效范围：服务器
---当Buff持续时间改变时调用，如修改ApplyTime、修改StackNum
---@param Pre number @上一次的持续时间
---@param Current number @当前的持续时间
function UPersistEffectBuff:OnTotalDurationChange_BP(Pre, Current) end

---Event
---生效范围：服务器&客户端
---当Buff堆叠层数变化时调用，如调用AddStackNum、消耗一层Buff
---@param PreNum number @上一次的堆叠层数
---@param CurrentNum number @当前的堆叠层数
function UPersistEffectBuff:OnStackChange_BP(PreNum, CurrentNum) end

---Event
---生效范围：服务器&客户端
---Buff刷新时调用
function UPersistEffectBuff:OnRefresh_BP() end

---Event
---生效范围：服务器
---当Buff效果触发前调用，用于改写Buff触发条件，默认实现为直接返回True
---@return boolean @是否可以触发
function UPersistEffectBuff:CanTrigger_BP() end

---Event
---生效范围：服务器&客户端
---当Buff效果触发时调用
---@param Reason EPEBuffTriggerType @触发原因
function UPersistEffectBuff:OnTrigger_BP(Reason) end

---生效范围：服务器
---修改堆叠层数，修改后的层数大于等于0且小于等于最大堆叠层数(MaxStackNum)
---@param Num number @新增的层数
function UPersistEffectBuff:AddStackNum(Num) end

---生效范围：服务器&客户端
---获取当前层数
---@return number @当前层数
function UPersistEffectBuff:GetStackNum() end

---生效范围：服务器
---设置Buff的施加者
---@param Causer AActor @施加者
function UPersistEffectBuff:SetCauser(Causer) end

---生效范围：服务器
---触发当前所有层的Buff的效果
function UPersistEffectBuff:TriggerAllLayer() end

---生效范围：服务器
---触发单层的Buff的效果
function UPersistEffectBuff:TriggerSingleLayer() end

---生效范围：服务器
---重置Buff持续时间
function UPersistEffectBuff:RefreshBuff() end

---生效范围：服务器
---设置Buff是否生效
---@param IsEnable boolean @是否生效
function UPersistEffectBuff:SetBuffEnable(IsEnable) end

---生效范围：服务器&客户端
---获取Buff当前是否生效
---@return boolean @是否生效
function UPersistEffectBuff:IsBuffEnable() end

---生效范围：服务器
---暂停Buff持续减少剩余时间
function UPersistEffectBuff:Pause() end

---生效范围：服务器
---恢复Buff持续减少剩余时间
function UPersistEffectBuff:Resume() end

---生效范围：服务器&客户端
---更改UI信息，但双端不同步
---@param BuffName string @Buff名字
---@param BuffDetail string @Buff描述
---@param BuffIconPath string @Buff图标路径
function UPersistEffectBuff:OverwriteBuffUIInfo(BuffName, BuffDetail, BuffIconPath) end

---生效范围：服务器&客户端
---获取Buff名字
---@return string @Buff名字
function UPersistEffectBuff:GetBuffName() end

---生效范围：服务器&客户端
---获取Buff描述
---@return string @Buff描述
function UPersistEffectBuff:GetBuffDetail() end

---生效范围：服务器&客户端
---获取Buff图标路径
---@return string @Buff图标路径
function UPersistEffectBuff:GetBuffIconPath() end

---@param ID number
function UPersistEffectBuff:SetMergeID(ID) end

---@return number
function UPersistEffectBuff:GetMergeID() end
