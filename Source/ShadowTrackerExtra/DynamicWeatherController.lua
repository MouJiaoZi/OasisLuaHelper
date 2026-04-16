---@meta

---@class FOnWeatherChangeStarted : ULuaMulticastDelegate
FOnWeatherChangeStarted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: FWeatherChangeEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherChangeStarted:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event FWeatherChangeEvent
function FOnWeatherChangeStarted:Broadcast(Event) end


---@class FOnWeatherChangeSaturated : ULuaMulticastDelegate
FOnWeatherChangeSaturated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: FWeatherChangeEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherChangeSaturated:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event FWeatherChangeEvent
function FOnWeatherChangeSaturated:Broadcast(Event) end


---@class FOnWeatherChangeRestoreStarted : ULuaMulticastDelegate
FOnWeatherChangeRestoreStarted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: FWeatherChangeEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherChangeRestoreStarted:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event FWeatherChangeEvent
function FOnWeatherChangeRestoreStarted:Broadcast(Event) end


---@class FOnWeatherChangeRestoreEnded : ULuaMulticastDelegate
FOnWeatherChangeRestoreEnded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: FWeatherChangeEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherChangeRestoreEnded:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event FWeatherChangeEvent
function FOnWeatherChangeRestoreEnded:Broadcast(Event) end


---@class FOnWeatherRecover : ULuaMulticastDelegate
FOnWeatherRecover = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BlendInStarted: boolean, BlendSaturated: boolean, BlendOutStarted: boolean, BlendOutEnded: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherRecover:Add(Callback, Obj) end

---触发 Lua 广播
---@param BlendInStarted boolean
---@param BlendSaturated boolean
---@param BlendOutStarted boolean
---@param BlendOutEnded boolean
function FOnWeatherRecover:Broadcast(BlendInStarted, BlendSaturated, BlendOutStarted, BlendOutEnded) end


---@class FOnWeatherTickLerp : ULuaMulticastDelegate
FOnWeatherTickLerp = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Lerp: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeatherTickLerp:Add(Callback, Obj) end

---触发 Lua 广播
---@param Lerp number
function FOnWeatherTickLerp:Broadcast(Lerp) end


---@class UDynamicWeatherController: UActorComponent
---@field DelegateOnWeatherChangeStarted FOnWeatherChangeStarted
---@field DelegateOnWeatherChangeSaturated FOnWeatherChangeSaturated
---@field DelegateOnWeatherChangeRestoreStarted FOnWeatherChangeRestoreStarted
---@field DelegateOnWeatherChangeRestoreEnded FOnWeatherChangeRestoreEnded
---@field WeatherRecover FOnWeatherRecover
---@field DelegateOnWeatherTickLerp FOnWeatherTickLerp
---@field DynamicWeatherType EWeatherStatusType
---@field TargetLightValue number
---@field bNotUseCurve boolean
---@field FinalAdditionalColor FLinearColor
---@field bUseFinalAdditionalColor boolean
---@field ForbidTickLerp boolean @add by feishen, 20201006
---@field ForbidTickLerpSkySwitch boolean
---@field ForbidTickLerpSkySwitchColor boolean
---@field ForbidLerpFog boolean
---@field ForbidLerpFogStartDistance boolean
---@field ForbidLerpMainLight boolean
---@field ForbidLerpSkyLight boolean
---@field UseLerpSkySwitch boolean
---@field UseLerpSkySwitchColor boolean
---@field UseLerpFog boolean
---@field UseMainLight boolean
---@field UseSkyLight boolean
---@field UseSetFogActorLocation boolean
---@field UseSetSkySwitchActorLocation boolean
---@field UseSetSkySphereActorLocation boolean
---@field UINotifyTimeBeforeStart number
---@field UINotifyModuleName string
---@field UINotifyIDBeforeStart number
---@field ChangeStartUINotifyID number
---@field ChangeQuitUINotifyID number
---@field ChangeStartUINotifyAnimPlayRate number
---@field bUseLowEffect boolean
---@field LocalControlData FWeatherControllerRepData
---@field RuningDirection number
---@field RuningTime number
---@field LerpTotalTime number
---@field WeatherName string
---@field ObjectValues FWeatherObject
---@field WeatherObjectSrc FWeatherObject
---@field SrcLightValue number
---@field WeatherObjectLerp FWeatherObject
---@field SrcFinalAdditionalColor FLinearColor
---@field SrcDefaultLightValue number @Client Blend Value
---@field SrcDefaultFinalAdditionalColor FLinearColor
---@field SrcCurrentLightValue number
---@field SrcCurrentFinalAdditionalColor FLinearColor
---@field CurrentWeatherStatus FWeatherDetailStatus
---@field FogActorDefaultLoc FVector
---@field FogActorRelativeLoc FVector
---@field MainLightActorDefaultLoc FVector
---@field MainLightActorRelativeLoc FVector
---@field SkyLightActorDefaultLoc FVector
---@field SkyLightActorRelativeLoc FVector
---@field SkySphereActorDefaultLoc FVector
---@field SkySphereActorRelativeLoc FVector
---@field UseSetSkySphereMaterial boolean
---@field bUseDynamicLensFlare boolean
---@field bHideLensFlare boolean
---@field bHideLensFlareDefault boolean
---@field bSyncWeatherStatusToMaterial boolean
---@field TargetEmissiveIntensity number
---@field EmissiveIntensityDefault number
local UDynamicWeatherController = {}

---@param renderlevel number
function UDynamicWeatherController:OnUserQualitySettingChanged(renderlevel) end

---设置雾actor的位置
function UDynamicWeatherController:SetFogActorLocation() end

---恢复雾actor的位置
function UDynamicWeatherController:RestoreFogActorLocation() end

---设置sky light actor的位置
function UDynamicWeatherController:SetSkySwitchActorLocation() end

---恢复sky light actor的位置
function UDynamicWeatherController:RestoreSkySwitchActorLocation() end

---设置sky sphere actor的位置
function UDynamicWeatherController:SetSkySphereActorLocation() end

---恢复sky sphere actor的位置
function UDynamicWeatherController:RestoreSkySphereActorLocation() end

function UDynamicWeatherController:SetCurrentBlendValue() end

---@param LerpVal number
function UDynamicWeatherController:HandleLerp(LerpVal) end

function UDynamicWeatherController:UINotifyCallbackOnServer() end

function UDynamicWeatherController:SetSkySphereDynamicMaterial() end

function UDynamicWeatherController:SetSkySphereStaticMaterial() end

---设置lens flare actor的状态
function UDynamicWeatherController:SetLensFlareActor() end

---恢复lens flare actor的状态
function UDynamicWeatherController:RestoreLensFlareActor() end

---同步天气状态到材质层
function UDynamicWeatherController:SetMaterialWeatherStatus() end

---恢复材质层天气状态
function UDynamicWeatherController:RestoreMaterialWeatherStatus() end
