---@meta

---@class UAirVehicleComponent: UVehicleComponent
---@field EnableParachute boolean
---@field OpenParachuteHeight number
---@field CanOpenParachuteHeightInVehicle number
---@field ForceOpenParachuteHeightInVehicle number
---@field ForcePreloadCharParachuteAnimOnEnterVehicle boolean
---@field CloseParachuteHeightInVehicle number
---@field SkipOpenParachuteHeight number
---@field DoTraceWhenExit boolean
---@field DoOnMoreTraceWithWorldDynamic boolean
---@field LandTraceMaxHeight number
---@field ServerParachute boolean
---@field NoFuelJumpHeight number
---@field CrashHeight number
---@field CrashMinSin number
local UAirVehicleComponent = {}

---@param IsEnable boolean
function UAirVehicleComponent:SetEnableParachute(IsEnable) end

---@param StartLocation FVector
---@param TargetPrim UPrimitiveComponent
function UAirVehicleComponent:DoHeightTrace(StartLocation, TargetPrim) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UAirVehicleComponent:OnClientEnterVehicle(Character, SeatType, IsSucc) end
