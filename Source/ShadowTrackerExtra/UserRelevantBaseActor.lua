---@meta

---@class AUserRelevantBaseActor: AActor
---@field PCList ULuaArrayHelper<APlayerController>
local AUserRelevantBaseActor = {}

---@param PC APlayerController
function AUserRelevantBaseActor:AddPC(PC) end

---@param PC APlayerController
function AUserRelevantBaseActor:DelPC(PC) end
