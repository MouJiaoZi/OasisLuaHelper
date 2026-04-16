---@meta

---@class AMuralWorldPawn: ASTExtraCharacter
---@field bEnableInputWithoutPossess boolean
local AMuralWorldPawn = {}

function AMuralWorldPawn:InitShadowPuppet() end

---@param InNetRole ENetRole
function AMuralWorldPawn:SetClientRole(InNetRole) end

---@param DestLocation FVector
---@param DestRotation FRotator
---@param bIsATest boolean
---@param bNoCheck boolean
---@return boolean
function AMuralWorldPawn:ClientTeleportTo(DestLocation, DestRotation, bIsATest, bNoCheck) end
