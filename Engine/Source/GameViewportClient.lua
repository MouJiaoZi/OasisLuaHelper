---@meta

---Delegate for overriding the behavior when a navigation action is taken, Not to be confused with FNavigationDelegate which allows a specific widget to override behavior for itself
---@class FCustomNavigationHandler : ULuaSingleDelegate
FCustomNavigationHandler = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: TSharedPtr<SWidget>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomNavigationHandler:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 TSharedPtr<SWidget>
function FCustomNavigationHandler:Execute(Param1, Param2) end


---A game viewport (FViewport) is a high-level abstract interface for the platform specific rendering, audio, and input subsystems. GameViewportClient is the engine's interface to a game viewport. Exactly one GameViewportClient is created for each instance of the game.  The only case (so far) where you might have a single instance of Engine, but multiple instances of the game (and thus multiple GameViewportClients) is when you have more than one PIE window running. Responsibilities: propagating input events to the global interactions list
---@class UGameViewportClient: UScriptViewportClient, FExec
---@field DebugProperties ULuaArrayHelper<FDebugDisplayProperty>
local UGameViewportClient = {}

---Rotates controller ids among gameplayers, useful for testing splitscreen with only one controller.
function UGameViewportClient:SSSwapControllers() end

---Exec for toggling the display of the title safe area
function UGameViewportClient:ShowTitleSafeArea() end

---Sets the player which console commands will be executed in the context of.
---@param PlayerIndex number
function UGameViewportClient:SetConsoleTarget(PlayerIndex) end
