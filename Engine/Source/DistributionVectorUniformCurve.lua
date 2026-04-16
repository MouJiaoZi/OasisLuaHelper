---@meta

---@class UDistributionVectorUniformCurve: UDistributionVector
---@field ConstantCurve FInterpCurveTwoVectors @Keyframe data for how output constant varies over time.
---@field bLockAxes1 number @If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently.
---@field bLockAxes2 number
---@field bUseExtremes number
local UDistributionVectorUniformCurve = {}
