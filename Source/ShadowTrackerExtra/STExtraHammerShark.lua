---@meta

---@class ESTExtraHammerSharkRepairState
---@field EHSRS_Default number
---@field EHSRS_Strating number
---@field EHSRS_Repairing number
---@field EHSRS_Ending number
ESTExtraHammerSharkRepairState = {}


---@class ESTExtraHammerSharkRepairCheckResult
---@field EHSRCR_Success number
---@field EHSRCR_Already number
---@field EHSRCR_CD number
---@field EHSRCR_OverSpeed number
---@field EHSRCR_FullyHP number
---@field EHSRCR_BP number
ESTExtraHammerSharkRepairCheckResult = {}


---@class ESTExtraHammerSharkInWaterState
---@field EHSIWS_Air number
---@field EHSIWS_Touch number
---@field EHSIWS_InWater number
ESTExtraHammerSharkInWaterState = {}


---@class ASTExtraHammerShark: ASTExtraAircraftVehicleBase
---@field IDIPMaxDistanceToLand number
---@field IDIPRepairCD number
---@field HammerSharkInWater ESTExtraHammerSharkInWaterState
---@field LocalHammerSharkInWater ESTExtraHammerSharkInWaterState
---@field RepairState ESTExtraHammerSharkRepairState
---@field RepairCD number
---@field CurRepairCD number
---@field StartRepairTime number
---@field RepairTime number
---@field EndRepairTime number
---@field CurRepairStateTime number
---@field LastRecoverTime number
---@field RecoverInterval number
---@field RecoverHPPercentOnce number
---@field RepairSpeedThreshold number
---@field EnableWaterEngineSfx boolean
---@field LinearDamping_Air number
---@field LinearDamping_Touch number
---@field LinearDamping_Water number
---@field AngularDamping_Air number
---@field AngularDamping_Touch number
---@field AngularDamping_Water number
---@field CockpitShapeIndex_Air ULuaArrayHelper<number>
---@field CockpitShapeIndex_Water ULuaArrayHelper<number>
---@field AboveWaterParticleZOffset number
---@field AboveWaterParticleLerpSpeed number
---@field LastFrameAboveWaterParticleRelativeLoc FVector
---@field OutWaterPassengerAnimCompTag string
---@field InWaterPassengerAnimCompTag string
---@field ShouldDynamicChangeWeaponHoldTypeByWater boolean
---@field OutWaterWeaponHoldType EVHSeatWeaponHoldType
---@field InWaterWeaponHoldType EVHSeatWeaponHoldType
---@field ServerAuthorizeSpeed_Land FVector2D @陆地状态速度超过多少之后切换至服务器主控(km/h)
---@field ServerAuthorizeSpeed_WaterSurface FVector2D @水面状态速度超过多少之后切换至服务器主控(km/h)
---@field ServerAuthorizeSpeed_Water FVector2D @水中状态速度超过多少之后切换至服务器主控(km/h)
local ASTExtraHammerShark = {}

function ASTExtraHammerShark:OnEngineStart() end

---@return boolean
function ASTExtraHammerShark:IsEnableInputs() end

---@param IsUnderWater boolean
function ASTExtraHammerShark:OnEntirelyUnderWaterChanged(IsUnderWater) end

---@return number
function ASTExtraHammerShark:GetRealForwardSpeed() end

---@param NewIDIPMaxDistanceToLand number
function ASTExtraHammerShark:SetIDIPMaxDistanceToLand(NewIDIPMaxDistanceToLand) end

function ASTExtraHammerShark:OnRep_IDIPMaxDistanceToLand() end

---@param NewIDIPRepairCD number
function ASTExtraHammerShark:SetIDIPRepairCD(NewIDIPRepairCD) end

function ASTExtraHammerShark:OnRep_IDIPRepairCD() end

function ASTExtraHammerShark:OnRep_HammerSharkInWater() end

---@param NewInWater ESTExtraHammerSharkInWaterState
function ASTExtraHammerShark:SetHammerSharkInWater(NewInWater) end

function ASTExtraHammerShark:BPOnRep_HammerSharkInWater() end

---@param NewInWater ESTExtraHammerSharkInWaterState
function ASTExtraHammerShark:SetLocalHammerSharkInWater(NewInWater) end

---@return boolean
function ASTExtraHammerShark:IsSharkTotalInWater() end

function ASTExtraHammerShark:HandleLocalInWaterChange() end

function ASTExtraHammerShark:OnRep_RepairState() end

---@param NewRepair ESTExtraHammerSharkRepairState
function ASTExtraHammerShark:SetRepairing(NewRepair) end

function ASTExtraHammerShark:BPOnRep_RepairState() end

---@param NewRepair boolean
function ASTExtraHammerShark:ReqHammerSharkRepair(NewRepair) end

---@param NewRepair boolean
---@param ShowTips boolean
---@return ESTExtraHammerSharkRepairCheckResult
function ASTExtraHammerShark:CheckCanRepair(NewRepair, ShowTips) end

---@param NewRepair boolean
---@return boolean
function ASTExtraHammerShark:BPCheckCanRepair(NewRepair) end

function ASTExtraHammerShark:UpdateCockpitCollision() end

---@param DeltaTime number
function ASTExtraHammerShark:TickUpdateWaterEffect(DeltaTime) end

---@param DeltaTime number
function ASTExtraHammerShark:RefreshAboveWaterParticleTrans(DeltaTime) end

function ASTExtraHammerShark:UpdatePassengerLeanOutState() end
