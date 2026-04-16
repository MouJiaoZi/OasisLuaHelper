---@meta

---@class UTeamAssembleBlueprintLibrary: UBlueprintFunctionLibrary
local UTeamAssembleBlueprintLibrary = {}

---@param Indata ULuaArrayHelper<FTeamAssembleAvatarDisplayInfo>
---@return number
function UTeamAssembleBlueprintLibrary:GetShowOffTeammateIndex(Indata) end

---@param InString string
---@return string
function UTeamAssembleBlueprintLibrary:ConvertChineseToPinyin(InString) end
