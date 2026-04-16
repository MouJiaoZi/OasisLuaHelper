---@meta

---@class FIconStateInfo
---@field HasProgressBar boolean
---@field SkillIconStateMap ULuaMapHelper<ESkillIconStatus, FIconStateParam>
FIconStateInfo = {}


---@class USPBAddonSkillUIDataAsset: UDataAsset
---@field AddonSkillUIMap ULuaMapHelper<string, FIconStateInfo>
local USPBAddonSkillUIDataAsset = {}
