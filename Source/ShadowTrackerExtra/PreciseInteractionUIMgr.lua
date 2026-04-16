---@meta

---@class FInteractionUIPool
---@field RecycledItems ULuaArrayHelper<UPreciseInteractionUI>
---@field UIPath string
---@field bIsClassLoaded boolean
FInteractionUIPool = {}


---@class UPreciseInteractionUIMgr: UActorComponent
---@field ParentUIKey string
---@field ParentWidgetName string
---@field InteractionConfigTable string
---@field ParentUIClassPath string
---@field DefaultInteractionUIPath string
---@field ParentUIClassPath_Classic string
---@field DefaultInteractionUIPath_Classic string
---@field bSortInteractionUISwitch boolean
---@field SearchSuperClassDepth number
---@field bEnableOnlyOnPurePC boolean
---@field StateUILinkageMap ULuaMapHelper<string, FStateUILinkageList>
---@field StateUIs ULuaArrayHelper<UUAEUserWidget>
---@field StateUIs_HiddenInNoneClassicStyleScopeInteraction ULuaArrayHelper<UUAEUserWidget>
---@field ActiveInteractionUIs ULuaArrayHelper<UPreciseInteractionUI>
---@field InteractUIPool ULuaMapHelper<string, FInteractionUIPool>
---@field PendingCreateUIList ULuaMapHelper<number, FInteractBehaviorList>
---@field PendingStateUIName ULuaSetHelper<string>
---@field UIContainer UWidget
local UPreciseInteractionUIMgr = {}

---@param UIName string
---@param bHiddenInNoneClassicStyleScopeInteraction boolean
function UPreciseInteractionUIMgr:ShowStateUI(UIName, bHiddenInNoneClassicStyleScopeInteraction) end

---@param UIName string
---@param Callback FUIActionDelegate
function UPreciseInteractionUIMgr:ShowStateUIWithCallback(UIName, Callback) end

---@param UIName string
function UPreciseInteractionUIMgr:HideStateUI(UIName) end

---@param Widget UWidget
function UPreciseInteractionUIMgr:OnStateUIShown(Widget) end

---@param Widget UWidget
function UPreciseInteractionUIMgr:OnStateUIShown_HiddenInNoneClassicStyleScopeInteraction(Widget) end

---@param InteractionMode number
function UPreciseInteractionUIMgr:ShowOrHideScopeInteractionRelatedStateUI(InteractionMode) end

---@param InteractBehavior FInteractBehaviorList
function UPreciseInteractionUIMgr:CreateInteractionUI(InteractBehavior) end

function UPreciseInteractionUIMgr:PostInteractionUICreated() end

---@param InteractBehavior FInteractBehaviorList
function UPreciseInteractionUIMgr:UpdateInteractionUI(InteractBehavior) end

---@param InteractBehavior FInteractBehaviorList
function UPreciseInteractionUIMgr:RecycleInteractionUI(InteractBehavior) end

function UPreciseInteractionUIMgr:PostInteractionUIRecycled() end

function UPreciseInteractionUIMgr:SortInteractionUIs() end

function UPreciseInteractionUIMgr:OnCleanup() end

function UPreciseInteractionUIMgr:OnInitialize() end

---@param ClassPath string
---@return boolean
function UPreciseInteractionUIMgr:HasLoadUIClass(ClassPath) end

function UPreciseInteractionUIMgr:CreateContainerUI() end

function UPreciseInteractionUIMgr:HideContainerUI() end

---@return boolean
function UPreciseInteractionUIMgr:IsPreciseInteractionMode() end

---@return boolean
function UPreciseInteractionUIMgr:IsScopeInteractionMode() end

---@return EPCInteractionMode
function UPreciseInteractionUIMgr:GetInteractionMode() end

---@return boolean
function UPreciseInteractionUIMgr:ShouldDisableScopeInteraction() end

function UPreciseInteractionUIMgr:CleanupAllItem() end
