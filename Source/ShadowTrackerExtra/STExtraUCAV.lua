---@meta

---@class ASTExtraUCAV: ASTExtraUAVVehicleBase
---@field ForwardCountTimeStep1 number
---@field ForwardCountTimeStep2 number
---@field ForwardCountTimeStep3 number
---@field stepStartTime1 number
---@field stepStartTime2 number
---@field SelfDestructTime number
---@field RangeTipsOther number
---@field VehicleSpeed number
---@field LightEffectState number
local ASTExtraUCAV = {}

function ASTExtraUCAV:OnRep_TeamID() end

function ASTExtraUCAV:SendToServerClientInitOK() end

---@return number
function ASTExtraUCAV:GetDisToLand() end

---@return number
function ASTExtraUCAV:GetMaxBullet() end

function ASTExtraUCAV:UpdateLightFlag() end

---@param bPlayAnim boolean
function ASTExtraUCAV:PlayCameraAnim(bPlayAnim) end
