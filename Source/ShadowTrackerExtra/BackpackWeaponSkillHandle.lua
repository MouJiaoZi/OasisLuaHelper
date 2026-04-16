---@meta

---@class UBackpackWeaponSkillHandle: UBackpackWeaponHandle, IAddNewSkillToOwnerInterface
---@field SkillsConfig ULuaArrayHelper<FItemSkillsConfig>
---@field SpecificSkillsConfig ULuaMapHelper<string, FItemSkillsConfig>
---@field AutoTriggerSkillInUseHandle boolean
---@field EnableCheckWeaponCreate boolean
local UBackpackWeaponSkillHandle = {}

---@param WorldContextObj UObject
---@return number
function UBackpackWeaponSkillHandle:GetReloadDefineID(WorldContextObj) end

---@param STBC ASTExtraBaseCharacter
---@return boolean
function UBackpackWeaponSkillHandle:CheckWeaponCreateSucceed(STBC) end
