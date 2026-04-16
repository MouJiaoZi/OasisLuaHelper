---@meta

---Streaming settings.
---@class UStreamingSettings: UDeveloperSettings
---@field AsyncLoadingThreadEnabled number
---@field WarnIfTimeLimitExceeded number
---@field TimeLimitExceededMultiplier number
---@field TimeLimitExceededMinTime number
---@field MinBulkDataSizeForAsyncLoading number
---@field UseBackgroundLevelStreaming number
---@field AsyncLoadingUseFullTimeLimit number @Whether to use the entire time limit even if blocked on I/O
---@field AsyncLoadingTimeLimit number
---@field PriorityAsyncLoadingExtraTime number
---@field LevelStreamingActorsUpdateTimeLimit number @Maximum allowed time to spend for actor registration steps during level streaming (ms per frame)
---@field LevelStreamingComponentsRegistrationGranularity number @Batching granularity used to register actor components during level streaming
---@field LevelStreamingUnregisterComponentsTimeLimit number @Maximum allowed time to spend while unregistering components during level streaming (ms per frame)
---@field LevelStreamingComponentsUnregistrationGranularity number @Batching granularity used to unregister actor components during level streaming
---@field EventDrivenLoaderEnabled number
local UStreamingSettings = {}


---Implements the settings for garbage collection.
---@class UGarbageCollectionSettings: UDeveloperSettings
---@field TimeBetweenPurgingPendingKillObjects number
---@field FlushStreamingOnGC number
---@field AllowParallelGC number
---@field IncrementalBeginDestroyEnabled number
---@field CreateGCClusters number
---@field ForbidCDOBeInCluster number
---@field MergeGCClusters number
---@field ActorClusteringEnabled number
---@field BlueprintClusteringEnabled number
---@field UseDisregardForGCOnDedicatedServers number
---@field NumRetriesBeforeForcingGC number
---@field MinActorNumForActorCluster number
---@field MaxObjectsNotConsideredByGC number
---@field SizeOfPermanentObjectPool number
---@field MaxObjectsInGame number
---@field MaxObjectsInEditor number
local UGarbageCollectionSettings = {}
