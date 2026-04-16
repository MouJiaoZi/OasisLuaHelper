---@meta

---@class UBotLuaAdapter: UObject, ILuaInterface
---@field BotModeComponent UBotModeComponent
local UBotLuaAdapter = {}

---@param InBotModeComponent UBotModeComponent
function UBotLuaAdapter:Init(InBotModeComponent) end

---@return string
function UBotLuaAdapter:GetLuaModule() end

---@param Controller AFakePlayerAIController
function UBotLuaAdapter:OnStopPartnerAI(Controller) end
