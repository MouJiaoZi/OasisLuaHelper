---@meta

---@class UAvatarGalaxyFaceManager: UAvatarManagementModBase
---@field CheckDistanceSquared number
---@field TickFrequency number
---@field bCanTick boolean
---@field ReceivedGalaxyRenderFinishThreshold number
local UAvatarGalaxyFaceManager = {}

---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@param InGalaxyFaceUtils UGalaxyFaceUtils
function UAvatarGalaxyFaceManager:OnCharacterAvatarRenderFinish(InCharacterAvatarComponent, InGalaxyFaceUtils) end

---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@param InGalaxyFaceUtils UGalaxyFaceUtils
function UAvatarGalaxyFaceManager:OnGalaxyFaceRenderFinished(InCharacterAvatarComponent, InGalaxyFaceUtils) end
