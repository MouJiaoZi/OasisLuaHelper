---@meta

---@class ECampRelation
---@field Same number
---@field Neutral number
---@field Enemy number
ECampRelation = {}


---@class FCampConfigInfo
---@field CampID number
---@field CampName string
FCampConfigInfo = {}


---@class FCampReleation
---@field CampA_ID number
---@field CampB_ID number
---@field Releation ECampRelation
FCampReleation = {}


---@class UGameModeGeneralDataAsset: UDataAsset
---@field CampConfigs ULuaArrayHelper<FCampConfigInfo>
---@field CampRelationConfigs ULuaArrayHelper<FCampReleation>
---@field DefaultCampRelation ECampRelation
---@field bDifferentTeamHasDifferentCamp boolean
local UGameModeGeneralDataAsset = {}
