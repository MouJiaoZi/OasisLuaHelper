---@meta

---@class EDynaCanvasPanelAutoLoadType
---@field Sync number
---@field ASync number
EDynaCanvasPanelAutoLoadType = {}


---@class FDynaAnchorData
---@field Offsets FMargin @Offset.
---@field Anchors FAnchors @Anchors.
---@field Alignment FVector2D @Alignment is the pivot point of the widget.  Starting in the upper left at (0,0), ending in the lower right at (1,1).  Moving the alignment point allows you to move the origin of the widget.
FDynaAnchorData = {}


---@class FDynaAutoLoadInfo
---@field WinReleaseAutoLoad boolean
---@field MobileAutoLoad boolean
---@field LoadType EDynaCanvasPanelAutoLoadType
---@field LowLevel boolean
---@field MiddleLevel boolean
---@field HighLevel boolean
---@field VisibilityAfterAutoLoad ESlateVisibility
FDynaAutoLoadInfo = {}


---@class FDynaExtSlotData
---@field DynamicWidgetClass UUserWidget
---@field LayoutData FDynaAnchorData @The anchoring information for the slot
---@field SizeToContent boolean @When AutoSize is true we use the widget's desired size
---@field Visible boolean
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field EnableAutoLoad boolean
---@field AutoLoadInfo FDynaAutoLoadInfo
FDynaExtSlotData = {}


---@class UWST_DynaExtSlotDataMap: UWigetSkinType
---@field DynamicChildMap ULuaMapHelper<string, FDynaExtSlotData>
local UWST_DynaExtSlotDataMap = {}


---@class UWST_DynaPreviewSkinMap: UWigetSkinType
---@field PreviewSkinMap ULuaMapHelper<string, UUserWidgetSkin>
local UWST_DynaPreviewSkinMap = {}


---@class UDynaCanvasPanel: UCanvasPanel, IWidgetSkinInterface
---@field DynamicChildMap ULuaMapHelper<string, FDynaExtSlotData>
---@field PreviewSkinMap ULuaMapHelper<string, UUserWidgetSkin>
---@field EnableEditPCParam boolean
---@field PreviewPCParam boolean
---@field UsePCParam boolean
---@field PCDynamicChildMap ULuaMapHelper<string, FDynaExtSlotData>
---@field OnCreateDynaWidget FOnCreateDynaWidget
local UDynaCanvasPanel = {}

---@param dynaWidgetName string
---@return boolean
function UDynaCanvasPanel:IsCreated(dynaWidgetName) end

---@param dynaWidgetName string
---@param dynaWidgetVisibility ESlateVisibility
function UDynaCanvasPanel:SetDynaWidgetVisibility(dynaWidgetName, dynaWidgetVisibility) end

---@param dynaWidgetVisibility ESlateVisibility
function UDynaCanvasPanel:SetAllDynaWidgetVisibility(dynaWidgetVisibility) end

---@param dynaWidgetName string
function UDynaCanvasPanel:RemoveDynamicWidget(dynaWidgetName) end

---@param dynaWidgetName string
---@param ModifyVisibilityAfterLoad boolean
---@param VisibilityAfterLoad ESlateVisibility
function UDynaCanvasPanel:AsyncLoad(dynaWidgetName, ModifyVisibilityAfterLoad, VisibilityAfterLoad) end

---@param dynaWidgetName string
function UDynaCanvasPanel:CancelAsyncLoad(dynaWidgetName) end

function UDynaCanvasPanel:ClearAllAsyncLoad() end

---@param dynaWidgetName string
---@return string
function UDynaCanvasPanel:GetChildClassPath(dynaWidgetName) end
