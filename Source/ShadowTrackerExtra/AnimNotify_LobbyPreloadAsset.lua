---@meta

---@class UAnimNotify_LobbyPreloadAsset: UAnimNotify, ILuaInterface
---@field AvatarID ULuaArrayHelper<number>
---@field ResStringList ULuaArrayHelper<string>
local UAnimNotify_LobbyPreloadAsset = {}

---@return string
function UAnimNotify_LobbyPreloadAsset:GetLuaModule() end
