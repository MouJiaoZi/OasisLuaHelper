---@meta

---@class UCommonSkinRoot: UUserWidget
---@field OnLoadSkinAsync FOnLoadSkinAsync
local UCommonSkinRoot = {}

---@param InWidgetClassPath string
---@return boolean
function UCommonSkinRoot:LoadSkinAsync(InWidgetClassPath) end

---@param InWidgetClassPath string
---@param InOtherPath ULuaArrayHelper<string>
---@return boolean
function UCommonSkinRoot:LoadSkinAsync2(InWidgetClassPath, InOtherPath) end

function UCommonSkinRoot:ClearSkin() end

function UCommonSkinRoot:CancelLoadSkinAsync() end
