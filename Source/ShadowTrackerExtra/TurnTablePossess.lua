---@meta

---@class ATurnTablePossess: AActivityBaseActor
---@field RotateSpeed number
---@field MatchEPS number
---@field ClientSmoothMatchEPS number
---@field RotateRate number
---@field bEndGame boolean
---@field CacheTargetQuat FRotator
---@field bLerping boolean
---@field MatchRotation FRotator
local ATurnTablePossess = {}

---@return boolean
function ATurnTablePossess:IsMatch() end

function ATurnTablePossess:CacheMatchRotation() end
