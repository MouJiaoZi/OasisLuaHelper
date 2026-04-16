---@meta

---@class EDPSourceType
---@field DP_PreviousRegexMatch number
---@field DP_ProfileName number
---@field DP_DeviceType number
---@field DP_GpuFamily number
---@field DP_GlVersion number
---@field DP_OsVersion number
---@field DP_DeviceMake number
---@field DP_DeviceModel number
---@field DP_VulkanVersion number
---@field DP_MemorySizeInGB number
---@field DP_QualityLevel number
---@field DP_MaxQualityLevel number
---@field DP_TCQualityGrade number
---@field DP_ScreenPhysicSize number
---@field DP_MainBroadInfo number
---@field DP_GamePlayFlag number
---@field DP_HDRSupport number
---@field DP_SRC_MAX number
EDPSourceType = {}


---@class EDPCompareType
---@field DP_Equal number
---@field DP_Less number
---@field DP_LessEqual number
---@field DP_Greater number
---@field DP_GreaterEqual number
---@field DP_NotEqual number
---@field DP_Regex number
---@field DP_CMP_MAX number
EDPCompareType = {}


---@class FDPProfileMatchItem
---@field SourceType EDPSourceType
---@field CompareType EDPCompareType
---@field MatchString string
FDPProfileMatchItem = {}


---@class FDPProfileMatch
---@field Profile string
---@field Match ULuaArrayHelper<FDPProfileMatchItem>
FDPProfileMatch = {}


---@class UCommonDeviceProfileMatchingRules: UObject
---@field SwitcerMatchProfile ULuaArrayHelper<FDPProfileMatch> @Array of rules to match
---@field ChangeQualityMatchProfile ULuaArrayHelper<FDPProfileMatch> @Array of rules to match
local UCommonDeviceProfileMatchingRules = {}
