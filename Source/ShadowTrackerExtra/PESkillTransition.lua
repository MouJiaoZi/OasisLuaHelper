---@meta

---@class EPETransitionType
---@field Unknown number
---@field StateToState number
---@field EventToState number
---@field StateToAction number
---@field EventToAction number
EPETransitionType = {}


---@class FPESkillTransitionEntryPin
---@field PinStateName string
---@field PinEventsName ULuaArrayHelper<string>
FPESkillTransitionEntryPin = {}


---@class FPESkillTransitionExitPin
---@field PinStateName string
---@field bSkillExit boolean
---@field PinActionGroupName string
FPESkillTransitionExitPin = {}


---@class FPESkillTransitionConditionItem
---@field Conditions ULuaArrayHelper<UPESkillConditionBase>
FPESkillTransitionConditionItem = {}


---@class FPESkillTransition
---@field UID string
---@field Entry FPESkillTransitionEntryPin
---@field Exit FPESkillTransitionExitPin
---@field Conditions ULuaArrayHelper<UPESkillConditionBase>
---@field ConditionGroup ULuaArrayHelper<FPESkillTransitionConditionItem>
---@field Priority number
FPESkillTransition = {}
