---@meta

---@class IMonsterFreezeInterface
IMonsterFreezeInterface = {}

function IMonsterFreezeInterface:StartCustomFreeze() end

function IMonsterFreezeInterface:StopCustomFreeze() end

---@return boolean
function IMonsterFreezeInterface:IsCanFreeze() end
