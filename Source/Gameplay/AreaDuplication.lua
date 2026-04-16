---@meta

---@class FAreaDuplicationConfig
---@field AreaName string
---@field VerticalSize number
FAreaDuplicationConfig = {}


---@class FAreaDuplicationID
FAreaDuplicationID = {}


---@class UAreaDuplicationComponent: UActorComponent
---@field DuplicationConfig FAreaDuplicationConfig
---@field bIsPrototype boolean
local UAreaDuplicationComponent = {}


---@class UAreaDuplication: UBlueprintFunctionLibrary
local UAreaDuplication = {}

---@param Component UAreaDuplicationComponent
---@return boolean
function UAreaDuplication:RegisterArea(Component) end

---@param Component UAreaDuplicationComponent
function UAreaDuplication:UnregisterArea(Component) end

---@param AreaName string
---@return FAreaDuplicationID
function UAreaDuplication:DuplicateArea(AreaName) end

---@param ID FAreaDuplicationID
function UAreaDuplication:TerminateArea(ID) end

function UAreaDuplication:Clear() end
