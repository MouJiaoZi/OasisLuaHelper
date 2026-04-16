---@meta

---电磁干扰区配置
---@class UGCEMPZoneConfig
local Default__UGCElectromagneticConfig = {}

---电磁干扰区管理器
---@class UGCEMPZoneManager:AUGCGamePartGlobalActor
---@field ElectromagneticEffect UClass
---@field ElectromagneticSound UAkAudioEvent
local UGCEMPZoneManager = {}

--- 当 EMPZone 销毁时隐藏小地图标记
---@param InstanceID number
function UGCEMPZoneManager:_NotifyClientHideMapMark(InstanceID) end

--- [Client RPC] 显示 EMPZone 小地图标记
---@param InstanceID number @实例ID
---@param LocX number @位置X坐标
---@param LocY number @位置Y坐标
---@param LocZ number @位置Z坐标
---@param EffectRadius number @影响半径
---@param ZoneState number @区域状态
function UGCEMPZoneManager:Client_OnEMPZoneMapMarkShow(InstanceID, LocX, LocY, LocZ, EffectRadius, ZoneState) end

--- [Client RPC] 隐藏 EMPZone 小地图标记
---@param InstanceID number @实例ID
function UGCEMPZoneManager:Client_OnEMPZoneMapMarkHide(InstanceID) end