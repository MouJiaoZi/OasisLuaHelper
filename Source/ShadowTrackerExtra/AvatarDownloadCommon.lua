---@meta

---@class EAvatarDownloadSourceType
---@field OnlyCurrentSuit number
---@field TeammateCurrentSuit number
---@field AutonomousOtherSuit number
---@field EnemyCurrentSuit number
---@field Emote number
---@field AircraftCabin number
---@field LargeAircraft number
---@field Vehicle number
---@field CurrentGallery number
---@field OthersGallery number
---@field MAXNUM number
EAvatarDownloadSourceType = {}


---@class EAvatarDownloadActorType
---@field Pawn number
---@field Gallery number
---@field Vehicle number
---@field MAXNUM number
EAvatarDownloadActorType = {}


---@class EGalleryAvatarType
---@field Character number
---@field Weapon number
---@field Vehicle number
---@field MAXNUM number
EGalleryAvatarType = {}


---@class FAvatarDownloadParamForCallback
---@field UID number
---@field PlayerKey number
---@field DownloadingTasksNum number
---@field AvatarDownloadSourceType EAvatarDownloadSourceType
---@field AvatarDownloadActorType EAvatarDownloadActorType
---@field GalleryAvatarType EGalleryAvatarType
---@field FinishedDownloadList ULuaArrayHelper<number>
---@field AvatarDownloaderPriority number
FAvatarDownloadParamForCallback = {}
