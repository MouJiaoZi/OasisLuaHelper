---@meta

---When to render the Focus Brush for widgets that have user focus. Based on the EFocusCause.
---@class ERenderFocusRule
---@field Always number @Focus Brush will always be rendered for widgets that have user focus.
---@field NonPointer number @Focus Brush will be rendered for widgets that have user focus not set based on pointer causes.
---@field NavigationOnly number @Focus Brush will be rendered for widgets that have user focus only if the focus was set by navigation.
---@field Never number @Focus Brush will not be rendered.
ERenderFocusRule = {}


---The Side to use when scaling the UI.
---@class EUIScalingRule
---@field ShortestSide number @Evaluates the scale curve based on the shortest side of the viewport.
---@field LongestSide number @Evaluates the scale curve based on the longest side of the viewport.
---@field Horizontal number @Evaluates the scale curve based on the X axis of the viewport.
---@field Vertical number @Evaluates the scale curve based on the Y axis of the viewport.
---@field Custom number @Custom - Allows custom rule interpretation.
EUIScalingRule = {}


---@class FHardwareCursorReference
---@field CursorPath string @Specify the partial game content path to the hardware cursor.  For example, DO:   Slate/DefaultPointer DONT: Slate/DefaultPointer.cur NOTE: Having a 'Slate' directory in your game content folder will always be cooked, if you're trying to decide where to locate these cursor files. The hardware cursor system will search for platform specific formats first if you want to take advantage of those capabilities. Windows: .ani -> .cur -> .png Mac: .tiff -> .png Linux: .png Multi-Resolution Png Fallback Because there's not a universal multi-resolution format for cursors there's a pattern we look for on all platforms where pngs are all that is found instead of cur/ani/tiff. Pointer.png Pointer@1.25x.png Pointer@1.5x.png Pointer@1.75x.png Pointer@2x.png ...etc
---@field HotSpot FVector2D @HotSpot needs to be in normalized (0..1) coordinates since it may apply to different resolution images. NOTE: This HotSpot is only used on formats that do not provide their own hotspot, e.g. Tiff, PNG.
FHardwareCursorReference = {}


---@class FFixedDPIValueMap
---@field ScaleValues ULuaMapHelper<number, number>
FFixedDPIValueMap = {}


---@class FFixedDPIValueEntry
---@field EntryValues ULuaMapHelper<number, FFixedDPIValueMap>
FFixedDPIValueEntry = {}


---User Interface settings that control Slate and UMG.
---@class UUserInterfaceSettings: UDeveloperSettings
---@field RenderFocusRule ERenderFocusRule @Rule to determine if we should render the Focus Brush for widgets that have user focus.
---@field HardwareCursors ULuaMapHelper<EMouseCursor, FHardwareCursorReference>
---@field SoftwareCursors ULuaMapHelper<EMouseCursor, FSoftClassPath>
---@field DefaultCursor_DEPRECATED FSoftClassPath
---@field TextEditBeamCursor_DEPRECATED FSoftClassPath
---@field CrosshairsCursor_DEPRECATED FSoftClassPath
---@field HandCursor_DEPRECATED FSoftClassPath
---@field GrabHandCursor_DEPRECATED FSoftClassPath
---@field GrabHandClosedCursor_DEPRECATED FSoftClassPath
---@field SlashedCircleCursor_DEPRECATED FSoftClassPath
---@field ApplicationScale number @An optional application scale to apply on top of the custom scaling rules.  So if you want to expose a property in your game title, you can modify this underlying value to scale the entire UI.
---@field UIScaleRule EUIScalingRule @The rule used when trying to decide what scale to apply.
---@field CustomScalingRuleClass FSoftClassPath @Set DPI Scale Rule to Custom, and this class will be used instead of any of the built-in rules.
---@field UIScaleCurve FRuntimeFloatCurve @Controls how the UI is scaled at different resolutions based on the DPI Scale Rule
---@field ExtendUIScaleCurves ULuaArrayHelper<FRuntimeFloatCurve>
---@field ExtendUIScaleCurveIndex number
---@field DefaultUIScaleCurveIndex number
---@field bScreenAdaption boolean
---@field bUseFixedDPIMapping boolean
---@field FixedDPIScaleConfig ULuaArrayHelper<FFixedDPIValueEntry>
---@field bUseAndroidHarmonyFixedDPIScaleConfig boolean
---@field AndroidHarmonyFixedDPIScaleConfig ULuaMapHelper<string, FFixedDPIValueEntry>
---@field bLoadWidgetsOnDedicatedServer boolean @If false, widget references will be stripped during cook for server builds and not loaded at runtime.
---@field FixDPIScaleCurveIndex number
---@field CursorClasses ULuaArrayHelper<UObject>
local UUserInterfaceSettings = {}
