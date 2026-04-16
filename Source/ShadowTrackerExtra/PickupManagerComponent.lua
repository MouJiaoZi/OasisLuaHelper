---@meta

---@class UPickupManagerComponent: UActorComponent, IObjectPoolInterface
---@field CheckPickUpInterval number
---@field PickUpZLimit number
---@field bApplyVisibleTrace boolean
---@field FindPutDownPointSearchRadiusGroupArray ULuaArrayHelper<FVector2D>
---@field FindPutDownPointCircleSplitNum number
---@field FindPutDownPointZThreshold number
---@field FindPutDownPointZTraceOffset number
---@field RegionXRange FVector2D
---@field RegionYRange FVector2D
---@field PutDownOffset FVector
---@field bEnableMultiObjPickUpVisibleTrace boolean
---@field bTraceUseOwnerUpDir boolean
---@field bDrawDebugSearchLine boolean
---@field bDrawDebugSearchedPutDownPointsSphere boolean
---@field DebugSearchedPutDownPointsBoxExtent FVector
---@field DebugSearchedPutDownPointsSphereRadius number
---@field DebugSearchedPutDownPointsPointSize number
---@field DrawTime number
---@field bDebugGetLocWithOutClamp boolean
---@field bEnableUpdatePlayerTombWrapperOptimization boolean
---@field DisablePrecisePickUpPawnStateList ULuaArrayHelper<EPawnState>
---@field DisablePrecisePickUpDynamicState FGameplayTagContainer
---@field OnPickUpAvailableDataChangeDelegate FOnPickUpAvailableDataChangeDelegate
---@field OnFirstPickupTombBox FOnFristPickupTombBox
---@field OnPickUpTarger FOnPickUpTarger
---@field OnPickableBoxOpened FOnPickableBoxOpened
---@field PickupCompAvailableActorPool ULuaArrayHelper<AActor>
---@field ConfirmedPickupCompActorPool ULuaArrayHelper<AActor>
---@field OldConfirmedPickupCompActorPool ULuaArrayHelper<AActor>
---@field bIsEnable boolean
---@field bUsePersistRoleWhenPickup boolean
---@field TeamOnlyBoxTipID number
---@field PickupAdditionalInfo FEscapePickupAdditionalInfo
---@field CustomPickupAdditionalInfo FCustomPickupAdditionalInfo
local UPickupManagerComponent = {}

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
function UPickupManagerComponent:PickUpTarget(Target, AdditionalParam, pickCount) end

---@param Target AActor
function UPickupManagerComponent:PutDownTarget(Target) end

---@param Target AActor
---@param Loc FVector
function UPickupManagerComponent:PutDownTargetWithLocation(Target, Loc) end

---@param OutSet ULuaSetHelper<AActor>
function UPickupManagerComponent:GetConfirmedPickupAvailableActors(OutSet) end

---@param OverrideFindPutDownPointZThreshold number
---@return FVector
function UPickupManagerComponent:GetRandomPutDownLocation(OverrideFindPutDownPointZThreshold) end

---@param OverrideFindPutDownPointZThreshold number
---@return FVector
function UPickupManagerComponent:GetRandomPutDownLocationWithPutDownOffset(OverrideFindPutDownPointZThreshold) end

---@param DeadPlayer AActor
---@param PickUpManager UPickupManagerComponent
---@param InOverrideFindPutDownPointZThreshold number
---@param InTraceDeep number
---@param InFindPutDownPointZTraceOffset number
---@param InPutDownOffset number
---@return FVector
function UPickupManagerComponent:GetRandomPutDownLocationWithPutDownOffsetStaic(DeadPlayer, PickUpManager, InOverrideFindPutDownPointZThreshold, InTraceDeep, InFindPutDownPointZTraceOffset, InPutDownOffset) end

---@return FVector
function UPickupManagerComponent:GetPutDownLocation() end

---@param OutVector FVector
function UPickupManagerComponent:ClampWorldLocation(OutVector) end

function UPickupManagerComponent:ResetPickupPool() end

---@param Targets ULuaArrayHelper<AActor>
function UPickupManagerComponent:ServerClickPickUpList(Targets) end

---@param Target AActor
function UPickupManagerComponent:HandleTreasureBox(Target) end

---@param Target AActor
---@param ClientPlayerPickUpTraceLoc FVector
---@param AdditionalParam number
---@param pickCount number
function UPickupManagerComponent:ServerPickUpTarget(Target, ClientPlayerPickUpTraceLoc, AdditionalParam, pickCount) end

---@param Target AActor
---@param ClientPlayerPickUpTraceLoc FVector
---@param InPickupAdditionalInfo FEscapePickupAdditionalInfo
---@param AdditionalParam number
---@param pickCount number
function UPickupManagerComponent:EscapeServerPickUpTarget(Target, ClientPlayerPickUpTraceLoc, InPickupAdditionalInfo, AdditionalParam, pickCount) end

---@param Target AActor
---@param ClientPlayerPickUpTraceLoc FVector
---@param InPickupAdditionalInfo FCustomPickupAdditionalInfo
---@param AdditionalParam number
---@param pickCount number
function UPickupManagerComponent:CustomServerPickUpTarget(Target, ClientPlayerPickUpTraceLoc, InPickupAdditionalInfo, AdditionalParam, pickCount) end

---@param Target AActor
function UPickupManagerComponent:ServerPutDownTarget(Target) end

---@param Target AActor
---@param Loc FVector
function UPickupManagerComponent:ServerPutDownTargetWithLocation(Target, Loc) end

---@param Target AActor
---@param AdditionalParam number
function UPickupManagerComponent:ControlClientPickUpTarget(Target, AdditionalParam) end

---@param Target AActor
function UPickupManagerComponent:ControlClientPutDownTarget(Target) end

---@param Target AActor
---@param Loc FVector
function UPickupManagerComponent:ControlClientPutDownTargetWithLocation(Target, Loc) end

function UPickupManagerComponent:UpdatePickupAvailableActors() end

---@param bForceDirty boolean
function UPickupManagerComponent:UpdatePickupDirty(bForceDirty) end

---@param Target AActor
---@return boolean
function UPickupManagerComponent:CheckCanPrecisePickUp(Target) end

---@param IsEnable boolean
function UPickupManagerComponent:SetEnable(IsEnable) end

---@param Target AActor
---@param PC ASTExtraPlayerController
function UPickupManagerComponent:NotifyMeetPickupAvailableActorForPC(Target, PC) end

---@param Target AActor
---@param PC ASTExtraPlayerController
function UPickupManagerComponent:NotifyMissPickupAvailableActorForPC(Target, PC) end

---@return boolean
function UPickupManagerComponent:CanEnableTick() end
