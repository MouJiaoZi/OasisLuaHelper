---@meta

---@class EPESkillConsumeTimeType
---@field E_PESKILL_ConsumeTime_Activate number @//*UGC* 技能激活时扣除
---@field E_PESKILL_ConsumeTime_Finish number @//*UGC* 技能结束时扣除
---@field E_PESKILL_ConsumeTime_Custom number @//*UGC* 自定义扣除时机
EPESkillConsumeTimeType = {}


---@class EPESkillDeActivateReason
---@field E_PESKILL_DeActivateReason_Normal number @//*UGC* 正常结束
---@field E_PESKILL_DeActivateReason_Interrupt number @//*UGC* 状态互斥打断
---@field E_PESKILL_DeActivateReason_Cancel number @//*UGC* 主动取消
---@field E_PESKILL_DeActivateReason_Disable number @//*UGC* 技能被Disable
---@field E_PESKILL_DeActivateReason_Unknown number @//*UGC* Unknown
EPESkillDeActivateReason = {}


---@class EPESkillSpawnTargetType
---@field E_PESKILL_SpawnTarget_Self number @//*UGC* 技能施法者
---@field E_PESKILL_SpawnTarget_SelectTarget number @//*UGC* 全部技能Target
---@field E_PESKILL_SpawnTarget_SelectTransform number @//*UGC* 全部技能位置
EPESkillSpawnTargetType = {}


---@class EPESkillSelectTarget
---@field E_PESKILL_PickerType_Self number @//*UGC* 技能施法者
---@field E_PESKILL_PickerType_AllTarget number @//*UGC* 全部技能Target
EPESkillSelectTarget = {}


---@class EPESkillInputType
---@field E_PESKILL_INPUTTYPE_Trigger number @//*UGC* 每次按下触发NextStep
---@field E_PESKILL_INPUTTYPE_PressAndRelease number @//*UGC* 按下触发Activate，抬起触发DeActivate
EPESkillInputType = {}


---@class ECompareOperation
---@field Equal number @==
---@field NotEqual number @!=
---@field GreaterThan number @>
---@field LessThan number @<
---@field GreaterThanOrEqual number @>=
---@field LessThanOrEqual number @<=
ECompareOperation = {}


---@class EPEPersonPerspectiveType
---@field PEPersonPerspectiveType_None number
---@field PEPersonPerspectiveType_TPP number @第三人称
---@field PEPersonPerspectiveType_FPP number @第一人称
EPEPersonPerspectiveType = {}


---计算类型
---@class EPESkillValueCalculatorType
---@field EPESkillValueCalculatorType_Constant number @常数
---@field EPESkillValueCalculatorType_Plus number
---@field EPESkillValueCalculatorType_Multiply number
---@field EPESkillValueCalculatorType_Calculator1 number @公式计算(ValueA*属性值+ValueB)
---@field EPESkillValueCalculatorType_CallLua number @Lua方法
EPESkillValueCalculatorType = {}


---计算类型
---@class EPEMagnitudeWrapperAttrSourceType
---@field PEMagnitudeWrapperAttrSourceType_Causer number @Causer
---@field PEMagnitudeWrapperAttrSourceType_Target number @Target
EPEMagnitudeWrapperAttrSourceType = {}


---@class EPEAttachScaleRule
---@field PEAttachScaleRule_KeepRelative number @保持相对缩放
---@field PEAttachScaleRule_KeepSelf number @保持原始缩放
EPEAttachScaleRule = {}


---@class EPESkillUISlotMapping
---@field EPESkillUISlotMapping_None number
---@field EPESkillUISlotMapping_Jump number
---@field EPESkillUISlotMapping_Crouch number
---@field EPESkillUISlotMapping_Prone number
---@field EPESkillUISlotMapping_Reload number
---@field EPESkillUISlotMapping_Aim number
---@field EPESkillUISlotMapping_FireR number
---@field EPESkillUISlotMapping_FireL number
---@field EPESkillUISlotMapping_FireBoth number
EPESkillUISlotMapping = {}


---@class FPESkillAttributeModifyMethod
---@field FPESkillAttributeModifyMethod_Temporarily number @临时修改
---@field FPESkillAttributeModifyMethod_Forever number @永久修改
---@field FPESkillAttributeModifyMethod_Continuous number @持续修改
FPESkillAttributeModifyMethod = {}


---@class EPESkillChargeState
---@field PE_Charge_Failed number @蓄力失败
---@field PE_Charge_Succ number @蓄力成功
---@field PE_Charge_Full number @蓄力满蓄
---@field PE_Charge_Max number @蓄力最大
EPESkillChargeState = {}


---被动技能在状态栏显示类型
---@class EPEPassiveSkillDisplayType
---@field PEPassiveSkillDisplayType_Hidden number @//*UGC* 不在状态栏显示
---@field PEPassiveSkillDisplayType_AlwaysShow number @//*UGC* 生效时持续显示在状态栏
---@field PEPassiveSkillDisplayType_ShowWhenActive number @//*UGC* 激活状态时显示在状态栏
---@field PEPassiveSkillDisplayType_ShowOnTrigger number @//*UGC* 激活时在状态栏显示，每次激活层数+1
EPEPassiveSkillDisplayType = {}


---@class EPEPassiveSkillTagsMatchType
---@field EPEPassiveSkillTagsMatchType_And number @所有Tags必须满足
---@field EPEPassiveSkillTagsMatchType_Or number @任一Tag满足即可
EPEPassiveSkillTagsMatchType = {}


---@class EPEPassiveSkillMergeType
---@field EPEPassiveSkillMergeType_TheOne number @唯一
---@field EPEPassiveSkillMergeType_NoMerge number @共存
EPEPassiveSkillMergeType = {}


---@class EPESkillMergeBehaviorType
---@field EPESkillMergeBehavior_Stack number @堆叠
---@field EPESkillMergeBehavior_AddDuration number @追加时长
---@field EPESkillMergeBehavior_RefreshDuration number @刷新时长
EPESkillMergeBehaviorType = {}


---@class EDirection8
---@field Center number @Center
---@field F number @Front
---@field RF number @RightFront
---@field R number @Right
---@field RB number @RightBottom
---@field B number @Bottom
---@field LB number @LeftBottom
---@field L number @Left
---@field LF number @LeftFront
EDirection8 = {}


---技能UI信息
---@class FPESkillUIInfo
---@field SkillName string @技能名字
---@field OverwriteSkillName string @覆盖的技能名字，该字段不为空时UI优先显示覆盖的技能名字
---@field SkillDetail string @技能描述
---@field OverwriteSkillDetail string @覆盖的技能描述，该字段不为空时UI优先显示覆盖的技能描述
---@field SkillIcon FSoftObjectPath @技能图标
---@field OverwriteSkillIcon FSoftObjectPath @覆盖的技能图标，该字段不为空时UI优先显示覆盖的技能图标
---@field bUseSkillUISlot boolean @是否使用技能预设UI槽位，勾了这个选项的话，则会走createui的逻辑注册到技能槽位上，否则走技能UI绑定技能槽位获取技能的逻辑
---@field PESkillUIAsset FSoftClassPath @默认技能UI
---@field SkillUISlot FGameplayTag @预设技能UI插槽
FPESkillUIInfo = {}


---消耗物品信息
---@class FPESkillConsumeItem
---@field ItemID number @消耗物品ID
---@field ItemNum number @消耗物品数量
FPESkillConsumeItem = {}


---数值Wrapper
---@class FGameMagnitudeWrapper
---@field CalculatorType EPESkillValueCalculatorType @数值计算方式
---@field Value number @数值
---@field GameAttribute FGameAttributeContainer @要使用的属性名
---@field ValueA FFloatGetter @公式参数A
---@field ValueB FFloatGetter @公式参数B
---@field TriggerFunction FBindFunctionSelector
FGameMagnitudeWrapper = {}


---数值Wrapper
---@class FAttrPercentComparer
---@field GameAttributeB FGameAttributeContainer
---@field CompareOperation ECompareOperation
---@field CompareValue FFloatGetter
---@field GameAttributeA FGameAttributeContainer
FAttrPercentComparer = {}


---属性修改信息数组
---@class FPESkillAttributeItem
---@field Method FPESkillAttributeModifyMethod @修改方式
---@field OptionalModifyItemNameID string
---@field GameAttribute FGameAttributeContainer @要修改的属性名
---@field ModifierOp EAttrOperator @属性修改操作类型
---@field ModifierOp_DoChange EAttrOperator_DoChange @属性修改操作类型
---@field ModifierValueWrapper FGameMagnitudeWrapper @操作数值
---@field bModifyForever boolean @是否为永久修改（属性修改结束时不还原属性） deprecated from GC033 ！！！
---@field DataVersion number
---@field bRepAttrModify boolean
FPESkillAttributeItem = {}


---FPESkillAttributeItem 数组的包装结构体 用于支持从 TArray<FAttrModifyItemSimple> 到 TArray<FPESkillAttributeItem> 的数据迁移 通过 SerializeFromMismatchedTag 机制在结构体层面处理类型转换
---@class FPESkillAttributeItemArray
---@field Items ULuaArrayHelper<FPESkillAttributeItem>
FPESkillAttributeItemArray = {}


---技能属性消耗
---@class FPESkillConsumeAttribute
---@field GameAttribute FGameAttributeContainer @要消耗的属性名
---@field ConsumeValue number @消耗的数值
FPESkillConsumeAttribute = {}


---@class FPEAttrCompareItem
---@field GameAttribute FGameAttributeContainer
---@field CompareOperation ECompareOperation
---@field CompareValueWrapper FGameMagnitudeWrapper
---@field bComparedByPercent boolean
FPEAttrCompareItem = {}


---技能消耗
---@class FPESkillConsume
---@field ConsumeAttrItems ULuaArrayHelper<FPESkillConsumeAttribute> @技能消耗数值Array
---@field ConsumeItems ULuaArrayHelper<FPESkillConsumeItem> @技能消耗物品Array
FPESkillConsume = {}


---@class FPESkillPickerInfo
---@field ConsumeAttrItems ULuaArrayHelper<FPESkillAttributeItem>
---@field ConsumeItems ULuaArrayHelper<FPESkillConsumeItem>
FPESkillPickerInfo = {}


---@class FAttrExpressionEvaluator
---@field AttrFormula string
---@field bIsFormulaValid boolean
---@field ModifierOp EAttrOperator
---@field ModifierOpStr string
---@field ModifyAttr string
---@field ModifyValueOrigin number
---@field ModifyValue number
---@field CachedModifyID string
FAttrExpressionEvaluator = {}


---@class FPEPawnAnimData
---@field AnimSlot FGameplayTag
FPEPawnAnimData = {}


---@class UAttrModifyDynamicDataHandler_GameMagnitudeWrapper: UAttrModifyDynamicDataHandler
---@field InnerAttributeItem FPESkillAttributeItem
---@field RelatedAttrChangedDelegate FOnAttrValueChangedDynamicDelegate
local UAttrModifyDynamicDataHandler_GameMagnitudeWrapper = {}

---@param ChangedAttrName string
---@param ChangedAttrValue number
function UAttrModifyDynamicDataHandler_GameMagnitudeWrapper:OnEvent_RelatedAttrValueChange(ChangedAttrName, ChangedAttrValue) end
