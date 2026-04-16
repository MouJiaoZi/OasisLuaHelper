---@meta

---@class ASTExtraMoveAlongZiplineActor: AActivityBaseActor
---@field MoveStartLocation FVector
---@field MoveEndLocation FVector
---@field GlideTime number
---@field bFixCameraAcrossFloor boolean
---@field WeakZiplineSkill USTExtraZiplineSkill
local ASTExtraMoveAlongZiplineActor = {}

---@param ZiplineActor ASTExtraZiplineActor
---@param InOwningPlayerCharacter ASTExtraBaseCharacter
function ASTExtraMoveAlongZiplineActor:Init_BP(ZiplineActor, InOwningPlayerCharacter) end

---@param Param FClick_Param
---@return boolean
function ASTExtraMoveAlongZiplineActor:CanInterruptByClickButton(Param) end

function ASTExtraMoveAlongZiplineActor:OnRep_OwningPlayerCharacter() end

function ASTExtraMoveAlongZiplineActor:OnRep_ZiplineActor() end
