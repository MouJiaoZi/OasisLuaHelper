---@meta

---@class FDynamicWaterFog
---@field BeginPlayRealTime number
---@field Factor number
FDynamicWaterFog = {}


---@class FShowWaterEffectDelegate : ULuaMulticastDelegate
FShowWaterEffectDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ViewTarget: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShowWaterEffectDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ViewTarget AActor
function FShowWaterEffectDelegate:Broadcast(ViewTarget) end


---@class FOnCameraUnderWaterEffectDelegate : ULuaMulticastDelegate
FOnCameraUnderWaterEffectDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bCameraEnterWater: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCameraUnderWaterEffectDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bCameraEnterWater boolean
function FOnCameraUnderWaterEffectDelegate:Broadcast(bCameraEnterWater) end


---@class UUnderWaterEffectDataAsset: UDataAsset
---@field FogParam FDynamicFogCustomParam
---@field FogBlendTime number
local UUnderWaterEffectDataAsset = {}


---@class USTExtraUnderWaterEffectComp: USceneComponent
---@field bTickWaterEffectEnabled boolean
---@field bTickUpdateUnderWaterDepthRTPC boolean
---@field UnderWaterFogTagName string
---@field UnderWaterFogTagName_PC string
---@field ShowUnderWaterBubblesDepth number
---@field UnderWaterCamEffectClass UActorComponent
---@field UnderWaterCamEffectTransform FTransform
---@field FoggyWeatherUnderWaterFogMaxOpacity number
---@field NormalWeatherUnderWaterFogMaxOpacity number
---@field CameraOutOfWaterZOffsetWithWaves number
---@field CameraIntoWaterZOffsetWithWaves number
---@field UnderWaterDepthRTPCValueMin number
---@field UpdateUnderWaterDepthRTPCInterval number
---@field UnderWaterFogComps ULuaArrayHelper<UExponentialHeightFogComponent>
---@field SceneFogComps ULuaArrayHelper<UExponentialHeightFogComponent>
---@field OnCameraUnderWaterEffect FOnCameraUnderWaterEffectDelegate
---@field DynamicWaterFogList ULuaArrayHelper<FDynamicWaterFog> @水下雾
local USTExtraUnderWaterEffectComp = {}

---@param UnderWaterEffectData UUnderWaterEffectDataAsset
---@param Factor number
---@return number
function USTExtraUnderWaterEffectComp:AddDynamicUnderWaterFog(UnderWaterEffectData, Factor) end

---@param Handle number
function USTExtraUnderWaterEffectComp:RemoveDynamicUnderWaterFog(Handle) end

---@param Factor number
function USTExtraUnderWaterEffectComp:SetCurrentWaterFogFactor(Factor) end

---@param DeltaTime number
function USTExtraUnderWaterEffectComp:UpdateUnderWaterDepthRTPC(DeltaTime) end

---@param renderlevel number
function USTExtraUnderWaterEffectComp:OnUserQualitySettingChanged(renderlevel) end

---@param PC AActor
---@param bActive boolean
function USTExtraUnderWaterEffectComp:SetUnderWaterScreenAppearanceByMgr(PC, bActive) end

---战斗内，客户端Destroy雾后，UnderWaterFogComps和SceneFogComps会无效，下次入水应该重新搜索场景中的雾
---@param Actor AActor
---@param EndPlayReason EEndPlayReason
function USTExtraUnderWaterEffectComp:OnFogEndPlay(Actor, EndPlayReason) end

function USTExtraUnderWaterEffectComp:RefreshFogCompCache() end
