---@meta

---@class EWidgetSpace
---@field World number @The widget is rendered in the world as mesh, it can be occluded like any other mesh in the world.
---@field Screen number @The widget is rendered in the screen, completely outside of the world, never occluded.
EWidgetSpace = {}


---@class EWidgetTimingPolicy
---@field RealTime number @The widget will tick using real time. When not ticking, real time will accumulate and be simulated on the next tick.
---@field GameTime number @The widget will tick using game time, respecting pausing and time dilation.
EWidgetTimingPolicy = {}


---@class EWidgetBlendMode
---@field Opaque number
---@field Masked number
---@field Transparent number
EWidgetBlendMode = {}


---@class EWidgetGeometryMode
---@field Plane number @The widget is mapped onto a plane
---@field Cylinder number @The widget is mapped onto a cylinder
EWidgetGeometryMode = {}


---The widget component provides a surface in the 3D environment on which to render widgets normally rendered to the screen. Widgets are first rendered to a render target, then that render target is displayed in the world. Material Properties set by this component on whatever material overrides the default. SlateUI [Texture] BackColor [Vector] TintColorAndOpacity [Vector] OpacityFromTexture [Scalar]
---@class UWidgetComponent: UMeshComponent
---@field Space EWidgetSpace @The coordinate space in which to render the widget
---@field TimingPolicy EWidgetTimingPolicy @How this widget should deal with timing, pausing, etc.
---@field WidgetClass UUserWidget @The class of User Widget to create and display an instance of
---@field DrawSize FIntPoint @The size of the displayed quad.
---@field bManuallyRedraw boolean @Should we wait to be told to redraw to actually draw?
---@field bCheckLowDeviceQualityLevel boolean @Should LowDevice Phone draw UI?
---@field bRedrawRequested boolean @Has anyone requested we redraw?
---@field RedrawTime number @The time in between draws, if 0 - we would redraw every frame.  If 1, we would redraw every second. This will work with bManuallyRedraw as well.  So you can say, manually redraw, but only redraw at this maximum rate.
---@field CurrentDrawSize FIntPoint @The actual draw size, this changes based on DrawSize - or the desired size of the widget if bDrawAtDesiredSize is true.
---@field bDrawAtDesiredSize boolean @Causes the render target to automatically match the desired size. WARNING: If you change this every frame, it will be very expensive.  If you need that effect, you should keep the outer widget's sized locked and dynamically scale or resize some inner widget.
---@field Pivot FVector2D @The Alignment/Pivot point that the widget is placed at relative to the position.
---@field bReceiveHardwareInput boolean @Register with the viewport for hardware input from the true mouse and keyboard.  These widgets will more or less react like regular 2D widgets in the viewport, e.g. they can and will steal focus from the viewport. WARNING: If you are making a VR game, definitely do not change this to true.  This option should ONLY be used if you're making what would otherwise be a normal menu for a game, just in 3D.  If you also need the game to remain responsive and for the player to be able to interact with UI and move around the world (such as a keypad on a door), use the WidgetInteractionComponent instead.
---@field bWindowFocusable boolean @Is the virtual window created to host the widget focusable?
---@field BackgroundColor FLinearColor @The background color of the component
---@field TintColorAndOpacity FLinearColor @Tint color and opacity for this component
---@field OpacityFromTexture number @Sets the amount of opacity from the widget's UI texture to use when rendering the translucent or masked UI to the viewport (0.0-1.0)
---@field BlendMode EWidgetBlendMode @The blend mode for the widget.
---@field bIsTwoSided boolean @Is the component visible from behind?
---@field TickWhenOffscreen boolean @Should the component tick the widget when it's off screen?
---@field bAddedToScreen boolean
---@field bEditTimeUsable boolean @Allows the widget component to be used at editor time.  For use in the VR-Editor.
---@field SharedLayerName string @Layer Name the widget will live on
---@field LayerZOrder number @ZOrder the layer will be created on, note this only matters on the first time a new layer is created, subsequent additions to the same layer will use the initially defined ZOrder
---@field GeometryMode EWidgetGeometryMode @Controls the geometry of the widget component. See EWidgetGeometryMode.
---@field CylinderArcAngle number @Curvature of a cylindrical widget in degrees.
---@field FlipVector FVector @Curvature of a cylindrical widget in degrees.
---@field bUseBackColorInTwoSideMode boolean @For Two side Color
---@field BackColor FLinearColor
local UWidgetComponent = {}

function UWidgetComponent:ForceWidgetUpdateImmediate() end

function UWidgetComponent:ForceWidgetUpdateImmediately() end

function UWidgetComponent:ForceUpdateRenderTarget() end

---Sets the widget to use directly. This function will keep track of the widget till the next time it's called with either a newer widget or a nullptr
---@param Widget UUserWidget
function UWidgetComponent:SetWidget(Widget) end

---Sets the local player that owns this widget component.  Setting the owning player controls which player's viewport the widget appears on in a split screen scenario.  Additionally it forwards the owning player to the actual UserWidget that is spawned.
---@param LocalPlayer ULocalPlayer
function UWidgetComponent:SetOwnerPlayer(LocalPlayer) end

---@return FVector2D
function UWidgetComponent:GetDrawSize() end

---Returns the "actual" draw size of the quad in the world
---@return FVector2D
function UWidgetComponent:GetCurrentDrawSize() end

---Sets the draw size of the quad in the world
---@param Size FVector2D
function UWidgetComponent:SetDrawSize(Size) end

---Requests that the widget be redrawn.
function UWidgetComponent:RequestRedraw() end

---Sets the background color and opacityscale for this widget
---@param NewBackgroundColor FLinearColor
function UWidgetComponent:SetBackgroundColor(NewBackgroundColor) end

---Sets the tint color and opacity scale for this widget
---@param NewTintColorAndOpacity FLinearColor
function UWidgetComponent:SetTintColorAndOpacity(NewTintColorAndOpacity) end
