---@meta

---@class FSpawnVehicleDelegate : ULuaSingleDelegate
FSpawnVehicleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSpawnVehicleDelegate:Bind(Callback, Obj) end

---执行委托
function FSpawnVehicleDelegate:Execute() end


---@class FDestroyVehicleDelegate : ULuaSingleDelegate
FDestroyVehicleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDestroyVehicleDelegate:Bind(Callback, Obj) end

---执行委托
function FDestroyVehicleDelegate:Execute() end


---通用背包载具类，尽量重用此类
---@class UBackpackUsableVehicleHandle: UBattleItemHandleBase
---@field CheckEnoughSpaceTransformOffsetCache FVector
---@field CheckEnoughSpaceTransformOffsetFrame number
---@field VehicleClass ASTExtraVehicleBase
---@field IsEnabled boolean
---@field bResetDirtyDataWhenRecycle boolean
---@field DelayDestroyTime number
---@field HideVehicleWhenDelayDestroy boolean
---@field ResetCDTime number
---@field EnableVehicleReBind boolean
---@field bUpdateItemInfoDuringPickup boolean
---@field bRecordHPAndFuel boolean
---@field DefaultHP number
---@field DefaultFuel number
---@field RemainingHP number
---@field RemainingFuel number
---@field ShouldRecordHPAndFuelAfterDestroy boolean
---@field bCheckHPEmptyOnSpawn boolean
---@field VehicleHPEmptyMsgID number
---@field bForceSpawnVehicle boolean
---@field bDelayEnterVehicle boolean
---@field SpawnVehicleOffset FVector
---@field SpawnVehicleRotation FRotator
---@field CollisionHandlingMethod ESpawnActorCollisionHandlingMethod
---@field SpaceCheckBounds FVector
---@field SpaceCheckOffset FVector
---@field bDoLevitationCheck boolean
---@field LevitationCheckBounds FVector
---@field MaxLevitationDistance number
---@field bEnableMultipleSpaceCheck boolean
---@field MultipleSpaceCheckTimes number
---@field MultipleSpaceCheckIncrementalOffset FVector
---@field SpaceCheckIgnoreParent boolean
---@field bSpaceCheckIgnoreLandscape boolean
---@field SpaceCheckFailMsgID number
---@field IsVehicleIndependentAfterSpawn boolean
---@field bConsumeItem boolean
---@field bNotSpawnWhenUse boolean
---@field bAutoEnterVehicle boolean
---@field bForceBindServerEnterExitVehicle boolean
---@field bForceEnableEvenNoEnterVehicle boolean
---@field DefaultEnterSeat ESTExtraVehicleSeatType
---@field bCheckFallingState boolean
---@field PawnStateCheckFailMsgID number
---@field PawnLocationCheckFailMsgID number
---@field AvailableStates ULuaArrayHelper<EPawnState>
---@field CanUsePawnStates ULuaArrayHelper<EPawnState>
---@field DisableUsePawnStates ULuaArrayHelper<EPawnState>
---@field CanUseIndoor boolean
---@field CanUseInVelocitySimulation boolean
---@field CanUseOnMoveablePlatform boolean
---@field CheckUseRegion boolean
---@field CheckInWall boolean
---@field CanUseOnlyOnWaterSurface boolean
---@field CanUseOnlyOnWaterSurfaceExclusively boolean
---@field RegionCantUseVehicleTips number
---@field WaterSurfaceCantUseVehicleTips number
---@field WaterSurfaceCantUseExclusivelyVehicleTips number
---@field DontSpawnWrapperDropReason ULuaArrayHelper<EBattleItemDropReason>
---@field AvatarIDList ULuaArrayHelper<number>
---@field bWillDestroyedOnTimer boolean @Indicate whether @TimerHandleDelayDestroy is active and @DelayDestroy will be called. This is basically a cached variable and should be set manually before use. See @SetDelayDestroyWithTime
---@field DelayDropReason EBattleItemDropReason @Cached handle drop reason used in @DelayDestroy See also @DelayDropVehicleHandle
---@field bDropItemWhenDestroy boolean
---@field bDropItemWhenNoFuel boolean
---@field bCheckItemDropWhenEnable boolean
---@field bApplySpeed boolean
---@field DelaySpawnTime number
---@field MutexPawnStates ULuaArrayHelper<EPawnState>
---@field DelaySpawnTimerHandle FTimerHandle
---@field bIsPendingSpawn boolean
---@field LastNotifyHP number
---@field LastNotifyFuel number
---@field NotifyThreshold number
---@field ForceUpdateWhenAttrChange boolean
---@field VehicleAvatarID FItemDefineID
---@field bCheckVehicleAvatarIDInstance boolean
---@field bCanPickUpVehicleOnForceExit boolean
---@field SpawnVehicleDelegate FSpawnVehicleDelegate
---@field DestroyVehicleDelegate FDestroyVehicleDelegate
local UBackpackUsableVehicleHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackUsableVehicleHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@return boolean
function UBackpackUsableVehicleHandle:ShouldDrop() end

---@return boolean
function UBackpackUsableVehicleHandle:DropIfNeeded() end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackUsableVehicleHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackUsableVehicleHandle:HandleUse(Target, Reason) end

function UBackpackUsableVehicleHandle:DelayHandleUse() end

function UBackpackUsableVehicleHandle:InterruptDelayHandleUse() end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackUsableVehicleHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackUsableVehicleHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackUsableVehicleHandle:ExtractItemData() end

---@return boolean
function UBackpackUsableVehicleHandle:CanSpawnVehicle() end

---@return boolean
function UBackpackUsableVehicleHandle:CanChangeVehicleAvatar() end

---@param SpawnTransform FTransform
---@return boolean
function UBackpackUsableVehicleHandle:HandleCheckEnoughSpace(SpawnTransform) end

---@param SpawnTransform FTransform
---@return boolean
function UBackpackUsableVehicleHandle:HandleCheckLevitation(SpawnTransform) end

---@return boolean
function UBackpackUsableVehicleHandle:SpawnVehicle() end

---@param Pawn APawn
---@return FTransform
function UBackpackUsableVehicleHandle:GetSpawnVehicleTransform(Pawn) end

---获取载具生成Transform（带空间修正） 与GetSpawnVehicleTransform的区别： - GetSpawnVehicleTransform：返回基于配置偏移的生成Transform - GetSpawnVehicleTransformWithCorrection：在原始Transform基础上增加了多次空间修正尝试，尽量在不穿墙的情况下生成载具 当启用 @bEnableMultipleSpaceCheck 时，会检查生成位置是否有足够空间，如果空间不足会计算修正偏移量
---@param Pawn APawn
---@return FTransform
function UBackpackUsableVehicleHandle:GetSpawnVehicleTransformWithCorrection(Pawn) end

---@param bSpawnFx boolean
---@return boolean
function UBackpackUsableVehicleHandle:DestroyVehicle(bSpawnFx) end

function UBackpackUsableVehicleHandle:OnSpawnVehicle() end

function UBackpackUsableVehicleHandle:OnDestroyVehicle() end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function UBackpackUsableVehicleHandle:OnVehicleHealthStateChanged(InVehicleHealthState) end

---@param HP number
---@param Fuel number
function UBackpackUsableVehicleHandle:OnAttrChange(HP, Fuel) end

---@param TimeOutPeriod number
---@return boolean
function UBackpackUsableVehicleHandle:IsVehicleItemValid(TimeOutPeriod) end

---Utility function that will set a timer on @DelayDestroy and mark @bWillDestroyedOnTimer See also @TimerHandleDelayDestroy and @TimerDelayDestroy
---@param DelayTime number
function UBackpackUsableVehicleHandle:SetDelayDestroyWithTime(DelayTime) end

function UBackpackUsableVehicleHandle:DelayDestroy() end

---Similar to @SetDelayResetOnUsing, but it will set the @OnUsing flag before setting the timer
---@param DelayResetTime number
function UBackpackUsableVehicleHandle:SetOnUsingWithTime(DelayResetTime) end

---@param DelayResetTime number
function UBackpackUsableVehicleHandle:SetDelayResetOnUsing(DelayResetTime) end

function UBackpackUsableVehicleHandle:ResetOnUsing() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackUsableVehicleHandle:OnEnterVehicle(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackUsableVehicleHandle:OnExitVehicle(Player, SeatType, IsSucc) end

---@param state EPawnState
function UBackpackUsableVehicleHandle:OnPawnStateEnter(state) end

---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackUsableVehicleHandle:CanSpawnWrapperByDropReason(Reason) end

---@return number
function UBackpackUsableVehicleHandle:GetAvatarIDFromAvatarList() end

---@param newVehicle ASTExtraVehicleBase
function UBackpackUsableVehicleHandle:ReBindNewVehicle(newVehicle) end

function UBackpackUsableVehicleHandle:ReadHPAndFuelFromAdditionData() end

---@param bNewState boolean
function UBackpackUsableVehicleHandle:SetIsEnableState(bNewState) end
