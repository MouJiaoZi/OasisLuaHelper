---@meta

---@class ESTExtraVehicleEnjoyVoiceType
---@field ESTVEVT_None number
---@field ESTVEVT_WelcomeToOwner number
---@field ESTVEVT_WelcomeToPassenger number
---@field ESTVEVT_ScanSignalCircle number
---@field ESTVEVT_CheckVehicleStatus number
ESTExtraVehicleEnjoyVoiceType = {}


---@class FSTExtraVehicleEnjoyVoiceConfigWrapper
---@field VoicePath string
---@field VoiceBattleTextID number
FSTExtraVehicleEnjoyVoiceConfigWrapper = {}


---@class FSTExtraVehicleEnjoyVoiceSfxWrapper
FSTExtraVehicleEnjoyVoiceSfxWrapper = {}


---@class FOnCalcVoiceIndex_WelcomeToOwner : ULuaSingleDelegate
FOnCalcVoiceIndex_WelcomeToOwner = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCalcVoiceIndex_WelcomeToOwner:Bind(Callback, Obj) end

---执行委托
function FOnCalcVoiceIndex_WelcomeToOwner:Execute() end


---@class FOnCalcVoiceIndex_WelcomeToPassenger : ULuaSingleDelegate
FOnCalcVoiceIndex_WelcomeToPassenger = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCalcVoiceIndex_WelcomeToPassenger:Bind(Callback, Obj) end

---执行委托
function FOnCalcVoiceIndex_WelcomeToPassenger:Execute() end


---@class FOnCalcVoiceIndex_ScanSignalCircle : ULuaSingleDelegate
FOnCalcVoiceIndex_ScanSignalCircle = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCalcVoiceIndex_ScanSignalCircle:Bind(Callback, Obj) end

---执行委托
function FOnCalcVoiceIndex_ScanSignalCircle:Execute() end


---@class FOnCalcVoiceIndex_VehicleStatus : ULuaSingleDelegate
FOnCalcVoiceIndex_VehicleStatus = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCalcVoiceIndex_VehicleStatus:Bind(Callback, Obj) end

---执行委托
function FOnCalcVoiceIndex_VehicleStatus:Execute() end


---载具尊享语音组件
---@class UVehicleEnjoyVoiceComponent: UVehicleComponent
---@field bSupportEnjoyVoice boolean
---@field VoicePakageTypeID number
---@field WelcomeToOwner_VoicesConfig FSTExtraVehicleEnjoyVoiceConfigWrapper
---@field WelcomeToOwner_VoiceRange number
---@field WelcomeToPassenger_VoiceConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field WelcomeToPassenger_Playprobability ULuaArrayHelper<number>
---@field ScanSignalCircle_VoicesConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field CheckVehicleStatus_VoicesConfigs ULuaArrayHelper<FSTExtraVehicleEnjoyVoiceConfigWrapper>
---@field CheckVehicleStatus_HealthMark number
---@field CheckVehicleStatus_FuelMark number
---@field CheckVehicleStatus_DamagedWheelMark number
---@field SkinID_PakageID string
---@field EnjoyVoiceSfx FSTExtraVehicleEnjoyVoiceSfxWrapper
---@field LoadedVoice ULuaMapHelper<string, UAkAudioEvent>
---@field OnCalcVoicIndex_WelcomeToOwner FOnCalcVoiceIndex_WelcomeToOwner
---@field OnCalcVoiceIndex_WelcomeToPassenger FOnCalcVoiceIndex_WelcomeToPassenger
---@field OnCalcVoiceIndex_ScanSignalCircle FOnCalcVoiceIndex_ScanSignalCircle
---@field OnCalcVoiceIndex_VehicleStatus FOnCalcVoiceIndex_VehicleStatus
---@field Temp_VoiceIndex_WelcomeToOwner number
---@field Temp_VoiceIndex_WelcomeToPassenger number
---@field Temp_VoiceIndex_ScanSignalCircle number
---@field Temp_VoiceIndex_VehicleStatus number
local UVehicleEnjoyVoiceComponent = {}

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@return number
function UVehicleEnjoyVoiceComponent:CalVoiceIndex(VoiceType) end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
function UVehicleEnjoyVoiceComponent:PlayEnjoyVoice(VoiceType, VoiceIndex) end

---@param VoiceType ESTExtraVehicleEnjoyVoiceType
---@param VoiceIndex number
function UVehicleEnjoyVoiceComponent:SendStringMsg(VoiceType, VoiceIndex) end

---@param ItemHandle UBattleItemHandleBase
function UVehicleEnjoyVoiceComponent:OnVehicleAvatarChange(ItemHandle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UVehicleEnjoyVoiceComponent:OnServerEnterVehicle(Character, SeatType, bSuccess) end

---@return string
function UVehicleEnjoyVoiceComponent:GetCurSkinIDPakageID() end

---@return string
function UVehicleEnjoyVoiceComponent:GetCurSkinID() end

---@return string
function UVehicleEnjoyVoiceComponent:GetCurPakageID() end

function UVehicleEnjoyVoiceComponent:LoadTableConfig() end

function UVehicleEnjoyVoiceComponent:OnRep_SkinID_PakageID() end

function UVehicleEnjoyVoiceComponent:UpdateEnjoyVehicleUI() end

---@return number
function UVehicleEnjoyVoiceComponent:CalcVoiceIndex_WelcomeToOwner() end

---@return number
function UVehicleEnjoyVoiceComponent:CalcVoiceIndex_WelcomeToPassenger() end

---@return number
function UVehicleEnjoyVoiceComponent:CalcVoiceIndex_ScanSignalCircle() end

---@return number
function UVehicleEnjoyVoiceComponent:CalcVoiceIndex_VehicleStatus() end
