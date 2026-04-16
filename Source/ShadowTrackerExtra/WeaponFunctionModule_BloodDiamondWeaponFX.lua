---@meta

---@class FBloodDiamondWeaponFXConfig
---@field ParticleSoftPath FSoftObjectPath
---@field SocketName string
FBloodDiamondWeaponFXConfig = {}


---@class UWeaponFunctionModule_BloodDiamondWeaponFX: UWeaponFunctionModuleBase
---@field BloodDiamondCnt number
---@field bInvisibleInFPP boolean
---@field InvisibleGameplayTags FGameplayTagContainer
local UWeaponFunctionModule_BloodDiamondWeaponFX = {}

---@param ItemDefineID FItemDefineID
function UWeaponFunctionModule_BloodDiamondWeaponFX:UpdateBloodDiamondCnt(ItemDefineID) end

---@param SlotID number
---@param bEquip boolean
function UWeaponFunctionModule_BloodDiamondWeaponFX:TryCreateWeaponFX(SlotID, bEquip) end

function UWeaponFunctionModule_BloodDiamondWeaponFX:OnRep_BloodDiamondCnt() end

function UWeaponFunctionModule_BloodDiamondWeaponFX:TryLoadAndCreateWeaponFX() end

function UWeaponFunctionModule_BloodDiamondWeaponFX:OnWeaponFXLoaded() end

function UWeaponFunctionModule_BloodDiamondWeaponFX:UpdateWeaponFXComp() end

---@param State FGameplayTag
function UWeaponFunctionModule_BloodDiamondWeaponFX:OnDynamicStateChanged(State) end

---@param bNewFPP boolean
function UWeaponFunctionModule_BloodDiamondWeaponFX:OnSwitchPersonPerspective(bNewFPP) end
