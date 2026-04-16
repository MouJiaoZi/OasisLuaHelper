---@meta

---@class UDADAIDropManager: UAIDropManager
local UDADAIDropManager = {}

function UDADAIDropManager:Init() end

function UDADAIDropManager:Destroy() end

---@param Result number
---@param IsTriggeredByTimeout boolean
---@param DeliveryAI AFakePlayerAIController
---@param DeliveryTarget ASTExtraPlayerCharacter
function UDADAIDropManager:OnAIDeliveryConductedResult(Result, IsTriggeredByTimeout, DeliveryAI, DeliveryTarget) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UDADAIDropManager:ReceivedPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param PlayerKey number
---@param bIsAI boolean
function UDADAIDropManager:ReceivedPlayerRespawn(PlayerKey, bIsAI) end

---@param PlayerController ASTExtraPlayerController
---@param Reason EESPlayerSettleReason
function UDADAIDropManager:ReceivedPlayerEscapedSettle(PlayerController, Reason) end
