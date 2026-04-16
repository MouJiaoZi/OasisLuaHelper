---@meta

---@class UVehicleEnjoyVoiceSkillHandle: UVehicleSkillBaseHandle
---@field SkinID_PakageID string
---@field EnjoyVoiceSfx FSTExtraVehicleEnjoyVoiceSfxWrapper
---@field LoadedVoice ULuaMapHelper<string, UAkAudioEvent>
---@field WelcomeToOwner_VoicesConfig FSTExtraVehicleEnjoyVoiceConfigWrapper
---@field WelcomeToOwner_VoiceRange number
---@field WelcomeToPassenger_VoiceConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field WelcomeToPassenger_Playprobability ULuaArrayHelper<number>
---@field ScanSignalCircle_VoicesConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field CheckVehicleStatus_VoicesConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field CheckVehicleStatus_HealthMark number
---@field CheckVehicleStatus_FuelMark number
---@field CheckVehicleStatus_DamagedWheelMark number
local UVehicleEnjoyVoiceSkillHandle = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UVehicleEnjoyVoiceSkillHandle:OnServerEnterVehicle(Character, SeatType, bSuccess) end

function UVehicleEnjoyVoiceSkillHandle:OnRep_SkinID_PakageID() end

---@param InSkinID_PakageID string
function UVehicleEnjoyVoiceSkillHandle:SetSkinIDPackageID(InSkinID_PakageID) end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
function UVehicleEnjoyVoiceSkillHandle:PlayEnjoyVoice(VoiceType, VoiceIndex) end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
function UVehicleEnjoyVoiceSkillHandle:SendStringMsg(VoiceType, VoiceIndex) end

function UVehicleEnjoyVoiceSkillHandle:UpdateEnjoyVehicleUI() end

function UVehicleEnjoyVoiceSkillHandle:LoadTableConfig() end

---@return string
function UVehicleEnjoyVoiceSkillHandle:GetCurSkinIDPakageID() end

---@return string
function UVehicleEnjoyVoiceSkillHandle:GetCurSkinID() end

---@return string
function UVehicleEnjoyVoiceSkillHandle:GetCurPakageID() end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@return number
function UVehicleEnjoyVoiceSkillHandle:CalVoiceIndex(VoiceType) end

---@return number
function UVehicleEnjoyVoiceSkillHandle:CalcVoiceIndex_WelcomeToOwner() end

---@return number
function UVehicleEnjoyVoiceSkillHandle:CalcVoiceIndex_WelcomeToPassenger() end

---@return number
function UVehicleEnjoyVoiceSkillHandle:CalcVoiceIndex_ScanSignalCircle() end

---@return number
function UVehicleEnjoyVoiceSkillHandle:CalcVoiceIndex_VehicleStatus() end
