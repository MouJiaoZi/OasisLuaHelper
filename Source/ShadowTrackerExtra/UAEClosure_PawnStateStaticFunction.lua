---@meta

---@class UUAEClosure_PawnStateStaticFunction: UBlueprintFunctionLibrary
local UUAEClosure_PawnStateStaticFunction = {}

---@param Character ASTExtraBaseCharacter
---@param ExitState ULuaArrayHelper<EPawnState>
function UUAEClosure_PawnStateStaticFunction:ClearCharacterState(Character, ExitState) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitVault(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitDoubleVault(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitPicth(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitSave(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitDying(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitPlayEmote(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitCarring(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitCarringBox(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitBuild(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitInteracting(Character) end

---@param Character ASTExtraBaseCharacter
---@param bStopPassiveSkill boolean
function UUAEClosure_PawnStateStaticFunction:ExitCastingSkill(Character, bStopPassiveSkill) end

---@param Character ASTExtraBaseCharacter
---@param bApplyVehicleVelocity boolean
function UUAEClosure_PawnStateStaticFunction:ExitVehicle(Character, bApplyVehicleVelocity) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitLeanOutVehicle(Character) end

---@param Character ASTExtraBaseCharacter
function UUAEClosure_PawnStateStaticFunction:ExitParachute(Character) end
