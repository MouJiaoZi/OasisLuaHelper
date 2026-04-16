---@meta

---@class UEscapeAIDropManager: UAIDropManager
local UEscapeAIDropManager = {}

function UEscapeAIDropManager:Init() end

function UEscapeAIDropManager:Destroy() end

---@param Result number
---@param IsTriggeredByTimeout boolean
---@param DeliveryAI AFakePlayerAIController
---@param DeliveryTarget ASTExtraPlayerCharacter
function UEscapeAIDropManager:OnAIDeliveryConductedResult(Result, IsTriggeredByTimeout, DeliveryAI, DeliveryTarget) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UEscapeAIDropManager:ReceivedPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param PlayerController ASTExtraPlayerController
---@param Reason EESPlayerSettleReason
function UEscapeAIDropManager:ReceivedPlayerEscapedSettle(PlayerController, Reason) end

function UEscapeAIDropManager:RequestEscapeWarmAIDrop() end
