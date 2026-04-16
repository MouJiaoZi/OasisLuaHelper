---@meta

---@class EHeroType
---@field EHT_None number
---@field EHT_Assault number
---@field EHT_Agile number
---@field EHT_Medic number
---@field EHT_Engineer number
---@field EHT_Supply number
EHeroType = {}


---@class FHeroBaseInfo
---@field MaxLevel number
---@field TimeSeconds number
---@field KillCount number
---@field TotalDamage number
---@field TotalHeal number
---@field SaveCount number
---@field KillCountInAir number
---@field TotalDamageInAir number
FHeroBaseInfo = {}


---@class FHeroEquipFlowInfo
---@field HeroID number
---@field Level number
FHeroEquipFlowInfo = {}


---@class FSkillRecordData
---@field RecordList ULuaMapHelper<string, number>
FSkillRecordData = {}


---@class FHeroSkillData
---@field HeroID number
---@field HeroUsingCount number
---@field HeroRecord FHeroBaseInfo
---@field SkillRecords ULuaMapHelper<number, FSkillRecordData>
FHeroSkillData = {}


---@class FTeammateHeroData
---@field FinalHeroId number
---@field FinalHeroLevel number
FTeammateHeroData = {}


---@class FGameModePlayerBattleResultData_Hero
---@field HeroSkillDatas ULuaArrayHelper<FHeroSkillData>
---@field FinalHeroId number
---@field FinalHeroLevel number
---@field TeammateDatas ULuaMapHelper<number, FTeammateHeroData>
FGameModePlayerBattleResultData_Hero = {}
