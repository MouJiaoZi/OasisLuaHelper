---@meta

---@class FRecentFlyDirTrend
---@field Direction FVector2D
---@field PersistTime FVector2D
---@field ActiveDirCnt number
FRecentFlyDirTrend = {}


---@class URocketBoyFlyAnimInstance: USubAnimInstance_Event
---@field bEnableVelocityBlend boolean
---@field BlendSpeedToMax number
---@field SaveDirFrameCnt number
---@field CurrentVelocityBlend ULuaArrayHelper<number>
---@field AnimMaxVelocityBlend ULuaArrayHelper<number>
---@field AnimCenterVelocityBlend ULuaArrayHelper<number>
---@field RecentFlyDirTrend FRecentFlyDirTrend
local URocketBoyFlyAnimInstance = {}

---@param DeltaSeconds number
---@param Index number
---@param OutVelocityBlend number
---@param OutAnimAlpha number
function URocketBoyFlyAnimInstance:BPCalcAttenuationData(DeltaSeconds, Index, OutVelocityBlend, OutAnimAlpha) end

---@param DeltaSeconds number
function URocketBoyFlyAnimInstance:OnUpdateAnimTransition(DeltaSeconds) end
