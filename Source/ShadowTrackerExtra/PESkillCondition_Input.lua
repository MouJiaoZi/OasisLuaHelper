---@meta

---@class EPESkillInputStateType
---@field PESkillInputStateType_Press number @//*UGC* 按下
---@field PESkillInputStateType_Release number @//*UGC* 抬起
---@field PESkillInputStateType_LongPress number @//*UGC* 长按
EPESkillInputStateType = {}


---@class UPESkillCondition_Input: UPESkillConditionBase
---@field InputType EPESkillInputStateType
---@field LongPressedTime number
local UPESkillCondition_Input = {}

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillCondition_Input:OnServerInputEventTriggered(EventType, TimeStamp) end
