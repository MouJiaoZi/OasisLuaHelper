---@meta

---@class UInfectionTDM3_BlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UInfectionTDM3_BlueprintFunctionLibrary = {}

---@param OwnerPawn ASTExtraBaseCharacter
---@param Character ASTExtraBaseCharacter
---@return boolean
function UInfectionTDM3_BlueprintFunctionLibrary:IsSameTeam(OwnerPawn, Character) end

---@param CurType EInfectionPlayerInfectType
---@return number
function UInfectionTDM3_BlueprintFunctionLibrary:GetCharacterInfectCamp(CurType) end
