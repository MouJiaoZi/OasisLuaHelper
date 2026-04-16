---@meta

---@class FNotifyInnerCircleAppearance : ULuaMulticastDelegate
FNotifyInnerCircleAppearance = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InnerCircleType: EInnerCircleType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyInnerCircleAppearance:Add(Callback, Obj) end

---触发 Lua 广播
---@param InnerCircleType EInnerCircleType
function FNotifyInnerCircleAppearance:Broadcast(InnerCircleType) end


---@class FNotifyMakeCircleFinish : ULuaMulticastDelegate
FNotifyMakeCircleFinish = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CircleIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyMakeCircleFinish:Add(Callback, Obj) end

---触发 Lua 广播
---@param CircleIndex number
function FNotifyMakeCircleFinish:Broadcast(CircleIndex) end


---@class UDamageType_CirclePoison: UDamageType
local UDamageType_CirclePoison = {}


---@class UCircleMgrComponent: UTimerRegistComponent
---@field bStartOnEnterFight boolean
---@field CircleConfigs ULuaArrayHelper<FCirCleCfg>
---@field DestinyThreshold number
---@field bEnablePredictCircle boolean
---@field bEnableInnerCircle boolean @Inner Circle Begin *
---@field InnerCircleClass ARadiationCircleBase
---@field bRandomSpecialInnerCircleType boolean
---@field bDeduplicationRandom boolean
---@field RandomSpecialInnerCircleTypeList ULuaArrayHelper<EInnerCircleType>
---@field TimeForForbidMakePain number
---@field bCircleCenterInExtend boolean
---@field bMakePainToHealth boolean
---@field TimeForSafeInParachute number
---@field NotifyMakeCircleFinish FNotifyMakeCircleFinish
---@field PreCalcBlueCircles ULuaArrayHelper<FVector>
---@field PreCalcWhiteCircles ULuaArrayHelper<FVector>
---@field IsSimulateCircles boolean
---@field NotifyInnerCircleAppearance FNotifyInnerCircleAppearance
---@field CirclePainVolumes ULuaArrayHelper<ACirclePainVolume>
---@field bUseCirclePainVolume boolean
---@field WeightFieldCircleList ULuaArrayHelper<number>
---@field CircleData string
---@field LandRatio number
---@field bUseWFA boolean
---@field CircleLandRatios ULuaArrayHelper<number>
---@field CircleExtraRatios ULuaArrayHelper<number>
---@field CircleCenterOutofExtraConfig ULuaArrayHelper<number>
---@field WaterCandidatesLen number
---@field SearchPerDelta number
---@field bUseCustomCircle boolean @支持使用自定义独立毒圈 Begin********************************************
---@field bWFAInitIgnoreCircleIndexCheck boolean
local UCircleMgrComponent = {}

function UCircleMgrComponent:InitLastCircleIndex() end

function UCircleMgrComponent:InitCircleMgrComp() end

---@param Index number
---@return FVector
function UCircleMgrComponent:GetWhiteCircleByIndex(Index) end

---@param Index number
---@return FVector
function UCircleMgrComponent:GetBlueCircleByIndex(Index) end

---@return number
function UCircleMgrComponent:GetCurrentCircleIndex() end

---@param LastCount number
---@return boolean
function UCircleMgrComponent:IsNowInLastCountCircle(LastCount) end

---@param _actor AActor
---@return boolean
function UCircleMgrComponent:IsInBlueCircle(_actor) end

---@param InActor AActor
function UCircleMgrComponent:MakeInnerCircleEffect(InActor) end

---@param _actor AActor
function UCircleMgrComponent:MakePain(_actor) end

---@return boolean
function UCircleMgrComponent:CheckCanSafeInParachute() end

---@param Victim AActor
---@return number
function UCircleMgrComponent:GetCurrentPain(Victim) end

---@param Victim AActor
---@return number
function UCircleMgrComponent:GetNormalCurrentPain(Victim) end

---@param Victim AActor
---@param VolumePain number
---@return boolean
function UCircleMgrComponent:GetCirclePainVolumeCurrentPain(Victim, VolumePain) end

---@param Enable boolean
function UCircleMgrComponent:SetEnabled(Enable) end

function UCircleMgrComponent:CircleStartTimer() end

---@param Fixed boolean
---@param x number
---@param y number
function UCircleMgrComponent:SetFixedCircleCenter(Fixed, x, y) end

function UCircleMgrComponent:GetCirleTimeToPain() end

---@return number
function UCircleMgrComponent:GetCircleConfigNum() end

---@param CircleIndex number
---@return number
function UCircleMgrComponent:GetCircleStartTime(CircleIndex) end

---@param CircleIndex number
---@return number
function UCircleMgrComponent:GetCircleEndTime(CircleIndex) end

---@param CircleIndex number
---@return number
function UCircleMgrComponent:GetCircleRadius(CircleIndex) end

---@return number
function UCircleMgrComponent:GetResetTimestamp() end

---@param CircleInfo FVector
---@param CircleType number
---@param InnerCircleType number
function UCircleMgrComponent:GMMakeDesiredCircle(CircleInfo, CircleType, InnerCircleType) end

---@param index number
function UCircleMgrComponent:GMTestMakeCircle(index) end

function UCircleMgrComponent:GMTestMakeNextCircle() end

---@param index number
function UCircleMgrComponent:GMTestGenerateCircles(index) end

---@param InContainActor AActor
function UCircleMgrComponent:SetContainActor(InContainActor) end

---@param Multiplicator number
function UCircleMgrComponent:SetCircleMultiplicator(Multiplicator) end

function UCircleMgrComponent:CalDamagePlan() end

---@param CDTime number
---@param LastTime number
function UCircleMgrComponent:SetGMCicleTime(CDTime, LastTime) end

function UCircleMgrComponent:ResetCircles() end

function UCircleMgrComponent:UGCResetCircles() end

---@param Index number
---@return number
function UCircleMgrComponent:UGCGetCurIndexTime(Index) end

---@param NewWhiteCircle FVector
---@return boolean
function UCircleMgrComponent:IsValidWhiteCircle(NewWhiteCircle) end

function UCircleMgrComponent:DisableBlueCircle() end

---@return FVector
function UCircleMgrComponent:CalculateWarGameWhiteCircle() end

---@param CirclePainVolume ACirclePainVolume
function UCircleMgrComponent:RegisterCirclePainVolume(CirclePainVolume) end

---@param CirclePainVolume ACirclePainVolume
function UCircleMgrComponent:UnregisterCirclePainVolume(CirclePainVolume) end

---@param Actor AActor
---@return boolean
function UCircleMgrComponent:AnyCirclePainVolumeContains(Actor) end

---@param _actor AActor
---@param bApply boolean
---@param bIn boolean
function UCircleMgrComponent:GetInCustomBlueCircle(_actor, bApply, bIn) end

---@param OutCenter FVector
---@return boolean
function UCircleMgrComponent:IsCircleCenterInWFAExtra(OutCenter) end

function UCircleMgrComponent:PauseCircle() end

function UCircleMgrComponent:UnPauseCircle() end
