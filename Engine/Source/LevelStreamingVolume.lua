---@meta

---Enum for different usage cases of level streaming volumes.
---@class EStreamingVolumeUsage
---@field SVB_Loading number
---@field SVB_LoadingAndVisibility number
---@field SVB_VisibilityBlockingOnLoad number
---@field SVB_BlockingOnLoad number
---@field SVB_LoadingNotVisible number
---@field SVB_MAX number
EStreamingVolumeUsage = {}


---@class ALevelStreamingVolume: AVolume
---@field StreamingLevelNames ULuaArrayHelper<string> @Levels names affected by this level streaming volume.
---@field bEditorPreVisOnly number @If true, this streaming volume should only be used for editor streaming level previs.
---@field bDisabled number @If true, this streaming volume is ignored by the streaming volume code.  Used to either disable a level streaming volume without disassociating it from the level, or to toggle the control of a level's streaming between Kismet and volume streaming.
---@field StreamingUsage EStreamingVolumeUsage @Determines what this volume is used for, e.g. whether to control loading, loading and visibility or just visibilty (blocking on load)
local ALevelStreamingVolume = {}
