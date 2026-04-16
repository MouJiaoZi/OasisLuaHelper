---@meta

---@class FUserDetailSetting
---@field DeviceQualityLevel number
---@field TCQualityGrade number
---@field DeviceMaxQualityLevel number
---@field UserQualitySetting number
---@field UserQualitySettingTA number
---@field DeviceSupportHDR number
---@field IsOpenHDR number
---@field UserHDRSetting number
---@field IsSupportMSAA number
---@field UserMSAASetting boolean
---@field UserMCSSetting number
---@field UserShadowSetting number
---@field UserShadowSwitch number
---@field PUBGLimitSetting number
---@field PUBGDeviceUpdateFlag number
---@field PUBGDeviceFPSDef number
---@field PUBGDeviceFPSLow number
---@field PUBGDeviceFPSMid number
---@field PUBGDeviceFPSHigh number
---@field PUBGDeviceFPSHDR number
---@field PUBGDeviceFPSUltralHigh number
---@field PUBGDeviceFPSUltimateHigh number
---@field PUBGDeviceFPSLowTA number
---@field PUBGDeviceFPSMidTA number
---@field PUBGDeviceFPSHighTA number
---@field PUBGDeviceFPSHDRTA number
---@field PUBGDeviceFPSUltralHighTA number
---@field PUBGDeviceFPSUltimateHighTA number
---@field IsSupportTagCulling boolean
---@field UserVulkanSetting number
FUserDetailSetting = {}


---@class FOnDeviceProfileManagerUpdated : ULuaSingleDelegate
FOnDeviceProfileManagerUpdated = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeviceProfileManagerUpdated:Bind(Callback, Obj) end

---执行委托
function FOnDeviceProfileManagerUpdated:Execute() end


---Implements a helper class that manages all profiles in the Device
---@class UDeviceProfileManager: UObject
---@field Profiles ULuaArrayHelper<UObject>
local UDeviceProfileManager = {}
