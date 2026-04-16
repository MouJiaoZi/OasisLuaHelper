---@meta

---@class FVector2D_Int16
---@field X number
---@field Y number
FVector2D_Int16 = {}


---@class FRotator_NoRoll
---@field Pitch number
---@field Yaw number
FRotator_NoRoll = {}


---@class FUCACRule_ViewPortBaseInfo
---@field ViewportCacheGeometryScale number
---@field ViewportSizeX number
---@field ViewportSizeY number
---@field ViewPortDPIScale number
---@field bHasInit boolean
---@field bHasChanged boolean
FUCACRule_ViewPortBaseInfo = {}


---@class FCACRule_ScreenMoveEnemyInfo
---@field ScreenMoveDataIndex number
---@field EnemyUid number
---@field EnemyPosition FVector_NetQuantize10
---@field PlayerPosition FVector_NetQuantize10
---@field bIsOccluded boolean
FCACRule_ScreenMoveEnemyInfo = {}


---@class FCACRule_FireBulletInfo
---@field BulletShootID number
---@field BulletLaunchTicksecond number
---@field FireFingerLoc FVector2D_Int16
---@field BulletLaunchControlRotation FRotator_NoRoll
FCACRule_FireBulletInfo = {}


---@class FCACRule_ScreenMoveTouchInfo
---@field FingerTouchDPILoc FVector2D_Int16
---@field TouchTicksecond number
---@field ControlRotation FRotator_NoRoll
FCACRule_ScreenMoveTouchInfo = {}


---@class FCACRule_ScreenMoveInfoTouchList
---@field ScreenMoveDataList ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@field AimingEnermyInfoList ULuaArrayHelper<FCACRule_ScreenMoveEnemyInfo>
---@field ScreenMoveBeginPoint FCACRule_ScreenMoveTouchInfo
FCACRule_ScreenMoveInfoTouchList = {}


---@class FCACRule_UploadScreenMoveInfo
---@field TempUploadScreenMoveData FCACRule_ScreenMoveInfoTouchList
---@field FireBulletInfoList ULuaArrayHelper<FCACRule_FireBulletInfo>
---@field BeginTouchPointInfoList ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@field UploadRecordIndex number
FCACRule_UploadScreenMoveInfo = {}


---@class FCACRule_CameraChangeReasonData
---@field CameraChange_Reason number
---@field CameraChange_Pitch number
---@field CameraChange_Yaw number
FCACRule_CameraChangeReasonData = {}


---记录滑屏期间的手指，人物，敌人等信息
---@class UCACRule_ScreenMoveInfoForReplay: UCheckAimCheatRule
---@field ClearOutDateDataMaxTime number
---@field KeepDataTimeThesholdWhenClear number
---@field ContinueUnClearWhenBeginTimeTheshold number
---@field UploadRecordMoveScreenDataThreshold number
---@field bEnableSplitUploadRecord boolean
---@field UploadRecordOnceCounter number
---@field BulletHitKeepRecordThreshold number
---@field RecordMaxTime number
---@field RecordPreviousMaxTime number
---@field TouchTickSecondRecordThreshold number
---@field bEnableIgnoreCloseEnermy boolean
---@field DistanceEnermyHitThreshold number
---@field ViewPortInfo FUCACRule_ViewPortBaseInfo
---@field IndexToTouchMoveListMapping ULuaMapHelper<number, FCACRule_ScreenMoveInfoTouchList>
---@field CacheFingerTouchMoveScreenList ULuaArrayHelper<FCACRule_ScreenMoveInfoTouchList>
---@field CacheFiringMoveData ULuaArrayHelper<FCACRule_ScreenMoveInfoTouchList>
---@field CacheFireBulletInfoList ULuaArrayHelper<FCACRule_FireBulletInfo>
---@field CacheTempUploadMoveData ULuaArrayHelper<FCACRule_UploadScreenMoveInfo>
---@field CameraChangeReason_UploadDataThreshold number
---@field CameraChangeReason_RecordDataIntervalSecond number
---@field CacheCameraChangeReasonData ULuaArrayHelper<FCACRule_CameraChangeReasonData>
local UCACRule_ScreenMoveInfoForReplay = {}

function UCACRule_ScreenMoveInfoForReplay:InitControllerInputEvent() end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_ScreenMoveInfoForReplay:InputTouchBegin(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_ScreenMoveInfoForReplay:InputTouchEnd(FingerIndex, Location, force) end

---@param FingerIndex ETouchIndex
---@param Location FVector
---@param force number
function UCACRule_ScreenMoveInfoForReplay:InputTouchRepeat(FingerIndex, Location, force) end

---@param CurrentState string
function UCACRule_ScreenMoveInfoForReplay:OnGameStateChange(CurrentState) end

---@param newPawn APawn
function UCACRule_ScreenMoveInfoForReplay:OnRepPawn(newPawn) end

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UCACRule_ScreenMoveInfoForReplay:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end

---@param InHitActor AActor
---@param ImpactPosDistanceToWeapon number
---@param Player APawn
function UCACRule_ScreenMoveInfoForReplay:OnBulletHit(InHitActor, ImpactPosDistanceToWeapon, Player) end

function UCACRule_ScreenMoveInfoForReplay:OnStartFire() end

function UCACRule_ScreenMoveInfoForReplay:OnStopFire() end

---@param Bullet ASTExtraShootWeaponBulletBase
function UCACRule_ScreenMoveInfoForReplay:OnBulletLaunch(Bullet) end

---@param NewViewPortInfo FUCACRule_ViewPortBaseInfo
function UCACRule_ScreenMoveInfoForReplay:ServerRecordViewPortInfo(NewViewPortInfo) end

---@param ScreenMoveData ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@param EnermyData ULuaArrayHelper<FCACRule_ScreenMoveEnemyInfo>
---@param BulletInfo ULuaArrayHelper<FCACRule_FireBulletInfo>
---@param BeginTouchPointData ULuaArrayHelper<FCACRule_ScreenMoveTouchInfo>
---@param RecordSectionIndex number
---@param CurWorldTimeSecond number
---@param ClientUploadTime number
function UCACRule_ScreenMoveInfoForReplay:ServerUploadScreenMoveRecord(ScreenMoveData, EnermyData, BulletInfo, BeginTouchPointData, RecordSectionIndex, CurWorldTimeSecond, ClientUploadTime) end

---@param SettingAndScreenDataList ULuaArrayHelper<FBasicSettingDetail>
---@param WidgetDataList ULuaArrayHelper<FUIBtnDetail>
function UCACRule_ScreenMoveInfoForReplay:Server_ReportSetInfoAndBtnInfo(SettingAndScreenDataList, WidgetDataList) end

---@param PitchInputAdd number
---@param YawInputAdd number
---@param Loc FVector2D
function UCACRule_ScreenMoveInfoForReplay:HandleOnTouchInputEvent(PitchInputAdd, YawInputAdd, Loc) end

---@param NewFreeCameraDeltaRot FRotator
function UCACRule_ScreenMoveInfoForReplay:HandleSetFreeCameraRotation(NewFreeCameraDeltaRot) end

function UCACRule_ScreenMoveInfoForReplay:HandleOnFreeCameraEnded() end

---@param PitchInputAdd number
---@param YawInputAdd number
function UCACRule_ScreenMoveInfoForReplay:HandleMotionControlAddToControllerInput(PitchInputAdd, YawInputAdd) end

---@param ChangeReasonArr ULuaArrayHelper<number>
---@param ChangeCompressRotationArr ULuaArrayHelper<number>
---@param ReportWorldTimeSecond number
function UCACRule_ScreenMoveInfoForReplay:ServerRecordCameraChangeReasonData(ChangeReasonArr, ChangeCompressRotationArr, ReportWorldTimeSecond) end
