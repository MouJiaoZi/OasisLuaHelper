---@meta

---动态创建UI组件
---@class UDynamicCreateUIComponent: UActorComponent
---@field UIConfig FUIWidgetConfig
---@field ResetUIMsg string
---@field CloseUIMsg string
---@field bRemoveUIAfterDisabled boolean
local UDynamicCreateUIComponent = {}

---@return boolean
function UDynamicCreateUIComponent:ShowUI() end

function UDynamicCreateUIComponent:HideUI() end

---@param Pawn ASTExtraBaseCharacter
function UDynamicCreateUIComponent:SetOwnerPawn(Pawn) end

---@param OwnerController ASTExtraPlayerController
---@param bShow boolean
function UDynamicCreateUIComponent:OnUIAssetLoadFinsh(OwnerController, bShow) end
