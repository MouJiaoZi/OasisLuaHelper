---@meta

---@class FGenericCharacterAvatarItemConfig
FGenericCharacterAvatarItemConfig = {}


---@class UGenericCharacterAvatarDisplayProxyComponent: UGenericAvatarDisplayProxyComponent, IAvatarAbilityInterface
---@field CurAvatarIndex number
---@field AvatarList ULuaArrayHelper<FGenericCharacterAvatarItemConfig>
---@field ExcludeAvatarSlotList ULuaArrayHelper<EAvatarSlotType>
local UGenericCharacterAvatarDisplayProxyComponent = {}

---@param Index number
function UGenericCharacterAvatarDisplayProxyComponent:SetCurAvatar(Index) end

---@param InAvatarList ULuaArrayHelper<number>
---@param ForceClientMode boolean
---@param Gender number
---@param InGenericAvatarDisplayOperation EGenericAvatarDisplayOperation
function UGenericCharacterAvatarDisplayProxyComponent:RefreshAvatar(InAvatarList, ForceClientMode, Gender, InGenericAvatarDisplayOperation) end

function UGenericCharacterAvatarDisplayProxyComponent:ClientClearDisplay() end

function UGenericCharacterAvatarDisplayProxyComponent:ServerClearDisplay() end

---@param InBackpackAvatarHandle UBackpackAvatarHandle
function UGenericCharacterAvatarDisplayProxyComponent:PutOnLogic(InBackpackAvatarHandle) end

function UGenericCharacterAvatarDisplayProxyComponent:ApplyAllDisplayOption() end
