---@meta

---@class UNewFPPAnimFMObj_Character: USTExtraAnimFMObj_Character
---@field bIsInTPPMeshMode boolean
---@field bIsInOldFPPAnimMode boolean
---@field bIsSpineAttachHead boolean
---@field bIsPlayingTPPMontage boolean
---@field bIsOldFPPAnimAttachHead boolean
---@field bIsOldFPPAnimCover boolean
---@field bIsInTPPMeshRenderFlexMode boolean
---@field bIsInForceNewFPPMode boolean
local UNewFPPAnimFMObj_Character = {}

---@param bIsRescuing boolean
---@param bIsRescuingSelf boolean
function UNewFPPAnimFMObj_Character:HandlePlayerEnterRescueState(bIsRescuing, bIsRescuingSelf) end

---@param bIsBeingRescued boolean
function UNewFPPAnimFMObj_Character:HandlePlayerEnterBeRescueingStatus(bIsBeingRescued) end
