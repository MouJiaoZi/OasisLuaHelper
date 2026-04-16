---@meta

---新技能和Buff系统接口库
---@class UGCPersistEffectSystem
UGCPersistEffectSystem = {}

---给指定拥有新技能组件的目标 Actor 添加技能
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标Actor
---@param SkillClass UClass|string @技能蓝图类或蓝图路径
---@param OverrideApplyTime number @技能生效时长(可选，默认为技能类中配置的时长)
---@param Slot UGCGameplayTag|string|FGameplayTag @由Tag标识的技能槽位
---@return UPersistEffectSkill @技能对象
function UGCPersistEffectSystem.AddSkillByClass(TargetActor, SkillClass, OverrideApplyTime, Slot) end

---给指定拥有新技能组件的目标 Actor 移除技能
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param SkillInstance UPersistEffectSkill @技能对象
---@return boolean @是否移除成功
function UGCPersistEffectSystem.RemoveSkillInstance(TargetActor, SkillInstance) end

---从指定拥有新技能组件的目标 Actor 获取指定类型的技能
---生效范围：服务器&客户端
---@param TargetActor AActor @拥有新技能组件的目标Actor
---@param SkillClass UClass|string @技能蓝图类或蓝图路径,为空时获取所有技能
---@return UPersistEffectSkill[] @技能列表
function UGCPersistEffectSystem.GetSkillsByClass(TargetActor, SkillClass) end

---从指定拥有新技能组件的目标 Actor 获取拥有指定 Tag 的技能
---生效范围：服务器&客户端
---@param TargetActor AActor @拥有新技能组件的目标Actor
---@param Tag UGCGameplayTag|string|FGameplayTag @需要获取的技能所包含的 Tag,为空时获取所有技能
---@return UPersistEffectSkill[] @技能列表
function UGCPersistEffectSystem.GetSkillsByTag(TargetActor, Tag) end

---给指定拥有新技能组件的目标 Actor 添加 Buff
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param BuffClass UClass|string @Buff 蓝图类或蓝图路径
---@param Causer AActor @Buff释放者（可选，默认为空）
---@param OverrideDuration number @技能生效时长（可选，默认为-1代表Buff类中配置的时长）
---@param StackNum number @Buff的堆叠层数（可选，默认为 1 层）
---@return UPersistEffectBuff @Buff对象
function UGCPersistEffectSystem.AddBuffByClass(TargetActor, BuffClass, Causer, OverrideDuration, StackNum) end

---给指定拥有新技能组件的目标 Actor 移除 Buff
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param BuffClass UClass|string @Buff 蓝图类或蓝图路径
---@param RemoveNum number @Buff减少堆叠数量（可选，默认-1移除全部层）
---@param Causer AActor @筛选特定的释放者（可选，默认不筛选）
---@return boolean @是否移除成功
function UGCPersistEffectSystem.RemoveBuffByClass(TargetActor, BuffClass, RemoveNum, Causer) end

---给指定拥有新技能组件的目标 Actor 移除包含某个 Tag 的 Buff
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param Tag UGCGameplayTag|string|FGameplayTag @需要移除的 Buff 所包含的 Tag
---@param RemoveNum number @Buff 减少堆叠数量（可选，默认移除全部层）
---@param Causer AActor @筛选特定的释放者(可选，默认不筛选)
---@return boolean @是否移除成功
function UGCPersistEffectSystem.RemoveBuffByTag(TargetActor, Tag, RemoveNum, Causer) end

---从指定拥有新技能组件的目标 Actor 获取指定类型的Buff
---生效范围：服务器&客户端
---@param TargetActor AActor @拥有新技能组件的目标Actor
---@param BuffClass UClass|string @Buff蓝图类或蓝图路径,为空时获取所有Buff
---@return UPersistEffectBuff[] @Buff列表
function UGCPersistEffectSystem.GetBuffsByClass(TargetActor, BuffClass) end

---从指定拥有新技能组件的目标 Actor 获取拥有指定Tag的Buff
---生效范围：服务器&客户端
---@param TargetActor AActor @拥有新技能组件的目标Actor
---@param Tag UGCGameplayTag|string|FGameplayTag @需要获取的 Buff 所包含的 Tag,为空时获取所有Buff
---@return UPersistEffectBuff[] @Buff列表
function UGCPersistEffectSystem.GetBuffsByTag(TargetActor, Tag) end

---检查指定拥有新技能组件的目标 Actor 是否包含某个 Tag 标识的状态
---生效范围：服务器&客户端
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要检查的 Tag 标识的状态
---@return boolean @是否拥有 Tag 标识的状态
function UGCPersistEffectSystem.HasDynamicState(TargetActor, DynamicStateTag) end

---检查指定拥有新技能组件的目标 Actor 是否允许进入某个 Tag 标识的状态
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要检查的 Tag 标识的状态
---@return boolean @是否允许进入 Tag 标识的状态
function UGCPersistEffectSystem.AllowDynamicState(TargetActor, DynamicStateTag) end

---尝试让拥有新技能组件的目标 Actor 获取指定 Tag 标识的状态，多次获取同一个 Tag 会叠加计数
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要添加的 Tag 标识的状态
---@return boolean @是否成功
function UGCPersistEffectSystem.EnterDynamicState(TargetActor, DynamicStateTag) end

---尝试从拥有新技能组件的目标 Actor 移除指定 Tag 标识的状态
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要移除的 Tag 标识的状态
---@return boolean @是否有剩余的 Tag。若移除 Tag 的一次计数后还有剩余则返回 False，若全部没有剩余则返回 True
function UGCPersistEffectSystem.LeaveDynamicState(TargetActor, DynamicStateTag) end

---将拥有新技能组件的目标 Actor 的 Tag 标识的状态移除并触发打断事件
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要打断的 Tag 标识的状态
---@return boolean @是否成功打断
function UGCPersistEffectSystem.InterruptDynamicState(TargetActor, DynamicStateTag) end

---设置由 Tag 标识的状态的是否禁用，Actor 中 Tag 的禁用计数大于 0 时禁用生效
--- - bNewDisabled == True：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态进行打断，并为这一组 Tag 的禁用计数 +1
--- - bNewDisabled == false：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态禁用计数 -1
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要增加或减少禁用的 Tag 标识的状态
---@param bNewDisabled boolean @是否禁用
---@param bInterrupt boolean @是否打断，默认为 true
function UGCPersistEffectSystem.SetDynamicStateDisabled(TargetActor, DynamicStateTag, bNewDisabled, bInterrupt) end

---重置被禁用的由 Tag 标识的状态，重置后目标 Actor 将允许进入这个 Tag 标识的状态
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@param DynamicStateTag UGCGameplayTag|string|FGameplayTag @需要增加或减少禁用的 Tag 标识的状态
function UGCPersistEffectSystem.ResetDynamicStateDisabled(TargetActor, DynamicStateTag) end

---从拥有新技能组件的目标 Actor 上获取 PersistBaseComponent 组件
---生效范围：服务器
---@param TargetActor AActor @拥有新技能组件的目标 Actor
---@return UPersistBaseComponent @UPersistBaseComponent 组件
function UGCPersistEffectSystem.GetPersistBaseComponentByContent(TargetActor) end

---添加透视效果
---生效范围：客户端
---@param TargetCharacter ACharacter @被透视的角色或怪
---@param Causer AActor @透视的发起方
---@param Type EPEBuffOcclusionHighlightType @透视类型(仅Causer透视/Causer及其队友透视/所有人)
---@param Color FLinearColor @透视颜色
---@return number @透视ID，用于移除透视效果,<=0为无效值
function UGCPersistEffectSystem.AddOcclusionHighlight(TargetCharacter, Causer, Type, Color) end

---移除透视效果
---生效范围：客户端
---@param WorldContextObject UObject @世界上下文对象
---@param OcclusionID number @透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
function UGCPersistEffectSystem.RemoveOcclusionHighlight(WorldContextObject, OcclusionID) end

---添加菲涅尔效果
---生效范围：客户端
---@param TargetCharacter ACharacter @被透视的角色或怪
---@param Color FLinearColor @颜色
---@param Duration number @时长
function UGCPersistEffectSystem.AddFresnelEffect(TargetCharacter, Color, Duration) end

---选取参数指定范围内的目标
---生效范围：服务器&客户端
---@param OwnerActor AActor @发起选目标的角色
---@param StartTransform FTransform @Picker开始位置
---@param TargetPickerParams FTargetPickerParams @Picker参数
---@param IgnoreActors AActor[] @忽略的Actors
---@return AActor[] @选中的目标
function UGCPersistEffectSystem.PickTargets(OwnerActor, StartTransform, TargetPickerParams, IgnoreActors) end