---@meta

---@class EUGCMapMarkShortcutActionType
---@field None number @无行为
---@field Teleport number @传送
---@field MoveTo number
---@field Custom number @自定义
EUGCMapMarkShortcutActionType = {}


---@class FUGCMinimapConfigInfo
---@field MapID number
---@field MinimapZoomRatio number
---@field MapCenter FVector
---@field MapSize FVector2D
---@field MapImagePath FSoftObjectPath
---@field bEnableFog boolean
---@field bEnableTeamShared boolean
---@field DisappearSeconds number
---@field ExploreRadius number
FUGCMinimapConfigInfo = {}


---@class FUGCMapMarkConfigInfo
---@field Icon UObject
---@field Priority number
---@field MaxVisibleCount number
---@field bIsDynamic boolean
---@field bMatchChildClass boolean
---@field bIsAlwaysVisible boolean
---@field bEnableDetailsView boolean
---@field FrameColor FLinearColor
---@field DetailImage UObject
---@field Title string
---@field Desc string
---@field ActionType EUGCMapMarkShortcutActionType
---@field ShortcutCustomName string
---@field UIBPSrcID number
---@field bIsVisibleChecked boolean
FUGCMapMarkConfigInfo = {}


---@class UUGCMinimapGamePartConfig: UUGCGamePartConfig
---@field DefaultMapID number
---@field MarkVisibleMaxCount number
---@field MarkVisibleRadius number
---@field MinimapConfigInfos ULuaArrayHelper<FUGCMinimapConfigInfo>
---@field MapMarkConfigInfos ULuaMapHelper<AActor, FUGCMapMarkConfigInfo>
local UUGCMinimapGamePartConfig = {}
