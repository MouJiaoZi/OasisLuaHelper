---@meta

---@class UCampModeComp: UCampModeCompBase
local UCampModeComp = {}

function UCampModeComp:Init() end

---@param PC APlayerController
function UCampModeComp:PlayerLogin(PC) end

---@param PC APlayerController
function UCampModeComp:PlayerLogout(PC) end

---@param KillerPlayerKey number
---@param KilledPlayerKey number
function UCampModeComp:UpdatePlayerKilled(KillerPlayerKey, KilledPlayerKey) end

---@param PlayerKey number
function UCampModeComp:EnterSpectator(PlayerKey) end

---@param PlayerKey number
function UCampModeComp:LeaveSpectator(PlayerKey) end

---@param PC ASTExtraPlayerController
function UCampModeComp:SetPCInfoOnLogin(PC) end
