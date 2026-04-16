---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class FAvatarStrategyProxyConfigInfo
---@field AvatarStrategyClassMap_ByItemID ULuaMapHelper<number, UAvatarStrategyProxy>
---@field AvatarStrategyClassMap_ByCustomTag ULuaMapHelper<string, UAvatarStrategyProxy>
---@field AvatarStrategyClassMap_ByClassType ULuaMapHelper<UClass, UAvatarStrategyProxy>
FAvatarStrategyProxyConfigInfo = {}


---@class FAvatarStrategyProxyRuntimeInfo
---@field RuntimeAvatarStrategy_ByItemID ULuaMapHelper<number, UAvatarStrategyProxy>
---@field RuntimeAvatarStrategy_ByCustomTag ULuaMapHelper<string, UAvatarStrategyProxy>
---@field RuntimeAvatarStrategy_ByClassType ULuaMapHelper<UObject, UAvatarStrategyProxy>
FAvatarStrategyProxyRuntimeInfo = {}


---@class UAvatarStrategyManager: UObject
---@field bEnablePlayerAvatarStrategyFeature boolean
---@field bEnableWeaponAvatarStrategyFeature boolean
---@field bEnableVehicleAvatarStrategyFeature boolean
---@field bOverride_GetPlayerAvatarStrategyProxy boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetWeaponAvatarStrategyProxy boolean
---@field bOverride_GetVehicleAvatarStrategyProxy boolean
---@field bOverride_IsInBattleMap boolean
---@field AvatarStrategyConfigInfo_Player FAvatarStrategyProxyConfigInfo @HOT_UPDATE_PROTECT *****************************************
---@field AvatarStrategyConfigInfo_Player_PC FAvatarStrategyProxyConfigInfo
---@field RuntimeAvatarStrategy_Player FAvatarStrategyProxyRuntimeInfo
---@field AvatarStrategyConfigInfo_Weapon FAvatarStrategyProxyConfigInfo
---@field AvatarStrategyConfigInfo_Weapon_PC FAvatarStrategyProxyConfigInfo
---@field RuntimeAvatarStrategy_Weapon FAvatarStrategyProxyRuntimeInfo
---@field AvatarStrategyConfigInfo_Vehicle FAvatarStrategyProxyConfigInfo
---@field AvatarStrategyConfigInfo_Vehicle_PC FAvatarStrategyProxyConfigInfo
---@field RuntimeAvatarStrategy_Vehicle FAvatarStrategyProxyRuntimeInfo
local UAvatarStrategyManager = {}

---@param InContextObj UObject
---@return number
function UAvatarStrategyManager:Static_GetWorldTimeSeconds(InContextObj) end

---@param InTargetActorComponent UActorComponent
function UAvatarStrategyManager:Static_MarkRenderTransformDirty(InTargetActorComponent) end

---@param InTargetActorComponent UActorComponent
function UAvatarStrategyManager:Static_MarkRenderStateDirty(InTargetActorComponent) end

---@param InTargetPrimitiveComponent UPrimitiveComponent
---@param InTargetRenderTime number
function UAvatarStrategyManager:Static_ModifyLasterRenderTime(InTargetPrimitiveComponent, InTargetRenderTime) end

---@return boolean
function UAvatarStrategyManager:IsAvatarStrategyEnable() end

---@return boolean
function UAvatarStrategyManager:Static_IsWINRELEASE() end

---@return number
function UAvatarStrategyManager:Static_GetWindowsBenchmarkGrade() end

---@return number
function UAvatarStrategyManager:Static_GetWindowsBenchmarkCPUGrade() end

---@return number
function UAvatarStrategyManager:Static_GetWindowsBenchmarkGPUGrade() end

---@return number
function UAvatarStrategyManager:Static_GetWindowsBenchmarkVideoMemoryGrade() end

---@param InContextObj USceneComponent
---@return boolean
function UAvatarStrategyManager:Static_IsInBattleMap(InContextObj) end

---@param InMapName string
---@param InCallTag string
function UAvatarStrategyManager:ReleaseAvatarStrategyProxy(InMapName, InCallTag) end

---@param InMapName string
function UAvatarStrategyManager:PreLoadMap(InMapName) end

---@param InMapName string
function UAvatarStrategyManager:PostLoadMap(InMapName) end

---@param InContextObj USceneComponent
---@return boolean
function UAvatarStrategyManager:IsInBattleMap(InContextObj) end

---@param InContextObj USceneComponent
---@return boolean
function UAvatarStrategyManager:BP_IsInBattleMap(InContextObj) end

---@param InStrategyRuntimeInfo FAvatarStrategyProxyRuntimeInfo
function UAvatarStrategyManager:ReleaseRuntimeAvatarStrategyProxy(InStrategyRuntimeInfo) end
