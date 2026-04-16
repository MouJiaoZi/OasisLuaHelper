---@meta

---@class FAvatarPakInfo
---@field PakSize number
---@field RelatedAvatars ULuaArrayHelper<string>
---@field SubDownloadAvatars ULuaArrayHelper<string>
---@field AvatarDownloadPriority number
FAvatarPakInfo = {}


---@class UAvatarPakInfoData: UDataAsset
---@field AvatarIDs ULuaArrayHelper<string>
---@field PakInfos ULuaArrayHelper<FAvatarPakInfo>
---@field RelatedIDs ULuaArrayHelper<string>
---@field MainIDIndexs ULuaArrayHelper<number>
local UAvatarPakInfoData = {}
