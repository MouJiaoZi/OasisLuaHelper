---@meta

---@class FCustomCullingSimpleBox
---@field Bound FBox
---@field bFlipVisibility boolean
FCustomCullingSimpleBox = {}


---@class FCustomCullingOrientedBox
---@field RoughBox FBox @Rough Test
---@field OrientedBound FOrientedBox
---@field bFlipVisibility boolean
FCustomCullingOrientedBox = {}


---@class FCustomCullingGroup
---@field ActiveZones ULuaArrayHelper<FCustomCullingSimpleBox>
---@field VisibleZones ULuaArrayHelper<FCustomCullingSimpleBox>
---@field OrientedActiveZone ULuaArrayHelper<FCustomCullingOrientedBox>
---@field OrientedVisibleZone ULuaArrayHelper<FCustomCullingOrientedBox>
---@field bActive boolean
FCustomCullingGroup = {}


---@class FCustomCullingBoxData
---@field CullingGroups ULuaArrayHelper<FCustomCullingGroup>
FCustomCullingBoxData = {}
