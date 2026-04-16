---@meta

---@class UModeAvatarFeature_BountyHunter: UModeAvatarFeature
---@field EVACloths ULuaArrayHelper<number>
---@field HunterModeDefaultID ULuaMapHelper<EAvatarSlotType, FDefaultAvatarConfig>
---@field UltramanHeadID number
---@field bHandleHairBone boolean
---@field FeatureNetMetaData_BountyHunter FModeAvatarFeatureNetMetaData_BountyHunter
---@field bUseClothCheckOpt boolean
---@field bAssembleRestrictedClothIsWithHeadMesh boolean
---@field WholeBodyMeshClothesSet ULuaSetHelper<number>
local UModeAvatarFeature_BountyHunter = {}

---@param bReplace boolean
function UModeAvatarFeature_BountyHunter:DealWithSpecialHairReplace(bReplace) end

---@param bReplace boolean
function UModeAvatarFeature_BountyHunter:DealWithUltraManHead(bReplace) end

---@param InAvatarHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeature_BountyHunter:CheckCanClearSlot(InAvatarHandle) end

---@return number
function UModeAvatarFeature_BountyHunter:DealHeadWhenResourceNotDownload() end

---@param InClothID number
---@return boolean
function UModeAvatarFeature_BountyHunter:IsWholeBodyMeshCloth(InClothID) end

function UModeAvatarFeature_BountyHunter:InitWholeBodyMeshClothCache() end
