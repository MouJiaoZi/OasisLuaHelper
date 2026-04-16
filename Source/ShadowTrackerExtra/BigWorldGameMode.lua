---@meta

---@class ABigWorldGameMode: ABattleRoyalTrainingGameMode
---@field UnoccupiedPlayerStarts ULuaArrayHelper<ASTExtraPlayerStart>
---@field bFindPlayerStartFirstTime boolean
---@field BigWorldCheckAliveCharactersPeriod number
---@field CheckAliveCharactersRetryCount number
---@field CheckAliveCharactersRetryCountExceptionThreshold number
---@field BigWorldDynamicFeatureConfigs ULuaArrayHelper<FDynamicFeatureConfig>
local ABigWorldGameMode = {}

---@param ActivityActorID number
---@return FIDIPActivityActorInfo
function ABigWorldGameMode:GetIDIPStateInfo(ActivityActorID) end

---@param ActivityActorID number
---@return boolean
function ABigWorldGameMode:CheckIDIPStateInfoIsValid(ActivityActorID) end

---@param NewPlayer APlayerController
function ABigWorldGameMode:ReceivePostLogin(NewPlayer) end
