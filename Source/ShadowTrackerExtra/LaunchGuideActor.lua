---@meta

---@class ALaunchGuideActor: AUAERegionActor, IUAESkillInterface
---@field PickedLocationKeyName string
---@field HitActorMaxMoveDistLimit number
---@field bStopUseControllerRotationYaw boolean
---@field bWaistFollowingController boolean
---@field MaxDeltaYawBetweenControlAndActor number
---@field CurrentSkillGUID number
local ALaunchGuideActor = {}

---@param SkillID number
---@param EventType UTSkillEventType
function ALaunchGuideActor:TriggerEvent(SkillID, EventType) end

---@param SkillID number
function ALaunchGuideActor:HandleSkillStart(SkillID) end

---@param SkillID number
---@param Reason UTSkillStopReason
function ALaunchGuideActor:HandleSkillEnd(SkillID, Reason) end

---@param EventType EUAESkillEvent
function ALaunchGuideActor:TriggerCustomEvent(EventType) end

---@param EntryEvent EUTSkillEntry
---@return boolean
function ALaunchGuideActor:TriggerEntryEvent(EntryEvent) end
