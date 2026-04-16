---@meta

---@class UAvatarLabel: UChunkLabel
---@field AvatarName string
---@field AvatarHandles ULuaArrayHelper<UObject> @List of manually specified blueprint assets to label
---@field OwnerAvatar string
---@field RelatedAvatars ULuaArrayHelper<string>
---@field SubDownloadAvatars ULuaArrayHelper<string>
---@field AvatarLevel number
---@field AvatarDownloadPriority number
local UAvatarLabel = {}
