---@meta

---@class FGameplayTask_Charge_Data
---@field MinChargeTime number
---@field FullChargeTime number
---@field MaxChargeTime number
FGameplayTask_Charge_Data = {}


---@class IGameplayTask_Charge_Interface: IInterface
IGameplayTask_Charge_Interface = {}

---@return number
function IGameplayTask_Charge_Interface:GetCurrentChargeTime() end

---@return number
function IGameplayTask_Charge_Interface:GetCurrentChargePercent() end


---@class UGameplayTask_Charge: UUAEGameplayTask
---@field ChargeSuccessDelegate FTaskChargeDelegate
---@field ChargeFailedDelegate FTaskChargeDelegate
---@field ChargeFullDelegate FTaskChargeDelegate
---@field ChargeMaxDelegate FTaskChargeDelegate
---@field UpdateChargeDelegate FTaskChargeDelegate
---@field CurChargeTime number
---@field ChargeData FGameplayTask_Charge_Data
---@field bChargeSuccess boolean
---@field bChargeFull boolean
---@field bChargeMax boolean
local UGameplayTask_Charge = {}
