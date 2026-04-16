---@meta

---@class UAimProcess: UObject
---@field Name string
local UAimProcess = {}

---@param InShootWeapon ASTExtraShootWeapon
---@param InFPPComp UBaseFPPComponent
---@return boolean
function UAimProcess:IsOK(InShootWeapon, InFPPComp) end

---@param InShootWeapon ASTExtraShootWeapon
---@param InFPPComp UBaseFPPComponent
---@return boolean
function UAimProcess:ADSOn(InShootWeapon, InFPPComp) end

---@param InShootWeapon ASTExtraShootWeapon
---@param InFPPComp UBaseFPPComponent
---@return boolean
function UAimProcess:ADSOff(InShootWeapon, InFPPComp) end

---@param InShootWeapon ASTExtraShootWeapon
---@param InFPPComp UBaseFPPComponent
function UAimProcess:AgainstWall(InShootWeapon, InFPPComp) end

---@param InShootWeapon ASTExtraShootWeapon
---@param InFPPComp UBaseFPPComponent
function UAimProcess:LeaveWall(InShootWeapon, InFPPComp) end
