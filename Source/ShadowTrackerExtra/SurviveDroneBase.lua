---@meta

---@class EDroneState
---@field ENone number
---@field ESpawned number
---@field EFlyToCharacter number
---@field EGoDown number
---@field EHover number
---@field EGoUp number
---@field EFlyToForever number
---@field EToDestory number
EDroneState = {}


---@class ASurviveDroneBase: ACharacter, IRegionObjectInterface
---@field DronState EDroneState
---@field Speed number
---@field FlyToTargetLoc FVector
---@field FlyDirection FVector
---@field ForeverDistance number
---@field OffsetZ number
---@field HoverHeight number
---@field HoverTime number
local ASurviveDroneBase = {}

---@param TargetLoc FVector
function ASurviveDroneBase:FlytoDestinaiton(TargetLoc) end

---@param preState EDroneState
function ASurviveDroneBase:OnRep_DronSate(preState) end

function ASurviveDroneBase:FlytoDestinaiton_BP() end

---@param NewState EDroneState
function ASurviveDroneBase:GoToState(NewState) end

function ASurviveDroneBase:PutDownAirDrop() end

function ASurviveDroneBase:DetachFromDrone() end

---@param TargetLoc FVector
function ASurviveDroneBase:SetFlyTarget(TargetLoc) end

function ASurviveDroneBase:FlyToCharacterAction() end

function ASurviveDroneBase:FlyToForeverAction() end

function ASurviveDroneBase:HoverAction() end

function ASurviveDroneBase:GoDownAction() end

function ASurviveDroneBase:GoUpAction() end

---@return boolean
function ASurviveDroneBase:MoveAndCheckIsGotoTarget() end

---@param AirDropActor AActor
function ASurviveDroneBase:OnAirDropDetached(AirDropActor) end
