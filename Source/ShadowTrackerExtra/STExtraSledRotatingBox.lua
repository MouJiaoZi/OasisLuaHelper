---@meta

---@class FSledBoxServerSavedMoves
---@field BoxLocation FVector
---@field SledLocation FVector
FSledBoxServerSavedMoves = {}


---@class ASTExtraSledRotatingBox: AUAERegionActor
---@field MaxOrbitTime number
---@field Score number
---@field OrbitRadius number
---@field OrbitSpeed number
---@field SigValue number
---@field RotateDir number
local ASTExtraSledRotatingBox = {}

---@param DamageCauser AActor
function ASTExtraSledRotatingBox:AddSignalToDamageCauser(DamageCauser) end
