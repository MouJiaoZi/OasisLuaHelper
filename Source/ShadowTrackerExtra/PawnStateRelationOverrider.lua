---@meta

---@class EPawnStateForbiddenRelationReason
---@field PawnStateForbiddenRelationReason_Base number
---@field PawnStateForbiddenRelationReason_Extend number
---@field PawnStateForbiddenRelationReason_OnCondition number
---@field PawnStateForbiddenRelationReason_FatalError number
EPawnStateForbiddenRelationReason = {}


---@class EOverridePawnStateCheck
---@field OverridePawnStateCheck_False number
---@field OverridePawnStateCheck_True number
---@field OverridePawnStateCheck_Skip number
EOverridePawnStateCheck = {}


---@class FForbiddenPawnRelation
FForbiddenPawnRelation = {}


---用于重写角色状态互斥逻辑，基类没有任何逻辑，需要派生类重写
---@class UPawnStateRelationOverrider: UObject
---@field bForceOverrideAllowCheck boolean
local UPawnStateRelationOverrider = {}

---@param StateToEnter number
---@return EOverridePawnStateCheck
function UPawnStateRelationOverrider:OverrideAllowState(StateToEnter) end

---@param InCharacter ASTExtraCharacter
---@return boolean
function UPawnStateRelationOverrider:IsValidOverrider(InCharacter) end

---@param StateToEnter number
---@param InStatesToInterrupt ULuaArrayHelper<number>
---@param OutStatesToInterrupt ULuaArrayHelper<number>
function UPawnStateRelationOverrider:OverrideInterruptStates(StateToEnter, InStatesToInterrupt, OutStatesToInterrupt) end

---@param InApplier AActor
---@param InOverrideCharacter ASTExtraCharacter
function UPawnStateRelationOverrider:Init(InApplier, InOverrideCharacter) end

function UPawnStateRelationOverrider:OnRemoved() end
