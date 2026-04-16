---@meta

---@class FFloatDistribution
---@field Table FDistributionLookupTable
FFloatDistribution = {}


---@class FRawDistributionFloat
---@field MinValue number
---@field MaxValue number
FRawDistributionFloat = {}


---@class UDistributionFloat: UDistribution
---@field bCanBeBaked number @Can this variable be baked out to a FRawDistribution? Should be true 99% of the time
---@field bBakedDataSuccesfully number
local UDistributionFloat = {}
