---@meta

---@class EPESkillEventInputType
---@field EPESkillEventInputType_Click number @//*UGC* 点击
---@field EPESkillEventInputType_Press number @//*UGC* 按下
---@field EPESkillEventInputType_Release number @//*UGC* 抬起
---@field EPESkillEventInputType_LongPress number @//*UGC* 长按
EPESkillEventInputType = {}


---@class EPESkillEventLongPressType
---@field EPESkillEventLongPressType_Continuous number @//*UGC* 持续检测
---@field EPESkillEventInputType_Release number @//*UGC* 抬起时检测
EPESkillEventLongPressType = {}


---@class UPESkillEvent_Input: UPESkillEventBase
---@field InputType EPESkillEventInputType
---@field LongPressType EPESkillEventLongPressType
---@field LongPressTime number
---@field PressTime FFloatSetter
local UPESkillEvent_Input = {}

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillEvent_Input:OnServerInputEventTriggered(EventType, TimeStamp) end
