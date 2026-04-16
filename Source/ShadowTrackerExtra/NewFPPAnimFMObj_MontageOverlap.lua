---@meta

---@class UNewFPPAnimFMObj_MontageOverlap: UAnimFunctionModule_ObjInstance
---@field LeftArmMontageWeight number
---@field RightArmMontageWeight number
---@field CurrentBlendInTime number
---@field VaultBlendInTime number
---@field NormalBlendInTime number
local UNewFPPAnimFMObj_MontageOverlap = {}

---@param PawnState EPawnState
function UNewFPPAnimFMObj_MontageOverlap:OnPawnStateEnterEvent(PawnState) end

---@param PawnState EPawnState
function UNewFPPAnimFMObj_MontageOverlap:OnPawnStateLeaveEvent(PawnState) end
