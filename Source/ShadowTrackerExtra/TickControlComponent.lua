---@meta

---@class ECustomTickType
---@field ComponentTick number
---@field OwnerTick number
ECustomTickType = {}


---@class ECustomTickRoleType
---@field ECTR_All number
---@field ECTR_Simulated number
---@field ECTR_Autonomous number
---@field ECTR_Authority number
---@field ECTR_SimulatedAndAutonomous number
---@field ECTR_SimulatedAndAuthority number
---@field ECTR_AutonomousAndAuthority number
ECustomTickRoleType = {}


---@class FTickListItem
---@field RoleType ECustomTickRoleType
FTickListItem = {}


---@class UTickControlComponent: UActorComponent
---@field CustomTickType ECustomTickType
---@field NeedTickComponentClassList ULuaMapHelper<UClass, ECustomTickRoleType>
---@field NeedTickComponentList ULuaArrayHelper<FTickListItem>
---@field RoleBits number
local UTickControlComponent = {}

---@param TickItem UActorComponent
---@param NeedCheckExist boolean
function UTickControlComponent:AddToTickComponentList(TickItem, NeedCheckExist) end

---@param TickItem UActorComponent
function UTickControlComponent:RemoveFromTickComponentList(TickItem) end

---@param Comp UActorComponent
---@return boolean
function UTickControlComponent:IsControlling(Comp) end
