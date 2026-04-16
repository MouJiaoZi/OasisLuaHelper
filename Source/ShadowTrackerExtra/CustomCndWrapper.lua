---@meta

---@class ECustomCndEventType
---@field OnStartFire number
---@field OnStopFire number
---@field OnFireHitServer number
---@field MaxType number
ECustomCndEventType = {}


---@class FCustomCndIns
FCustomCndIns = {}


---@class UCustomCndWrapper: UObject
---@field Conditions ULuaArrayHelper<FCustomCndIns>
---@field TriggerSkills ULuaArrayHelper<number>
---@field CancelSkills ULuaArrayHelper<EUAESkillEvent>
---@field CancelSkillIndexList ULuaArrayHelper<number>
---@field TriggerBuffs ULuaArrayHelper<number>
---@field TriggerFromClient boolean
---@field EventType ECustomCndEventType
---@field SkillConfigList ULuaArrayHelper<FItemSkillsConfig>
---@field WrapperOwner UObject
---@field bNeedRemoveSkill boolean
local UCustomCndWrapper = {}

---@param Event ECustomCndEventType
function UCustomCndWrapper:OnTriggerEvent(Event) end

---@param Owner UObject
function UCustomCndWrapper:SetWrapperOwner(Owner) end

---@param Event ECustomCndEventType
---@return boolean
function UCustomCndWrapper:IsValidEvent(Event) end
