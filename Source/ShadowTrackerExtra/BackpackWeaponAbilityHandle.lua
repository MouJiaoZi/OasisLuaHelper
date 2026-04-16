---@meta

---@class EWeaponAbilityKillCount
---@field CurGameTotalKills number @当局个人击杀总数
---@field CurGameWeaponKills number @当局此武器击杀数
---@field HistoryWeaponKills number @此武器历史总击杀数
EWeaponAbilityKillCount = {}


---@class EWeaponAbilityRepType
---@field NoneType number @无效类型
---@field WeaponHitEffectType number @武器命中特效
---@field WeaponKillCounter number @武器枪身计数器
---@field WeaponKillLevel number @武器击杀效果升级
---@field WeaponAnim number @武器动画
---@field WeaponInspect number @武器检视
---@field WeaponAbilityRepType_Keep6 number @保留字段6
---@field WeaponAbilityRepType_Keep7 number @保留字段7
---@field WeaponAbilityRepType_Keep8 number @保留字段8
---@field WeaponAbilityRepType_Keep9 number @保留字段9
---@field WeaponAbilityRepType_Keep10 number @保留字段10
---@field WeaponAbilityRepType_Keep11 number @保留字段11
---@field WeaponAbilityRepType_Keep12 number @保留字段12
---@field WeaponAbilityRepType_Keep13 number @保留字段13
---@field WeaponAbilityRepType_Keep14 number @保留字段14
---@field WeaponAbilityRepType_Keep15 number @保留字段15
EWeaponAbilityRepType = {}


---@class EWeaponAbilityEnableType
---@field WeaponAbilityEnableType_Using number @使用武器时激活
---@field WeaponAbilityEnableType_Inventory number @携带武器时激活
---@field WeaponAbilityEnableType_SuitSkin number @套装激活时激活
---@field WeaponAbilityManualEnable number @默认不自动激活
EWeaponAbilityEnableType = {}


---@class FBackpackWeaponAbilityConfigItem
---@field PropertyName string
---@field AssetPath FSoftObjectPath
FBackpackWeaponAbilityConfigItem = {}


---@class FBackpackWeaponAbilityTableConfig
---@field NeedKillNum number
---@field TypeSpecificID number
FBackpackWeaponAbilityTableConfig = {}


---@class UBackpackWeaponAbilityHandle: UBattleItemHandleBase, IBackpackAvatarInterface
---@field BindWeaponSkinID FItemDefineID
---@field WeaponSkinTable string
---@field bSingletonWeaponAbilityHandle boolean
---@field IsNeedRepDataToClient boolean
---@field AbilityRepType EWeaponAbilityRepType
---@field IsNeedOverrideClientShowMode boolean
---@field OverrideIDConfigClientShowMode EAttrClientShowMode
---@field CountKillsFunc EWeaponAbilityKillCount
---@field DataTableOverrideIDConfig ULuaArrayHelper<FBackpackWeaponAbilityTableConfig>
---@field EnableType EWeaponAbilityEnableType
---@field bLocalActive boolean
---@field WeaponAbilityPriority number
---@field AvailableWeaponSkinList ULuaArrayHelper<number>
---@field AvatarAbilityAttrModifyConfigs_Character ULuaArrayHelper<FItemHandleAttrModifyConfigNoCondition>
---@field AvatarAbilityAttrModifyConfigs_Weapon ULuaArrayHelper<FItemHandleAttrModifyConfigNoCondition>
---@field bClientCanActiveWhenNotDownloadPak boolean
---@field bIsIndependentAbility boolean
local UBackpackWeaponAbilityHandle = {}

---@param InFocusTarget UObject
---@return boolean
function UBackpackWeaponAbilityHandle:IsFocusOnTargetObject(InFocusTarget) end

---@return boolean
function UBackpackWeaponAbilityHandle:ModifyFocusTarget() end

---@return number
function UBackpackWeaponAbilityHandle:GetCurIDConfigIndex() end

---@param InPC ASTExtraPlayerController
---@return number
function UBackpackWeaponAbilityHandle:GetCurIDConfigIndexNew(InPC) end

---@return number
function UBackpackWeaponAbilityHandle:GetFinalTypeSpecificID() end

---@param InPC ASTExtraPlayerController
---@return number
function UBackpackWeaponAbilityHandle:GetFinalTypeSpecificIDNew(InPC) end

---@return number
function UBackpackWeaponAbilityHandle:GetKillsNum() end

---@param InPC ASTExtraPlayerController
---@return number
function UBackpackWeaponAbilityHandle:GetKillsNumNew(InPC) end

---@return string
function UBackpackWeaponAbilityHandle:GetOwnerPlayerKey() end

---@return boolean
function UBackpackWeaponAbilityHandle:IsUseClientOverrideByPlayerInfo() end

---@param InAvatarComponent UWeaponAvatarComponent
---@param InAdditionalData FSyncAdditionData
function UBackpackWeaponAbilityHandle:OnClientLoadedAbilityHandle(InAvatarComponent, InAdditionalData) end

---@param InAvatarComponent UWeaponAvatarComponent
function UBackpackWeaponAbilityHandle:OnClientUnloadAbilityHandle(InAvatarComponent) end

---@param InWeapon ASTExtraWeapon
function UBackpackWeaponAbilityHandle:WeaponAbilityActivate(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackWeaponAbilityHandle:WeaponAbilityDeactivate(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackWeaponAbilityHandle:ClientWeaponAbilityActivate(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackWeaponAbilityHandle:ClientWeaponAbilityDeactivate(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackWeaponAbilityHandle:CollectResources(InWeapon) end
