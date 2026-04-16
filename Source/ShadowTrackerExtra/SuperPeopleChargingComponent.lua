---@meta

---@class USuperPeopleChargingComponent: UActorComponent
---@field ChargeCD FSPChargingCoolDownConfig
---@field ChargeEnergyReady boolean
---@field CDReady boolean
---@field bSkillUsed boolean
local USuperPeopleChargingComponent = {}

---@param DeltaTime number
function USuperPeopleChargingComponent:RealTickFunc(DeltaTime) end

function USuperPeopleChargingComponent:OnSingleCDReadyCallLuaDelegate() end

function USuperPeopleChargingComponent:OnSingleEnergyReadyCallLuaDelegate() end

function USuperPeopleChargingComponent:OnCDReadyCallLuaDelegate() end

---@return number
function USuperPeopleChargingComponent:GetCurrentChargeCDSkillUIDNative() end

---@param SkillUID number
---@return number
function USuperPeopleChargingComponent:GetSkillCurrentEnergyNative(SkillUID) end

---@param SkillUID number
---@return number
function USuperPeopleChargingComponent:GetSkillMaxEnergyNative(SkillUID) end

function USuperPeopleChargingComponent:OnRep_ChargeCD() end
