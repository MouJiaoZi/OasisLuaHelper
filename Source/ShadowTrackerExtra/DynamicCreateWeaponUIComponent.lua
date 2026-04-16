---@meta

---@class FDynamicCreateUIData
FDynamicCreateUIData = {}


---动态创建武器UI组件
---@class UDynamicCreateWeaponUIComponent: UWeaponLogicBaseComponent
---@field UIConfig FUIWidgetConfig
---@field ResetUIMsg string
---@field CloseUIMsg string
---@field bRemoveUIAfterDisabled boolean
---@field bExcludeSpectator boolean
---@field bShowUIOnEquip boolean
---@field ShowVisibleType ESlateVisibility
---@field bHideUIOnUnEquip boolean
---@field HideVisibleType ESlateVisibility
---@field CachedUIData ULuaMapHelper<ASTExtraPlayerController, FDynamicCreateUIData>
local UDynamicCreateWeaponUIComponent = {}

function UDynamicCreateWeaponUIComponent:ShowUI() end

function UDynamicCreateWeaponUIComponent:HideUI() end

---@param OwnerController ASTExtraPlayerController
---@param bShow boolean
function UDynamicCreateWeaponUIComponent:OnUIAssetLoadFinsh(OwnerController, bShow) end
