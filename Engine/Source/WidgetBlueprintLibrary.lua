---@meta

---@class UWidgetBlueprintLibrary: UBlueprintFunctionLibrary
local UWidgetBlueprintLibrary = {}

---Setup an input mode that allows only the UI to respond to user input.
---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param bLockMouseToViewport boolean
function UWidgetBlueprintLibrary:SetInputMode_UIOnly(Target, InWidgetToFocus, bLockMouseToViewport) end

---Setup an input mode that allows only the UI to respond to user input.
---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param InMouseLockMode EMouseLockMode
function UWidgetBlueprintLibrary:SetInputMode_UIOnlyEx(Target, InWidgetToFocus, InMouseLockMode) end

---Setup an input mode that allows only the UI to respond to user input, and if the UI doesn't handle it player input / player controller gets a chance.
---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param bLockMouseToViewport boolean
---@param bHideCursorDuringCapture boolean
function UWidgetBlueprintLibrary:SetInputMode_GameAndUI(Target, InWidgetToFocus, bLockMouseToViewport, bHideCursorDuringCapture) end

---Setup an input mode that allows only the UI to respond to user input, and if the UI doesn't handle it player input / player controller gets a chance.
---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param InMouseLockMode EMouseLockMode
---@param bHideCursorDuringCapture boolean
function UWidgetBlueprintLibrary:SetInputMode_GameAndUIEx(Target, InWidgetToFocus, InMouseLockMode, bHideCursorDuringCapture) end

---Setup an input mode that allows only player input / player controller to respond to user input.
---@param Target APlayerController
function UWidgetBlueprintLibrary:SetInputMode_GameOnly(Target) end

function UWidgetBlueprintLibrary:SetFocusToGameViewport() end

---Draws a box
---@param Context FPaintContext
---@param Position FVector2D
---@param Size FVector2D
---@param Brush USlateBrushAsset
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawBox(Context, Position, Size, Brush, Tint) end

---Draws a line.
---@param Context FPaintContext
---@param PositionA FVector2D
---@param PositionB FVector2D
---@param Tint FLinearColor
---@param bAntiAlias boolean
function UWidgetBlueprintLibrary:DrawLine(Context, PositionA, PositionB, Tint, bAntiAlias) end

---Draws several line segments.
---@param Context FPaintContext
---@param Points ULuaArrayHelper<FVector2D>
---@param Tint FLinearColor
---@param bAntiAlias boolean
function UWidgetBlueprintLibrary:DrawLines(Context, Points, Tint, bAntiAlias) end

---Draws text.
---@param Context FPaintContext
---@param InString string
---@param Position FVector2D
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawText(Context, InString, Position, Tint) end

---Draws text.
---@param Context FPaintContext
---@param Text string
---@param Position FVector2D
---@param Font UFont
---@param FontSize number
---@param FontTypeFace string
---@param Tint FLinearColor
function UWidgetBlueprintLibrary:DrawTextFormatted(Context, Text, Position, Font, FontSize, FontTypeFace, Tint) end

---The event reply to use when you choose to handle an event.  This will prevent the event from continuing to bubble up / down the widget hierarchy.
---@return FEventReply
function UWidgetBlueprintLibrary:Handled() end

---The event reply to use when you choose not to handle an event.
---@return FEventReply
function UWidgetBlueprintLibrary:Unhandled() end

---@param Reply FEventReply
---@param CapturingWidget UWidget
---@return FEventReply
function UWidgetBlueprintLibrary:CaptureMouse(Reply, CapturingWidget) end

---@param Reply FEventReply
---@return FEventReply
function UWidgetBlueprintLibrary:ReleaseMouseCapture(Reply) end

---@param Reply FEventReply
---@param CapturingWidget UWidget
---@return FEventReply
function UWidgetBlueprintLibrary:LockMouse(Reply, CapturingWidget) end

---@param Reply FEventReply
---@return FEventReply
function UWidgetBlueprintLibrary:UnlockMouse(Reply) end

---@param Reply FEventReply
---@param FocusWidget UWidget
---@param bInAllUsers boolean
---@return FEventReply
function UWidgetBlueprintLibrary:SetUserFocus(Reply, FocusWidget, bInAllUsers) end

---@param Reply FEventReply
---@param CapturingWidget UWidget
---@param bInAllJoysticks boolean
---@return FEventReply
function UWidgetBlueprintLibrary:CaptureJoystick(Reply, CapturingWidget, bInAllJoysticks) end

---@param Reply FEventReply
---@param bInAllUsers boolean
---@return FEventReply
function UWidgetBlueprintLibrary:ClearUserFocus(Reply, bInAllUsers) end

---@param Reply FEventReply
---@param bInAllJoysticks boolean
---@return FEventReply
function UWidgetBlueprintLibrary:ReleaseJoystickCapture(Reply, bInAllJoysticks) end

---@param Reply FEventReply
---@param NewMousePosition FVector2D
---@return FEventReply
function UWidgetBlueprintLibrary:SetMousePosition(Reply, NewMousePosition) end

---Ask Slate to detect if a user starts dragging in this widget later.  Slate internally tracks the movement and if it surpasses the drag threshold, Slate will send an OnDragDetected event to the widget.
---@param Reply FEventReply
---@param WidgetDetectingDrag UWidget
---@param DragKey FKey
---@return FEventReply
function UWidgetBlueprintLibrary:DetectDrag(Reply, WidgetDetectingDrag, DragKey) end

---Given the pointer event, emit the DetectDrag reply if the provided key was pressed. If the DragKey is a touch key, that will also automatically work.
---@param PointerEvent FPointerEvent
---@param WidgetDetectingDrag UWidget
---@param DragKey FKey
---@return FEventReply
function UWidgetBlueprintLibrary:DetectDragIfPressed(PointerEvent, WidgetDetectingDrag, DragKey) end

---An event should return FReply::Handled().EndDragDrop() to request that the current drag/drop operation be terminated.
---@param Reply FEventReply
---@return FEventReply
function UWidgetBlueprintLibrary:EndDragDrop(Reply) end

---Returns true if a drag/drop event is occurring that a widget can handle.
---@return boolean
function UWidgetBlueprintLibrary:IsDragDropping() end

---Cancels any current drag drop operation.
function UWidgetBlueprintLibrary:CancelDragDrop() end

---Creates a Slate Brush from a Slate Brush Asset
---@param BrushAsset USlateBrushAsset
---@return FSlateBrush
function UWidgetBlueprintLibrary:MakeBrushFromAsset(BrushAsset) end

---Creates a Slate Brush from a Texture2D
---@param Texture UTexture2D
---@param Width number
---@param Height number
---@return FSlateBrush
function UWidgetBlueprintLibrary:MakeBrushFromTexture(Texture, Width, Height) end

---Creates a Slate Brush from a Material.  Materials don't have an implicit size, so providing a widget and height is required to hint slate with how large the image wants to be by default.
---@param Material UMaterialInterface
---@param Width number
---@param Height number
---@return FSlateBrush
function UWidgetBlueprintLibrary:MakeBrushFromMaterial(Material, Width, Height) end

---Sets the resource on a brush to be a UTexture2D.
---@param Brush FSlateBrush
---@param Texture UTexture2D
function UWidgetBlueprintLibrary:SetBrushResourceToTexture(Brush, Texture) end

---Sets the resource on a brush to be a Material.
---@param Brush FSlateBrush
---@param Material UMaterialInterface
function UWidgetBlueprintLibrary:SetBrushResourceToMaterial(Brush, Material) end

---Creates a Slate Brush that wont draw anything, the "Null Brush".
---@return FSlateBrush
function UWidgetBlueprintLibrary:NoResourceBrush() end

---Closes any popup menu
function UWidgetBlueprintLibrary:DismissAllMenus() end

---Find all widgets of a certain class.
---@param WorldContextObject UObject
---@param FoundWidgets ULuaArrayHelper<UUserWidget>
---@param WidgetClass UUserWidget
---@param TopLevelOnly boolean
function UWidgetBlueprintLibrary:GetAllWidgetsOfClass(WorldContextObject, FoundWidgets, WidgetClass, TopLevelOnly) end

---Find all widgets in the world with the specified interface. This is a slow operation, use with caution e.g. do not use every frame.
---@param WorldContextObject UObject
---@param Interface UInterface
---@param FoundWidgets ULuaArrayHelper<UUserWidget>
---@param TopLevelOnly boolean
function UWidgetBlueprintLibrary:GetAllWidgetsWithInterface(WorldContextObject, Interface, FoundWidgets, TopLevelOnly) end

---@param Event FKeyEvent
---@return FInputEvent
function UWidgetBlueprintLibrary:GetInputEventFromKeyEvent(Event) end

---@param Event FAnalogInputEvent
---@return FKeyEvent
function UWidgetBlueprintLibrary:GetKeyEventFromAnalogInputEvent(Event) end

---@param Event FCharacterEvent
---@return FInputEvent
function UWidgetBlueprintLibrary:GetInputEventFromCharacterEvent(Event) end

---@param Event FPointerEvent
---@return FInputEvent
function UWidgetBlueprintLibrary:GetInputEventFromPointerEvent(Event) end

---@param Event FNavigationEvent
---@return FInputEvent
function UWidgetBlueprintLibrary:GetInputEventFromNavigationEvent(Event) end

---Gets the amount of padding that needs to be added when accounting for the safe zone on TVs.
---@param WorldContextObject UObject
---@param SafePadding FVector2D
---@param SafePaddingScale FVector2D
---@param SpillOverPadding FVector2D
function UWidgetBlueprintLibrary:GetSafeZonePadding(WorldContextObject, SafePadding, SafePaddingScale, SpillOverPadding) end

---Loads or sets a hardware cursor from the content directory in the game.
---@param WorldContextObject UObject
---@param CursorShape EMouseCursor
---@param CursorName string
---@param HotSpot FVector2D
---@return boolean
function UWidgetBlueprintLibrary:SetHardwareCursor(WorldContextObject, CursorShape, CursorName, HotSpot) end

---@param UserWidget UUserWidget
---@param SkinPathPtr UUserWidgetSkin
---@param bAsyncLoad boolean
function UWidgetBlueprintLibrary:ApplyUserWidgetSkin(UserWidget, SkinPathPtr, bAsyncLoad) end

---@param UserWidget UUserWidget
---@param SkinPathPtr UUserWidgetSkin
function UWidgetBlueprintLibrary:RevertUserWidgetSkin(UserWidget, SkinPathPtr) end
