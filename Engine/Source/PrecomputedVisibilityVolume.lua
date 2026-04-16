---@meta

---@class FExtraPVSInfo
---@field ExtraVisibleZone ULuaArrayHelper<FBox>
FExtraPVSInfo = {}


---@class APrecomputedVisibilityVolume: AVolume
---@field bOnlyInteriorComputed boolean
---@field bOnlyUesdInDS boolean
---@field PVSMode EPVSMode
---@field bAutoRCR boolean
---@field AutoRCRMaxSize number
---@field SaveNewFolderName string
local APrecomputedVisibilityVolume = {}


---@class APrecomputedVisibilityItemPoolVolume: AVolume
---@field bExternalVisibility boolean
---@field bGroupOnlyUesdInDS boolean
---@field PVSMode EPVSMode
local APrecomputedVisibilityItemPoolVolume = {}


---@class APrecomputedVisibilityExtraVisibleVolume: AVolume
local APrecomputedVisibilityExtraVisibleVolume = {}


---@class APVSExtraVisibilityActor: AActor
---@field ExtraVisibilityInfo ULuaMapHelper<number, FExtraPVSInfo>
local APVSExtraVisibilityActor = {}
