---@meta

---The user widget proxy, using this proxy to activate widget skin for an user widget.
---@class UWidgetSkinProxy: UObject, IWidgetSkinProxyInterface
---@field bHideBeforeLoadSkin boolean
---@field ActiveSkins ULuaArrayHelper<UUserWidgetSkin>
local UWidgetSkinProxy = {}

---@param SkinPathPtr UUserWidgetSkin
---@param bAsyncLoad boolean
function UWidgetSkinProxy:ApplySkin(SkinPathPtr, bAsyncLoad) end

---@param SkinPathPtr UUserWidgetSkin
function UWidgetSkinProxy:RevertSkin(SkinPathPtr) end

---@return boolean
function UWidgetSkinProxy:RevertRevertableSkin() end

function UWidgetSkinProxy:GetActiveSkins() end

---@param InSkin UUserWidgetSkin
---@return boolean
function UWidgetSkinProxy:ContainsSkin(InSkin) end
