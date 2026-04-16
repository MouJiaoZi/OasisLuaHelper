---@meta

---@class EVenomArmState
---@field Arm_None number
---@field Arm_Stretch number
---@field Arm_Delay number
---@field Arm_Shrink number
EVenomArmState = {}


---@class AVenomFlyActor: AActor, IUAESkillInterface
---@field PickedLocationKeyName string
---@field PickLocationResultKeyName string
---@field HitActorMaxMoveDistLimit number
---@field ParticleAttachedPointName string
---@field StretchArmTime number
---@field bWhetherShrinkArm boolean
---@field ShrinkArmDelay number
---@field ShrinkArmTime number
---@field bStopUseControllerRotationYaw boolean
---@field bWaistFollowingController boolean
---@field MaxDeltaYawBetweenControlAndActor number
---@field CurrentSkillGUID number
local AVenomFlyActor = {}

---@param SkillID number
---@param EventType UTSkillEventType
function AVenomFlyActor:TriggerEvent(SkillID, EventType) end

---@param SkillID number
function AVenomFlyActor:HandleSkillStart(SkillID) end

---@param SkillID number
---@param Reason UTSkillStopReason
function AVenomFlyActor:HandleSkillEnd(SkillID, Reason) end

---@param EventType EUAESkillEvent
function AVenomFlyActor:TriggerCustomEvent(EventType) end

---@param EntryEvent EUTSkillEntry
---@return boolean
function AVenomFlyActor:TriggerEntryEvent(EntryEvent) end
