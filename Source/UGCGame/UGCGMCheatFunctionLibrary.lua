---@meta

---@class UUGCGMCheatFunctionLibrary: UBlueprintFunctionLibrary
local UUGCGMCheatFunctionLibrary = {}

---@param Path string
function UUGCGMCheatFunctionLibrary:GetMobCharacterClassesPathByPath(Path) end

---@param Path string
function UUGCGMCheatFunctionLibrary:GetMobCharacterClassesByPath(Path) end

---@param Mob ACharacter
---@param OutTreeInfo FUGCMobBTDebugInfo
---@param BlackBoardInfo ULuaArrayHelper<FUGCMobBTBlackBoardInfo>
function UUGCGMCheatFunctionLibrary:GetMobBTDebugInfo(Mob, OutTreeInfo, BlackBoardInfo) end
