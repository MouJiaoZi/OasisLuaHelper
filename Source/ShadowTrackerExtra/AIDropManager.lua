---@meta

---@class UAIDropManager: UObject
---@field RequestAIDropInfoLeftTime number
local UAIDropManager = {}

function UAIDropManager:Init() end

function UAIDropManager:Destroy() end

---@param DeltaTime number
function UAIDropManager:Tick(DeltaTime) end

---@param Result number
---@param IsTriggeredByTimeout boolean
---@param DeliveryAI AFakePlayerAIController
---@param DeliveryTarget ASTExtraPlayerCharacter
function UAIDropManager:OnAIDeliveryConductedResult(Result, IsTriggeredByTimeout, DeliveryAI, DeliveryTarget) end

function UAIDropManager:RequestAIDropInfo() end
