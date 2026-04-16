---@meta

---该类用于处理技能触发器中的属性变化事件。
---@class UPESkillEvent_Attribute: UPESkillEventBase
---@field AttrValueChangedDelegate FOnAttrValueChangedDynamicDelegate
---@field GameAttribute FGameAttributeContainer @指定监听的属性容器，用于存储监听的属性信息。
---@field CurrentValue FFloatSetter
local UPESkillEvent_Attribute = {}

---@param AttrName string
---@param fCurValue number
function UPESkillEvent_Attribute:OnAttributeChangedDelegates(AttrName, fCurValue) end

---当监听的属性发生变化时，调用此函数。
---@param AttrName string
---@param fCurValue number
function UPESkillEvent_Attribute:OnAttribueChange(AttrName, fCurValue) end
