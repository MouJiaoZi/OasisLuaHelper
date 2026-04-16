---@meta

---The interaction source for the widget interaction component, e.g. where do we try and trace from to try to find a widget under a virtual pointer device.
---@class EWidgetInteractionSource
---@field World number @Sends traces from the world location and orientation of the interaction component.
---@field Mouse number @Sends traces from the mouse location of the first local player controller.
---@field CenterScreen number @Sends trace from the center of the first local player's screen.
---@field Custom number @Sends traces from a custom location determined by the user.  Will use whatever FHitResult is set by the call to SetCustomHitResult.
EWidgetInteractionSource = {}


---@class FOnHoveredWidgetChanged : ULuaMulticastDelegate
FOnHoveredWidgetChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WidgetComponent: UWidgetComponent, PreviousWidgetComponent: UWidgetComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHoveredWidgetChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param WidgetComponent UWidgetComponent
---@param PreviousWidgetComponent UWidgetComponent
function FOnHoveredWidgetChanged:Broadcast(WidgetComponent, PreviousWidgetComponent) end


---This is a component to allow interaction with the Widget Component.  This class allows you to simulate a sort of laser pointer device, when it hovers over widgets it will send the basic signals to show as if the mouse were moving on top of it.  You'll then tell the component to simulate key presses, like Left Mouse, down and up, to simulate a mouse click.
---@class UWidgetInteractionComponent: USceneComponent
---@field OnHoveredWidgetChanged FOnHoveredWidgetChanged @Called when the hovered Widget Component changes.  The interaction component functions at the Slate level - so it's unable to report anything about what UWidget is under the hit result.
---@field VirtualUserIndex number @Represents the Virtual User Index.  Each virtual user should be represented by a different index number, this will maintain separate capture and focus states for them.  Each controller or finger-tip should get a unique PointerIndex.
---@field PointerIndex number @Each user virtual controller or virtual finger tips being simulated should use a different pointer index.
---@field TraceChannel ECollisionChannel @The trace channel to use when tracing for widget components in the world.
---@field InteractionDistance number @The distance in game units the component should be able to interact with a widget component.
---@field InteractionSource EWidgetInteractionSource @Should we project from the world location of the component?  If you set this to false, you'll need to call SetCustomHitResult(), and provide the result of a custom hit test form whatever location you wish.
---@field bEnableHitTesting boolean @Should the interaction component perform hit testing (Automatic or Custom) and attempt to simulate hover - if you were going to emulate a keyboard you would want to turn this option off if the virtual keyboard was separate from the virtual pointer device and used a second interaction component.
---@field bShowDebug boolean @Shows some debugging lines and a hit sphere to help you debug interactions.
---@field DebugColor FLinearColor @Determines the color of the debug lines.
---@field CustomHitResult FHitResult @Stores the custom hit result set by the player.
---@field LocalHitLocation FVector2D @The 2D location on the widget component that was hit.
---@field LastLocalHitLocation FVector2D @The last 2D location on the widget component that was hit.
---@field LastHitResult FHitResult @The last hit result we used.
---@field bIsHoveredWidgetInteractable boolean @Are we hovering over any interactive widgets.
---@field bIsHoveredWidgetFocusable boolean @Are we hovering over any focusable widget?
---@field bIsHoveredWidgetHitTestVisible boolean @Are we hovered over a widget that is hit test visible?
local UWidgetInteractionComponent = {}

---Presses a key as if the mouse/pointer were the source of it.  Normally you would just use Left/Right mouse button for the Key.  However - advanced uses could also be imagined where you send other keys to signal widgets to take special actions if they're under the cursor.
---@param Key FKey
function UWidgetInteractionComponent:PressPointerKey(Key) end

---Releases a key as if the mouse/pointer were the source of it.  Normally you would just use Left/Right mouse button for the Key.  However - advanced uses could also be imagined where you send other keys to signal widgets to take special actions if they're under the cursor.
---@param Key FKey
function UWidgetInteractionComponent:ReleasePointerKey(Key) end

---Press a key as if it had come from the keyboard.  Avoid using this for 'a-z|A-Z', things like the Editable Textbox in Slate expect OnKeyChar to be called to signal a specific character being send to the widget.  So for those cases you should use SendKeyChar.
---@param Key FKey
---@param bRepeat boolean
---@return boolean
function UWidgetInteractionComponent:PressKey(Key, bRepeat) end

---Releases a key as if it had been released by the keyboard.
---@param Key FKey
---@return boolean
function UWidgetInteractionComponent:ReleaseKey(Key) end

---Does both the press and release of a simulated keyboard key.
---@param Key FKey
---@return boolean
function UWidgetInteractionComponent:PressAndReleaseKey(Key) end

---Transmits a list of characters to a widget by simulating a OnKeyChar event for each key listed in the string.
---@param Characters string
---@param bRepeat boolean
---@return boolean
function UWidgetInteractionComponent:SendKeyChar(Characters, bRepeat) end

---Sends a scroll wheel event to the widget under the last hit result.
---@param ScrollDelta number
function UWidgetInteractionComponent:ScrollWheel(ScrollDelta) end

---Returns true if a widget under the hit result is interactive.  e.g. Slate widgets that return true for IsInteractable().
---@return boolean
function UWidgetInteractionComponent:IsOverInteractableWidget() end

---Returns true if a widget under the hit result is focusable.  e.g. Slate widgets that return true for SupportsKeyboardFocus().
---@return boolean
function UWidgetInteractionComponent:IsOverFocusableWidget() end

---Returns true if a widget under the hit result is has a visibility that makes it hit test visible.  e.g. Slate widgets that return true for GetVisibility().IsHitTestVisible().
---@return boolean
function UWidgetInteractionComponent:IsOverHitTestVisibleWidget() end

---Gets the last hit location on the widget in 2D, local pixel units of the render target.
---@return FVector2D
function UWidgetInteractionComponent:Get2DHitLocation() end

---Set custom hit result.  This is only taken into account if InteractionSource is set to EWidgetInteractionSource::Custom.
---@param HitResult FHitResult
function UWidgetInteractionComponent:SetCustomHitResult(HitResult) end
