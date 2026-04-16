---@meta

---Different animation events.
---@class EWidgetAnimationEvent
---@field Started number
---@field Finished number
EWidgetAnimationEvent = {}


---Describes playback modes for UMG sequences.
---@class EUMGSequencePlayMode
---@field Forward number @Animation plays and loops from the beginning to the end.
---@field Reverse number @Animation plays and loops from the end to the beginning.
---@field PingPong number @Animation plays from the beginning to the end and then from the end to the beginning.
EUMGSequencePlayMode = {}


---@class EDesignPreviewSizeMode
---@field FillScreen number
---@field Custom number
---@field CustomOnScreen number
---@field Desired number
---@field DesiredOnScreen number
EDesignPreviewSizeMode = {}


---Used to manage different animation event bindings that users want callbacks on.
---@class FAnimationEventBinding
---@field Delegate FWidgetAnimationDynamicEvent @The callback.
---@field AnimationEvent EWidgetAnimationEvent @The type of animation event.
---@field UserTag string @A user tag used to only get callbacks for specific runs of the animation.
FAnimationEventBinding = {}


---The state passed into OnPaint that we can expose as a single painting structure to blueprints to allow script code to override OnPaint behavior.
---@class FPaintContext
FPaintContext = {}


---The state passed into OnPaint that we can expose as a single painting structure to blueprints to allow script code to override OnPaint behavior.
---@class FNamedSlotBinding
---@field Name string
FNamedSlotBinding = {}


---@class FOnConstructEvent : ULuaSingleDelegate
FOnConstructEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnConstructEvent:Bind(Callback, Obj) end

---执行委托
function FOnConstructEvent:Execute() end


---@class FOnInputAction : ULuaSingleDelegate
FOnInputAction = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInputAction:Bind(Callback, Obj) end

---执行委托
function FOnInputAction:Execute() end


---The user widget is extensible by users through the WidgetBlueprint.
---@class UUserWidget: UWidget, INamedSlotInterface
---@field ColorAndOpacity FLinearColor @The color and opacity of this widget.  Tints all child widgets.
---@field ColorAndOpacityDelegate FGetLinearColor
---@field ForegroundColor FSlateColor @The foreground color of the widget, this is inherited by sub widgets.  Any color property that is marked as inherit will use this color.
---@field ForegroundColorDelegate FGetSlateColor
---@field Padding FMargin @The padding area around the content.
---@field ActiveSequencePlayers ULuaArrayHelper<UUMGSequencePlayer> @All the sequence players currently playing
---@field StoppedSequencePlayers ULuaArrayHelper<UUMGSequencePlayer> @List of sequence players to cache and clean up when safe
---@field NamedSlotBindings ULuaArrayHelper<FNamedSlotBinding> @Stores the widgets being assigned to named slots
---@field bOptimiseAnimation boolean
---@field bNoBubbleUpEvent boolean
---@field Priority number @The category this widget appears in the palette.
---@field bSupportsKeyboardFocus_DEPRECATED number
---@field bIsFocusable number @Setting this flag to true, allows this widget to accept focus when clicked, or when navigated to.
---@field bStopAction number
---@field CanDisableDrag number
---@field bCanEverTick number @If a widget doesn't ever need to tick the blueprint, setting this to false is an optimization.
---@field bCanEverPaint number @If a widget doesn't ever need to do custom painting in the blueprint, setting this to false is an optimization.
---@field bCookedWidgetTree number @If this user widget was created using a cooked widget tree.  If that's true, we want to skip a lot of the normal initialization logic for widgets, because these widgets have already been initialized.
---@field AnimationCallbacks ULuaArrayHelper<FAnimationEventBinding>
local UUserWidget = {}

---Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called to explicitly set the size.
---@param ZOrder number
function UUserWidget:AddToViewport(ZOrder) end

---Adds the widget to the game's viewport in a section dedicated to the player.  This is valuable in a split screen game where you need to only show a widget over a player's portion of the viewport.
---@param ZOrder number
---@return boolean
function UUserWidget:AddToPlayerScreen(ZOrder) end

---Removes the widget from the viewport.
function UUserWidget:RemoveFromViewport() end

---Get Z-order of Viewport Widget, added by fourthchen
---@return number
function UUserWidget:GetZOrderOfViewportWidget() end

---Sets the widgets position in the viewport. Otherwise inverse DPI is applied to the position so that when the location is scaled by DPI, it ends up in the expected position.
---@param Position FVector2D
---@param bRemoveDPIScale boolean
function UUserWidget:SetPositionInViewport(Position, bRemoveDPIScale) end

---@param Size FVector2D
function UUserWidget:SetDesiredSizeInViewport(Size) end

---@param Margin FMargin
function UUserWidget:SetOffsetsInViewport(Margin) end

---@param Anchors FAnchors
function UUserWidget:SetAnchorsInViewport(Anchors) end

---@param Alignment FVector2D
function UUserWidget:SetAlignmentInViewport(Alignment) end

---@return FAnchors
function UUserWidget:GetAnchorsInViewport() end

---@return FVector2D
function UUserWidget:GetAlignmentInViewport() end

---@return boolean
function UUserWidget:GetIsVisible() end

---@return boolean
function UUserWidget:IsInViewport() end

---Sets the player associated with this UI via LocalPlayer reference.
---@param LocalPlayer ULocalPlayer
function UUserWidget:SetOwningLocalPlayer(LocalPlayer) end

---Sets the local player associated with this UI via PlayerController reference.
---@param LocalPlayerController APlayerController
function UUserWidget:SetOwningPlayer(LocalPlayerController) end

---Called by both the game and the editor.  Allows users to run initial setup for their widgets to better preview the setup in the designer and since generally that same setup code is required at runtime, it's called there as well. **WARNING** This is intended purely for cosmetic updates using locally owned data, you can not safely access any game related state, if you call something that doesn't expect to be run at editor time, you may crash the editor. In the event you save the asset with blueprint code that causes a crash on evaluation.  You can turn off PreConstruct evaluation in the Widget Designer settings in the Editor Preferences.
---@param IsDesignTime boolean
function UUserWidget:PreConstruct(IsDesignTime) end

---Called after the underlying slate widget is constructed.  Depending on how the slate object is used this event may be called multiple times due to adding and removing from the hierarchy.
function UUserWidget:Construct() end

function UUserWidget:ConstructForLua() end

---Called when a widget is no longer referenced causing the slate resource to destroyed.  Just like Construct this event can be called multiple times.
function UUserWidget:Destruct() end

---Ticks this widget.  Override in derived classes, but always call the parent implementation.
---@param MyGeometry FGeometry
---@param InDeltaTime number
function UUserWidget:Tick(MyGeometry, InDeltaTime) end

---@param Context FPaintContext
function UUserWidget:OnPaint(Context) end

---Gets a value indicating if the widget is interactive.
---@return boolean
function UUserWidget:IsInteractable() end

---Called when keyboard focus is given to this widget.  This event does not bubble.
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UUserWidget:OnFocusReceived(MyGeometry, InFocusEvent) end

---Called when this widget loses focus.  This event does not bubble.
---@param InFocusEvent FFocusEvent
function UUserWidget:OnFocusLost(InFocusEvent) end

---If focus is gained on on this widget or on a child widget and this widget is added to the focus path, and wasn't previously part of it, this event is called.
---@param InFocusEvent FFocusEvent
function UUserWidget:OnAddedToFocusPath(InFocusEvent) end

---If focus is lost on on this widget or on a child widget and this widget is no longer part of the focus path.
---@param InFocusEvent FFocusEvent
function UUserWidget:OnRemovedFromFocusPath(InFocusEvent) end

---Called after a character is entered while this widget has focus
---@param MyGeometry FGeometry
---@param InCharacterEvent FCharacterEvent
---@return FEventReply
function UUserWidget:OnKeyChar(MyGeometry, InCharacterEvent) end

---Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus If a widget handles this event, OnKeyDown will *not* be passed to the focused widget. This event is primarily to allow parent widgets to consume an event before a child widget processes it and it should be used only when there is no better design alternative.
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UUserWidget:OnPreviewKeyDown(MyGeometry, InKeyEvent) end

---Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled)
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UUserWidget:OnKeyDown(MyGeometry, InKeyEvent) end

---Called after a key (keyboard, controller, ...) is released when this widget has focus
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UUserWidget:OnKeyUp(MyGeometry, InKeyEvent) end

---Called when an analog value changes on a button that supports analog
---@param MyGeometry FGeometry
---@param InAnalogInputEvent FAnalogInputEvent
---@return FEventReply
function UUserWidget:OnAnalogValueChanged(MyGeometry, InAnalogInputEvent) end

---The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnMouseButtonDown(MyGeometry, MouseEvent) end

---Just like OnMouseButtonDown, but tunnels instead of bubbling. If this even is handled, OnMouseButtonDown will not be sent. Use this event sparingly as preview events generally make UIs more difficult to reason about.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end

---The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnMouseButtonUp(MyGeometry, MouseEvent) end

---The system calls this method to notify the widget that a mouse moved within it. This event is bubbled.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnMouseMove(MyGeometry, MouseEvent) end

---The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseEnter(MyGeometry, MouseEvent) end

---The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled.
---@param MouseEvent FPointerEvent
function UUserWidget:OnMouseLeave(MouseEvent) end

---Called when the mouse wheel is spun. This event is bubbled.
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnMouseWheel(MyGeometry, MouseEvent) end

---Called when a mouse button is double clicked.  Override this in derived classes.
---@param InMyGeometry FGeometry
---@param InMouseEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnMouseButtonDoubleClick(InMyGeometry, InMouseEvent) end

---Called when Slate detects that a widget started to be dragged.
---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragDetected(MyGeometry, PointerEvent, Operation) end

---Called when the user cancels the drag operation, typically when they simply release the mouse button after beginning a drag operation, but failing to complete the drag.
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragCancelled(PointerEvent, Operation) end

---Called during drag and drop when the drag enters the widget.
---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragEnter(MyGeometry, PointerEvent, Operation) end

---Called during drag and drop when the drag leaves the widget.
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
function UUserWidget:OnDragLeave(PointerEvent, Operation) end

---Called during drag and drop when the the mouse is being dragged over a widget.
---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
---@return boolean
function UUserWidget:OnDragOver(MyGeometry, PointerEvent, Operation) end

---Called when the user is dropping something onto a widget.  Ends the drag and drop operation, even if no widget handles this.
---@param MyGeometry FGeometry
---@param PointerEvent FPointerEvent
---@param Operation UDragDropOperation
---@return boolean
function UUserWidget:OnDrop(MyGeometry, PointerEvent, Operation) end

---Called when the user performs a gesture on trackpad. This event is bubbled.
---@param MyGeometry FGeometry
---@param GestureEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnTouchGesture(MyGeometry, GestureEvent) end

---Called when a touchpad touch is started (finger down)
---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnTouchStarted(MyGeometry, InTouchEvent) end

---Called when a touchpad touch is moved  (finger moved)
---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnTouchMoved(MyGeometry, InTouchEvent) end

---Called when a touchpad touch is ended (finger lifted)
---@param MyGeometry FGeometry
---@param InTouchEvent FPointerEvent
---@return FEventReply
function UUserWidget:OnTouchEnded(MyGeometry, InTouchEvent) end

---Called when motion is detected (controller or device) e.g. Someone tilts or shakes their controller.
---@param MyGeometry FGeometry
---@param InMotionEvent FMotionEvent
---@return FEventReply
function UUserWidget:OnMotionDetected(MyGeometry, InMotionEvent) end

---Called when mouse capture is lost if it was owned by this widget.
function UUserWidget:OnMouseCaptureLost() end

---@param Parent UWidget
---@param Type string
---@param Children ULuaArrayHelper<UWidget>
function UUserWidget:GetTypedChildrenOfWidget(Parent, Type, Children) end

---Bind an animation started delegate.
---@param Animation UWidgetAnimation
---@param Delegate FWidgetAnimationDynamicEvent
function UUserWidget:BindToAnimationStarted(Animation, Delegate) end

---Unbind an animation started delegate.
---@param Animation UWidgetAnimation
---@param Delegate FWidgetAnimationDynamicEvent
function UUserWidget:UnbindFromAnimationStarted(Animation, Delegate) end

---@param Animation UWidgetAnimation
function UUserWidget:UnbindAllFromAnimationStarted(Animation) end

---Bind an animation finished delegate.
---@param Animation UWidgetAnimation
---@param Delegate FWidgetAnimationDynamicEvent
function UUserWidget:BindToAnimationFinished(Animation, Delegate) end

---Unbind an animation finished delegate.
---@param Animation UWidgetAnimation
---@param Delegate FWidgetAnimationDynamicEvent
function UUserWidget:UnbindFromAnimationFinished(Animation, Delegate) end

---@param Animation UWidgetAnimation
function UUserWidget:UnbindAllFromAnimationFinished(Animation) end

---Allows binding to a specific animation's event.
---@param Animation UWidgetAnimation
---@param Delegate FWidgetAnimationDynamicEvent
---@param AnimationEvent EWidgetAnimationEvent
---@param UserTag string
function UUserWidget:BindToAnimationEvent(Animation, Delegate, AnimationEvent, UserTag) end

---Called when an animation is started.
---@param Animation UWidgetAnimation
function UUserWidget:OnAnimationStarted(Animation) end

---Called when an animation has either played all the way through or is stopped
---@param Animation UWidgetAnimation
function UUserWidget:OnAnimationFinished(Animation) end

---Sets the tint of the widget, this affects all child widgets.
---@param InColorAndOpacity FLinearColor
function UUserWidget:SetColorAndOpacity(InColorAndOpacity) end

---Sets the foreground color of the widget, this is inherited by sub widgets.  Any color property that is marked as inherit will use this color.
---@param InForegroundColor FSlateColor
function UUserWidget:SetForegroundColor(InForegroundColor) end

---@param InPadding FMargin
function UUserWidget:SetPadding(InPadding) end

---Plays an animation in this widget a specified number of times
---@param InAnimation UWidgetAnimation
---@param StartAtTime number
---@param NumLoopsToPlay number
---@param PlayMode EUMGSequencePlayMode
---@param PlaybackSpeed number
function UUserWidget:PlayAnimation(InAnimation, StartAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed) end

---Plays an animation in this widget a specified number of times stoping at a specified time
---@param InAnimation UWidgetAnimation
---@param StartAtTime number
---@param EndAtTime number
---@param NumLoopsToPlay number
---@param PlayMode EUMGSequencePlayMode
---@param PlaybackSpeed number
function UUserWidget:PlayAnimationTo(InAnimation, StartAtTime, EndAtTime, NumLoopsToPlay, PlayMode, PlaybackSpeed) end

---Stops an already running animation in this widget
---@param InAnimation UWidgetAnimation
function UUserWidget:StopAnimation(InAnimation) end

---Stop and jump to the specified time in this widget
---@param InAnimation UWidgetAnimation
---@param JumpAtTime number
function UUserWidget:JumpAnimation(InAnimation, JumpAtTime) end

---Pauses an already running animation in this widget
---@param InAnimation UWidgetAnimation
---@return number
function UUserWidget:PauseAnimation(InAnimation) end

---Gets the current time of the animation in this widget
---@param InAnimation UWidgetAnimation
---@return number
function UUserWidget:GetAnimationCurrentTime(InAnimation) end

---Gets whether an animation is currently playing on this widget.
---@param InAnimation UWidgetAnimation
---@return boolean
function UUserWidget:IsAnimationPlaying(InAnimation) end

---@return boolean
function UUserWidget:IsAnyAnimationPlaying() end

---Changes the number of loops to play given a playing animation
---@param InAnimation UWidgetAnimation
---@param NumLoopsToPlay number
function UUserWidget:SetNumLoopsToPlay(InAnimation, NumLoopsToPlay) end

---Changes the playback rate of a playing animation
---@param InAnimation UWidgetAnimation
---@param PlaybackSpeed number
function UUserWidget:SetPlaybackSpeed(InAnimation, PlaybackSpeed) end

---If an animation is playing, this function will reverse the playback.
---@param InAnimation UWidgetAnimation
function UUserWidget:ReverseAnimation(InAnimation) end

---returns true if the animation is currently playing forward, false otherwise.
---@param InAnimation UWidgetAnimation
---@return boolean
function UUserWidget:IsAnimationPlayingForward(InAnimation) end

---Plays a sound through the UI
---@param SoundToPlay USoundBase
function UUserWidget:PlaySound(SoundToPlay) end

---Listens for a particular Player Input Action by name.  This requires that those actions are being executed, and that we're not currently in UI-Only Input Mode.
---@param ActionName string
---@param EventType EInputEvent
---@param bConsume boolean
---@param Callback FOnInputAction
function UUserWidget:ListenForInputAction(ActionName, EventType, bConsume, Callback) end

---Removes the binding for a particular action's callback.
---@param ActionName string
---@param EventType EInputEvent
function UUserWidget:StopListeningForInputAction(ActionName, EventType) end

---Stops listening to all input actions, and unregisters the input component with the player controller.
function UUserWidget:StopListeningForAllInputActions() end

---ListenForInputAction will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.
function UUserWidget:RegisterInputComponent() end

---StopListeningForAllInputActions will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.
function UUserWidget:UnregisterInputComponent() end

---Checks if the action has a registered callback with the input component.
---@param ActionName string
---@return boolean
function UUserWidget:IsListeningForInputAction(ActionName) end

---@param NewPriority number
function UUserWidget:SetInputActionPriority(NewPriority) end

---@param bShouldBlock boolean
function UUserWidget:SetInputActionBlocking(bShouldBlock) end
