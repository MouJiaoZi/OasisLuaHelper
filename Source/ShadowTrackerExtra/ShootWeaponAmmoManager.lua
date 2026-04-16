---@meta

---@class FShootWeaponAmmoConfigData
---@field ModifyItemList ULuaArrayHelper<FAttrModifyItem>
---@field HitPartCoff FWeaponHitPartCoff
---@field MonsterHitPartCoff FWeaponHitPartCoff
---@field BreakThroughDampRateConfig ULuaMapHelper<EPhysicalSurface, number>
---@field BaseDamageApplyRate number
---@field BaseDamageApply number
---@field HitBuffList ULuaArrayHelper<string>
---@field MomentumApplyRate number
---@field MomentumApply number
---@field DefaultPriority number
FShootWeaponAmmoConfigData = {}


---@class UShootWeaponAmmoManager: UWeaponLogicBaseComponent
---@field AmmoConfigMap ULuaMapHelper<number, FShootWeaponAmmoConfigData>
---@field bApplyHitPartCoff boolean
---@field OnChangeAmmoDelegate FOnChangeAmmoDelegate
---@field OnGetClientShootBulletAmmoTypeDelegate FOnGetClientShootBulletAmmoTypeDelegate
---@field CurrentUsingAmmoID number
---@field bEnableDynamicAmmo boolean
---@field ClipAmmoData FClipAmmoData
---@field LastClipAmmoDataCache FClipAmmoData
---@field ClipAmmoDataCacheBake FClipAmmoData
---@field ClipAmmoDataRepList ULuaArrayHelper<FClipAmmoDataRepItem>
---@field ClipAmmoDataRepListLocalCache ULuaArrayHelper<FClipAmmoDataRepItem>
---@field ClientLastShootAmmo number
---@field ClipAmmoDataRepListLastAdjustBulletNum number
---@field ChosenAmmoID number
local UShootWeaponAmmoManager = {}

---@param AmmoID number
function UShootWeaponAmmoManager:SetChosenAmmoID(AmmoID) end

---@param OutList ULuaArrayHelper<number>
---@param bConsiderChosenAmmoIDAsFirst boolean
---@param bCallFomChangeAmmoUI boolean
function UShootWeaponAmmoManager:GetWeaponAmmoIDListSortWithPriority(OutList, bConsiderChosenAmmoIDAsFirst, bCallFomChangeAmmoUI) end

---@param OutData ULuaArrayHelper<FClipAmmoDataRepItem>
function UShootWeaponAmmoManager:GetCurrentClipAmmoData(OutData) end

---@param OutDataMap ULuaMapHelper<number, number>
function UShootWeaponAmmoManager:GetCurrentClipAmmoDataMapOnServer(OutDataMap) end

---@param AmmoID number
---@param bReturnBullets boolean
function UShootWeaponAmmoManager:ChangeCurrentUsingAmmoOnServer(AmmoID, bReturnBullets) end

---@param OldAmmoID number
---@param AmmoID number
function UShootWeaponAmmoManager:LocalChangeCurrentUsingAmmo(OldAmmoID, AmmoID) end

---@param bTargetIsMonster boolean
---@param DefaultAmmoID number
---@param OutData FWeaponHitPartCoff
function UShootWeaponAmmoManager:GetHitPartCoffOverride(bTargetIsMonster, DefaultAmmoID, OutData) end

---@param DefaultAmmoID number
---@param OutData ULuaMapHelper<EPhysicalSurface, number>
function UShootWeaponAmmoManager:GetBreakThroughDampRateConfigOverride(DefaultAmmoID, OutData) end

---@param bAdjustInfiniteBullets boolean
---@return number
function UShootWeaponAmmoManager:GetAvailableBulletsNumInBackpack(bAdjustInfiniteBullets) end

---@param BackpackComp UBackpackComponent
---@param ID FItemDefineID
---@param WantReloadNum number
---@return number
function UShootWeaponAmmoManager:ReloadConsumeBulletNumOnServer(BackpackComp, ID, WantReloadNum) end

---@param ShootID number
---@return number
function UShootWeaponAmmoManager:GetAmmoIDByShootID(ShootID) end

function UShootWeaponAmmoManager:GenerateClipAmmoOrderDataOnServer() end

function UShootWeaponAmmoManager:GenerateClipInitialAmmoDataAndOrderDataServer() end

function UShootWeaponAmmoManager:AdjustClipAmmoDataOnServer() end

function UShootWeaponAmmoManager:AdjustClipAmmoDataOnClient() end

---@param InDamage number
---@param Data FBulletHitInfoUploadData
---@return number
function UShootWeaponAmmoManager:OverrideDamageByHitData(InDamage, Data) end

---@param Data FBulletHitInfoUploadData
---@return number
function UShootWeaponAmmoManager:GetAmmoBreakthroughByHitData(Data) end

function UShootWeaponAmmoManager:ReturnAllBulletsToBackpack() end

---@param Count number
---@return number
function UShootWeaponAmmoManager:ReturnBulletsToBackpack(Count) end

---@param AmmoID number
---@param AddBulletNum number
function UShootWeaponAmmoManager:AddClipAmmoOnServer(AmmoID, AddBulletNum) end

---@param Data FBulletHitInfoUploadData
---@param Weapon ASTExtraShootWeapon
function UShootWeaponAmmoManager:HandleWeaponShootHitTarget(Data, Weapon) end

---@param OldAmmoID number
function UShootWeaponAmmoManager:OnRep_CurrentUsingAmmoID(OldAmmoID) end

function UShootWeaponAmmoManager:OnRep_ClipAmmoDataRepList() end

function UShootWeaponAmmoManager:HandleClipAmmoDataChangeOnServer() end
