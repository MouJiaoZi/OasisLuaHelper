---@meta

---@class FUGCGenericCharacterMeshSlotAttachInfo
---@field AttachPos FMeshSocketSelector
---@field MeshCompName string
FUGCGenericCharacterMeshSlotAttachInfo = {}


---@class FOnCreateHealthWidget : ULuaMulticastDelegate
FOnCreateHealthWidget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HealthWidget: UUGCGenericCharacterPositionWidget) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCreateHealthWidget:Add(Callback, Obj) end

---触发 Lua 广播
---@param HealthWidget UUGCGenericCharacterPositionWidget
function FOnCreateHealthWidget:Broadcast(HealthWidget) end


---@class FOnPostTakeDamgeWithSkillEditor : ULuaSingleDelegate
FOnPostTakeDamgeWithSkillEditor = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostTakeDamgeWithSkillEditor:Bind(Callback, Obj) end

---执行委托
function FOnPostTakeDamgeWithSkillEditor:Execute() end


---怪物角色类
---@class AUGCGenericCharacter: AGenericCharacter
---@field HealthBarWidgetClass UUGCGenericCharacterPositionWidget @血条控件蓝图路径
---@field bHealthBarShowWhenOcclusionHide boolean @被遮挡后血条是否仍显示
---@field HealthBarMaxShowDistance number @血条实时显示最大距离，单位厘米
---@field HealthBarLocOffset FVector @血条位置偏移
---@field bHealthBarUseSocket boolean @血条是否附着到特定部位
---@field HealthBarSocketName string @血条附着的部位名
---@field bHealthBarShowWhenTakeDamage boolean @怪物受伤时显示血条
---@field bHealthBarShowWhenLockPlayer boolean @当怪物将玩家作为当前目标时显示血条
---@field bHealthBarShowWhenBeAimAt boolean @当玩家瞄准怪物时显示血条
---@field HealthBarConditionShowDistance number @能触发瞄准显示的最大距离
---@field HealthBarShowDuration number @血条显示条件触发后显示时间
---@field OnCreateHealthWidget FOnCreateHealthWidget @血条创建成功事件
---@field HealthBarCampFilter number @阵营过滤
---@field HealthBarDamageFilter EShowHPBarDamageType @伤害来源过滤
---@field HealthBarMaxShowNum number
local AUGCGenericCharacter = {}

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AUGCGenericCharacter:TakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param StateAbility IStateAbilityInterface
---@param DynamicState FGameplayTag
function AUGCGenericCharacter:OnEnterTagState(StateAbility, DynamicState) end

---@param StateAbility IStateAbilityInterface
---@param DynamicState FGameplayTag
function AUGCGenericCharacter:OnLeaveTagState(StateAbility, DynamicState) end

---@param StateAbility IStateAbilityInterface
---@param DynamicState FGameplayTag
function AUGCGenericCharacter:OnInterruptTagState(StateAbility, DynamicState) end

---@param NotifyMsg string
function AUGCGenericCharacter:OnBehaviorNotify(NotifyMsg) end

---@param WaypointIndex number
function AUGCGenericCharacter:OnArriveWaypoint(WaypointIndex) end

---Event
---状态进入事件
---生效范围：服务器&客户端
---@param DynamicState FGameplayTag @进入状态
function AUGCGenericCharacter:OnEnterTagState_BP(DynamicState) end

---Event
---状态退出事件
---生效范围：服务器&客户端
---@param DynamicState FGameplayTag @退出状态
function AUGCGenericCharacter:OnLeaveTagState_BP(DynamicState) end

---Event
---状态打断事件
---生效范围：服务器&客户端
---@param DynamicState FGameplayTag @打断状态
function AUGCGenericCharacter:OnInterruptTagState_BP(DynamicState) end

---Event
---行为树消息
---生效范围：服务器
---@param NotifyMsg string @消息
function AUGCGenericCharacter:OnBehaviorNotify_BP(NotifyMsg) end

---Event
---行为树消息
---生效范围：服务器
---@param WaypointIndex number
function AUGCGenericCharacter:OnArriveWaypoint_BP(WaypointIndex) end

function AUGCGenericCharacter:OnUGCMGeneralConfigInitFinished() end

---设置当前强制仇恨目标
---生效范围：服务器
---@param NewTarget AActor @仇恨目标
function AUGCGenericCharacter:SetForceHatredTarget(NewTarget) end

---清除强制仇恨目标
---生效范围：服务器
function AUGCGenericCharacter:RemoveForceHatredTarget() end

---增加目标仇恨值
---生效范围：服务器
---@param Target AActor @目标
---@param HatredValue number
function AUGCGenericCharacter:AddTargetHatredValue(Target, HatredValue) end
