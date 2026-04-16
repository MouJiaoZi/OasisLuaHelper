---@meta

---@class EModeAvatarFeatureType
---@field EMAFT_None number @默认(关闭)
---@field EMAFT_Authority number @服务器生效(全局统一)
---@field EMAFT_Autonomous number @只在主端生效
EModeAvatarFeatureType = {}


---修改此结构体的属性字段时，要同步修改拷贝宏定义MODE_AVATAR_FETURE_NETMETA_DATA_COPY
---@class FModeAvatarFeatureNetMetaData
---@field bFeatureActivated boolean
---@field bFeatureActivated_Client boolean
---@field FeatureItemID number
---@field FeatureType EModeAvatarFeatureType
FModeAvatarFeatureNetMetaData = {}


---@class FModeAvatarFeatureNetMetaData_BountyHunter
---@field CurUseCreateRoleHeadID number
FModeAvatarFeatureNetMetaData_BountyHunter = {}


---@class FModeAvatarFeatureNetMetaData_BoxingChampion
---@field CurUseCreateRoleHeadID number
---@field CurUseCreateRoleHairID number
---@field DefaultHeadID number
---@field DefaultHairID number
FModeAvatarFeatureNetMetaData_BoxingChampion = {}
