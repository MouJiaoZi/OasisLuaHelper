---@meta

---@class ATestLuaRPC: AActor
---@field TestRPCInterval number
---@field TestRPCArrrayCount number
---@field bNeedCheck boolean
---@field bEnableLuaRpcTest boolean
---@field TestRPCData ULuaArrayHelper<FTestActivityState>
---@field TestRPCDataPool ULuaArrayHelper<FTestActivityLink>
local ATestLuaRPC = {}

function ATestLuaRPC:TestLuaRPC() end

function ATestLuaRPC:CheckLuaRPC() end

---@return boolean
function ATestLuaRPC:IsLuaRPCSame() end

---@param Controller AController
---@param Pawn APawn
---@param RPCData ULuaArrayHelper<FTestActivityState>
function ATestLuaRPC:DoCppRPC(Controller, Pawn, RPCData) end

---@param Controller AController
---@param Pawn APawn
---@param RPCData ULuaArrayHelper<FTestActivityState>
function ATestLuaRPC:LuaCppRPC(Controller, Pawn, RPCData) end

---@param Controller AController
---@param Pawn APawn
---@param RPCData ULuaArrayHelper<FTestActivityState>
function ATestLuaRPC:SendLuaRPC(Controller, Pawn, RPCData) end
