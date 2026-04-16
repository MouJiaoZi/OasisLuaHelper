---@meta

---@class FPawnFlagList
---@field flagTypeList ULuaArrayHelper<string>
FPawnFlagList = {}


---@class UGeneralHeadFlagMgr: UUAEUserWidget
---@field HeadFlagPath string
---@field PawnFlagList ULuaMapHelper<string, FPawnFlagList>
local UGeneralHeadFlagMgr = {}

---@param BC ASTExtraBaseCharacter
function UGeneralHeadFlagMgr:RemoveFlag(BC) end

---@param PS AUAEPlayerState
function UGeneralHeadFlagMgr:RemoveFlagPS(PS) end
