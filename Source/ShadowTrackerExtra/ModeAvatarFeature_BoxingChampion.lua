---@meta

---@class UModeAvatarFeature_BoxingChampion: UModeAvatarFeature
---@field BoxingChampionModeDefaultID ULuaMapHelper<EAvatarSlotType, FDefaultAvatarConfig>
---@field bHandleHairBone boolean
---@field FeatureNetMetaData_BoxingChampion FModeAvatarFeatureNetMetaData_BoxingChampion
local UModeAvatarFeature_BoxingChampion = {}

---@param bReplace boolean
function UModeAvatarFeature_BoxingChampion:DealWithHairReplace(bReplace) end

---@param bReplace boolean
function UModeAvatarFeature_BoxingChampion:DealWithHeadReplace(bReplace) end
