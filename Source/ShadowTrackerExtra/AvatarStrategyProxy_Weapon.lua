---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategyProxy_Weapon: UAvatarStrategyProxy
local UAvatarStrategyProxy_Weapon = {}

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy_Weapon:InitStrategyProxy() end

function UAvatarStrategyProxy_Weapon:ReleaseStrategyProxy() end

---+++++++++Control/Component+++++++++ Should Contains Avatar Component in Params
---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsOffHand boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Weapon:GetMeshResRef(InAC, InHandle, InIsUseLod00, InIsOffHand, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategyProxy_Weapon:GetSkeletalMesh(InAC, InMeshPack, bUseLod00) end

---@param InAC UAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategyProxy_Weapon:GetStaticMesh(InAC, InMeshPack, bUseLod00) end

---+++++++++Entity+++++++++ Should Contains Avatar Component and Avatar Entity in Params
---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Weapon:GetAnimBPPath(InAC, InAE, InMeshPack, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategyProxy_Weapon:GetRawMeshTypeByMeshPack(InAC, InAE, InMeshPack, OutMeshType) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategyProxy_Weapon:ApplyAvatarRenderConfig(InAC, InAE) end
