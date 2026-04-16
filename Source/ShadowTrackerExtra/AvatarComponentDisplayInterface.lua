---@meta

---@class IAvatarComponentDisplayInterface
IAvatarComponentDisplayInterface = {}

---@return boolean
function IAvatarComponentDisplayInterface:IsDisplayAvatar() end

---@return boolean
function IAvatarComponentDisplayInterface:CanDownload() end

---@return boolean
function IAvatarComponentDisplayInterface:DontHideParticle() end

---@return boolean
function IAvatarComponentDisplayInterface:DontUseMaterialEffectSystem() end

---@return boolean
function IAvatarComponentDisplayInterface:IsInteracting() end

---@return boolean
function IAvatarComponentDisplayInterface:IsNeedUseLobbyMesh() end

---@return number
function IAvatarComponentDisplayInterface:GetInstanceIDInterface() end
