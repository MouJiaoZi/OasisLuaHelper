---@meta

---@class FScreenAppearanceProviders
---@field ScreenAppearances ULuaArrayHelper<UScreenAppearanceProvider>
FScreenAppearanceProviders = {}


---@class FSortedBlendables
---@field Weight number
---@field Blendables ULuaArrayHelper<IBlendableInterface>
FSortedBlendables = {}


---@class FScreenAppearancePPBlendable
---@field PP FPostProcessSettings
---@field SortedBlendables ULuaArrayHelper<FSortedBlendables>
FScreenAppearancePPBlendable = {}


---@class FOnScreenAppearanceCreated : ULuaSingleDelegate
FOnScreenAppearanceCreated = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UScreenAppearanceProvider) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScreenAppearanceCreated:Bind(Callback, Obj) end

---执行委托
---@param Param1 UScreenAppearanceProvider
function FOnScreenAppearanceCreated:Execute(Param1) end


---@class AScreenAppearanceActor: AActor
---@field DefaultScreenAppearanceProviders ULuaArrayHelper<UScreenAppearanceProvider>
---@field DefaultProviders ULuaMapHelper<string, UScreenAppearanceProvider>
---@field SavedPlayerScreenAppearances ULuaMapHelper<AActor, FScreenAppearanceProviders>
---@field PersistentScreenAppearances FScreenAppearanceProviders
---@field RelativeTransform FTransform
---@field FOV number
---@field Consolidator FScreenAppearanceConsolidator
---@field Blendables FScreenAppearancePPBlendable
---@field ScreenAppearanceVolumesInThisWorld ULuaArrayHelper<AScreenAppearanceVolume>
---@field PendingRemoveScreenAppearances ULuaArrayHelper<UScreenAppearanceProvider>
---@field PreLoadProviderClass ULuaArrayHelper<UObject>
---@field ScreenParticleProviderPaths ULuaArrayHelper<FSoftObjectPath>
local AScreenAppearanceActor = {}

---@param Provider UScreenAppearanceProvider
---@param AppearanceOwner AActor
---@param Causer AActor
function AScreenAppearanceActor:FinishDeferedScreenAppearancePlaying(Provider, AppearanceOwner, Causer) end

---@param AppearanceOwner AActor
---@param AppearanceName string
function AScreenAppearanceActor:StopScreenAppearanceByNameForNextTick(AppearanceOwner, AppearanceName) end

---@param AppearanceOwner AActor
---@param ProviderClass UScreenAppearanceProvider
function AScreenAppearanceActor:StopScreenAppearanceByClassForNextTick(AppearanceOwner, ProviderClass) end

---@param Provider UScreenAppearanceProvider
function AScreenAppearanceActor:StopScreenAppearanceForNextTick(Provider) end

---@param AppearanceOwner AActor
---@param AppearanceName string
function AScreenAppearanceActor:StopScreenAppearanceByName(AppearanceOwner, AppearanceName) end

---@param AppearanceOwner AActor
---@param ProviderClass UScreenAppearanceProvider
function AScreenAppearanceActor:StopScreenAppearanceByClass(AppearanceOwner, ProviderClass) end

---@param Provider UScreenAppearanceProvider
function AScreenAppearanceActor:StopScreenAppearance(Provider) end

---@param AppearanceOwner AActor
---@param AppearanceName string
---@return boolean
function AScreenAppearanceActor:IsScreenAppearancePlaying(AppearanceOwner, AppearanceName) end

---@return boolean
function AScreenAppearanceActor:HasActiveAppearance() end

---@param AppearanceOwner AActor
function AScreenAppearanceActor:StopAllScreenAppearances(AppearanceOwner) end

---@param AppearanceName string
---@param ParamName string
---@param NewValue number
function AScreenAppearanceActor:SetFloatParameterOnScreenAppearance(AppearanceName, ParamName, NewValue) end

---@param AppearanceName string
---@param ParamName string
---@param NewValue FLinearColor
function AScreenAppearanceActor:SetColorParameterOnScreenAppearance(AppearanceName, ParamName, NewValue) end

---@param ParameterName string
---@param ParameterValue number
function AScreenAppearanceActor:SetScalarParameter(ParameterName, ParameterValue) end

---@param ParameterName string
---@param ParameterValue FLinearColor
function AScreenAppearanceActor:SetColorParameter(ParameterName, ParameterValue) end
