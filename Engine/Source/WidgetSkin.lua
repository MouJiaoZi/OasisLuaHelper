---@meta

---@class UWidgetSkin: UObject
---@field BasicUserWidget UUserWidget
---@field bNeedRevertSkin boolean
---@field ParentMatchingKey number
---@field LuaModulePath string
---@field bAutoLoadSubDefaultSkin boolean
---@field bAutoReplayAnim boolean
---@field ModifiedProperties FWSPropContext
---@field SkinMountInfos ULuaArrayHelper<FSkinMountInfo>
---@field OriginalPropertiesMap ULuaMapHelper<UWidgetTree, FWSPropContext>
local UWidgetSkin = {}
