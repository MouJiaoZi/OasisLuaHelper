---@meta

---@class EShootDanceCurveType
---@field None number
---@field Pitch number
---@field Yaw number
---@field Z number
---@field Y number
EShootDanceCurveType = {}


---@class FWeaponShootDisRecordDataConfig
---@field DistanceVeryNear number @超近距离 【【AI】【超参数】超参数AI难度分层-真人命中数据上报增加】 https://tapd.woa.com/CJGame/prong/stories/view/1020386762878211811
---@field DistanceNear number
---@field DistanceMiddle number
---@field DistanceMiddleFar number
---@field DistanceFar number
---@field AotoAimTargetCacheTime number
---@field ShootItemDataCacheTime number
---@field FlushInterval number
---@field ShootTypeList ULuaArrayHelper<ESTEWeaponShootType>
FWeaponShootDisRecordDataConfig = {}


---@class FWeaponShootAlternateData
---@field Weight number
---@field Angle number
---@field Dis number
FWeaponShootAlternateData = {}


---@class FWeaponRecordCircleData
---@field centrePod FVector2D
---@field radius number
---@field OpenTime number
FWeaponRecordCircleData = {}


---@class FShootDanceCurveData
FShootDanceCurveData = {}


---@class FWeaponShootDanceData
---@field AxisXScaleInScreen number
---@field AxisYScaleInScreen number
---@field AxisYZeroInScreen number
---@field TotalRecordTime number
---@field MaxRotValue number
---@field MaxPosValue number
---@field AfterStopTime number
---@field TPPBoneName string
---@field NewFPPBoneName string
FWeaponShootDanceData = {}


---@class FWeaponSpecialData
---@field WeaponID number
---@field FloatData number
FWeaponSpecialData = {}


---@class UWeaponOwnerComponent: UActorComponent, IObjectPoolInterface
---@field WeaponMuduleConfigTablePath string
---@field WeaponAttrConfigTablePath string
---@field WeaponShootDisRecordDataConfig FWeaponShootDisRecordDataConfig
---@field FireShotMultiCostBulletsNum number
---@field FireShotMultiCostDamageScale number
---@field bAllWeaponHasInfinitBackupBullets boolean
---@field bIsDSSwitchWeaponProccessing boolean
---@field IntervalAlternateTime number
---@field RecordCircleData FWeaponRecordCircleData
---@field OnChangeAmmoDelegate FOnChangeAmmoDelegate
---@field OnWeaponShootBulletDelegate FOnWeaponShootBulletDelegate
---@field OnWeaponBulletHitDelegate FOnWeaponBulletHitDelegate
---@field OnPreHandleHitDataArrayDelegate FOnPreHandleHitDataArrayDelegate
---@field OnPostHandleHitDataArrayDelegate FOnPostHandleHitDataArrayDelegate
---@field bClientHasFinishedReloadWeapon boolean
---@field bIsSwapingMainWeapon boolean
---@field reloadEffect number
---@field ClientCallSwitchWeaponDur number
---@field DelaySwitchFramesNum number
---@field bNoShootIcon boolean
---@field SwitchSlotTimeDataList ULuaArrayHelper<FWeaponSlotSwitchTimeData>
---@field WeaponSpecialDataArray ULuaArrayHelper<FWeaponSpecialData>
---@field MaxGlobalBulletCacheNum number
---@field bEnableGlobalBulletCachePreCreate boolean
---@field GlobalBulletCacheData ULuaMapHelper<UClass, FWeaponBulletListWrapper>
---@field bIsPendingCreateGlobalCacheBullet boolean
---@field bWantsReloadOnSwitchWepaonEnd boolean
---@field AlternateData FWeaponShootAlternateData
---@field ShootMode EShootWeaponShootMode
---@field PostSetupEquippedWeaponAnimListDelegate FOnPostSetupEquippedWeaponAnimListDelegate
---@field ShootFrameNumber number
---@field BulletTrackVerifyShootFrameNumber number
---@field ShootFrameCacheRotationInputPitch FVector
---@field WeaponShootDanceData FWeaponShootDanceData
---@field NewFPPScopeJumpOverriderClass UPawnStateRelationOverrider
---@field bEnableScopeJump boolean
local UWeaponOwnerComponent = {}

---@param CostNum number
---@param DamageScale number
---@param bEnable boolean
function UWeaponOwnerComponent:EnableFireShotMultiCostBulletsOnServer(CostNum, DamageScale, bEnable) end

---@param bEnable boolean
function UWeaponOwnerComponent:EnableAllWeaponHasInfinitBackupBulletsOnServer(bEnable) end

---@param OldVal number
function UWeaponOwnerComponent:OnRep_FireShotMultiCostBulletsNum(OldVal) end

function UWeaponOwnerComponent:OnRep_AllWeaponHasInfinitBackupBullets() end

---@param InCostNum number
---@return number
function UWeaponOwnerComponent:OverrideFireShotCostBulletNum(InCostNum) end

---@param InDamage number
---@return number
function UWeaponOwnerComponent:OverrideDamageByDamageScaleOnServer(InDamage) end

---@param ExtraWeapon ASTExtraShootWeapon
---@return boolean
function UWeaponOwnerComponent:StartFireCheck(ExtraWeapon) end

---@return boolean
function UWeaponOwnerComponent:StopFireCheck() end

---@param ShootMode EShootWeaponShootMode
---@param SimpleShootTarget FVector
---@param ClientScreenSize FVector2D
---@param ExtraWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:LocalStartFire(ShootMode, SimpleShootTarget, ClientScreenSize, ExtraWeapon) end

---@param TargetWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:LocalStopFire(TargetWeapon) end

---@param Weapon ASTExtraWeapon
---@param bIsAI boolean
---@param bLocalFPP boolean
---@param bSimulatedProxy boolean
---@param slot ESurviveWeaponPropSlot
function UWeaponOwnerComponent:LocalEquipWeapon(Weapon, bIsAI, bLocalFPP, bSimulatedProxy, slot) end

---@param Weapon ASTExtraWeapon
---@param bIsAI boolean
---@param bSimulatedProxy boolean
function UWeaponOwnerComponent:LocalUnEquipWeapon(Weapon, bIsAI, bSimulatedProxy) end

---@param reloadMethod EWeaponReloadMethod
function UWeaponOwnerComponent:ServerSetReloadMethod(reloadMethod) end

---@param reloadMethod EWeaponReloadMethod
function UWeaponOwnerComponent:ServerSetReloadMethod_Iml(reloadMethod) end

---@return boolean
function UWeaponOwnerComponent:ReloadWeaponFilter() end

---@param CurrentWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:ServerDropWeapon(CurrentWeapon) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param bAllowSwitch boolean
---@param SwitchWeaponFlag number
function UWeaponOwnerComponent:SwitchWeaponBySlot(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, bAllowSwitch, SwitchWeaponFlag) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param bAllowSwitch boolean
---@param SwitchWeaponFlag number
function UWeaponOwnerComponent:RPC_Server_SwitchWeapon(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, bAllowSwitch, SwitchWeaponFlag) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param SwitchWeaponFlag number
---@param ServerWeaponReconnectOpIndex number
function UWeaponOwnerComponent:RPC_Client_SwitchWeapon(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, SwitchWeaponFlag, ServerWeaponReconnectOpIndex) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param SwitchWeaponFlag number
---@return boolean
function UWeaponOwnerComponent:LocalSwitchWeapon(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, SwitchWeaponFlag) end

function UWeaponOwnerComponent:ForceFinishSwitchingWeaponOnServer() end

function UWeaponOwnerComponent:RPC_Client_ForceFinishSwitchingWeapon() end

function UWeaponOwnerComponent:RPC_Server_SwapMainWeapon() end

function UWeaponOwnerComponent:RPC_Client_SwapMainWeapon() end

function UWeaponOwnerComponent:RPC_Client_ForceBroadcastChangeCurrentDataEvent() end

---@return boolean
function UWeaponOwnerComponent:IsNeedNoShootIcon() end

---@param bVisible boolean
function UWeaponOwnerComponent:RPC_OwnerClient_SetCurrentWeaponVisible(bVisible) end

function UWeaponOwnerComponent:DoAutoReloadVehicleWeapon() end

---@param State EPawnState
function UWeaponOwnerComponent:OnOwnerPlayerChangeState(State) end

---@return boolean
function UWeaponOwnerComponent:IsOwnerAutonomousControlled() end

function UWeaponOwnerComponent:SaveWhetherIsUsingAdditionalWeapon() end

---@param BulletClass UClass
function UWeaponOwnerComponent:RegisterCacheGlobalBullet(BulletClass) end

---@return boolean
function UWeaponOwnerComponent:IsGlobalBulletCacheDataFull() end

---@param WeaponID number
---@param WeaponSpecialData FWeaponSpecialData
---@return boolean
function UWeaponOwnerComponent:GetWeaponSpecialData(WeaponID, WeaponSpecialData) end

---@param bRemove boolean
---@param WeaponSpecialData FWeaponSpecialData
function UWeaponOwnerComponent:SetWeaponSpecialData(bRemove, WeaponSpecialData) end

function UWeaponOwnerComponent:UpdatePendingCreateGlobalCacheBullet() end

function UWeaponOwnerComponent:ClearGlobalBulletCacheData() end

---@param LastState EFreshWeaponStateType
---@param State EFreshWeaponStateType
function UWeaponOwnerComponent:OnCurEquipedShootWeaponChangeState(LastState, State) end

---@param RemainBulletNumToReload number
function UWeaponOwnerComponent:OnCurEquipedShootWeaponReloadLastBullet(RemainBulletNumToReload) end

function UWeaponOwnerComponent:DoAutoReloadCurrentWeapon() end

function UWeaponOwnerComponent:DoAutoDropWeapon() end

function UWeaponOwnerComponent:OnWeaponDropFinished() end

function UWeaponOwnerComponent:OnWeaponDropStart() end

---@param shootWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:SequenceSearchUseableWeaponSlot(shootWeapon) end

function UWeaponOwnerComponent:HandleWeaponOnShoot() end

function UWeaponOwnerComponent:HandleOnCharAnimLoadingFinished() end

function UWeaponOwnerComponent:HandleWeaponStartFire() end

function UWeaponOwnerComponent:DrawRecordData() end

---@param EnteredState EPawnState
function UWeaponOwnerComponent:OnStateEnter(EnteredState) end

---@param InShootMode EShootWeaponShootMode
function UWeaponOwnerComponent:SetCurShootMode(InShootMode) end

---@param ShootWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:CheckShootInputCache(ShootWeapon) end

---@return string
function UWeaponOwnerComponent:GetOwnerPlayerName() end

---@param ShootWeapon ASTExtraShootWeapon
function UWeaponOwnerComponent:MarkShootFrameOnVehicle(ShootWeapon) end

function UWeaponOwnerComponent:UpdateShootDataLogic() end

---@param ConsiderShootFrame number
function UWeaponOwnerComponent:PushVehicleShootCriticalVerifyData(ConsiderShootFrame) end

function UWeaponOwnerComponent:InvalidateBulletTrackVerifyShootFrame() end

---@return boolean
function UWeaponOwnerComponent:CheckShouldDelayToEngineEndStartFire() end

function UWeaponOwnerComponent:OnNewFPPScopeJumpOverriderLoaded() end

function UWeaponOwnerComponent:OnRep_EnableScopeJump() end

---@param bNewEnable boolean
function UWeaponOwnerComponent:SetEnableScopeJumpOnServer(bNewEnable) end
