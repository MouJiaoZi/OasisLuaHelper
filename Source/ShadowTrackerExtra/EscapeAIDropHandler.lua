---@meta

---@class UEscapeAIDropHandler: UObject
local UEscapeAIDropHandler = {}

---@param DeltaTime number
function UEscapeAIDropHandler:Tick(DeltaTime) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UEscapeAIDropHandler:ReceivedPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param PlayerController ASTExtraPlayerController
---@param Reason number
function UEscapeAIDropHandler:ReceivedPlayerEscapedSettle(PlayerController, Reason) end

---@param Result number
---@param IsTriggeredByTimeout boolean
---@param DeliveryAI AFakePlayerAIController
---@param DeliveryTarget ASTExtraPlayerCharacter
function UEscapeAIDropHandler:OnAIDeliveryConductedResult(Result, IsTriggeredByTimeout, DeliveryAI, DeliveryTarget) end

---@param OutPlayerCharacters ULuaArrayHelper<ASTExtraPlayerCharacter>
function UEscapeAIDropHandler:GetAllPlayerCharacters(OutPlayerCharacters) end

---@param OutAICs ULuaArrayHelper<AFakePlayerAIController>
function UEscapeAIDropHandler:GetAllAICS(OutAICs) end
