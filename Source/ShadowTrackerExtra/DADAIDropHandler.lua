---@meta

---@class UDADAIDropHandler: UObject
local UDADAIDropHandler = {}

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UDADAIDropHandler:ReceivedPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
---@param bIsAI boolean
function UDADAIDropHandler:ReceivedPlayerRespawn(PlayerKey, bIsAI) end

---@param Result number
---@param IsTriggeredByTimeout boolean
---@param DeliveryAI AFakePlayerAIController
---@param DeliveryTarget ASTExtraPlayerCharacter
function UDADAIDropHandler:OnAIDeliveryConductedResult(Result, IsTriggeredByTimeout, DeliveryAI, DeliveryTarget) end

---@param PlayerController ASTExtraPlayerController
---@param Reason number
function UDADAIDropHandler:ReceivedPlayerEscapedSettle(PlayerController, Reason) end

---@param AIC AFakePlayerAIController
---@param Target ASTExtraPlayerCharacter
function UDADAIDropHandler:SetAIDeliverTarget(AIC, Target) end

---@param OutPlayerCharacters ULuaArrayHelper<ASTExtraPlayerCharacter>
function UDADAIDropHandler:GetAllPlayerCharacters(OutPlayerCharacters) end

---@param OutAICs ULuaArrayHelper<AFakePlayerAIController>
function UDADAIDropHandler:GetAllAICS(OutAICs) end

---@param PlayerKey number
---@param OutAICs ULuaArrayHelper<AFakePlayerAIController>
function UDADAIDropHandler:GetPlayerAssociatedAIC(PlayerKey, OutAICs) end
