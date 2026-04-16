---@meta

---@class FOnMenuOpenChangedEvent : ULuaMulticastDelegate
FOnMenuOpenChangedEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsOpen: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMenuOpenChangedEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsOpen boolean
function FOnMenuOpenChangedEvent:Broadcast(bIsOpen) end


---The Menu Anchor allows you to specify an location that a popup menu should be anchored to, and should be summoned from. * Single Child * Popup
---@class UMenuAnchor: UContentWidget
---@field MenuClass UUserWidget @The widget class to spawn when the menu is required.  Creates the widget freshly each time. If you want to customize the creation of the popup, you should bind a function to OnGetMenuContentEvent instead.
---@field OnGetMenuContentEvent FGetWidget @Called when the menu content is requested to allow a more customized handling over what to display
---@field Placement EMenuPlacement @The placement location of the summoned widget.
---@field ShouldDeferPaintingAfterWindowContent boolean
---@field UseApplicationMenuStack boolean @Does this menu behave like a normal stacked menu? Set it to false to control the menu's lifetime yourself.
---@field OnMenuOpenChanged FOnMenuOpenChangedEvent @Called when the opened state of the menu changes
local UMenuAnchor = {}

---Toggles the menus open state.
---@param bFocusOnOpen boolean
function UMenuAnchor:ToggleOpen(bFocusOnOpen) end

---Opens the menu if it is not already open
---@param bFocusMenu boolean
function UMenuAnchor:Open(bFocusMenu) end

---Closes the menu if it is currently open.
function UMenuAnchor:Close() end

---@return boolean
function UMenuAnchor:IsOpen() end

---the same MouseDownEvent that just closed the menu is about to re-open it because it happens to land on the button.
---@return boolean
function UMenuAnchor:ShouldOpenDueToClick() end

---@return FVector2D
function UMenuAnchor:GetMenuPosition() end

---@return boolean
function UMenuAnchor:HasOpenSubMenus() end
