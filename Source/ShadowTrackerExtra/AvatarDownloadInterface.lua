---@meta

---@class IAvatarDownloadInterface
IAvatarDownloadInterface = {}

---@return boolean
function IAvatarDownloadInterface:CheckInteractiveActorCanDownload() end

---@return boolean
function IAvatarDownloadInterface:CheckInteractiveActorCanDownloadCallback() end

---@return EAvatarDownloadActorType
function IAvatarDownloadInterface:GetInteractiveActorType() end

---@return number
function IAvatarDownloadInterface:GetUniqueIdentifier() end

---@return EGalleryAvatarType
function IAvatarDownloadInterface:GetGalleryAvatarType() end
