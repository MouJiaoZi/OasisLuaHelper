---@meta

---@class EDistributionVectorLockFlags
---@field EDVLF_None number @None
---@field EDVLF_XY number @XY
---@field EDVLF_XZ number @XZ
---@field EDVLF_YZ number @YZ
---@field EDVLF_XYZ number @XYZ
---@field EDVLF_MAX number
EDistributionVectorLockFlags = {}


---@class EDistributionVectorMirrorFlags
---@field EDVMF_Same number @Same
---@field EDVMF_Different number @Different
---@field EDVMF_Mirror number @Mirror
---@field EDVMF_MAX number
EDistributionVectorMirrorFlags = {}


---@class FVectorDistribution
---@field Table FDistributionLookupTable
FVectorDistribution = {}


---@class FVector4Distribution
---@field Table FDistributionLookupTable
FVector4Distribution = {}


---@class FRawDistributionVector
---@field MinValue number
---@field MaxValue number
---@field MinValueVec FVector
---@field MaxValueVec FVector
FRawDistributionVector = {}


---@class UDistributionVector: UDistribution
---@field bCanBeBaked number @Can this variable be baked out to a FRawDistribution? Should be true 99% of the time
---@field bIsDirty number @Set internally when the distribution is updated so that that FRawDistribution can know to update itself
---@field bBakedDataSuccesfully number
local UDistributionVector = {}
