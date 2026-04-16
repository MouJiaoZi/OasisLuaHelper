---@meta

---@class FSkillPreloadInfo
---@field PreloadSkillArray ULuaArrayHelper<AUTSkill>
---@field bIsOnlyHighLevelDevice boolean
---@field Remarks string
FSkillPreloadInfo = {}


---@class USkillPreloadDataAsset: UDataAsset
---@field SkillPreloadMap ULuaMapHelper<string, FSkillPreloadInfo>
local USkillPreloadDataAsset = {}
