---@meta

---@class APressTarget: AUAERegionActor
---@field BisTakeDamage boolean
---@field CurShootID number
---@field HitNum number
---@field TakeDamageTime number
---@field LastHitTimeSec number
---@field ServerHitIntervalTime number
---@field BeginFireTime number
---@field EndFireTime number
---@field HitRateTimer FTimerHandle
---@field UpdateHitRateFreq number
local APressTarget = {}

---@param HitPoint FVector
function APressTarget:BPTakeDamage(HitPoint) end

function APressTarget:ClearHitNum() end

---@param HitRate number
function APressTarget:UpdateHitRate(HitRate) end

---@param _HitNum number
---@param _FireNum number
function APressTarget:ProcessHitRate(_HitNum, _FireNum) end

function APressTarget:BeginHitRateTimer() end

function APressTarget:TimerUpdateHitRate() end
