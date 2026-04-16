---@meta

---@class ASTExtraCamelVehicle: ASTExtraMyriapodVehicle
---@field CamelGroupTargetSpeedModifierName string
---@field fSpawnSleepCamelDelayTime number
---@field CamelSleepTimerHand FTimerHandle
---@field StationStopRemainTime number
---@field ScanNum number
---@field CamelGroupMoveLoop FSTExtraVehicleSfxLoop
---@field fPlayMoveAudioSpeed number
---@field fPlayRunAudioSpeed number
---@field CamelGroupArray ULuaArrayHelper<ASTExtraCamelVehicle>
---@field SpeedupEffect string
---@field ScanEffect1 string
---@field ScanEffect2 string
---@field ScanSfxLoop FSTExtraVehicleSfxLoop
---@field StopPointLocationBlackboardName string
---@field StopPointRotationBlackboardName string
---@field IsStoppedBlackboardName string
---@field IsForceStoppedBlackboardName string
---@field bCamelAwake boolean
---@field bStopAudio boolean
local ASTExtraCamelVehicle = {}

---@param fDelayTime number
function ASTExtraCamelVehicle:CamelSleep(fDelayTime) end

function ASTExtraCamelVehicle:CamelAwake() end

---@param PC APlayerController
function ASTExtraCamelVehicle:CamelCaravanScan(PC) end

---@param bStop boolean
---@param bForceStop boolean
---@param TargetSpeedModifier number
function ASTExtraCamelVehicle:ServerSetCamelStop(bStop, bForceStop, TargetSpeedModifier) end

---@param bForceStop boolean
---@param bDestination boolean
function ASTExtraCamelVehicle:ClientSetCamelStop(bForceStop, bDestination) end

---@param bDestination boolean
function ASTExtraCamelVehicle:ShowTreasureTip(bDestination) end

---@param RemainTime number
function ASTExtraCamelVehicle:SetStationStopRemainTime(RemainTime) end

function ASTExtraCamelVehicle:Client_CamelCaravanClickScan() end

function ASTExtraCamelVehicle:Client_CamelCaravanFinishScan() end

---@param LastScanNum number
function ASTExtraCamelVehicle:OnRep_ScanNum(LastScanNum) end

function ASTExtraCamelVehicle:Client_CamelCaravanSpeedup() end

function ASTExtraCamelVehicle:Client_CamelCaravanSpeedupFinish() end

---@param fDeltaTime number
function ASTExtraCamelVehicle:TickCamelGroupAudio(fDeltaTime) end

---@param InCamelVehicle ASTExtraCamelVehicle
function ASTExtraCamelVehicle:AddCamelGroup(InCamelVehicle) end

function ASTExtraCamelVehicle:Client_CamelCaravanStartWalking() end

---@param InCamelGroup ASTExtraCamelGroup
function ASTExtraCamelVehicle:SetCamelGroup(InCamelGroup) end

---@param InScanNum number
function ASTExtraCamelVehicle:SetScanNum(InScanNum) end
