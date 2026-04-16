---@meta

---@class ULobbyPlayEmoteBaseComponent: UActorComponent
---@field PreTransform FTransform
---@field CurDeviceLevel number
---@field CurDeviceGrade number
---@field CurEmoteID number
---@field CurEmotePathList ULuaArrayHelper<FSoftObjectPath>
---@field CurEmoteAnimList ULuaArrayHelper<UAnimationAsset>
local ULobbyPlayEmoteBaseComponent = {}

---@return boolean
function ULobbyPlayEmoteBaseComponent:CheckIsInLobby() end
