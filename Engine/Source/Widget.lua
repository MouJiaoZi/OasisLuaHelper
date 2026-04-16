---@meta

---@class EAreaTypeFlags
---@field Minimap number @Minimap
---@field Telescopic number @Telescopic
---@field Joystick number @Joystick
---@field Sight number @Sight
---@field Fire number @Fire
---@field Skill number @Skill
---@field Tool number @Tool
EAreaTypeFlags = {}


---@class UWidget: UVisual
---@field Slot UPanelSlot
---@field CachedPanel_ForGC UPanelWidget
---@field bIsEnabledDelegate FGetBool
---@field ToolTipText string
---@field ToolTipTextDelegate FGetText
---@field ToolTipWidgetDelegate FGetWidget
---@field VisibilityDelegate FGetSlateVisibility
---@field IgnorePixelSnapping boolean
---@field IgnorePixelSnappingDelegate FGetBool
---@field RelatedStyleWidgetName string
---@field RelatedStyleWidget any
---@field RenderTransformPivot FVector2D
---@field UsedLayerPolicy number
---@field PreservedLayerNum number
---@field FixedLayerPolicy number
---@field FixedLayerNum number
---@field Cursor any
---@field Clipping EWidgetClipping
---@field Visibility ESlateVisibility
---@field RenderOpacity number
---@field Navigation 
---@field bCatchVisibilityChangedEvent boolean
local UWidget = {}

---@param Scale FVector2D
function UWidget:SetRenderScale(Scale) end

---@param Shear FVector2D
function UWidget:SetRenderShear(Shear) end

---@param Angle number
function UWidget:SetRenderAngle(Angle) end

---@param Translation FVector2D
function UWidget:SetRenderTranslation(Translation) end

---@param Pivot FVector2D
function UWidget:SetRenderTransformPivot(Pivot) end

---@return boolean
function UWidget:GetIsEnabled() end

---@param bInIsEnabled boolean
function UWidget:SetIsEnabled(bInIsEnabled) end

---@param InToolTipText string
function UWidget:SetToolTipText(InToolTipText) end

---@param Widget UWidget
function UWidget:SetToolTip(Widget) end

---@param InCursor EMouseCursor
function UWidget:SetCursor(InCursor) end

function UWidget:ResetCursor() end

---@return boolean
function UWidget:IsVisible() end

---@return ESlateVisibility
function UWidget:GetVisibility() end

---@return ESlateVisibility
function UWidget:GetUVisibility() end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidget:SetLocalVisibility(OldVisibility, NewVisibility, Widget) end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidget:SetLocalVisibilityWithoutPCUIStyle(OldVisibility, NewVisibility, Widget) end

---@return ESlateVisibility
function UWidget:GetPCVisibility() end

---@return boolean
function UWidget:IsPCVisible() end

---@param InVisibility ESlateVisibility
function UWidget:SetVisibility(InVisibility) end

---@param IsAdvancedCollapsed boolean
function UWidget:SetAdvancedCollapsed(IsAdvancedCollapsed) end

---@return number
function UWidget:GetRenderOpacity() end

---@param InOpacity number
function UWidget:SetRenderOpacity(InOpacity) end

---@return EWidgetClipping
function UWidget:GetClipping() end

---@param InClipping EWidgetClipping
function UWidget:SetClipping(InClipping) end

---@param bForce boolean
function UWidget:ForceVolatile(bForce) end

---@return boolean
function UWidget:IsVolatile() end

---@return boolean
function UWidget:IsHovered() end

---@param bInWriteSceneZBuffer boolean
function UWidget:SetWriteSceneZBuffer(bInWriteSceneZBuffer) end

---@return boolean
function UWidget:HasKeyboardFocus() end

---@return boolean
function UWidget:HasMouseCapture() end

function UWidget:SetKeyboardFocus() end

---@param PlayerController APlayerController
---@return boolean
function UWidget:HasUserFocus(PlayerController) end

---@return boolean
function UWidget:HasAnyUserFocus() end

---@return boolean
function UWidget:HasFocusedDescendants() end

---@param PlayerController APlayerController
---@return boolean
function UWidget:HasUserFocusedDescendants(PlayerController) end

---@param PlayerController APlayerController
function UWidget:SetUserFocus(PlayerController) end

function UWidget:ForceLayoutPrepass() end

function UWidget:InvalidateLayoutAndVolatility() end

---@return FVector2D
function UWidget:GetDesiredSize() end

---@param Rule EUINavigationRule
---@param WidgetToFocus string
function UWidget:SetAllNavigationRules(Rule, WidgetToFocus) end

---@param Direction EUINavigation
---@param Rule EUINavigationRule
---@param WidgetToFocus string
function UWidget:SetNavigationRule(Direction, Rule, WidgetToFocus) end

function UWidget:RemoveFromParent() end

---@return FGeometry
function UWidget:GetCachedGeometry() end

---@return FGeometry
function UWidget:GetCachedAllottedGeometry() end

---@param Ignore boolean
function UWidget:SetIgnorePixelSnapping(Ignore) end
