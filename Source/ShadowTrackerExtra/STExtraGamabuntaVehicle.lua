---@meta

---@class ASTExtraGamabuntaVehicle: ASTExtraMyriapodVehicle
---@field fGlideGrivityZ number
---@field bGlideState boolean
local ASTExtraGamabuntaVehicle = {}

function ASTExtraGamabuntaVehicle:EnterGlideState() end

function ASTExtraGamabuntaVehicle:ServerEnterGlideState() end

function ASTExtraGamabuntaVehicle:ExitGlideState() end

function ASTExtraGamabuntaVehicle:ServerExitGlideState() end

function ASTExtraGamabuntaVehicle:OnRep_GlideState() end
