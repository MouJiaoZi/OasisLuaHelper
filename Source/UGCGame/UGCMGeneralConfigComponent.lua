---@meta

---@class FUGCMHealthBarConfig
---@field bHealthBarEnable boolean
---@field bHealthBarShowWhenOcclusionHide boolean
---@field HealthBarMaxShowNum number
---@field HealthBarMaxShowDistance number
---@field bHealthBarShowWhenTakeDamage boolean
---@field bHealthBarShowWhenLockPlayer boolean
---@field bHealthBarShowWhenBeAimAt boolean
---@field HealthBarMaxConditionShowDistance number
---@field HealthBarShowDuration number
---@field CampFilter number
---@field DamageFilter EShowHPBarDamageType
FUGCMHealthBarConfig = {}


---@class FOnUGCMGeneralConfigInitFinished : ULuaSingleDelegate
FOnUGCMGeneralConfigInitFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMGeneralConfigInitFinished:Bind(Callback, Obj) end

---执行委托
function FOnUGCMGeneralConfigInitFinished:Execute() end


---@class UUGCMGeneralConfigComponent: UActorComponent
---@field PlayerHealthBarConfig FUGCMHealthBarConfig
---@field GenericCharacterHealthBarConfig FUGCMHealthBarConfig
---@field bEnablePreciseInteraction boolean
---@field MaxShowPreciseAtSameTime number
---@field MaxShowPreciseActorAtSameTime number
---@field bIsInitialized boolean
---@field OnUGCMGeneralConfigInitFinishedEvent FOnUGCMGeneralConfigInitFinished
local UUGCMGeneralConfigComponent = {}

---@return boolean
function UUGCMGeneralConfigComponent:IsInitialized() end

function UUGCMGeneralConfigComponent:GeneralConfigInitFinished() end
