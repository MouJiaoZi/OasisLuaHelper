---@meta

---@class ESimulateAddBuffRole
---@field AddBuffRole_None number @所有客户端都不加
---@field AddBuffRole_All number @所有客户端都加
---@field AddBuffRole_Self number @只有buff目标加
---@field AddBuffRole_ExceptSelf number @只有buff目标不加
---@field AddBuffRole_Causer number @只有施加者加
---@field AddBuffRole_Firend number @只有buff目标及其队友加
---@field AddBuffRole_Enermy number @只有buff目标敌人加
ESimulateAddBuffRole = {}


---@class FStatusChange
---@field StatusName USTBaseBuffStatusType
---@field StatusValue boolean
FStatusChange = {}


---@class FBuffUIConfig
---@field WidgetClassPath UUAEUserWidget
---@field ZOrder number
---@field MarginData FMargin
---@field AnchorsData FAnchors
---@field Position FVector2D
FBuffUIConfig = {}


---@class FBuffActionItem
FBuffActionItem = {}


---@class FBuffEventTypeItem
FBuffEventTypeItem = {}


---@class FBuffEventActionItem
FBuffEventActionItem = {}


---状态效果（Buff/Debuff）的核心配置类 * @AI_Role: 状态效果的定义容器（Container）。它定义了一个 Buff 的生命周期（时长、层数）以及它具体要做什么（通过 BuffActions 列表定义）。 * @AI_Usage: 1. 这是一个数据定义类（Data Definition），通常作为模版使用。 2. [关键规则] 配置 "BuffActions" 数组时，严禁使用基类 UUTSkillAction。必须根据需求选择具体的子类（如 UBuffAction_Heal, UBuffAction_Damage, UBuffAction_SpeedChange）。 3. 如果 Duration 为 0 或负数，通常表示无限时长。 * @AI_Tags: 状态, 效果, 增益, 减益, 持续时间, 层数, 叠加, 策略模式, Buff, Debuff, Status Effect, Duration, Stacks, Infinite, Modifier, GameplayTag
---@class USTBaseBuff: UObject, IUTSkillInstanceNodeInterface, IUAESharedModuleInterface
---@field BuffName string @Buff名字，全局唯一 * @AI_Role: 全局唯一的标识
---@field DisplayName string @和BuffName保持一致 * @AI_Role: 和BuffName保持一致
---@field Message string @和BuffName保持一致 * @AI_Role: 和BuffName保持一致
---@field IsDeBuff boolean @废弃配置，留空 * @AI_Role: 废弃配置，留空
---@field IgnoreMagicalImmunity boolean @废弃配置，留空 * @AI_Role: 废弃配置，留空
---@field bAllowOtherPawnRefreshBuff boolean @是否允许其他causer刷新这个Buff的剩余时间 * @AI_Role: 控制是否允许其他人刷新剩余时间
---@field NeedDetachAndAttachForReplaceExit boolean
---@field NeedDetachAndAttachForAddLayer boolean
---@field NeedDetachAndAttachForAddLayerWhenReachMaxLayerCount boolean
---@field ReplaceExsist boolean
---@field Layerable boolean
---@field RefreshApplierForAddLayer boolean
---@field LayerMax number
---@field InitialLayerCount number
---@field ValidityTime number
---@field ValidityTimeAccumulable boolean
---@field MaxValidityTime number
---@field Internal number
---@field BuffConditions ULuaArrayHelper<UUTSkillCondition>
---@field StatusChanges ULuaArrayHelper<FStatusChange>
---@field NeedSimulateToClientMulticast boolean
---@field NeedSimulateToClient boolean
---@field SimulateAddBuffRole ESimulateAddBuffRole
---@field MutexBuffers ULuaArrayHelper<string>
---@field ExcludedBuffs ULuaArrayHelper<string>
---@field BuffActions ULuaArrayHelper<FBuffActionItem> @使用 * @AI_Role: 核心成员变量，几乎所有行为(UUTSkillAction)都是在这里配置的
---@field EventBuffActions ULuaArrayHelper<FBuffEventActionItem>
---@field bCanOverwriteDelayTimer boolean
---@field IsAlwaysExists boolean
---@field UIConfig FBuffUIConfig
---@field bReplicateBlackboard boolean
---@field UAEBlackboardParamList ULuaArrayHelper<FUAEBlackboardParameter>
---@field BuffGameplayTags FGameplayTagContainer
---@field BuffFlags number
---@field InstancedNodeNameToMemoryMap ULuaMapHelper<UObject, number>
---@field InstancedNodesTotalSize number
local USTBaseBuff = {}


---@class USTBaseBuffEventType_Sequence: USTBaseBuffEventType
---@field Sequence ULuaArrayHelper<FBuffEventTypeItem>
local USTBaseBuffEventType_Sequence = {}
