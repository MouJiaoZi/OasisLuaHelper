---@meta

---@class FLevelStreamingLoadedStatus : ULuaSingleDelegate
FLevelStreamingLoadedStatus = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLevelStreamingLoadedStatus:Bind(Callback, Obj) end

---执行委托
function FLevelStreamingLoadedStatus:Execute() end


---@class FLevelStreamingVisibilityStatus : ULuaSingleDelegate
FLevelStreamingVisibilityStatus = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLevelStreamingVisibilityStatus:Bind(Callback, Obj) end

---执行委托
function FLevelStreamingVisibilityStatus:Execute() end


---Abstract base class of container object encapsulating data required for streaming and providing interface for when a level should be streamed in and out of memory.
---@class ULevelStreaming: UObject
---@field PackageName_DEPRECATED string @Deprecated name of the package containing the level to load. Use GetWorldAsset() or GetWorldAssetPackageFName() instead.
---@field WorldAsset UWorld @The reference to the world containing the level to load
---@field PackageNameToLoad string @If this isn't Name_None, then we load from this package on disk to the new package named PackageName
---@field LODPackageNames ULuaArrayHelper<string> @LOD versions of this level
---@field LevelTransform FTransform @Transform applied to actors after loading.
---@field bShouldBeVisibleInEditor number @Whether this level should be visible in the Editor
---@field bLocked number @Whether this level is locked; that is, its actors are read-only.
---@field bShouldBeLoaded number @Whether the level should be loaded
---@field bShouldBeVisible number @Whether the level should be visible if it is loaded
---@field bIsStatic number @Whether this level only contains static actors that aren't affected by gameplay or replication. If true, the engine can make certain optimizations and will add this level to the StaticLevels collection.
---@field bShouldBlockOnLoad number @Whether we want to force a blocking load
---@field LevelLODIndex number @Requested LOD. Non LOD sub-levels have Index = -1
---@field bDisableDistanceStreaming number @Whether this level streaming object should be ignored by world composition distance streaming, so streaming state can be controlled by other systems (ex: in blueprints)
---@field bDrawOnLevelStatusMap number @If true, will be drawn on the 'level streaming status' map (STAT LEVELMAP console command)
---@field DrawColor_DEPRECATED FColor @Deprecated level color used for visualization.
---@field LevelColor FLinearColor @The level color used for visualization. (Show -> Advanced -> Level Coloration)
---@field EditorStreamingVolumes ULuaArrayHelper<ALevelStreamingVolume> @The level streaming volumes bound to this level.
---@field MinTimeBetweenVolumeUnloadRequests number @Cooldown time in seconds between volume-based unload requests.  Used in preventing spurious unload requests.
---@field Keywords ULuaArrayHelper<string> @List of keywords to filter on in the level browser
---@field OnLevelLoaded FLevelStreamingLoadedStatus @Called when level is streamed in
---@field OnLevelUnloaded FLevelStreamingLoadedStatus @Called when level is streamed out
---@field OnLevelShown FLevelStreamingVisibilityStatus @Called when level is added to the world
---@field OnLevelHidden FLevelStreamingVisibilityStatus @Called when level is removed from the world
---@field UnloadingLevels ULuaArrayHelper<ULevel> @Array to save unloading levels.
local ULevelStreaming = {}

---Gets the package name for the world asset referred to by this level streaming as an FName
---@return string
function ULevelStreaming:GetWorldAssetPackageFName() end

---Returns whether streaming level is visible
---@return boolean
function ULevelStreaming:IsLevelVisible() end

---Returns whether level has streaming state change pending
---@return boolean
function ULevelStreaming:IsStreamingStatePending() end
