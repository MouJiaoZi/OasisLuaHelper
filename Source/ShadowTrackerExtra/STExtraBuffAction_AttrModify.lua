---@meta

---@class FSTExtraBuffAction_AttrModifyExtendStruct
---@field EnabledAttrModifyItemIDList ULuaArrayHelper<string>
FSTExtraBuffAction_AttrModifyExtendStruct = {}


---BuffAction修改器参数接口
---@class IBuffActionAttrModifyInterface
IBuffActionAttrModifyInterface = {}

---@param LayerCount number
---@param OutAttrModifyItemList ULuaArrayHelper<FAttrModifyItem>
---@param BuffAction USTExtraBuffAction
function IBuffActionAttrModifyInterface:GetAttrModifyItemListByBuffLayerCount(LayerCount, OutAttrModifyItemList, BuffAction) end


---修改角色属性的具体行为 * @AI_Role: 这是一个具体的逻辑单元，用于修改角色的数值属性（如生命值、攻击力、移动速度）。 * @AI_Usage: 1. 当用户提到 "增加/减少属性"、"提升百分比"、"回血/扣血" 时，请选择此类。 2. 必须填充 AttrModifier, AuthorityOnly 两个字段。 * @AI_Tags: 属性, 数值, 攻击力, 防御力, 速度, 血量, 魔法, 修改, 增加, 减少, 百分比, Attribute, Stat, Modify, Change, Increase, Decrease, Buff, Debuff, Health, Mana, Speed
---@class USTExtraBuffAction_AttrModify: UUAESkillActionBP
---@field AuthorityOnly boolean
---@field AttrModifier FAttrModifyItem
---@field bResetRemove boolean
---@field bAutoRemove boolean
---@field PawnStateListDisableModify ULuaArrayHelper<EPawnState>
---@field bRemoveBeforeAdd boolean
---@field bUseDynamicModifierValue boolean
---@field DynamicModifierValue number
---@field DynamicModifierValueGetter FUTFloatPropertyGetter
local USTExtraBuffAction_AttrModify = {}


---@class USTExtraBuffAction_AttrModifyExtend: USTExtraBuffAction
---@field AuthorityOnly boolean
---@field BuffSourceKey FUAEBlackboardKeySelector
---@field bAutoRemove boolean
local USTExtraBuffAction_AttrModifyExtend = {}
