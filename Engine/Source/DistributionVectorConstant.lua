---@meta

---@class UDistributionVectorConstant: UDistributionVector
---@field Constant FVector @This FVector will be returned for all input times.
---@field bLockAxes number @If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
---@field LockedAxes EDistributionVectorLockFlags
local UDistributionVectorConstant = {}
