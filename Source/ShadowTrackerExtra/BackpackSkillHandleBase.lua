---@meta

---如果需要物品赋予角色技能,继承这个类
---@class UBackpackSkillHandleBase: ULuaBattleItemHandleBase, IAddNewSkillToOwnerInterface
---@field SkillsConfig ULuaArrayHelper<FItemSkillsConfig>
---@field SpecificSkillsConfig ULuaMapHelper<string, FItemSkillsConfig>
local UBackpackSkillHandleBase = {}
