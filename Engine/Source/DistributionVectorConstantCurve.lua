---@meta

---@class UDistributionVectorConstantCurve: UDistributionVector
---@field ConstantCurve FInterpCurveVector @Keyframe data for each component (X,Y,Z) over time.
---@field bLockAxes number @If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
---@field LockedAxes EDistributionVectorLockFlags
local UDistributionVectorConstantCurve = {}
