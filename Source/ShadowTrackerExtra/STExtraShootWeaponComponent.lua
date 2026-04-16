---@meta

---@class FVolleyShootInfoCache
---@field StartLoc FVector
---@field ShootDir FVector
FVolleyShootInfoCache = {}


---@class USTExtraShootWeaponComponent: UWeaponLogicBaseComponent
---@field NormalBulletsTrackCompTag string
---@field ScopeBulletsTrackCompTag string
---@field bDrawShootLine boolean
---@field bDebugGunBody boolean
---@field DrawShootLineTime number
---@field bDrawShootPointOnScreen boolean
---@field DrawShootPointOnScreenTime number
---@field DrawShootPointOnScreenSize number
---@field DrawShootPoint3DSize number
---@field InitShootIDOffset number
---@field InitClipIDOffset number
---@field bIsContinuousShooting boolean
---@field ContinuousShootingBulletsNum number
---@field OnPreShoot FPreShootDelegate
---@field OnShoot FShootDelegate
---@field OnBulletHitDelegate FOnBulletHitDelegate
---@field OnBulletHitConstRefDelegate FOnBulletHitConstRefDelegate
---@field OnBulletHitPostApplyDamageConstRefDelegate FOnBulletHitConstRefDelegate
---@field PreTakeShootDamage FTakeAnyDamageSignature
---@field PostTakeShootDamage FTakeAnyDamageSignature
---@field LastShootRot FRotator
---@field DeviationRandomSeed number
---@field ShootDeviation number
---@field CalcShootRotFlag number
---@field ShootTracePoint FVector
---@field ShootStartPoint FVector
---@field CameraShootTracePoint FVector
---@field ShootTraceCameraLoc FVector
---@field ShootTraceCameraRot FRotator
---@field ShootOriginCameraRot FRotator
---@field bShootTraceGunADS boolean
---@field bIsHandFold boolean
---@field CacheShootTraceHitInfo FHitResult
---@field ShootTraceSeqFlag number
---@field CurPelletID number
---@field ADSScopeRotCache FRotator
---@field BulletHitInfoForReplay ULuaArrayHelper<FBulletHitInfoRepData>
---@field CurShootID number
---@field NextFireMinShootID number
---@field CurClipID number
---@field PelletsOnShot number
---@field PelletsFlag number
---@field AccumulateKickBackPitch number
---@field AccumulateKickBackYaw number
---@field CurHeadClipID number @当前ClipInfo数组中最新的ClipID
---@field CacheBulletHitDataSimpleList ULuaArrayHelper<FCacheBulletHitDataSimple>
---@field CacheBulletHitDataSimpleListBackup ULuaArrayHelper<FCacheBulletHitDataSimple>
---@field VaildHistoryClipTime number
---@field bNeedPullBackMuzzle boolean
---@field CurCheckInitGenWeaponID number
---@field ShootIDRepeatCountMap ULuaMapHelper<number, number>
---@field ServerHandleHitDataArrayFrame number
---@field VolleyShootLocCache ULuaArrayHelper<FVolleyShootInfoCache>
---@field AutoTestShootDelegate FOnAutoTestShootDelegate
local USTExtraShootWeaponComponent = {}

---@param ShootNum number
function USTExtraShootWeaponComponent:TraceShoot(ShootNum) end

---@param ShootNum number
---@return boolean
function USTExtraShootWeaponComponent:FireShot(ShootNum) end

---@param HitData FBulletHitInfoUploadData
---@param OutRangeReviseFactor number
---@return number
function USTExtraShootWeaponComponent:GetFinalShootHitDamage(HitData, OutRangeReviseFactor) end

---@param InDamageRate number
---@param InImpactPoint FVector
---@param OutRangeReviseFactor number
---@param InShootID number
---@return number
function USTExtraShootWeaponComponent:GetFinalBulletDamage(InDamageRate, InImpactPoint, OutRangeReviseFactor, InShootID) end

---@param InCameraDir FVector
---@param InDeviation number
---@param ResetRandomSeed boolean
---@return FVector
function USTExtraShootWeaponComponent:CalcDirectionByDeviation(InCameraDir, InDeviation, ResetRandomSeed) end

---@return FRotator
function USTExtraShootWeaponComponent:CaclShootRotADS() end

---@param CameraRot FRotator
---@param PelletID number
---@param bIsADS boolean
---@return FRotator
function USTExtraShootWeaponComponent:GetShotGunCustomPelletOffsetRot(CameraRot, PelletID, bIsADS) end

---@return FRotator
function USTExtraShootWeaponComponent:CalcShootRot() end

---@param inDeviation number
---@return number
function USTExtraShootWeaponComponent:ModifyDeviationBP(inDeviation) end

---@param shootRot FRotator
---@return FRotator
function USTExtraShootWeaponComponent:CalcPelletsSpread(shootRot) end

---@param ShootNum number
function USTExtraShootWeaponComponent:MuzzleShoot(ShootNum) end

---@param ShootNum number
function USTExtraShootWeaponComponent:TargetShoot(ShootNum) end

function USTExtraShootWeaponComponent:OnWeaponBulletChanged() end

function USTExtraShootWeaponComponent:NotifyShootAction() end

---@param VerifyResult boolean
function USTExtraShootWeaponComponent:RecordPlayerWeaponShootFailRate(VerifyResult) end

---@return FRotator
function USTExtraShootWeaponComponent:GetCameraRotatorConsiderADS() end

function USTExtraShootWeaponComponent:RefreshCurShootInfoRecordOnBulletNumChangeOnFire() end

function USTExtraShootWeaponComponent:OnWeaponClipMaxBulletChanged() end

function USTExtraShootWeaponComponent:CheckInitShootIDAndClipID() end

---@param InitMuzle FVector
---@param InitMuzleDir FVector
---@return FVector
function USTExtraShootWeaponComponent:GetFinalBulletLaunchPos(InitMuzle, InitMuzleDir) end

---@param TargetLoc FVector
---@param StartLoc FVector
---@param BulletRot FRotator
---@param BulletDir FVector
function USTExtraShootWeaponComponent:UpdateVolleyShootParameters(TargetLoc, StartLoc, BulletRot, BulletDir) end

---@param InTargetLoc FVector
---@param InStartLoc FVector
---@param InBulletRot FRotator
---@param OutStartLoc FVector
---@param OutBulletRot FRotator
function USTExtraShootWeaponComponent:OverrideShootParametersBP(InTargetLoc, InStartLoc, InBulletRot, OutStartLoc, OutBulletRot) end

---@param InTargetLoc FVector
---@param InStartLoc FVector
---@param InBulletRot FRotator
---@param OutStartLoc FVector
---@param OutBulletRot FRotator
function USTExtraShootWeaponComponent:OverrideShotGunShootParametersBP(InTargetLoc, InStartLoc, InBulletRot, OutStartLoc, OutBulletRot) end

function USTExtraShootWeaponComponent:LocalSimulateOBBulletTrack() end

---@param HitRet FHitResult
---@return boolean
function USTExtraShootWeaponComponent:LocalSimulateOBBulletTrack_ModifyHitRet(HitRet) end

function USTExtraShootWeaponComponent:ClearBulletHitInfoRepDataFinished() end

---@return FTransform
function USTExtraShootWeaponComponent:GetTraceShootBulletFireTrans() end
