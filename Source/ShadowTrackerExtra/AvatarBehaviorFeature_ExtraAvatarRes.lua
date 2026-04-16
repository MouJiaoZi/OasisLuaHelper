---@meta

---@class FExtraAvatarResSkeletalMeshConfig
---@field SkeletalMeshRef USkeletalMesh
FExtraAvatarResSkeletalMeshConfig = {}


---@class FExtraAvatarResStaticMeshConfig
---@field StaticMeshRef UStaticMesh
FExtraAvatarResStaticMeshConfig = {}


---@class FExtraAvatarResPack
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bUseInLod00 boolean
---@field SkeletalMeshConfig FExtraAvatarResSkeletalMeshConfig
---@field SkeletalMeshConfig_LOD FExtraAvatarResSkeletalMeshConfig
---@field StaticMeshConfig FExtraAvatarResStaticMeshConfig
---@field StaticMeshConfig_LOD FExtraAvatarResStaticMeshConfig
---@field CheckConditionFunctionName string
---@field EnableLod00MinTCQuality number
---@field Lod00NotValidTCQualityList ULuaArrayHelper<number>
FExtraAvatarResPack = {}


---@class FExtraAvatarResPackItem
---@field ExtraAvatarResList ULuaArrayHelper<FExtraAvatarResPack>
FExtraAvatarResPackItem = {}


---@class UAvatarBehaviorFeature_ExtraAvatarRes: UAvatarBehaviorFeature
---@field ExtraAvatarResMap ULuaMapHelper<string, FExtraAvatarResPackItem>
local UAvatarBehaviorFeature_ExtraAvatarRes = {}

---@return boolean
function UAvatarBehaviorFeature_ExtraAvatarRes:IsTeammate() end

---@return boolean
function UAvatarBehaviorFeature_ExtraAvatarRes:IsAutonomousAvatar() end

function UAvatarBehaviorFeature_ExtraAvatarRes:CacheAvatarRes() end

function UAvatarBehaviorFeature_ExtraAvatarRes:ModifyAvatar() end

---@param FuncName string
---@return boolean
function UAvatarBehaviorFeature_ExtraAvatarRes:CheckConfigCondition(FuncName) end

function UAvatarBehaviorFeature_ExtraAvatarRes:PostInitBehaviorFeature() end

function UAvatarBehaviorFeature_ExtraAvatarRes:PostReleaseBehaviorFeature() end

---@param KeyName string
---@return FSoftObjectPath
function UAvatarBehaviorFeature_ExtraAvatarRes:GetTargetObjectSoftPath(KeyName) end
