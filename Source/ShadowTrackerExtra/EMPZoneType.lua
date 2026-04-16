---@meta

---@class EEMPZoneGenerateType
---@field None number @无规则
---@field Ringtaw number @白圈到蓝圈
---@field Ringtaw1 number @白圈到蓝圈1
EEMPZoneGenerateType = {}


---@class EEMPZoneState
---@field None number @无
---@field Warning number @警告
---@field Active number @激活
---@field IsEnd number @结束
EEMPZoneState = {}


---@class FEMPZoneCfg
---@field BeginTime number
---@field ZoneIntervalTime number
---@field WarningDelayTime number
---@field ZoneTime number
---@field BisUseNewOverlapConfig boolean
---@field OuterRadius number
---@field OuterHalfHigh number
FEMPZoneCfg = {}


---@class FEMPZoneEXCfg
---@field RandomPercent number
FEMPZoneEXCfg = {}


---@class FGameEMPZoneData
---@field EffectRadius number
---@field EMPLoc FVector
---@field ZoneState EEMPZoneState
---@field Index number
FGameEMPZoneData = {}


---@class FGameEMPZonePreDate
---@field PreLocation FVector
---@field Index number
FGameEMPZonePreDate = {}
