---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategyProxy_Vehicle: UAvatarStrategyProxy
local UAvatarStrategyProxy_Vehicle = {}

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy_Vehicle:InitStrategyProxy() end

function UAvatarStrategyProxy_Vehicle:ReleaseStrategyProxy() end

---+++++++++Control/Component+++++++++ Should Contains Avatar Component in Params
---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetMeshResRef(InAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetMeshResRefByMeshPack(InAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetSkeletalMeshRef(InAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetSkeletalMesh(InAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetStaticMeshRef(InAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetStaticMesh(InAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig) end

---@param InAC UAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Vehicle:GetAnimBPPath(InAC, InMeshPack, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end
