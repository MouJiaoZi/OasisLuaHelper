---@meta

---@class EGPSourceType
---@field SRC_PreviousRegexMatch number
---@field SRC_GpuFamily number
---@field SRC_GlVersion number
---@field SRC_OSVersion number
---@field SRC_DeviceMake number
---@field SRC_DeviceModel number
---@field SRC_VulkanVersion number
---@field SRC_TotalPhysicalGB number
---@field SRC_ProfileName number
---@field SRC_OpenID number
---@field SRC_MapName number
---@field SRC_GameModeName number
---@field SRC_MAX number
EGPSourceType = {}


---@class EGPCompareType
---@field CMP_Equal number
---@field CMP_Less number
---@field CMP_LessEqual number
---@field CMP_Greater number
---@field CMP_GreaterEqual number
---@field CMP_NotEqual number
---@field CMP_Regex number
---@field CMP_Mask number
---@field CMP_MAX number
EGPCompareType = {}


---@class FGPProfileMatchItem
---@field SourceType EGPSourceType
---@field CompareType EGPCompareType
---@field MatchString string
FGPProfileMatchItem = {}


---@class FGPProfileMatch
---@field Profile string
---@field Match ULuaArrayHelper<FGPProfileMatchItem>
FGPProfileMatch = {}


---@class FDeviceInfo
---@field GPUFamily string
---@field GLVersion string
---@field OSVersion string
---@field DeviceMake string
---@field DeviceModel string
---@field VulkanVersion string
---@field MemorySizeInGB string
---@field OpenID string
---@field HardWareLevel number
---@field bMemoryLowLevel boolean
---@field bDeviceLowLevel boolean
FDeviceInfo = {}


---@class UGrayPushCommand: UObject
---@field ModeOpenID string
---@field MatchProfile ULuaArrayHelper<FGPProfileMatch> @Array of rules to match
local UGrayPushCommand = {}

---@return boolean
function UGrayPushCommand:InitConfigFile() end

---@param MapShortName string
---@param GameModeName string
---@param ProfileName string
---@param deviceinfo FDeviceInfo
---@param PushComands ULuaArrayHelper<string>
---@return boolean
function UGrayPushCommand:GetPushCommands(MapShortName, GameModeName, ProfileName, deviceinfo, PushComands) end
