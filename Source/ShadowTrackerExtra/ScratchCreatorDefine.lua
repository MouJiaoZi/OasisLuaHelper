---@meta

---@class FScratchDecalTrackConfig
---@field StartRegionType EScratchDecalStartRegionType
---@field StartToCenterDistance number
---@field TotalTrackLength number
---@field AngleWithAxisX number
FScratchDecalTrackConfig = {}


---@class FScratchHitResultArray
---@field HitResultArray ULuaArrayHelper<FHitResult>
FScratchHitResultArray = {}


---@class FScratchInfo
---@field Size number
---@field RandomSizeRange FVector2D
---@field LerpStep number
---@field Duration number
---@field bAutoAdjustSize boolean
---@field MaxCount number
FScratchInfo = {}


---@class FScratchSetting
---@field MaxTimeWait number
---@field MaxDistanceWait number
---@field ScratchInfo FScratchInfo
FScratchSetting = {}


---@class FScratchRuntimeCache
---@field SpawnTime number
---@field LatestTime number
---@field HitterPosition FVector
---@field ScratchPoints ULuaArrayHelper<FVector>
---@field ScratchDecals ULuaArrayHelper<UDecalComponent>
---@field ScratchSetting FScratchSetting
FScratchRuntimeCache = {}
