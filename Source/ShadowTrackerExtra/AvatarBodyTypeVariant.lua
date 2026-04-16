---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarBodyTypeVariant: UObject
---@field bOverride_InitVariant boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseVariant boolean
---@field bOverride_DelayReleaseVariant boolean
---@field bOverride_TickVariant boolean
---@field bOverride_IsNeedTick boolean
---@field bOverride_PreAvatarRender boolean
---@field bOverride_PostAvatarRender boolean
---@field bOverride_IsNeedDelayRelease boolean
---@field bOverride_GetResVariantSoftRefBySoftRef boolean
---@field bOverride_CollectVariantRes boolean
---@field bOverride_CheckScopeInAdapt boolean
---@field bOverride_CheckScopeOutAdapt boolean
---@field ResVariantMap ULuaMapHelper<FSoftObjectPath, FSoftObjectPath>
---@field bIsReleaseDelayed boolean
local UAvatarBodyTypeVariant = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
---@param InOwnerAvatarEntity UAvatarEntity
function UAvatarBodyTypeVariant:InitVariant(InOwnerAvatarComp, InOwnerAvatarEntity) end

function UAvatarBodyTypeVariant:ReleaseVariant() end

function UAvatarBodyTypeVariant:DelayReleaseVariant() end

---@return boolean
function UAvatarBodyTypeVariant:IsNeedDelayRelease() end

function UAvatarBodyTypeVariant:TickVariant() end

---@return boolean
function UAvatarBodyTypeVariant:IsNeedTick() end

function UAvatarBodyTypeVariant:PreAvatarRender() end

function UAvatarBodyTypeVariant:PostAvatarRender() end

---@param InOriginalResSoftRef FSoftObjectPath
---@return FSoftObjectPath
function UAvatarBodyTypeVariant:GetResVariantSoftRefBySoftRef(InOriginalResSoftRef) end

function UAvatarBodyTypeVariant:CollectVariantRes() end

---@param InActionStart boolean
function UAvatarBodyTypeVariant:CheckScopeInAdapt(InActionStart) end

---@param InActionStart boolean
function UAvatarBodyTypeVariant:CheckScopeOutAdapt(InActionStart) end

---HOT_UPDATE_PROTECT *****************************************
---@return boolean
function UAvatarBodyTypeVariant:IsReleaseDelayed() end

---@param InOriginalResPath string
---@return string
function UAvatarBodyTypeVariant:GetResVariantPathByPath(InOriginalResPath) end

---@param InOriginalResSoftRef FSoftObjectPath
---@return string
function UAvatarBodyTypeVariant:GetResVariantPathBySoftRef(InOriginalResSoftRef) end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
---@param InOwnerAvatarEntity UAvatarEntity
function UAvatarBodyTypeVariant:BP_InitVariant(InOwnerAvatarComp, InOwnerAvatarEntity) end

function UAvatarBodyTypeVariant:BP_ReleaseVariant() end

function UAvatarBodyTypeVariant:BP_DelayReleaseVariant() end

---@return boolean
function UAvatarBodyTypeVariant:BP_IsNeedDelayRelease() end

function UAvatarBodyTypeVariant:BP_TickVariant() end

---@return boolean
function UAvatarBodyTypeVariant:BP_IsNeedTick() end

function UAvatarBodyTypeVariant:BP_PreAvatarRender() end

function UAvatarBodyTypeVariant:BP_PostAvatarRender() end

---@param InOriginalResSoftRef FSoftObjectPath
---@return FSoftObjectPath
function UAvatarBodyTypeVariant:BP_GetResVariantSoftRefBySoftRef(InOriginalResSoftRef) end

function UAvatarBodyTypeVariant:BP_CollectVariantRes() end

---@param InActionStart boolean
function UAvatarBodyTypeVariant:BP_CheckScopeInAdapt(InActionStart) end

---@param InActionStart boolean
function UAvatarBodyTypeVariant:BP_CheckScopeOutAdapt(InActionStart) end

---HOT_UPDATE_PROTECT *****************************************
function UAvatarBodyTypeVariant:InitVarientParam() end

---@param InOriginalResSoftRef FSoftObjectPath
---@param InVariantResSoftRef FSoftObjectPath
function UAvatarBodyTypeVariant:AppendResVariantMap(InOriginalResSoftRef, InVariantResSoftRef) end

---@param InSkeletalMeshVariantMap ULuaMapHelper<USkeletalMesh, USkeletalMesh>
function UAvatarBodyTypeVariant:AppendResVariantMap_SkeletalMesh(InSkeletalMeshVariantMap) end

---@param InAnimBPClassVariantMap ULuaMapHelper<UAnimInstance, UAnimInstance>
function UAvatarBodyTypeVariant:AppendResVariantMap_AnimBP(InAnimBPClassVariantMap) end

---@param InStaticMeshVariantMap ULuaMapHelper<UStaticMesh, UStaticMesh>
function UAvatarBodyTypeVariant:AppendResVariantMap_StaticMesh(InStaticMeshVariantMap) end

---@param InMatVariantMap ULuaMapHelper<UMaterialInterface, UMaterialInterface>
function UAvatarBodyTypeVariant:AppendResVariantMap_MatInterface(InMatVariantMap) end
