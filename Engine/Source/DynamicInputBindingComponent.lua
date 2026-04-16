---@meta

---@class EActorInputEvent
---@field IE_Pressed number
---@field IE_Released number
---@field IE_Repeat number
---@field IE_DoubleClick number
---@field IE_Axis number
---@field IE_MAX number
EActorInputEvent = {}


---@class FInputBindingInfo
---@field FunctionName string
---@field bConsumeInput boolean
FInputBindingInfo = {}


---@class FActionBindingInfo
---@field InputEvent EActorInputEvent
---@field ActionName string
FActionBindingInfo = {}


---@class FAxisBindingInfo
---@field AxisName string
FAxisBindingInfo = {}


---@class FActionBindingCluster
---@field ActionBindingInfos ULuaArrayHelper<FActionBindingInfo>
FActionBindingCluster = {}


---@class FAxisBindingCluster
---@field AxisBindingInfos ULuaArrayHelper<FAxisBindingInfo>
FAxisBindingCluster = {}


---@class UDynamicInputBindingComponent: UActorComponent
---@field ActionBindingClusters ULuaArrayHelper<FActionBindingCluster>
---@field AxisBindingClusters ULuaArrayHelper<FAxisBindingCluster>
local UDynamicInputBindingComponent = {}

---@param ActionName string
---@param ActorInputEvent EActorInputEvent
---@param FunctionName string
---@param bConsumeInput boolean
function UDynamicInputBindingComponent:BindAction(ActionName, ActorInputEvent, FunctionName, bConsumeInput) end

---@param AxisName string
---@param FunctionName string
---@param bConsumeInput boolean
function UDynamicInputBindingComponent:BindAxis(AxisName, FunctionName, bConsumeInput) end

---@param ActionName string
function UDynamicInputBindingComponent:RemoveActionBinding(ActionName) end

---@param AxisName string
function UDynamicInputBindingComponent:RemoveAxisBinding(AxisName) end

---@param Index number
function UDynamicInputBindingComponent:BindActionCluster(Index) end

---@param Index number
function UDynamicInputBindingComponent:BindAxisCluster(Index) end

---@param Index number
function UDynamicInputBindingComponent:RemoveActionClusterBinding(Index) end

---@param Index number
function UDynamicInputBindingComponent:RemoveAxisClusterBinding(Index) end
