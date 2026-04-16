---@meta

---@class AAICrossRegionDataMgr: AActor
---@field RegionComps ULuaArrayHelper<UBoxComponent>
local AAICrossRegionDataMgr = {}

---@param LineStart FVector
---@param LineEnd FVector
---@param bTestStartInRegion boolean
---@param bSegment boolean
---@param bNTP boolean
---@return boolean
function AAICrossRegionDataMgr:IsLineCrossRegionX(LineStart, LineEnd, bTestStartInRegion, bSegment, bNTP) end
