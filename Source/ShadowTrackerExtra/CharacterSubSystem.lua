---@meta

---透视类型
---@class EPEBuffOcclusionHighlightType
---@field EPEBuffOcclusionHighlightType_Causer number @仅Causer透视
---@field EPEBuffOcclusionHighlightType_CauserCamp number @Causer及其队友透视
---@field EPEBuffOcclusionHighlightType_All number @所有人
EPEBuffOcclusionHighlightType = {}


---@class FMappingState
FMappingState = {}


---@class FOcclusionHighlightInfo
---@field OcclusionHighlightId number
---@field Type EPEBuffOcclusionHighlightType
---@field OcclusionHighLightColor FLinearColor
FOcclusionHighlightInfo = {}


---@class FOcclusionHighlightInfos
---@field Infos ULuaArrayHelper<FOcclusionHighlightInfo>
FOcclusionHighlightInfos = {}


---@class UCharacterSubSystem: UWorldSubsystem
---@field MappingStates ULuaMapHelper<UPersistBaseComponent, FMappingState>
---@field HoldGun FGameplayTag
---@field Invincible FGameplayTag
---@field Vault FGameplayTag
---@field OHInfosMap ULuaMapHelper<ACharacter, FOcclusionHighlightInfos>
---@field CharacterMap ULuaMapHelper<number, ACharacter>
local UCharacterSubSystem = {}

---@param Char ASTExtraCharacter
---@param PS EPawnState
function UCharacterSubSystem:OnPawnStateEnter(Char, PS) end

---@param Char ASTExtraCharacter
---@param PS EPawnState
function UCharacterSubSystem:OnPawnStateLeave(Char, PS) end

---@param Char ASTExtraCharacter
---@param InterruptState number
function UCharacterSubSystem:OnPawnStateInterrupt(Char, InterruptState) end

---@param Char ASTExtraCharacter
---@param PS EPawnState
---@param bNewDisabled boolean
function UCharacterSubSystem:OnPawnStateDisabledChanged(Char, PS, bNewDisabled) end

---@param Char ASTExtraCharacter
---@param PS EPawnState
function UCharacterSubSystem:OnPawnStateDisabledReset(Char, PS) end

---@param BPComp UPersistBaseComponent
---@param Tag FGameplayTag
function UCharacterSubSystem:OnDynamicStateInterrupt(BPComp, Tag) end

---@param BPComp UPersistBaseComponent
---@param Tag FGameplayTag
---@param bNewDisabled boolean
function UCharacterSubSystem:OnDynamicStateDisabledChanged(BPComp, Tag, bNewDisabled) end

---@param BPComp UPersistBaseComponent
---@param Tag FGameplayTag
function UCharacterSubSystem:OnDynamicStateDisabledReset(BPComp, Tag) end

---@param IsEquip boolean
---@param Char AActor
---@param Weapon ASTExtraWeapon
function UCharacterSubSystem:OnChangeWeaponDynamicState(IsEquip, Char, Weapon) end

---@param Target ACharacter
---@param Causer AActor
---@param InType EPEBuffOcclusionHighlightType
---@param InColor FLinearColor
---@return number
function UCharacterSubSystem:AddOcclusionHighlight(Target, Causer, InType, InColor) end

---@param Id number
function UCharacterSubSystem:RemoveOcclusionHighlight(Id) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UCharacterSubSystem:HandleAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@param InWeapon ASTExtraWeapon
---@param WeaponOwner AActor
function UCharacterSubSystem:PostEquipNewWeapon(InWeapon, WeaponOwner) end

---@param InWeapon ASTExtraWeapon
---@param WeaponOwner AActor
function UCharacterSubSystem:PostUnEquipNewWeapon(InWeapon, WeaponOwner) end

---@param Owner AActor
---@param Attribute string
---@param Prev number
---@param Current number
function UCharacterSubSystem:OnAttributeChanged(Owner, Attribute, Prev, Current) end
