---@meta

---@class IGISShowUIInterface
IGISShowUIInterface = {}

---@param InMessage string
function IGISShowUIInterface:OnCustomMessage(InMessage) end

---@param InActor AActor
function IGISShowUIInterface:OnSetActor(InActor) end


---@class IGISShowUIActorInterface
IGISShowUIActorInterface = {}

---@param Widget UUserWidget
function IGISShowUIActorInterface:OnUICreated(Widget) end


---@class USTGISObjectAction_ShowUI: USTExtreGISActionBase
---@field WidgetToAttach UUAEUserWidget
---@field bRemoveUI boolean
---@field WidgetName string
---@field OuterName string
---@field bUseContains boolean
---@field LogicManager string
---@field TotalTryTimes number
---@field ZOrder number
---@field AnchorData FAnchorData
---@field CustomMessage string
---@field SyncRemoveUI boolean
local USTGISObjectAction_ShowUI = {}

function USTGISObjectAction_ShowUI:OnActionStarted() end

function USTGISObjectAction_ShowUI:TryMount() end

function USTGISObjectAction_ShowUI:TryRemoveMount() end
