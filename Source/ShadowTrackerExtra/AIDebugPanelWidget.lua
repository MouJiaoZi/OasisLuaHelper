---@meta

---@class UAIDebugPanelWidget: UUserWidget
---@field SingleWidgetClass UAIDebugPanelSingleWidget
---@field SingleWidgets ULuaMapHelper<number, UAIDebugPanelSingleWidget>
local UAIDebugPanelWidget = {}

function UAIDebugPanelWidget:LuaTick() end

---@param Options ULuaArrayHelper<string>
function UAIDebugPanelWidget:SetOptions(Options) end

---@return ECheckBoxState
function UAIDebugPanelWidget:GetShowSingleCheckBoxState() end

---@param bShow boolean
function UAIDebugPanelWidget:OnShowSingleCheckBoxStateChanged(bShow) end

---@param WillShowPanel UPanelWidget
function UAIDebugPanelWidget:ShowPanel(WillShowPanel) end
