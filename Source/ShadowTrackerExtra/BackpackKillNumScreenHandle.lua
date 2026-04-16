---@meta

---@class FWeaponAvatarKillCountSetting
---@field SocketName EWeaponAttachmentSocketType
---@field SlotName string
---@field NumberParamName string
---@field ColorParamName string
---@field ShowModeParamName string
FWeaponAvatarKillCountSetting = {}


---@class UBackpackKillNumScreenHandle: UBackpackWeaponAbilityHandle
---@field KillCounterSetting ULuaArrayHelper<FWeaponAvatarKillCountSetting>
---@field FriendStateToShowPropertyName string
---@field ValidFriendStateToShowList ULuaArrayHelper<string>
---@field ValidModeIDList ULuaArrayHelper<number>
---@field KillTipsItemList ULuaArrayHelper<number>
---@field MaterialLow_ParamIndex number
---@field MaterialLow_ParamName string
---@field CanLevelUp boolean
---@field LevelUpMeshPaths ULuaArrayHelper<FSoftObjectPath>
local UBackpackKillNumScreenHandle = {}

---@return number
function UBackpackKillNumScreenHandle:GetHistoryKillsNum() end

---@param InWorldObject UObject
---@return boolean
function UBackpackKillNumScreenHandle:IsGameModeTypeValid(InWorldObject) end

---@param KillNum number
---@return FSoftObjectPath
function UBackpackKillNumScreenHandle:GetLevelUpMeshPath(KillNum) end

---@param InAvatarComponent UWeaponAvatarComponent
---@param InKillNum number
function UBackpackKillNumScreenHandle:ClientRefreshKillCounterMaterial(InAvatarComponent, InKillNum) end

---@param KillCountComponent UStaticMeshComponent
---@param CurSetting FWeaponAvatarKillCountSetting
---@param MeshPath FSoftObjectPath
---@param colorConfig FLinearColor
---@param InKillNum number
---@param UseLowMaterial boolean
---@param master boolean
---@param NeedShowNumber boolean
function UBackpackKillNumScreenHandle:InClientRefreshKillCounterMaterial(KillCountComponent, CurSetting, MeshPath, colorConfig, InKillNum, UseLowMaterial, master, NeedShowNumber) end

---@param CurOwnerWeapon ASTExtraWeapon
---@param InKillNum number
---@param MeshPath FSoftObjectPath
---@param Color FLinearColor
---@param master boolean
---@param InAvatarComponent UWeaponAvatarComponent
function UBackpackKillNumScreenHandle:CountingScreenConfig(CurOwnerWeapon, InKillNum, MeshPath, Color, master, InAvatarComponent) end

---@param InHex string
---@return FColor
function UBackpackKillNumScreenHandle:GetColorFromHex(InHex) end

---@param avatarComponent UAvatarComponent
function UBackpackKillNumScreenHandle:PutOnEquipmentLogic(avatarComponent) end
