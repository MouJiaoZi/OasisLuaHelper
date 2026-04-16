---@meta

---@class FShowUIDataConfig
---@field EventID number
---@field TitleID number
---@field TextID number
---@field ImageIndex number
---@field Weight number
---@field TipsTextID number
---@field BackgroundTexture FSoftObjectPath
FShowUIDataConfig = {}


---@class FShowUIDataUIInfo
---@field WidgetClassPath USceneInteractionUI
---@field isMountUIDynamic boolean
---@field MountName string
---@field MountOuterName string
---@field LayoutData FAnchorData
---@field LogicManagerNames string
---@field bAutoSize boolean @When AutoSize is true we use the widget's desired size
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
FShowUIDataUIInfo = {}


---@class FSceneInteractionUIClose : ULuaSingleDelegate
FSceneInteractionUIClose = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSceneInteractionUIClose:Bind(Callback, Obj) end

---执行委托
function FSceneInteractionUIClose:Execute() end


---@class USceneInteractionUI: UUAEUserWidget
---@field OnSceneInteractionUIClose FSceneInteractionUIClose
local USceneInteractionUI = {}

function USceneInteractionUI:ShowInteractionUI() end

function USceneInteractionUI:HideInteractionUI() end

---@param TitleID number
---@param TextID number
---@param ActiveIndex number
---@param TexturePath FSoftObjectPath
function USceneInteractionUI:SetShowText(TitleID, TextID, ActiveIndex, TexturePath) end

---@param TextID number
function USceneInteractionUI:ShowTips(TextID) end

---@param WidgetName string
---@param OuterName string
---@param bUseContains boolean
---@param LogicManager string
---@return boolean
function USceneInteractionUI:AddToUI(WidgetName, OuterName, bUseContains, LogicManager) end
