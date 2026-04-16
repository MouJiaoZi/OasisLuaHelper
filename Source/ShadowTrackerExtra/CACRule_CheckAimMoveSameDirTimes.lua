---@meta

---@class FUCACRule_UploadMoveSameDirRecordData
---@field TotalTangentLineCounter number
---@field SameTangentLineCounter number
---@field bIsScopeWhenHit boolean
---@field StartLocationArr ULuaArrayHelper<FVector>
---@field LocationCounterArr ULuaArrayHelper<number>
---@field bIsInAimBtnArea boolean
---@field bIsInFireBtnArea boolean
---@field AngularVelocityMaxArr ULuaArrayHelper<number>
---@field AngularVelocitySameArr ULuaArrayHelper<number>
---@field AngularVelocitySameCounterArr ULuaArrayHelper<number>
FUCACRule_UploadMoveSameDirRecordData = {}


---@class FCACRule_CheckAimMoveSameDirTimesTouchList
---@field MoveTouchIndex number
---@field MoveTouchCount number
---@field StartRealTime number
---@field EndRealTime number
---@field StartTouchLocation FVector
---@field bHasBeenMoveScreenFinger boolean
---@field PlayerStartPosition FVector
---@field PlayerStartRotation FRotator
---@field PlayerHitedPosition FVector
---@field PlayerHitStartRotation FRotator
---@field HitRealTime number
---@field bIsScopeWhenHit boolean
---@field FingerTouchLocationList ULuaArrayHelper<FVector>
---@field ControlRotationList ULuaArrayHelper<FRotator>
---@field RealTimeList ULuaArrayHelper<number>
FCACRule_CheckAimMoveSameDirTimesTouchList = {}


---@class UCACRule_CheckAimMoveSameDirTimes: UCheckAimCheatRule
---@field ClearRemainCount number
---@field TangentDeviationDegreeBetweenFrames number
---@field TouchStartPointTopTimes number
---@field StartTouchPointMaxDeviation number
---@field ClearOldTimeDataMaxTime number
---@field EnableRecordDegree number
---@field EnableRecordDistance number
---@field bIsOnlyUseYawInterval boolean
---@field AngularVelocityScale number
---@field AngularVelocityTopCounts number
---@field RepeatRecordAVInterval number
---@field AngularVelocityVarianceThreshold number
---@field AngularVelocityMaxDeviation number
---@field IndexToTouchMoveListMapping ULuaMapHelper<number, FCACRule_CheckAimMoveSameDirTimesTouchList>
---@field CacheFingerTouchMoveScreenList ULuaArrayHelper<FCACRule_CheckAimMoveSameDirTimesTouchList>
---@field StartLocationToTimesMappingClient ULuaMapHelper<FVector, number>
---@field AngularVelocityToTimesMappingClient ULuaMapHelper<number, number>
local UCACRule_CheckAimMoveSameDirTimes = {}

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckAimMoveSameDirTimes:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckAimMoveSameDirTimes:InputTouchEnd(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_CheckAimMoveSameDirTimes:InputTouchRepeat(FingerIndex, Location, force) end

function UCACRule_CheckAimMoveSameDirTimes:InitControllerInputEvent() end

function UCACRule_CheckAimMoveSameDirTimes:UpdateShootingWeaponBind() end

---@param InHitActor AActor
---@param ImpactPosDistanceToWeapon number
---@param Player APawn
function UCACRule_CheckAimMoveSameDirTimes:OnBulletHitCACRule(InHitActor, ImpactPosDistanceToWeapon, Player) end

function UCACRule_CheckAimMoveSameDirTimes:ClearOutTimeData() end

function UCACRule_CheckAimMoveSameDirTimes:UpdateXPCallCacheFingerMoveInfo() end

---@param UploadData FUCACRule_UploadMoveSameDirRecordData
function UCACRule_CheckAimMoveSameDirTimes:UploadMoveSameDirRecordData(UploadData) end

function UCACRule_CheckAimMoveSameDirTimes:ServerCheckHasCachedData() end

---@param ServerStartLocationArr ULuaArrayHelper<FVector>
---@param ServerLocationCounterArr ULuaArrayHelper<number>
function UCACRule_CheckAimMoveSameDirTimes:ClientRepStartPosCachedData(ServerStartLocationArr, ServerLocationCounterArr) end

---@param ServerAVValArr ULuaArrayHelper<number>
---@param ServerAVCounterArr ULuaArrayHelper<number>
function UCACRule_CheckAimMoveSameDirTimes:ClientRepAVCachedData(ServerAVValArr, ServerAVCounterArr) end
