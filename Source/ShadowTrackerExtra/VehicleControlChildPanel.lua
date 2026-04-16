---@meta

---@class EVehicleControlPanelSubMode
---@field ButtonOnly number
---@field SteeringWheel number
---@field Joystick number
EVehicleControlPanelSubMode = {}


---@class FVehicleUIBtnConfig
---@field WidgetNames ULuaArrayHelper<string>
---@field BtnStyle FButtonStyle
FVehicleUIBtnConfig = {}


---@class FVehicleUIImageConfig
---@field WidgetNames ULuaArrayHelper<string>
---@field ImageBrush FSlateBrush
FVehicleUIImageConfig = {}


---@class FVehicleUITextConfig
---@field WidgetNames ULuaArrayHelper<string>
---@field Text string
FVehicleUITextConfig = {}


---@class FVehicleUITextureConfig
---@field ButtonConfig ULuaArrayHelper<FVehicleUIBtnConfig>
---@field ImageConfig ULuaArrayHelper<FVehicleUIImageConfig>
---@field TextConfig ULuaArrayHelper<FVehicleUITextConfig>
FVehicleUITextureConfig = {}


---@class UVehicleControlChildPanel: UUAEUserWidget
---@field SubModeType EVehicleControlPanelSubMode
---@field AllButtonMap ULuaMapHelper<string, UButton>
---@field AllImageMap ULuaMapHelper<string, UImage>
local UVehicleControlChildPanel = {}

---@param ParentPanel UPanelWidget
function UVehicleControlChildPanel:AddToParentPanel(ParentPanel) end

---@param VehicleControlPanel UVehicleControlPanelUI
function UVehicleControlChildPanel:ShowChildPanel(VehicleControlPanel) end

function UVehicleControlChildPanel:OnShowChildPanel() end

---@param DefaultSkinConfig UVehicleUISkin
---@param SubMode EVehicleControlPanelSubMode
function UVehicleControlChildPanel:AddSubPanelVehicleUISkinWidgetMap(DefaultSkinConfig, SubMode) end

---@param SkinConfig UVehicleUISkin
function UVehicleControlChildPanel:OnVehicleApplyUISkin(SkinConfig) end
