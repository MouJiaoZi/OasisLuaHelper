---@meta

---@class UDistributionVectorUniform: UDistributionVector
---@field Max FVector @Upper end of FVector magnitude range.
---@field Min FVector @Lower end of FVector magnitude range.
---@field bLockAxes number @If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
---@field LockedAxes EDistributionVectorLockFlags
---@field bUseExtremes number
local UDistributionVectorUniform = {}
