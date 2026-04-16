---@meta

---武器类型 - 用于区分双持动画模板
---@class EUGCWeaponCooperateType
---@field None number @无
---@field RangedWeapon number @远程武器（枪械）
---@field MeleeWeapon number @近战武器（刀剑）
EUGCWeaponCooperateType = {}


---@class EUGCCrossHairPresetType
---@field None number @无
---@field Rifle number @步枪
---@field ShotGun number @霰弹枪
---@field Pistol number @手枪
---@field Other number @榴弹枪
EUGCCrossHairPresetType = {}


---@class EWeaponCustomMeshType
---@field GunPoint number @枪口配件位
---@field Grip number @握把配件位
---@field Magazine number @弹匣配件位
---@field Gunstock number @枪托配件位
---@field OpticalSight number @瞄准镜位
EWeaponCustomMeshType = {}


---@class FShootWeaponUniversalProjectileConfig
---@field bEnableUniversalProjectile boolean
---@field UniversalProjectile AUniversalProjectileCore
---@field bOverrideSpeedConfig boolean
---@field UniversalProjectileGravityScale number
---@field bOverrideDamageConfig boolean
---@field DamageTypeConfig FRestrictedDamageTypeData
FShootWeaponUniversalProjectileConfig = {}


---@class FUGCExtraBulletConfig
---@field AttrModifyConfigs_Weapon ULuaArrayHelper<FPESkillAttributeItem>
---@field AttrModifyConfigs_ExtraBullet ULuaArrayHelper<FPESkillAttributeItem>
---@field ProjectileConfig FShootWeaponUniversalProjectileConfig
---@field DefaultPriority number
FUGCExtraBulletConfig = {}


---@class FUGCExtraBulletConfig_Rep
---@field AmmoID number
---@field UGCExtraBulletConfig FUGCExtraBulletConfig
FUGCExtraBulletConfig_Rep = {}


---@class FUGCCrossHairPreset
---@field Type EUGCCrossHairPresetType
---@field CrossHairData ULuaArrayHelper<FWeaponCrossHairPerformData>
FUGCCrossHairPreset = {}


---@class FWeaponCooperateAnimListPaths
---@field WeaponWithShieldADSAnimListPath FSoftObjectPath @护盾武器动画列表路径 - ADS瞄准状态
---@field WeaponWithShieldAnimListPath FSoftObjectPath @护盾武器动画列表路径 - 正常状态
---@field BaseWeaponAnimListPath FSoftObjectPath @基础武器动画列表路径
FWeaponCooperateAnimListPaths = {}


---双持武器动画列表配置 用于配置双持武器时需要添加的组件路径和动画列表路径
---@class UUGCAdditionalWeaponCooperateConfig: UObject
---@field AdditionalWeaponAnimListCompPath string @附加武器动画列表组件路径
---@field ShieldWeaponCompPath string @护盾武器组件路径
---@field WeaponWithShieldGroupName string @武器护盾组名称
---@field WeaponDynamicAnimListManagerPath FSoftObjectPath @动态动画列表管理器路径（如果蓝图中没有，则动态创建此组件）
---@field RangedWeaponAnimListPaths FWeaponCooperateAnimListPaths @远程武器（枪械）双持动画路径
---@field MeleeWeaponAnimListPaths FWeaponCooperateAnimListPaths @近战武器（刀剑）双持动画路径
local UUGCAdditionalWeaponCooperateConfig = {}


---@class AUGCShootWeapon: ASTExtraShootWeapon
---@field UGCCrossHairPresetType EUGCCrossHairPresetType
---@field CrossHairArray ULuaArrayHelper<FUGCCrossHairPreset>
---@field ReloadTimeFactorWrapper FGameAttributeProperty
---@field SwitchTimeFactorWrapper FGameAttributeProperty
---@field ShootIntervalFactorWrapper FGameAttributeProperty
---@field RecoilFactorWrapper FGameAttributeProperty
---@field DeviationFactorWrapper FGameAttributeProperty
---@field BaseImpactDamageWrapper FGameAttributeProperty
---@field MinimumImpactDamageWrapper FGameAttributeProperty
---@field BulletFireSpeedWrapper FGameAttributeProperty
---@field BulletRangeWrapper FGameAttributeProperty
---@field MaxBulletNumInBarrelWrapper FGameAttributeProperty
---@field MaxBulletNumInOneClipWrapper FGameAttributeProperty
---@field AutoShootIntervalWrapper FGameAttributeProperty
---@field BurstShootCDWrapper FGameAttributeProperty
---@field BurstShootBulletsNumWrapper FGameAttributeProperty
---@field BurstShootIntervalWrapper FGameAttributeProperty
---@field ReloadID number
---@field bUseCustomMesh boolean
---@field MasterWeaponConfigMesh FCustomWeaponMeshConfig
---@field WeaponDefaultAttachmentsConfigMesh ULuaMapHelper<EWeaponCustomMeshType, FCustomWeaponMeshConfig>
---@field bSupportCooperate boolean
---@field OnMaxBulletNumInOneClipChangeDelegate FOnAttrValueChangedDynamicDelegate
---@field OnShootIntervalTimeChangeDelegate FOnAttrValueChangedDynamicDelegate
---@field NoCostBulletNum number
---@field UGCEditorSlotToSocket ULuaMapHelper<number, string>
---@field UGCAttachmentTemplateIDMap ULuaMapHelper<EWeaponCustomMeshType, number>
---@field ExtraBulletConfigRepData ULuaArrayHelper<FUGCExtraBulletConfig_Rep>
---@field bRepExtraBulletFlag boolean
---@field CacheAmmoConfigMap ULuaMapHelper<number, FUGCExtraBulletConfig>
---@field DefaultDetailUniversalProjectileConfig FShootWeaponUniversalProjectileConfig
local AUGCShootWeapon = {}

---@param AttrName string
---@param CurValue number
function AUGCShootWeapon:OnMaxCDOBulletNumInOneClipChange(AttrName, CurValue) end

---@param AttrName string
---@param CurValue number
function AUGCShootWeapon:OnShootIntervalTimeChange(AttrName, CurValue) end

---@param DefineId FItemDefineID
function AUGCShootWeapon:SetBulletType(DefineId) end

---@return boolean
function AUGCShootWeapon:IsUseCustomWeaponMesh() end

---@param ItemID number
---@return FCustomWeaponMeshResult
function AUGCShootWeapon:GetMeshConfigResultFromWeapon(ItemID) end

---@param WeaponMeshConfig FCustomWeaponMeshConfig
---@return EMeshType
function AUGCShootWeapon:GetMeshTypeFromWeaponMeshConfig(WeaponMeshConfig) end

---@param WeaponMeshConfig FCustomWeaponMeshConfig
---@return FSoftObjectPath
function AUGCShootWeapon:GetMeshPathFromWeaponMeshConfig(WeaponMeshConfig) end

---@param DefaultList ULuaArrayHelper<FItemDefineID>
function AUGCShootWeapon:GetDefaultAvatarListFromWeapon(DefaultList) end

---@param AmmoDefineID FItemDefineID
function AUGCShootWeapon:UGCChangeCurrentUsingAmmoDefineID(AmmoDefineID) end

function AUGCShootWeapon:OnRep_ExtraBulletConfigRepData() end
