---@meta

---@class EFeedbackDumpObjectType
---@field ObjectType_Pawn number @自己Pawn
---@field ObjectType_TeammatePawn number @视野内队友Pawn
---@field ObjectType_EnemyPawn number @视野内敌人Pawn
---@field ObjectType_PlayerController number @自己Controller
---@field ObjectType_PlayerState number @自己PlayerState
EFeedbackDumpObjectType = {}


---@class EReportEquipmentSlotType
---@field NAME_None number @无效
---@field SWPS_MainShootWeapon1 number @主武器1
---@field SWPS_MainShootWeapon2 number @主武器2
---@field SWPS_SubShootWeapon number @副武器
---@field SWPS_HandProp number @投掷物
---@field SWPS_MeleeWeapon number @近战武器
---@field EAvatarSlotType_HelmetEquipemtSlot number @头盔
---@field EAvatarSlotType_ArmorEquipemtSlot number @防弹衣
---@field EAvatarSlotType_BackpackEquipemtSlot number @背包
---@field EAvatarSlotType_ActivitySlot number @活动装扮
EReportEquipmentSlotType = {}


---@class EDifferentTeammateReportingType
---@field Reporting_RegularReporting number @RegularReporting
---@field Reporting_DamagePenalty number @DamagePenalty
---@field Reporting_DamageReporting number @DamageReporting
---@field Reporting_TeammatesObstruction number @TeammatesObstruction
---@field Reporting_LeaveStuck number @LeaveStuck
EDifferentTeammateReportingType = {}


---@class EAsyncIsPakDownloadedInPin
---@field Start number
---@field Cancel number
EAsyncIsPakDownloadedInPin = {}


---@class FApplyRadialDamageParams
---@field BaseDamage number
---@field MinimumDamage number
---@field BaseMomentumMag number
---@field Origin FVector
---@field SphereOverlapRadius number
---@field DamageInnerRadius number
---@field DamageOuterRadius number
---@field DamageFalloff number
---@field bTraceComplex boolean
---@field CanPenetrationdamage boolean
---@field ObjectTypesCanBeDamaged ULuaArrayHelper<EObjectTypeQuery>
---@field DamageTypeClass UDamageType
---@field IgnoreActors ULuaArrayHelper<AActor>
---@field IgnoreClasses ULuaArrayHelper<AActor>
---@field CollisionFreeRadius number
---@field DamageChannel ECollisionChannel
---@field AddtionalDamage number
---@field DamageEventType EDamageType
---@field HorizontalCoverRatio number
---@field VerticalCoverRatio number
---@field HorizontalMultiTraceTimes number
---@field VerticalMultiTraceTimes number
---@field bDrawVisibilityTraceLine boolean
---@field bApplyLandscapeDeform boolean
---@field ApplyLandscapeDeformRadius number
---@field ApplyLandscapeDeformMaxDepth number
---@field ApplyLandscapeDeformDelayTime number
---@field bExplosionTestOnly boolean
FApplyRadialDamageParams = {}


---@class FCustomTeamLogoAndColor
---@field TeamNo number
---@field TeamName string
---@field TeamLogoPath string
---@field TeamColor FColor
---@field PlayerColor FColor
---@field CornerMarkPath string
---@field TeamLogoTexture ULuaMapHelper<string, UTexture2D>
FCustomTeamLogoAndColor = {}


---@class FCustomSinglePlayerColor
---@field SingleColor FColor
---@field LockedSingleColor FColor
---@field EnableSinglePlayerColor boolean
FCustomSinglePlayerColor = {}


---@class FCustomPlayerMakeupPic
---@field PlayerUID string
---@field PlayerMakeupPicPath string
FCustomPlayerMakeupPic = {}


---@class FCountryTeamLogo
---@field TeamNo number
---@field TeamName string
---@field ShortTeamName string
---@field MinTeamLogoPath string
---@field MiddleTeamLogoPath string
---@field MaxTeamLogoPath string
---@field TeamColor FColor
FCountryTeamLogo = {}


---@class FHttpRequestInfo
---@field URL string
FHttpRequestInfo = {}


---@class FWidgetSwitchParam
---@field WidgetName string
FWidgetSwitchParam = {}


---@class FFeedbackDumpInfo
---@field KeyRegex string
---@field DumpFileNames ULuaArrayHelper<string>
---@field DumpObjectType number
FFeedbackDumpInfo = {}


---@class FCustomRichCurveKey
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field Time number
---@field Value number
---@field ArriveTangent number
---@field LeaveTangent number
FCustomRichCurveKey = {}


---@class FRemoveControlWeaponInitParam
FRemoveControlWeaponInitParam = {}


---@class FSkillRecoverParam
---@field RecoverType string
---@field RecoverValue number
---@field RecoveryType ERecoveryType
FSkillRecoverParam = {}


---@class FLoadObjectAsyncDelegate : ULuaSingleDelegate
FLoadObjectAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadedObject: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadObjectAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param LoadedObject UObject
function FLoadObjectAsyncDelegate:Execute(LoadedObject) end


---@class FCreatedWidgetAsyncDelegate : ULuaSingleDelegate
FCreatedWidgetAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CreatedWidget: UUserWidget) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCreatedWidgetAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param CreatedWidget UUserWidget
function FCreatedWidgetAsyncDelegate:Execute(CreatedWidget) end


---@class FLoadMaterialAsyncDelegate : ULuaSingleDelegate
FLoadMaterialAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Material: UMaterialInterface, Mesh: UMeshComponent, ElementIndex: number, Slot: ESurviveWeaponPropSlot, NeedCheckAngled: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadMaterialAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param Material UMaterialInterface
---@param Mesh UMeshComponent
---@param ElementIndex number
---@param Slot ESurviveWeaponPropSlot
---@param NeedCheckAngled boolean
function FLoadMaterialAsyncDelegate:Execute(Material, Mesh, ElementIndex, Slot, NeedCheckAngled) end


---@class FLoadObjectAsyncDelegateWithObject : ULuaSingleDelegate
FLoadObjectAsyncDelegateWithObject = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadedObject: UObject, InObject: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadObjectAsyncDelegateWithObject:Bind(Callback, Obj) end

---执行委托
---@param LoadedObject UObject
---@param InObject UObject
function FLoadObjectAsyncDelegateWithObject:Execute(LoadedObject, InObject) end


---@class FSortIntArrayDelegate : ULuaSingleDelegate
FSortIntArrayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, A: number, B: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSortIntArrayDelegate:Bind(Callback, Obj) end

---执行委托
---@param A number
---@param B number
function FSortIntArrayDelegate:Execute(A, B) end


---@class FLoadObjectsAsyncDelegate : ULuaSingleDelegate
FLoadObjectsAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, LoadedPaths: ULuaArrayHelper<FSoftObjectPath>, AsyncLoadID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLoadObjectsAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param LoadedPaths ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function FLoadObjectsAsyncDelegate:Execute(LoadedPaths, AsyncLoadID) end


---@class FCustomDamageFilter : ULuaSingleDelegate
FCustomDamageFilter = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AActor, Param2: FHitResult) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomDamageFilter:Bind(Callback, Obj) end

---执行委托
---@param Param1 AActor
---@param Param2 FHitResult
function FCustomDamageFilter:Execute(Param1, Param2) end


---@class FOnCOSHttpRequestCompleteBPDelegate : ULuaSingleDelegate
FOnCOSHttpRequestCompleteBPDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, FHttpRequestInfo: FHttpRequestInfo, bSucceeded: boolean, DelegateRetCode: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCOSHttpRequestCompleteBPDelegate:Bind(Callback, Obj) end

---执行委托
---@param FHttpRequestInfo FHttpRequestInfo
---@param bSucceeded boolean
---@param DelegateRetCode number
function FOnCOSHttpRequestCompleteBPDelegate:Execute(FHttpRequestInfo, bSucceeded, DelegateRetCode) end


---@class FOnHttpRequestCompleteBPDelegate : ULuaSingleDelegate
FOnHttpRequestCompleteBPDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, bSucceeded: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHttpRequestCompleteBPDelegate:Bind(Callback, Obj) end

---执行委托
---@param bSucceeded boolean
function FOnHttpRequestCompleteBPDelegate:Execute(bSucceeded) end


---@class FOnHttpRequestCompleteBPWithResponseDelegate : ULuaSingleDelegate
FOnHttpRequestCompleteBPWithResponseDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, bSucceeded: boolean, URL: string, Response: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHttpRequestCompleteBPWithResponseDelegate:Bind(Callback, Obj) end

---执行委托
---@param bSucceeded boolean
---@param URL string
---@param Response string
function FOnHttpRequestCompleteBPWithResponseDelegate:Execute(bSucceeded, URL, Response) end


---@class FOnExecuteSystemCommandAsyncDelegate : ULuaSingleDelegate
FOnExecuteSystemCommandAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, bSucceeded: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExecuteSystemCommandAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param bSucceeded number
function FOnExecuteSystemCommandAsyncDelegate:Execute(bSucceeded) end


---@class UApplyDamgeExtraParam: UObject
---@field targetClassTypes ULuaArrayHelper<ACharacter>
local UApplyDamgeExtraParam = {}


---@class UApplyDamgeExtraParam_Actor: UApplyDamgeExtraParam
---@field ActorClassTypes ULuaArrayHelper<AActor>
local UApplyDamgeExtraParam_Actor = {}


---@class UPropertyDefineTreeNode: UObject
---@field NodeName string
---@field NodeType string
---@field ChildNodes ULuaArrayHelper<UPropertyDefineTreeNode>
local UPropertyDefineTreeNode = {}


---@class UPropertyValueTreeNode: UObject
---@field NodeValid boolean
---@field NodeType string
---@field NodeName string
---@field NodeValue string
---@field ChildNodes ULuaArrayHelper<UPropertyValueTreeNode>
local UPropertyValueTreeNode = {}


---@class USTExtraBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local USTExtraBlueprintFunctionLibrary = {}

---@param SkelMesh USkeletalMeshComponent
---@param Impulse FVector
---@param Location FVector
---@param BoneName string
---@param DistriburedImpulseScale number
function USTExtraBlueprintFunctionLibrary:AddDistributedImpulseAtLocation(SkelMesh, Impulse, Location, BoneName, DistriburedImpulseScale) end

---@param Location FVector
---@param DamageType UDamageType
---@param Origin FVector
---@param Radius number
---@return number
function USTExtraBlueprintFunctionLibrary:GetRadialDamageImpulseAtLocation(Location, DamageType, Origin, Radius) end

---@param CorpsInfo ULuaArrayHelper<FGameModeCorpsDetailData>
function USTExtraBlueprintFunctionLibrary:SortCorpsByKilledPlayer(CorpsInfo) end

---@param SkelMesh USkeletalMeshComponent
---@param Channel ECollisionChannel
---@param NewResponse ECollisionResponse
---@param BodyNames ULuaArrayHelper<string>
function USTExtraBlueprintFunctionLibrary:SetCollisionResponseForBodies(SkelMesh, Channel, NewResponse, BodyNames) end

---@param Location FVector
---@param BoxCenter FVector
---@param BoxRotation FRotator
---@param BoxExtent FVector
---@param ClosestPoint FVector
---@param debugDraw boolean
---@param world UWorld
---@param deltaTime number
---@return number
function USTExtraBlueprintFunctionLibrary:DistanceSqToBox(Location, BoxCenter, BoxRotation, BoxExtent, ClosestPoint, debugDraw, world, deltaTime) end

---@param World UWorld
---@return number
function USTExtraBlueprintFunctionLibrary:GetWorldSettingsGameModeID(World) end

---Hurt locally authoritative actors within the radius. Uses the Weapon trace channel. Also allows passing in momentum (instead of using value hardcoded in damage type - allows for gameplay code to scale, e.g. for a charging weapon)
---@param WorldContextObject UObject
---@param BaseDamage number
---@param MinimumDamage number
---@param Origin FVector
---@param DamageInnerRadius number
---@param DamageOuterRadius number
---@param DamageFalloff number
---@param DamageTypeClass UDamageType
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param CollisionFreeRadius number
---@param DrawVisibleTraceDebugLine boolean
---@param bIgnorePlayerIndoor boolean
---@param CheckLength number
---@return boolean
function USTExtraBlueprintFunctionLibrary:ApplyRadiusDamageSTE(WorldContextObject, BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeClass, IgnoreActors, DamageCauser, InstigatedByController, CollisionFreeRadius, DrawVisibleTraceDebugLine, bIgnorePlayerIndoor, CheckLength) end

---Hurt locally authoritative actors within the radius. Uses the Weapon trace channel. Also allows passing in momentum (instead of using value hardcoded in damage type - allows for gameplay code to scale, e.g. for a charging weapon) extraParams   //扩展参数
---@param WorldContextObject UObject
---@param BaseDamage number
---@param MinimumDamage number
---@param BaseMomentumMag number
---@param Origin FVector
---@param DamageInnerRadius number
---@param DamageOuterRadius number
---@param DamageFalloff number
---@param DamageTypeClass UDamageType
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param CollisionFreeRadius number
---@param AddtionalDamage number
---@param DamageEventType EDamageType
---@param DrawVisibleTraceDebugLine boolean
---@param HorizontalCoverRatio number
---@param VerticalCoverRatio number
---@param extraParams UApplyDamgeExtraParam
---@param bIgnoreImpulse boolean
---@param bIgnoreTeammate boolean
---@param bEnableLandscapeDeform boolean
---@param LandscapeDeformRadius number
---@param LandscapeDeformMaxDepth number
---@param LandscapeDeformDelayTime number
---@return boolean
function USTExtraBlueprintFunctionLibrary:ApplyRadiusDamageSTEWithMomentum(WorldContextObject, BaseDamage, MinimumDamage, BaseMomentumMag, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeClass, IgnoreActors, DamageCauser, InstigatedByController, CollisionFreeRadius, AddtionalDamage, DamageEventType, DrawVisibleTraceDebugLine, HorizontalCoverRatio, VerticalCoverRatio, extraParams, bIgnoreImpulse, bIgnoreTeammate, bEnableLandscapeDeform, LandscapeDeformRadius, LandscapeDeformMaxDepth, LandscapeDeformDelayTime) end

---@param WorldContextObject UObject
---@param ApplyRadialDamageParams FApplyRadialDamageParams
---@return boolean
function USTExtraBlueprintFunctionLibrary:GasolineCanExplosionApplyDamage(WorldContextObject, ApplyRadialDamageParams) end

---@param WorldContextObject UObject
---@param RadialDamageParams FApplyRadialDamageParams
---@return boolean
function USTExtraBlueprintFunctionLibrary:ApplyRadialDamage(WorldContextObject, RadialDamageParams) end

---@param WorldContextObject UObject
---@param Origin FVector
---@param MaxRadius number
---@param MaxDepth number
---@param CauserActor AActor
---@param DelayTime number
---@return boolean
function USTExtraBlueprintFunctionLibrary:ApplyLandscapeDeform(WorldContextObject, Origin, MaxRadius, MaxDepth, CauserActor, DelayTime) end

---@param WorldContextObject UObject
---@param Origin FVector
---@param MaxRadius number
---@param RegionSize number
---@param ChosenClassList ULuaArrayHelper<UClass>
---@param BlackClassList ULuaArrayHelper<UClass>
function USTExtraBlueprintFunctionLibrary:DestroyActorBySphereArea(WorldContextObject, Origin, MaxRadius, RegionSize, ChosenClassList, BlackClassList) end

---@param WorldContextObject UObject
---@param Origin FVector
---@param MaxRadius number
---@param RegionSize number
---@param ChosenClassList ULuaArrayHelper<UClass>
---@param BlackClassList ULuaArrayHelper<UClass>
function USTExtraBlueprintFunctionLibrary:ResetGroundActorBySphereArea(WorldContextObject, Origin, MaxRadius, RegionSize, ChosenClassList, BlackClassList) end

---Hurt locally authoritative actors within the radius. Uses the Weapon trace channel. Also allows passing in momentum (instead of using value hardcoded in damage type - allows for gameplay code to scale, e.g. for a charging weapon)
---@param WorldContextObject UObject
---@param Radius number
---@param CollisionFreeRadius number
---@param Origin FVector
---@param DamageCauser AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DrawVisibleTraceDebugLine boolean
function USTExtraBlueprintFunctionLibrary:GetSphereOverlappingActors(WorldContextObject, Radius, CollisionFreeRadius, Origin, DamageCauser, IgnoreActors, DrawVisibleTraceDebugLine) end

---@param PC ASTExtraPlayerController
---@param HitSafeNormal FVector
---@return number
function USTExtraBlueprintFunctionLibrary:GetDamageFinalAng(PC, HitSafeNormal) end

---@param WorldContextObject UObject
---@param Finder AActor
---@param Origin FVector
---@param Radius number
---@param Channel ECollisionChannel
function USTExtraBlueprintFunctionLibrary:GetOverlappingActorBySphere(WorldContextObject, Finder, Origin, Radius, Channel) end

---@param WorldContextObject UObject
---@param Finder AActor
---@param Pos FVector
---@param HalfSize FVector
---@param Rot FQuat
---@param Channel ECollisionChannel
---@param bDrawDebugBox boolean
function USTExtraBlueprintFunctionLibrary:GetOverlappingActorByBox(WorldContextObject, Finder, Pos, HalfSize, Rot, Channel, bDrawDebugBox) end

---@param WorldContextObject UObject
---@param Finder AActor
---@param Pos FVector
---@param Radius number
---@param HalfHeight number
---@param Rot FQuat
---@param Channel ECollisionChannel
function USTExtraBlueprintFunctionLibrary:GetOverlappingActorByCapsule(WorldContextObject, Finder, Pos, Radius, HalfHeight, Rot, Channel) end

---@param InSceneComponent USceneComponent
---@param bDoNotify boolean
function USTExtraBlueprintFunctionLibrary:ForceUpdateOverlap(InSceneComponent, bDoNotify) end

---@return number
function USTExtraBlueprintFunctionLibrary:GetAdvertisementLowSpec() end

---@param WorldContextObject UObject
---@param InSoftObjectPath UObject
---@param classb UClass
---@return boolean
function USTExtraBlueprintFunctionLibrary:SoftObjectPathEq(WorldContextObject, InSoftObjectPath, classb) end

---@param InSoftClassRef UObject
---@param InObject UObject
---@param InDelegate FLoadObjectAsyncDelegate
function USTExtraBlueprintFunctionLibrary:LoadObjectFromSofeClassRefAsync(InSoftClassRef, InObject, InDelegate) end

---@param WorldContextObject UObject
---@param InSoftObjectPath UObject
---@param InDelegate FLoadObjectAsyncDelegate
---@return boolean
function USTExtraBlueprintFunctionLibrary:LoadObjectFromSoftObjectPathAsync(WorldContextObject, InSoftObjectPath, InDelegate) end

---@param InSoftObjectsPath ULuaArrayHelper<UObject>
---@return boolean
function USTExtraBlueprintFunctionLibrary:LoadObjectsFromSoftObjectPathAsync(InSoftObjectsPath) end

---@param InStringPath string
---@param InDelegate FLoadMaterialAsyncDelegate
---@param Mesh UMeshComponent
---@param ElementIndex number
---@param Slot ESurviveWeaponPropSlot
---@param NeedCheckAngled boolean
function USTExtraBlueprintFunctionLibrary:LoadMaterialFromStringAsync(InStringPath, InDelegate, Mesh, ElementIndex, Slot, NeedCheckAngled) end

---@param WorldContextObject UObject
---@param InStringPath string
---@param InDelegate FLoadObjectAsyncDelegate
---@return boolean
function USTExtraBlueprintFunctionLibrary:LoadObjectFromStringAsync(WorldContextObject, InStringPath, InDelegate) end

---@param InSoftObjectPath FSoftObjectPath
---@param InObject UObject
---@param InDelegate FLoadObjectAsyncDelegateWithObject
function USTExtraBlueprintFunctionLibrary:LoadObjectFromSoftObjectPathAsyncWithObject(InSoftObjectPath, InObject, InDelegate) end

---@param WorldContextObject UObject
---@param InSoftObjectPaths ULuaArrayHelper<FSoftObjectPath>
---@param InDelegate FLoadObjectsAsyncDelegate
---@param AsyncLoadID number
---@return boolean
function USTExtraBlueprintFunctionLibrary:LoadObjectsFromSoftObjectPathsAsync(WorldContextObject, InSoftObjectPaths, InDelegate, AsyncLoadID) end

---@param BoneName string
---@param InVector FVector
---@param InRot FRotator
---@param Comp USkinnedMeshComponent
---@return FVector
function USTExtraBlueprintFunctionLibrary:SpaceToLocalBoneLocation(BoneName, InVector, InRot, Comp) end

---@param BoneName string
---@param InVector FVector
---@param InRot FRotator
---@param Comp USkinnedMeshComponent
---@return FRotator
function USTExtraBlueprintFunctionLibrary:SpaceToLocalBoneRotation(BoneName, InVector, InRot, Comp) end

---@param Actor AActor
---@param OutComponents ULuaArrayHelper<UActorComponent>
function USTExtraBlueprintFunctionLibrary:GetAllComponentsRecursive(Actor, OutComponents) end

---@param InRot FRotator
---@return FQuat
function USTExtraBlueprintFunctionLibrary:RotToQuat(InRot) end

---@param InQuat FQuat
---@return FRotator
function USTExtraBlueprintFunctionLibrary:QuatToRot(InQuat) end

---@param InRot FRotator
---@param InQuat FQuat
function USTExtraBlueprintFunctionLibrary:RotToQuatRef(InRot, InQuat) end

---@param InQuat FQuat
---@param InRot FRotator
function USTExtraBlueprintFunctionLibrary:QuatToRotRef(InQuat, InRot) end

---@param DamageCauser AActor
---@param HitResult FHitResult
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsPlayerCantBlock(DamageCauser, HitResult) end

---@param WorldContextObject UObject
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param RotQuat FQuat
---@param Origin FVector
---@param DamageCauser AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DrawVisibleTraceDebugLine boolean
---@param bUseSweep boolean
function USTExtraBlueprintFunctionLibrary:GetCapsuleOverlappingActors(WorldContextObject, CapsuleRadius, CapsuleHalfHeight, RotQuat, Origin, DamageCauser, IgnoreActors, DrawVisibleTraceDebugLine, bUseSweep) end

---@param WorldContextObject UObject
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param RotQuat FQuat
---@param Origin FVector
---@param DamageCauser AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DrawVisibleTraceDebugLine boolean
function USTExtraBlueprintFunctionLibrary:GetCapsuleOverlappingDataList(WorldContextObject, CapsuleRadius, CapsuleHalfHeight, RotQuat, Origin, DamageCauser, IgnoreActors, DrawVisibleTraceDebugLine) end

---@param InFloat number
---@param MinFloat number
---@param MaxFloat number
---@return number
function USTExtraBlueprintFunctionLibrary:WrapFloat(InFloat, MinFloat, MaxFloat) end

---@param PostProcessVolume APostProcessVolume
function USTExtraBlueprintFunctionLibrary:SetUpPostProcessSetting(PostProcessVolume) end

---@param PostProcessVolume APostProcessVolume
---@param Index number
---@param Weight number
function USTExtraBlueprintFunctionLibrary:SetPostProcessBlendEffectWeightByIndex(PostProcessVolume, Index, Weight) end

---@param PostProcessVolume APostProcessVolume
---@param Index number
---@return FWeightedBlendable
function USTExtraBlueprintFunctionLibrary:GetPostProcessBlendEffectWeightByIndex(PostProcessVolume, Index) end

---@param Src FVector
---@param Ctl FVector
---@param Dst FVector
---@param Num number
function USTExtraBlueprintFunctionLibrary:Generate3StageBezierPointsSrcToDst(Src, Ctl, Dst, Num) end

---@param ContextObject UObject
---@param AboveGroundLoc FVector
---@param TraceDeepDis number
---@param HitInfo FHitResult
---@param bForceStatic boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceGround(ContextObject, AboveGroundLoc, TraceDeepDis, HitInfo, bForceStatic) end

---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param HitInfo FHitResult
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param bForceStatic boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceBlock(ContextObject, Start, End, HitInfo, IgnoreActors, bForceStatic) end

---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param HitInfo FHitResult
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param IgnoreComponents ULuaArrayHelper<UPrimitiveComponent>
---@param bForceStatic boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceBlockEx(ContextObject, Start, End, HitInfo, IgnoreActors, IgnoreComponents, bForceStatic) end

---@param OutHits ULuaArrayHelper<FHitResult>
---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param HitInfo FHitResult
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param bForceStatic boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceAllBlocks(OutHits, ContextObject, Start, End, HitInfo, IgnoreActors, bForceStatic) end

---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param HitInfo FHitResult
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannels ULuaArrayHelper<ECollisionChannel>
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceBlockByChannel(ContextObject, Start, End, HitInfo, IgnoreActors, TraceChannels) end

---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param OutHits ULuaArrayHelper<FHitResult>
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannels ULuaArrayHelper<ECollisionChannel>
---@return boolean
function USTExtraBlueprintFunctionLibrary:TraceAllBlocksByChannel(ContextObject, Start, End, OutHits, IgnoreActors, TraceChannels) end

---@param OutHit FHitResult
---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param Rot FQuat
---@param Radius number
---@param HalfHeight number
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@return boolean
function USTExtraBlueprintFunctionLibrary:CapsuleTraceByChannel(OutHit, ContextObject, Start, End, Rot, Radius, HalfHeight, IgnoreActors, TraceChannel) end

---@param OutHit FHitResult
---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param Rot FQuat
---@param HalfSize FVector
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@return boolean
function USTExtraBlueprintFunctionLibrary:BoxTraceByChannel(OutHit, ContextObject, Start, End, Rot, HalfSize, IgnoreActors, TraceChannel) end

---@param OutHit FHitResult
---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@return boolean
function USTExtraBlueprintFunctionLibrary:LineTraceByChannel(OutHit, ContextObject, Start, End, IgnoreActors, TraceChannel) end

---@param OutHit FHitResult
---@param ContextObject UObject
---@param Start FVector
---@param End FVector
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param IgnoreComponents ULuaArrayHelper<UPrimitiveComponent>
---@param TraceChannel ECollisionChannel
---@return boolean
function USTExtraBlueprintFunctionLibrary:LineTraceByChannelEx(OutHit, ContextObject, Start, End, IgnoreActors, IgnoreComponents, TraceChannel) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param Radius number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param OutHits ULuaArrayHelper<FHitResult>
---@param bIgnoreSelf boolean
---@param bUseSweep boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:SphereTraceAllObjects(WorldContextObject, Start, End, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, OutHits, bIgnoreSelf, bUseSweep) end

---@param Character ACharacter
function USTExtraBlueprintFunctionLibrary:GetCommonBackpackInterfaceComponentFromCharacter(Character) end

---@param Map ULuaMapHelper<number, number>
function USTExtraBlueprintFunctionLibrary:SortMapByValue(Map) end

---@param Character ACharacter
---@param ItemResID number
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsHiddenByOtherSlot(Character, ItemResID) end

---@param Character ACharacter
---@param ItemResID number
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsAdditionalItemsHidden(Character, ItemResID) end

---@param bDisable boolean
function USTExtraBlueprintFunctionLibrary:SwitchUserWidgetDrag(bDisable) end

---@param stateA AUAEPlayerState
---@param stateB AUAEPlayerState
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsSamePlayerState(stateA, stateB) end

---@param AssetReference FSoftObjectPath
function USTExtraBlueprintFunctionLibrary:CreateSoftObjectPtrByObjectPath(AssetReference) end

---@param AssetReference string
function USTExtraBlueprintFunctionLibrary:CreateSoftClassPtrByString(AssetReference) end

---@param Controller AController
function USTExtraBlueprintFunctionLibrary:GetForbitDebuffComponentsFromController(Controller) end

---@param ver FVector
---@return FRotator
function USTExtraBlueprintFunctionLibrary:Vector2Rotator(ver) end

---@param CurVec FVector
---@param MaxVec FVector
---@return FVector
function USTExtraBlueprintFunctionLibrary:LimitVector(CurVec, MaxVec) end

---@param CurRot FRotator
---@param MaxRot FRotator
---@return FRotator
function USTExtraBlueprintFunctionLibrary:LimitRotator(CurRot, MaxRot) end

---@param AssetReference FStringAssetReference
---@param AssetLoadSuccessDelegate FAssetLoadSuccessDelegate
---@param bForceSeq boolean
function USTExtraBlueprintFunctionLibrary:GetAssetByAssetReferenceAsync(AssetReference, AssetLoadSuccessDelegate, bForceSeq) end

---@param ClassReference string
---@param ClassLoadSuccessDelegate FClassLoadSuccessDelegate
---@param bForceSeq boolean
function USTExtraBlueprintFunctionLibrary:GetClassByClassReferenceAsync(ClassReference, ClassLoadSuccessDelegate, bForceSeq) end

---@param AssetReference FStringAssetReference
---@param AssetLoadSuccessDelegate FAssetLoadSuccessDelegateWithID
---@param resID number
function USTExtraBlueprintFunctionLibrary:GetAssetByAssetReferenceAsyncWithID(AssetReference, AssetLoadSuccessDelegate, resID) end

---@param ClassReference string
---@param ClassLoadSuccessDelegate FClassLoadSuccessDelegateWithID
---@param resID number
function USTExtraBlueprintFunctionLibrary:GetClassByClassReferenceAsyncWithID(ClassReference, ClassLoadSuccessDelegate, resID) end

---@param AssetReferenceList ULuaArrayHelper<FStringAssetReference>
---@param AssetLoadSuccessDelegate FAssetLoadListSuccessDelegateWithID
---@param resID number
function USTExtraBlueprintFunctionLibrary:GetAssetListByAssetReferenceAsyncWithID(AssetReferenceList, AssetLoadSuccessDelegate, resID) end

---@param AssetReferenceList ULuaArrayHelper<FStringAssetReference>
---@param AssetLoadSuccessDelegate FAssetLoadListSuccessDelegateWithID
---@param resID number
---@param Priority number
function USTExtraBlueprintFunctionLibrary:GetAssetListByAssetReferenceAsyncWithIDPriority(AssetReferenceList, AssetLoadSuccessDelegate, resID, Priority) end

---@param ClassReferenceList ULuaArrayHelper<string>
---@param ClassLoadSuccessDelegate FClassLoadListSuccessDelegateWithID
---@param resID number
---@param Priority number
function USTExtraBlueprintFunctionLibrary:GetClassListByClassReferenceAsyncWithIDPriority(ClassReferenceList, ClassLoadSuccessDelegate, resID, Priority) end

---@param Command string
---@param Delegate FOnExecuteSystemCommandAsyncDelegate
function USTExtraBlueprintFunctionLibrary:ExecuteSystemCommandAsync(Command, Delegate) end

---@param AssetReference FStringAssetReference
---@return string
function USTExtraBlueprintFunctionLibrary:GetAssetReferencePathName(AssetReference) end

---@param VictimComp USceneComponent
---@param Origin FVector
---@param IgnoredActor AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@param DrawVisibleTraceDebugLine boolean
---@param IsConsideringVehicleBlock boolean
---@param ItemIndex number
---@param bCheckTraceChannelBlock boolean
---@param CauserActor AActor
---@return boolean
function USTExtraBlueprintFunctionLibrary:ComponentIsVisibleFromExplosion(VictimComp, Origin, IgnoredActor, IgnoreActors, TraceChannel, DrawVisibleTraceDebugLine, IsConsideringVehicleBlock, ItemIndex, bCheckTraceChannelBlock, CauserActor) end

---@param VictimComp USceneComponent
---@param Origin FVector
---@param EndPos FVector
---@param IgnoredActor AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceChannel ECollisionChannel
---@param DrawVisibleTraceDebugLine boolean
---@param IsConsideringVehicleBlock boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:ComponentIsVisibleFromExplosionWithEndPosition(VictimComp, Origin, EndPos, IgnoredActor, IgnoreActors, TraceChannel, DrawVisibleTraceDebugLine, IsConsideringVehicleBlock) end

---@param WorldContextObject UObject
---@param WorldLocation FVector
---@param Limit FVector4
---@param UIOffset FVector2D
---@param OutPosition FVector2D
---@param angle number
---@param UseCameraLocDirectly boolean
---@param bUseLogicLimit boolean
---@param CornerRadius number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetWorldToUIShowLocationRect(WorldContextObject, WorldLocation, Limit, UIOffset, OutPosition, angle, UseCameraLocDirectly, bUseLogicLimit, CornerRadius) end

---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param Limit FVector4
---@param CornerRadius number
---@param OutPosition FVector2D
---@param OutAngle number
---@param bIsOutScreen boolean
---@param bUseShowRangeCenter boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:TryClampToRoundedCorner(WorldContextObject, ScreenPosition, Limit, CornerRadius, OutPosition, OutAngle, bIsOutScreen, bUseShowRangeCenter) end

---return true if in screen
---@param WorldContextObject UObject
---@param WorldLoc FVector
---@param Limit FVector4
---@param OutScreenLoc FVector2D
---@param OutAngle number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetScreenLocationOfWorldLoc(WorldContextObject, WorldLoc, Limit, OutScreenLoc, OutAngle) end

---@param WorldContextObject UObject
---@param InPosition FVector2D
---@param Limit FVector4
---@return number
function USTExtraBlueprintFunctionLibrary:GetUIShowLocationAngle(WorldContextObject, InPosition, Limit) end

---@param WorldContextObject UObject
---@param WorldLocation FVector
---@param Limit FVector4
---@param UIOffset FVector2D
---@param ViewPortXYRatio number
---@param LocationXYRatio number
---@param LocationToCenter FVector2D
---@param UseCameraLocDirectly boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetScreenLocationXYRatio(WorldContextObject, WorldLocation, Limit, UIOffset, ViewPortXYRatio, LocationXYRatio, LocationToCenter, UseCameraLocDirectly) end

---@param WorldContextObject UObject
---@param MatPath string
---@param GeoPath string
---@param MaterialInstancePath string
---@return boolean
function USTExtraBlueprintFunctionLibrary:CreateMyLandscape(WorldContextObject, MatPath, GeoPath, MaterialInstancePath) end

---@return string
function USTExtraBlueprintFunctionLibrary:GetDeviceName() end

---@param PS ASTExtraPlayerState
---@return boolean
function USTExtraBlueprintFunctionLibrary:HasTeammateAlive(PS) end

---@param PC ASTExtraPlayerController
---@param OtherPlayerKey number
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsTeammateByPlayerKey(PC, OtherPlayerKey) end

---@param InTitle string
---@param InContent string
function USTExtraBlueprintFunctionLibrary:ShowDialogBox(InTitle, InContent) end

---@param WorldContextObject UObject
---@param bIsWhiteCircle boolean
---@param RadIfNoCircle number
---@return FVector
function USTExtraBlueprintFunctionLibrary:GetRandomPointInsidePoisonCircle(WorldContextObject, bIsWhiteCircle, RadIfNoCircle) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsTerminatorSelf(WorldContextObject) end

---@param PC ASTExtraPlayerController
---@param WorldContextObject UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsTerminatorByController(PC, WorldContextObject) end

---@param InPathName string
---@param InContextObject UObject
---@param InCreatedDelegate FCreatedWidgetAsyncDelegate
function USTExtraBlueprintFunctionLibrary:CreateWidgetByPathNameAsync(InPathName, InContextObject, InCreatedDelegate) end

---@param InActor AActor
function USTExtraBlueprintFunctionLibrary:GetChildActorWithOwner(InActor) end

---@param time number
---@return string
function USTExtraBlueprintFunctionLibrary:IntegerToTimeString(time) end

---@return boolean
function USTExtraBlueprintFunctionLibrary:Is3DTouchEnable() end

---@param DirectedGraph boolean
---@param BeginPointID number
---@param EndPointID number
---@param ExtraSpace number
---@param Begin ULuaArrayHelper<number>
---@param End ULuaArrayHelper<number>
---@param Value ULuaArrayHelper<number>
function USTExtraBlueprintFunctionLibrary:GetShortestPathSPFA(DirectedGraph, BeginPointID, EndPointID, ExtraSpace, Begin, End, Value) end

function USTExtraBlueprintFunctionLibrary:ShuffleArray() end

---@param len number
function USTExtraBlueprintFunctionLibrary:ShuffleArrayint(len) end

---@param World UWorld
function USTExtraBlueprintFunctionLibrary:FlushSlateZBufferWriteState(World) end

---@param Target AActor
---@param bForce boolean
---@param bModifyLevel boolean
---@param bImmediately boolean
function USTExtraBlueprintFunctionLibrary:DestroyActorWithParam(Target, bForce, bModifyLevel, bImmediately) end

---@param SourceString string
---@param SplitSymbol string
function USTExtraBlueprintFunctionLibrary:SplitStringContentToArray(SourceString, SplitSymbol) end

---@param iKillNum number
---@param iDeathNum number
---@return number
function USTExtraBlueprintFunctionLibrary:CalculateKDRatio(iKillNum, iDeathNum) end

---@param radius number
---@return FVector
function USTExtraBlueprintFunctionLibrary:GetRandomPointInRadius(radius) end

---@param radius number
---@return FVector
function USTExtraBlueprintFunctionLibrary:GetRandomPointOnCircle(radius) end

---@param RefPoint FVector
---@param GetCircleNums number
---@param CircleRadius number
---@param RingCircleWeights ULuaArrayHelper<number>
function USTExtraBlueprintFunctionLibrary:GetRandomDisjointCirclesAroundAPoint(RefPoint, GetCircleNums, CircleRadius, RingCircleWeights) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param Orientation FRotator
---@param HalfSize FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
function USTExtraBlueprintFunctionLibrary:DrawDebugSweptBox(WorldContextObject, Start, End, Orientation, HalfSize, Color, bPersistentLines, LifeTime, DepthPriority) end

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param Radius number
---@param HalfHeight number
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraBlueprintFunctionLibrary:DrawDebugCapsuleTraceSingle(WorldContextObject, Start, End, Radius, HalfHeight, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param WorldContextObject UWorld
---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FQuat
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraBlueprintFunctionLibrary:DrawDebugBoxTraceSingle(WorldContextObject, Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param IDList ULuaArrayHelper<FItemDefineID>
---@return string
function USTExtraBlueprintFunctionLibrary:ParseDefineIDListToString(IDList) end

---@param BufferSize number
---@param TestTimes number
---@return number
function USTExtraBlueprintFunctionLibrary:ArrayHexblobArrayTest(BufferSize, TestTimes) end

---@param BufferSize number
---@param TestTimes number
---@return number
function USTExtraBlueprintFunctionLibrary:CompressArrayTest(BufferSize, TestTimes) end

---@param InClass UClass
---@return boolean
function USTExtraBlueprintFunctionLibrary:CheckBPCreatedRepOrRPC(InClass) end

---@param World UWorld
---@param TargetObj UObject
---@return number
function USTExtraBlueprintFunctionLibrary:GetTargetObjectNetGUID(World, TargetObj) end

---@param WorldContextObject UObject
---@param IntValueStr string
---@return number
function USTExtraBlueprintFunctionLibrary:GetUserSettingsValueOfInt(WorldContextObject, IntValueStr) end

---@param WorldContextObject UObject
---@param BoolValueStr string
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetUserSettingsValueOfBool(WorldContextObject, BoolValueStr) end

---@param Skill AUTSkill
---@param TargetCharacter ASTExtraBaseCharacter
function USTExtraBlueprintFunctionLibrary:GetSkillRecoverParam(Skill, TargetCharacter) end

---@param DateTime FDateTime
---@return number
function USTExtraBlueprintFunctionLibrary:GetUnixTimestamp(DateTime) end

---@param DateTime FDateTime
---@return number
function USTExtraBlueprintFunctionLibrary:GetUnixTimestampMS(DateTime) end

---@param InMin number
---@param InMax number
---@param InCurrent number
---@param bClamp boolean
---@return number
function USTExtraBlueprintFunctionLibrary:MinMaxtoPercentageWithClamp(InMin, InMax, InCurrent, bClamp) end

---@param OutStage number
---@param OutIndex number
---@param InPercentage number
---@param InUnit number
function USTExtraBlueprintFunctionLibrary:SnapPercentageToInt(OutStage, OutIndex, InPercentage, InUnit) end

---@param InPercentage number
---@return number
function USTExtraBlueprintFunctionLibrary:SnapPercentageToQuat(InPercentage) end

---@param WorldContextObject UObject
---@param SubSystemID ESubSystemType
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsGameModeSupportFeature(WorldContextObject, SubSystemID) end

---@param WorldContextObject UObject
---@param PC AUAEPlayerController
---@param HeroID number
---@param SkillID number
---@param RecordName string
---@param RecordValue number
function USTExtraBlueprintFunctionLibrary:ReportHeroSkillRecord(WorldContextObject, PC, HeroID, SkillID, RecordName, RecordValue) end

---@return FCustomSinglePlayerColor
function USTExtraBlueprintFunctionLibrary:GetSinglePlayerColorPro() end

---@param TeamNo number
---@return FCustomTeamLogoAndColor
function USTExtraBlueprintFunctionLibrary:GetCustomLogoAndColor(TeamNo) end

---@param TeamNo number
---@param LogoName string
---@param LogoTexture UTexture2D
function USTExtraBlueprintFunctionLibrary:SetCustomLogo(TeamNo, LogoName, LogoTexture) end

---@param PlayerName string
---@return string
function USTExtraBlueprintFunctionLibrary:GetCustomTeammatePic(PlayerName) end

function USTExtraBlueprintFunctionLibrary:GetCustomTeammateCache() end

---@param PicPath string
---@param Pic UTexture2D
function USTExtraBlueprintFunctionLibrary:SetCustomTeammatePic(PicPath, Pic) end

---@return FColor
function USTExtraBlueprintFunctionLibrary:GetSinglePlayerColor() end

---@param UID string
---@return string
function USTExtraBlueprintFunctionLibrary:GetCustomSinglePic(UID) end

function USTExtraBlueprintFunctionLibrary:GetCustomSingleCache() end

---@param PicPath string
---@param Pic UTexture2D
function USTExtraBlueprintFunctionLibrary:SetCustomSinglePic(PicPath, Pic) end

---@param PlayerUID string
---@return FCustomPlayerMakeupPic
function USTExtraBlueprintFunctionLibrary:GetCustomPlayerMakeupPic(PlayerUID) end

---@param TeamNo number
---@return FCountryTeamLogo
function USTExtraBlueprintFunctionLibrary:GetCountryTeamLogo(TeamNo) end

---@param UID string
---@return string
function USTExtraBlueprintFunctionLibrary:GetAsianPlayerPicPathByUID(UID) end

---@param PicPath string
---@param Pic UTexture2D
function USTExtraBlueprintFunctionLibrary:SetAsianCountryPicCache(PicPath, Pic) end

---@param PicPath string
---@param Pic UTexture2D
function USTExtraBlueprintFunctionLibrary:SetAsianSinglePicCache(PicPath, Pic) end

function USTExtraBlueprintFunctionLibrary:GetAsianSinglePicCache() end

function USTExtraBlueprintFunctionLibrary:GetAsianCountryPicCache() end

---@param ParticleComp UParticleSystemComponent
---@param bEmptyInstances boolean
function USTExtraBlueprintFunctionLibrary:ResetParticle(ParticleComp, bEmptyInstances) end

---@param InDropLocation FVector
---@param DropID number
---@param InActor AActor
function USTExtraBlueprintFunctionLibrary:TriggerDrop(InDropLocation, DropID, InActor) end

---@param InVal number
---@return string
function USTExtraBlueprintFunctionLibrary:ConvertIntSecondTimeToText(InVal) end

---@param Table UUAEDataTable
---@param RowName string
---@param TagName string
---@return string
function USTExtraBlueprintFunctionLibrary:GetTableData_String(Table, RowName, TagName) end

---@param Table UUAEDataTable
---@param RowName string
---@param TagName string
---@return string
function USTExtraBlueprintFunctionLibrary:GetTableData_FName(Table, RowName, TagName) end

---@param Table UUAEDataTable
---@param RowName string
---@param TagName string
---@return number
function USTExtraBlueprintFunctionLibrary:GetTableData_Int(Table, RowName, TagName) end

---@param Table UUAEDataTable
---@param RowName string
---@param TagName string
---@return number
function USTExtraBlueprintFunctionLibrary:GetTableData_Float(Table, RowName, TagName) end

---@param Table UUAEDataTable
---@param RowName string
---@param TagName string
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetTableData_Bool(Table, RowName, TagName) end

---@param Target UObject
---@param Value UObject
---@param PropertyPath string
function USTExtraBlueprintFunctionLibrary:SetObjectByPropertyPath(Target, Value, PropertyPath) end

---@param Target UObject
---@param PropertyPath string
---@param PropertyText string
function USTExtraBlueprintFunctionLibrary:ImportTextByPropertyPath(Target, PropertyPath, PropertyText) end

---@param Target UObject
---@param PropertyPath string
---@param OutString string
---@return boolean
function USTExtraBlueprintFunctionLibrary:ExportTextByPropertyPath(Target, PropertyPath, OutString) end

---@param BaseBuffSystemComponent USTBaseBuffSystemComponent
---@param BuffName string
---@param Context FSTBaseBuffEventContext
function USTExtraBlueprintFunctionLibrary:FireBuffEvent(BaseBuffSystemComponent, BuffName, Context) end

---@param UTSkillAction UUTSkillAction
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetBuffInstance(UTSkillAction) end

---@param OuterActor AActor
---@param UIStyle EImmediateUIStyle
---@param InUIParam FImmediateUIParam
---@return number
function USTExtraBlueprintFunctionLibrary:AddImmediateUI(OuterActor, UIStyle, InUIParam) end

---@param OuterActor AActor
---@param ImmediateUI_UID number
function USTExtraBlueprintFunctionLibrary:RemoveImmediateUI(OuterActor, ImmediateUI_UID) end

---@param OuterActor AActor
---@param ImmediateUI_UID number
---@param Visibility ESlateVisibility
function USTExtraBlueprintFunctionLibrary:SetImmediateUIVisible(OuterActor, ImmediateUI_UID, Visibility) end

---@param Controller AController
---@param UIMessage string
---@param child UWidget
function USTExtraBlueprintFunctionLibrary:AddUIFunctionToRoot(Controller, UIMessage, child) end

---@param Controller AController
---@param child UWidget
function USTExtraBlueprintFunctionLibrary:AddAllUIFunctionToRoot(Controller, child) end

---@param DelegateContainer UObject
---@param DelegateName string
---@param Target UObject
---@param MemberMethodName string
---@return boolean
function USTExtraBlueprintFunctionLibrary:BindDynamicMulticastDelegate(DelegateContainer, DelegateName, Target, MemberMethodName) end

---@param DelegateContainer UObject
---@param DelegateName string
---@param Target UObject
---@param MemberMethodName string
---@return boolean
function USTExtraBlueprintFunctionLibrary:UnbindDynamicMulticastDelegate(DelegateContainer, DelegateName, Target, MemberMethodName) end

---@param InActor AActor
---@param Tag string
function USTExtraBlueprintFunctionLibrary:FireSpawnItemInActiveActorEvent(InActor, Tag) end

---@param InActor AActor
---@param Tag string
function USTExtraBlueprintFunctionLibrary:FireSpawnItemSpotFileEvent(InActor, Tag) end

---@param InActor AActor
---@param Tag string
function USTExtraBlueprintFunctionLibrary:FireSpawnItemAttachToEvent(InActor, Tag) end

---@param InActor AActor
---@param Tag string
---@param TimeStamp string
function USTExtraBlueprintFunctionLibrary:FireActivityEvent(InActor, Tag, TimeStamp) end

---@param InBaseCharacter ASTExtraBaseCharacter
---@param IDTag string
---@param PlayerKey number
---@param Index number
---@param LogicTag string
function USTExtraBlueprintFunctionLibrary:FireChangeWeatherEvent(InBaseCharacter, IDTag, PlayerKey, Index, LogicTag) end

---@param VariabName string
---@return number
function USTExtraBlueprintFunctionLibrary:FindTConsoleVariableDataInt(VariabName) end

---@param VariabName string
---@return number
function USTExtraBlueprintFunctionLibrary:FindTConsoleVariableDataFloat(VariabName) end

---@param VariabName string
---@return string
function USTExtraBlueprintFunctionLibrary:FindTConsoleVariableDataString(VariabName) end

---Find a console variable by name, cast its inner data to int and returns, without caring about its real type
---@param VariableName string
---@return number
function USTExtraBlueprintFunctionLibrary:FindConsoleVariableAsDataInt(VariableName) end

---Find a console variable by name, cast its inner data to float and returns, without caring about its real type
---@param VariableName string
---@return number
function USTExtraBlueprintFunctionLibrary:FindConsoleVariableAsDataFloat(VariableName) end

---@param VariableName string
---@return string
function USTExtraBlueprintFunctionLibrary:GetCVarString(VariableName) end

---@param VariableName string
---@param Value string
function USTExtraBlueprintFunctionLibrary:SetCVarString(VariableName, Value) end

---@param VariableName string
---@param Value string
function USTExtraBlueprintFunctionLibrary:SetCVarString_SetByConsole(VariableName, Value) end

---@return string
function USTExtraBlueprintFunctionLibrary:GetActiveProfileName() end

---@param Times number
---@return string
function USTExtraBlueprintFunctionLibrary:GetTrumpMarkIconPathByTimes(Times) end

---@param TopTimes number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetTrumpStatusIsOpen(TopTimes) end

---@param TopTimes number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetTrumpStatusIsDiamonds(TopTimes) end

---@param TopTimes number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetTrumpStatusIsCrown(TopTimes) end

---@param TopTimes number
---@return number
function USTExtraBlueprintFunctionLibrary:GetTrumpCount(TopTimes) end

---@param WorldContextObject UObject
---@param Name string
---@param OutValue boolean
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetBoolSaveGameSetting(WorldContextObject, Name, OutValue) end

---@param WorldContextObject UObject
---@param Name string
---@param OutValue number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetIntSaveGameSetting(WorldContextObject, Name, OutValue) end

---@param WorldContextObject UObject
---@param Name string
---@param OutValue number
---@return boolean
function USTExtraBlueprintFunctionLibrary:GetFloatSaveGameSetting(WorldContextObject, Name, OutValue) end

---@param HostActor AActor
---@param ActorTag string
function USTExtraBlueprintFunctionLibrary:QuickFireSpawnItemEvent(HostActor, ActorTag) end

---@param WorldContent UObject
---@param SpawnVec FVector
---@param ActorTag string
function USTExtraBlueprintFunctionLibrary:QuickFireSpawnItemEventByPos(WorldContent, SpawnVec, ActorTag) end

---@param InSetupArray ULuaArrayHelper<number>
---@param NewValue number
---@return boolean
function USTExtraBlueprintFunctionLibrary:MetPasswordInput(InSetupArray, NewValue) end

---@param InRootWidgets UUserWidget
---@param InWidgetParams ULuaArrayHelper<FWidgetSwitchParam>
---@param OutWidgetParams ULuaArrayHelper<FWidgetSwitchParam>
function USTExtraBlueprintFunctionLibrary:SwitchWidgetList(InRootWidgets, InWidgetParams, OutWidgetParams) end

---@param InRootWidgets UUserWidget
---@param InExcludeWidgets ULuaArrayHelper<string>
---@param IncludeRootBrothers boolean
---@param OutWidgetsToRecover ULuaArrayHelper<FWidgetSwitchParam>
function USTExtraBlueprintFunctionLibrary:SwitchWidgetsExclude(InRootWidgets, InExcludeWidgets, IncludeRootBrothers, OutWidgetsToRecover) end

---@param InWidgetParams ULuaArrayHelper<FWidgetSwitchParam>
function USTExtraBlueprintFunctionLibrary:RecoverWidgetList(InWidgetParams) end

---@return boolean
function USTExtraBlueprintFunctionLibrary:IsDevelopmentPlatform() end

---@param WorldContext UObject
---@return number
function USTExtraBlueprintFunctionLibrary:GetResolutionScaleBasedOnSizeX(WorldContext) end

---@return number
function USTExtraBlueprintFunctionLibrary:GetUtcNowUnixTimestampMillseconds() end

---@return number
function USTExtraBlueprintFunctionLibrary:GetSystemTimeCycles() end

---@param WorldContextObject UObject
---@param Params FDrawTextToTextureRenderTarget2DParams
---@param OnWidgetToTextureRenderTarget2DManagerDrawn FOnWidgetToTextureRenderTarget2DManagerDrawn
function USTExtraBlueprintFunctionLibrary:DrawTextToTextureRenderTarget2DAsync(WorldContextObject, Params, OnWidgetToTextureRenderTarget2DManagerDrawn) end

---@param WorldContextObject UObject
---@param TextureRenderTarget UTextureRenderTarget2D
---@param FilePath string
---@param FileName string
function USTExtraBlueprintFunctionLibrary:ExportRenderTargetAsPNG(WorldContextObject, TextureRenderTarget, FilePath, FileName) end

---@param InActor AActor
---@param IDTag string
---@param PlayerKey number
---@param LogicTag string
function USTExtraBlueprintFunctionLibrary:TriggerSpawnItemAreaZombie(InActor, IDTag, PlayerKey, LogicTag) end

---@param GameMode ASTExtraGameMode
---@param pc ASTExtraPlayerController
---@return number
function USTExtraBlueprintFunctionLibrary:GetPlayerFireTimes(GameMode, pc) end

---@param GameMode ASTExtraGameMode
---@param pc ASTExtraPlayerController
---@param WeaponID number
---@return number
function USTExtraBlueprintFunctionLibrary:GetPlayerFireTimesWithWeapon(GameMode, pc, WeaponID) end

---@param GameMode ASTExtraGameMode
---@param pc ASTExtraPlayerController
function USTExtraBlueprintFunctionLibrary:GetPlayerWeaponFireMap(GameMode, pc) end

---@param WorldContent UObject
---@param idip number
---@return string
function USTExtraBlueprintFunctionLibrary:GetReplaceTextureURL(WorldContent, idip) end

---@param URL string
---@param Data string
function USTExtraBlueprintFunctionLibrary:SendDataToWeChatWork(URL, Data) end

---@param URL string
---@param Data string
function USTExtraBlueprintFunctionLibrary:SendDataToWeChatWorkRelease(URL, Data) end

---@param content_file_path string
---@param save_file_path string
---@return string
function USTExtraBlueprintFunctionLibrary:CopyContentPathToSavePath(content_file_path, save_file_path) end

---@param content_file_path string
---@param file_size number
---@return boolean
function USTExtraBlueprintFunctionLibrary:CheckHaveContentPathFile(content_file_path, file_size) end

---@param save_file_path string
---@param file_size number
---@return boolean
function USTExtraBlueprintFunctionLibrary:CheckHaveSavePathFile(save_file_path, file_size) end

---@param Context UObject
---@param Start FVector
---@param End FVector
---@param Color FColor
---@param LifeTime number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugLine(Context, Start, End, Color, LifeTime) end

---@param Context UObject
---@param Center FVector
---@param Radius number
---@param Color FColor
---@param LifeTime number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugSphere(Context, Center, Radius, Color, LifeTime) end

---@param PC ASTExtraPlayerController
---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHits ULuaArrayHelper<FHitResult>
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugBoxTraceMulti(PC, Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHits, TraceColor, TraceHitColor, DrawTime) end

---@param PC ASTExtraPlayerController
---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugBoxTraceSingle(PC, Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param PC ASTExtraPlayerController
---@param Start FVector
---@param End FVector
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugLineTraceSingle(PC, Start, End, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param PC ASTExtraPlayerController
---@param Center FVector
---@param Radius number
---@param Segments number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraBlueprintFunctionLibrary:NotifyClientDrawDebugSphereNew(PC, Center, Radius, Segments, LineColor, Duration, Thickness) end

---@param InEventName string
---@param TriggerPlayerController AActor
function USTExtraBlueprintFunctionLibrary:CacheEventScopeTriggerPlayer(InEventName, TriggerPlayerController) end

---@param InEventName string
---@param TriggerPlayerController AActor
function USTExtraBlueprintFunctionLibrary:CacheEventScopeTriggerPlayerTeamMate(InEventName, TriggerPlayerController) end

---@param Src FVector
---@param Dst FVector
---@return number
function USTExtraBlueprintFunctionLibrary:Dist(Src, Dst) end

---@param Src FVector
---@param Dst FVector
---@return number
function USTExtraBlueprintFunctionLibrary:Dist2D(Src, Dst) end

---@param Obj UObject
---@return string
function USTExtraBlueprintFunctionLibrary:GetObjName(Obj) end

---@param Obj UObject
---@return string
function USTExtraBlueprintFunctionLibrary:GetObjFullName(Obj) end

---@param Obj UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsDedicatedServer(Obj) end

---@param Actor AActor
---@param Location FVector
---@param ItemID number
---@param ItemCount number
function USTExtraBlueprintFunctionLibrary:TriggerSpawnItemByItemId(Actor, Location, ItemID, ItemCount) end

---@param InEventName string
---@param Actor AActor
function USTExtraBlueprintFunctionLibrary:LuaFireEvent(InEventName, Actor) end

---@param InEventName string
---@param Actor AActor
---@param Tag string
function USTExtraBlueprintFunctionLibrary:LuaFireEventWithTag(InEventName, Actor, Tag) end

---@param Hud UFrontendHUD
function USTExtraBlueprintFunctionLibrary:SimulateSwitchMap(Hud) end

---@param RealViewer AActor
---@param ViewTarget AActor
function USTExtraBlueprintFunctionLibrary:FlushNetRelevancyImmediately(RealViewer, ViewTarget) end

---@param WorldContextObject UObject
function USTExtraBlueprintFunctionLibrary:GetAllTeamIndex(WorldContextObject) end

---@param WorldContextObject UObject
---@param index number
function USTExtraBlueprintFunctionLibrary:GetAllTeammatesCharacter(WorldContextObject, index) end

---@param WorldContextObject UObject
---@param ID number
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
---@return boolean
function USTExtraBlueprintFunctionLibrary:GeneralClickActorTlogStatistics(WorldContextObject, ID, Value2, PlayerKey, Position) end

---@param WorldContent UObject
---@param InPath string
---@param InActor AActor
---@param InPos FVector
---@return number
function USTExtraBlueprintFunctionLibrary:OPUMgrAddWithPath(WorldContent, InPath, InActor, InPos) end

---@param WorldContent UObject
---@param InPath string
---@param InActor AActor
---@param InParam string
---@return number
function USTExtraBlueprintFunctionLibrary:OPUMgrAddWithPathParam(WorldContent, InPath, InActor, InParam) end

---@param WorldContent UObject
---@param InTemplateID number
---@param InActor AActor
---@param InPos FVector
---@param InTeamID number
---@param InParam number
---@return number
function USTExtraBlueprintFunctionLibrary:OPUMgrAddTemplateUI(WorldContent, InTemplateID, InActor, InPos, InTeamID, InParam) end

---@param WorldContent UObject
---@param InInstanceID number
function USTExtraBlueprintFunctionLibrary:OPUMgrRemoveTemplatePosUI(WorldContent, InInstanceID) end

---@param WorldContent UObject
---@param InInstanceID number
---@return boolean
function USTExtraBlueprintFunctionLibrary:OPUMgrIsInstanceValid(WorldContent, InInstanceID) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InParam number
function USTExtraBlueprintFunctionLibrary:OPUMgrSetExParam(WorldContent, InInstanceID, InParam) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InVisable boolean
function USTExtraBlueprintFunctionLibrary:OPUMgrSetVisable(WorldContent, InInstanceID, InVisable) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InPos FVector
function USTExtraBlueprintFunctionLibrary:OPUMgrSetObjectPos(WorldContent, InInstanceID, InPos) end

---@param WorldContent UObject
---@param NewContent string
function USTExtraBlueprintFunctionLibrary:SetTopChatContent(WorldContent, NewContent) end

---@param InRecord string
---@param InColor FLinearColor
function USTExtraBlueprintFunctionLibrary:AddBarrageItem(InRecord, InColor) end

---@param PlayerPawn ASTExtraBaseCharacter
---@param bEnable boolean
function USTExtraBlueprintFunctionLibrary:EnablePlayerAvatarOutline(PlayerPawn, bEnable) end

---@param Actor AActor
---@param bEnable boolean
function USTExtraBlueprintFunctionLibrary:EnableActorOutline(Actor, bEnable) end

---@param Target UObject
---@param DirName string
---@return boolean
function USTExtraBlueprintFunctionLibrary:CheckTargetObjectIsTimelineDir(Target, DirName) end

---@param TargetComp UPrimitiveComponent
---@return boolean
function USTExtraBlueprintFunctionLibrary:CheckStaticCompBlockShootVerify(TargetComp) end

---@param InWidget UUAEUserWidget
---@param InStyle UUserWidgetStyle
function USTExtraBlueprintFunctionLibrary:SetUserWidgetStyle(InWidget, InStyle) end

---@param Comp USceneComponent
function USTExtraBlueprintFunctionLibrary:HideAllDecal(Comp) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsReady(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsFight(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraBlueprintFunctionLibrary:IsFinish(WorldContextObject) end

---@param CVarName string
---@return number
function USTExtraBlueprintFunctionLibrary:GetCVarConsoleValue(CVarName) end

---@param CVarName string
---@return number
function USTExtraBlueprintFunctionLibrary:GetCVarConsoleValueFloat(CVarName) end

---@param InContext FPaintContext
---@param CircleCenter FVector2D
---@param CircleColor FLinearColor
---@param CircleRadius number
---@param bAntiAlias boolean
---@param Thickness number
function USTExtraBlueprintFunctionLibrary:DrawDebugCircleOnScreen(InContext, CircleCenter, CircleColor, CircleRadius, bAntiAlias, Thickness) end

---@param WorldContent UObject
---@param PlayerKey string
---@param EventID EGunMasterEventID
---@param Num number
---@param AdditionalInfo string
function USTExtraBlueprintFunctionLibrary:BPReportGunMasterFlow(WorldContent, PlayerKey, EventID, Num, AdditionalInfo) end

---@param InMessage string
function USTExtraBlueprintFunctionLibrary:DisplayDEVAlertMessageDialog(InMessage) end

---@param Msg string
function USTExtraBlueprintFunctionLibrary:BPAssert(Msg) end

---@param WorldContextObject UObject
---@param ExpectedPlayerListIndices ULuaArrayHelper<number>
function USTExtraBlueprintFunctionLibrary:GetPlayerListIndicesOfUsingWingPlaneFuel(WorldContextObject, ExpectedPlayerListIndices) end

---@param InController ASTExtraPlayerController
---@param Pos1 FVector
---@param Pos2 FVector
---@param Dis number
---@param IgnoreActor ULuaArrayHelper<AActor>
---@return boolean
function USTExtraBlueprintFunctionLibrary:WillHitLandscapeV2V(InController, Pos1, Pos2, Dis, IgnoreActor) end

---Get or Set object PROPERTY value by property name
---@param Object UObject
---@param PropertyName string
---@param Value number
---@param bSetter boolean
function USTExtraBlueprintFunctionLibrary:AccessPropertyByName(Object, PropertyName, Value, bSetter) end
