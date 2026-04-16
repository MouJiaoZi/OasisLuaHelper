---@meta

---@class UPCWidgetCreateManager: UActorComponent
---@field HintUIPool FPCHintUIPool
---@field ConfigTable UUAEDataTable
---@field CurGameModeID string
---@field CurGameModeTypeStr string
---@field CurHUDStyle number
local UPCWidgetCreateManager = {}

---@param Widget UUAEUserWidget
function UPCWidgetCreateManager:RefreshHintUIs(Widget) end

---@param ActionNames ULuaArrayHelper<string>
function UPCWidgetCreateManager:HandleOnActionMappingChanged(ActionNames) end

---@param Widget UUAEUserWidget
function UPCWidgetCreateManager:CreateHintUIs(Widget) end

function UPCWidgetCreateManager:InitHintUI() end

---@param Widget UUAEUserWidget
function UPCWidgetCreateManager:OnUAEUserWidgetFirstPainted(Widget) end

---@param HintMountInfo FHintMountInfo
---@return boolean
function UPCWidgetCreateManager:ShouldSkipCreateHintUI(HintMountInfo) end

---@param Root UUserWidget
---@param Child UUserWidget
---@param Info FHintMountInfo
function UPCWidgetCreateManager:MountWidget_HintMountInfo(Root, Child, Info) end

---@param Root UUserWidget
---@param Child UUserWidget
---@param ActionOrAxisName string
---@param IsActionName boolean
---@param HintUIConfig FPCHintUIConfig
function UPCWidgetCreateManager:MountWidget_HintUIConfig(Root, Child, ActionOrAxisName, IsActionName, HintUIConfig) end

---@param InStr string
---@param C1 number
---@param C2 number
---@return boolean
function UPCWidgetCreateManager:Get2ComponentFromTableString(InStr, C1, C2) end

---@param InStr string
---@param C1 number
---@param C2 number
---@param C3 number
---@param C4 number
---@return boolean
function UPCWidgetCreateManager:Get4ComponentFromTableString(InStr, C1, C2, C3, C4) end
