---@meta

---@class EPopKartSeatState
---@field None number
---@field NoDriver number
---@field HaveDriver number
EPopKartSeatState = {}


---@class ASTPopkartAreaTrigger: AActor
---@field AreaType ESTPopkartAreaTriggerType
---@field RaceGroup number
---@field NodeIndex number
---@field RacePathNameID number
---@field MapIconID number
---@field ShowMapMarkDistance number
---@field ExcludeVehicleType ULuaSetHelper<ESTExtraVehicleType>
---@field CheckSeatChange boolean
---@field VehicleAcceMaxSpeed ULuaMapHelper<ESTExtraVehicleType, number>
---@field NeedServerTick boolean
---@field BoxExtent FVector
---@field BoxOffset FVector
---@field DrawDebug boolean
local ASTPopkartAreaTrigger = {}

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartAreaTrigger:EnterAreaEffect(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartAreaTrigger:LeaveAreaEffect(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartAreaTrigger:NotifySeatStateChange(Vehicle) end
