---@meta

---@class UBotRPC: UObject, ILuaInterface
---@field MaxRetryTimes number
---@field RequestTimeout number
---@field bSocketInit boolean
local UBotRPC = {}

---@param DeltaTime number
function UBotRPC:Tick(DeltaTime) end

function UBotRPC:SetSocketInit() end

---@param bReliable boolean
---@return number
function UBotRPC:Request(bReliable) end

---@param RequestID number
---@return number
function UBotRPC:SetResponse(RequestID) end

---@return string
function UBotRPC:GetLuaModule() end

---@param RawRequestID number
---@param RequestID number
function UBotRPC:OnRequestRetry(RawRequestID, RequestID) end

---@param RawRequestID number
function UBotRPC:OnRequestTimeout(RawRequestID) end
