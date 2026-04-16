---@meta

---@class ATestRepOnce: AActor
---@field TestRepInterval number
---@field TestRepArrrayCount number
---@field bNeedCheck boolean
---@field bStopChangeVal boolean
---@field bSubToEmpty boolean
---@field bEnable boolean
---@field NormalRepData ULuaArrayHelper<FTestActivityState>
---@field RepOnceData ULuaArrayHelper<FTestActivityState>
---@field TestDataPool ULuaArrayHelper<FTestActivityLink>
local ATestRepOnce = {}

function ATestRepOnce:TestRepOnce() end

function ATestRepOnce:CheckRepData() end

---@return boolean
function ATestRepOnce:IsRepDataSame() end

function ATestRepOnce:OnRep_NormalRepData() end

function ATestRepOnce:OnRep_RepOnceData() end

---@param bStop boolean
function ATestRepOnce:RequestChangeState(bStop) end
