---@meta

---@class APeacefullZoneVolume: ATriggerSphere
---@field PlayersInVolume ULuaArrayHelper<AActor>
---@field IgnoreCharacterClass ULuaArrayHelper<ASTExtraCharacter>
---@field EnterMsgID number
---@field LeaveMsgID number
---@field IsInvincible boolean
---@field CheckLeaveOutTime number
---@field CheckLeaveOutDistanceScale number
---@field LifeTime number
local APeacefullZoneVolume = {}

---Called when OnActorBeginOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function APeacefullZoneVolume:OnTriggerEnter(OverlappedActor, Other) end

---Called when OnActorEndOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function APeacefullZoneVolume:OnTriggerExit(OverlappedActor, Other) end

---@param InPlayerKey number
---@return boolean
function APeacefullZoneVolume:IsPlayerInVolume(InPlayerKey) end

function APeacefullZoneVolume:CheckLeaveOutPlayer() end
