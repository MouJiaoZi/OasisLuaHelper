---@meta

---ҫ̨
---@class ASceneDisplayDirectorHonour: ASceneDisplayDirectorRep, IRegionObjectInterface
local ASceneDisplayDirectorHonour = {}

function ASceneDisplayDirectorHonour:BP_OnActorChannelOpen() end

---@param InPlayerKey number
---@return FGameModePlayerParams
function ASceneDisplayDirectorHonour:GetGameModePlayerParamsFromPlayerKey(InPlayerKey) end
