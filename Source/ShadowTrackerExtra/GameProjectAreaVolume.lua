---@meta

---@class AGameProjectAreaVolume: ATriggerBox
---@field AreaID number
local AGameProjectAreaVolume = {}

---Called when OnActorBeginOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function AGameProjectAreaVolume:OnTriggerEnter(OverlappedActor, Other) end

---Called when OnActorEndOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function AGameProjectAreaVolume:OnTriggerExit(OverlappedActor, Other) end

---@param InPlayerKey number
---@param InAreaID number
---@return boolean
function AGameProjectAreaVolume:IsPlayerInVolume(InPlayerKey, InAreaID) end

---@param PC APlayerController
function AGameProjectAreaVolume:OnPlayerEnterGameProjectArea(PC) end

---@param PC APlayerController
function AGameProjectAreaVolume:OnPlayerLeaveGameProjectArea(PC) end
