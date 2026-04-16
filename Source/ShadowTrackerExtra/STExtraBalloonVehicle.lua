---@meta

---@class ASTExtraBalloonVehicle: ASTExtraAircraftVehicleBase
---@field BalloonMusicSfxLoop FSTExtraVehicleSfxLoop
---@field bMusicEnabled boolean
local ASTExtraBalloonVehicle = {}

function ASTExtraBalloonVehicle:NotifyBalloonCreated() end

function ASTExtraBalloonVehicle:NotifyBalloonRecycled() end

function ASTExtraBalloonVehicle:OnClientBalloonCreated() end

function ASTExtraBalloonVehicle:OnClientBalloonRecycled() end

---@param Alpha number
function ASTExtraBalloonVehicle:SetPlayerCameraOffsetData(Alpha) end

function ASTExtraBalloonVehicle:ChangeMusicEnabled() end

---@param NewEnabled boolean
function ASTExtraBalloonVehicle:ReqChangeMusicEnabled(NewEnabled) end

function ASTExtraBalloonVehicle:OnRep_bMusicEnabled() end

---@param bEnabled boolean
function ASTExtraBalloonVehicle:OnMusicEnabledChanged(bEnabled) end
