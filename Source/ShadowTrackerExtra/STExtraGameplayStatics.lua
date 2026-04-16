---@meta

---@class EFindPointOnNavmeshType
---@field FindOnNavmesh_Default number
---@field FindOnNavmesh_UpWard number
---@field FindOnNavmesh_DownWard number
EFindPointOnNavmeshType = {}


---@class FCollisionShapeBP
---@field ShapeType ECollisionShape
---@field Extent FVector
FCollisionShapeBP = {}


---@class FTeleportCharacterCheckBoxParam
---@field Extent FVector
---@field Transform FTransform
---@field bConsiderRotate boolean
---@field bConsiderScale boolean
FTeleportCharacterCheckBoxParam = {}


---@class USTExtraGameplayStatics: UBlueprintFunctionLibrary
local USTExtraGameplayStatics = {}

---@param Character AActor
---@param GameAttribute FGameAttributeContainer
---@param MaxProperyValue number
---@return boolean
function USTExtraGameplayStatics:AttrInMaxLimit(Character, GameAttribute, MaxProperyValue) end

---@param Character AActor
---@param AttrCompareItem FPEAttrCompareItem
---@return boolean
function USTExtraGameplayStatics:AttrCompareSuccess(Character, AttrCompareItem) end

---@return boolean
function USTExtraGameplayStatics:IsUGCRelease() end

---@return boolean
function USTExtraGameplayStatics:IsUGCMobile() end

---@return boolean
function USTExtraGameplayStatics:IsUGCPC() end

---@return boolean
function USTExtraGameplayStatics:IsEditor() end

---@return boolean
function USTExtraGameplayStatics:IsGame() end

---@return boolean
function USTExtraGameplayStatics:IsWinPlatForm() end

---@return boolean
function USTExtraGameplayStatics:IsWinReleaseBuild() end

---@param AkEventID number
---@param pSouceActor AActor
---@param AkLocation FVector
---@param IsFireSound boolean
function USTExtraGameplayStatics:PostSyncAkEvent(AkEventID, pSouceActor, AkLocation, IsFireSound) end

---@param pSouceActor AActor
function USTExtraGameplayStatics:StopSyncSound(pSouceActor) end

---@param bActive boolean
---@param Center FVector2D
---@param Radius number
---@param ScreenSizeFactor number
function USTExtraGameplayStatics:SetScreenSizeModifier(bActive, Center, Radius, ScreenSizeFactor) end

---@param Wetness number
function USTExtraGameplayStatics:SetWetness(Wetness) end

---Hurts the specified actor with the specified impact.
---@param DamagedActor AActor
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@param ItemID number
---@return number
function USTExtraGameplayStatics:STApplyPointDamage(DamagedActor, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, DamageTypeClass, ItemID) end

---@param DamagedActor AActor
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FBulletHitInfoUploadData
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@param HitPartCoff FWeaponHitPartCoff
---@param shootBodyType number
---@param DamageImpulse number
---@return number
function USTExtraGameplayStatics:STApplyWeaponShootDamage(DamagedActor, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, DamageTypeClass, HitPartCoff, shootBodyType, DamageImpulse) end

---@param DamagedActor AActor
---@param BaseDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param HitResult FHitResult
---@param HitDirection FVector
---@param DamageTypeClass UDamageType
---@param DamagePos EAvatarDamagePosition
---@param MeleeDamageSubType EMeleeDamageSubType
---@param ItemID number
---@return number
function USTExtraGameplayStatics:STApplyMeleeDamage(DamagedActor, BaseDamage, EventInstigator, DamageCauser, HitResult, HitDirection, DamageTypeClass, DamagePos, MeleeDamageSubType, ItemID) end

---@param HitResult FHitResult
---@param HitDirection FVector
---@param EventInstigator APlayerController
---@param DamageCauser AActor
---@param CauserBornLoc FVector
---@param DamageTypeClass UDamageType
---@param BodyDamageCurve UCurveFloat
---@param HeadDamageCurve UCurveFloat
---@param MeleeDamageSubType EMeleeDamageSubType
---@param ItemID number
---@return number
function USTExtraGameplayStatics:STApplyPartHitDamage(HitResult, HitDirection, EventInstigator, DamageCauser, CauserBornLoc, DamageTypeClass, BodyDamageCurve, HeadDamageCurve, MeleeDamageSubType, ItemID) end

---@param HitResult FHitResult
---@param HitDirection FVector
---@param BaseDamage number
---@param AvatarDamagePosition EAvatarDamagePosition
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@return number
function USTExtraGameplayStatics:STApplyAvatarPositionHitDamage(HitResult, HitDirection, BaseDamage, AvatarDamagePosition, EventInstigator, DamageCauser, DamageTypeClass) end

---@param DamagedActor AActor
---@param BaseDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@param SourceObject UObject
---@return number
function USTExtraGameplayStatics:STApplyDamageBySourceObj(DamagedActor, BaseDamage, EventInstigator, DamageCauser, DamageTypeClass, SourceObject) end

---@param DamagedActor AActor
---@param DamageType number
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@return number
function USTExtraGameplayStatics:ApplyPointDamage(DamagedActor, DamageType, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, DamageTypeClass) end

---@param WorldContextObject UObject
---@param DamageType number
---@param BaseDamage number
---@param MinimumDamage number
---@param Origin FVector
---@param DamageInnerRadius number
---@param DamageOuterRadius number
---@param DamageFalloff number
---@param GivenActors ULuaArrayHelper<AActor>
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param DamagePreventionChannel ECollisionChannel
---@param ItemID number
---@param DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@return boolean
function USTExtraGameplayStatics:UGCApplyRadialDamageGivenActors(WorldContextObject, DamageType, BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, GivenActors, DamageCauser, InstigatedByController, DamagePreventionChannel, ItemID, DamageTypeTags) end

---@param WorldContextObject UObject
---@param DamageType number
---@param BaseDamage number
---@param MinimumDamage number
---@param Origin FVector
---@param DamageInnerRadius number
---@param DamageOuterRadius number
---@param DamageFalloff number
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param DamagePreventionChannel ECollisionChannel
---@param ItemID number
---@param DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@return boolean
function USTExtraGameplayStatics:UGCApplyRadialDamage(WorldContextObject, DamageType, BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, IgnoreActors, DamageCauser, InstigatedByController, DamagePreventionChannel, ItemID, DamageTypeTags) end

---@param DamagedActor AActor
---@param DamageType number
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ItemID number
---@param DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@param SourceObject UObject
---@return number
function USTExtraGameplayStatics:UGCApplyPointDamage(DamagedActor, DamageType, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, ItemID, DamageTypeTags, SourceObject) end

---@param DamagedActor AActor
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FHitResult
---@param AvatarDamagePosition EAvatarDamagePosition
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@return number
function USTExtraGameplayStatics:UGCApplyAvatarPositionHitDamage(DamagedActor, BaseDamage, HitFromDirection, HitInfo, AvatarDamagePosition, EventInstigator, DamageCauser, DamageTypeTags) end

---@param WorldContextObject UObject
---@param PawnClass APawn
---@param OutPawns ULuaArrayHelper<APawn>
function USTExtraGameplayStatics:GetAllPlayerPawnsOfClass(WorldContextObject, PawnClass, OutPawns) end

---@param WorldContextObject UObject
---@param Center FVector
---@param Forward FVector
---@param Radius number
---@param Angle number
---@param bIncludeAIPlayer boolean
---@param bOnly2D boolean
---@param OutPlayers ULuaArrayHelper<AActor>
function USTExtraGameplayStatics:GetAllPlayersInAIViewRange(WorldContextObject, Center, Forward, Radius, Angle, bIncludeAIPlayer, bOnly2D, OutPlayers) end

---@param WorldContextObject UObject
---@param Center FVector
---@param Forward FVector
---@param Radius number
---@param Angle number
---@param bOnly2D boolean
---@param OutBuildingActors ULuaArrayHelper<AActor>
function USTExtraGameplayStatics:GetAllBuildingActorsInAIViewRange(WorldContextObject, Center, Forward, Radius, Angle, bOnly2D, OutBuildingActors) end

---@param InGameModeActor AGameModeActor
---@param ActorClass AActor
---@param OutActors ULuaArrayHelper<AActor>
function USTExtraGameplayStatics:GetAllActorsOfClassWithinGameModeActor(InGameModeActor, ActorClass, OutActors) end

---@param InGameModeActor AGameModeActor
---@param Tag string
---@param OutActors ULuaArrayHelper<AActor>
function USTExtraGameplayStatics:GetAllActorsWithTagWithinGameModeActor(InGameModeActor, Tag, OutActors) end

---@param PrimitiveComponent UPrimitiveComponent
---@param MaskFilter number
function USTExtraGameplayStatics:SetMaskFilterOnBodyInstance(PrimitiveComponent, MaskFilter) end

---@param Start FVector
---@param End FVector
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraGameplayStatics:ClientDrawDebugLineTraceSingle(Start, End, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param Start FVector
---@param End FVector
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHits ULuaArrayHelper<FHitResult>
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function USTExtraGameplayStatics:ClientDrawDebugLineTraceMulti(Start, End, DrawDebugType, bHit, OutHits, TraceColor, TraceHitColor, DrawTime) end

---Draw a debug line
---@param LineStart FVector
---@param LineEnd FVector
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugLine(LineStart, LineEnd, LineColor, Duration, Thickness) end

---Draw a debug circle!
---@param Center FVector
---@param Radius number
---@param NumSegments number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
---@param YAxis FVector
---@param ZAxis FVector
---@param bDrawAxis boolean
function USTExtraGameplayStatics:ClientDrawDebugCircle(Center, Radius, NumSegments, LineColor, Duration, Thickness, YAxis, ZAxis, bDrawAxis) end

---Draw a debug point
---@param Position FVector
---@param Size number
---@param PointColor FLinearColor
---@param Duration number
function USTExtraGameplayStatics:ClientDrawDebugPoint(Position, Size, PointColor, Duration) end

---Draw directional arrow, pointing from LineStart to LineEnd.
---@param LineStart FVector
---@param LineEnd FVector
---@param ArrowSize number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugArrow(LineStart, LineEnd, ArrowSize, LineColor, Duration, Thickness) end

---Draw a debug box
---@param Center FVector
---@param Extent FVector
---@param LineColor FLinearColor
---@param Rotation FRotator
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugBox(Center, Extent, LineColor, Rotation, Duration, Thickness) end

---Draw a debug coordinate system.
---@param AxisLoc FVector
---@param AxisRot FRotator
---@param Scale number
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugCoordinateSystem(AxisLoc, AxisRot, Scale, Duration, Thickness) end

---Draw a debug sphere
---@param Center FVector
---@param Radius number
---@param Segments number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugSphere(Center, Radius, Segments, LineColor, Duration, Thickness) end

---Draw a debug cylinder
---@param Start FVector
---@param End FVector
---@param Radius number
---@param Segments number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
---@param bDisableDepthTest boolean
function USTExtraGameplayStatics:ClientDrawDebugCylinder(Start, End, Radius, Segments, LineColor, Duration, Thickness, bDisableDepthTest) end

---Draw a debug cone
---@param Origin FVector
---@param Direction FVector
---@param Length number
---@param AngleWidth number
---@param AngleHeight number
---@param NumSides number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugCone(Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, LineColor, Duration, Thickness) end

---Draw a debug cone Angles are specified in degrees
---@param Origin FVector
---@param Direction FVector
---@param Length number
---@param AngleWidth number
---@param AngleHeight number
---@param NumSides number
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugConeInDegrees(Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, LineColor, Duration, Thickness) end

---Draw a debug capsule
---@param Center FVector
---@param HalfHeight number
---@param Radius number
---@param Rotation FRotator
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
---@param bDisableDepthTest boolean
function USTExtraGameplayStatics:ClientDrawDebugCapsule(Center, HalfHeight, Radius, Rotation, LineColor, Duration, Thickness, bDisableDepthTest) end

---Draws a debug plane.
---@param PlaneCoordinates FPlane
---@param Location FVector
---@param Size number
---@param PlaneColor FLinearColor
---@param Duration number
function USTExtraGameplayStatics:ClientDrawDebugPlane(PlaneCoordinates, Location, Size, PlaneColor, Duration) end

---Draw a debug string at a 3d world location.
---@param TextLocation FVector
---@param Text string
---@param TestBaseActor AActor
---@param TextColor FLinearColor
---@param Duration number
function USTExtraGameplayStatics:ClientDrawDebugString(TextLocation, Text, TestBaseActor, TextColor, Duration) end

---@param Start FVector
---@param End FVector
---@param Radius number
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
function USTExtraGameplayStatics:ClientDrawDebugSweptSphere(Start, End, Radius, Color, bPersistentLines, LifeTime, DepthPriority) end

---@param Start FVector
---@param End FVector
---@param Orientation FRotator
---@param HalfSize FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
function USTExtraGameplayStatics:ClientDrawDebugSweptBox(Start, End, Orientation, HalfSize, Color, bPersistentLines, LifeTime, DepthPriority) end

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
function USTExtraGameplayStatics:ClientDrawDebugBoxTraceMulti(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHits, TraceColor, TraceHitColor, DrawTime) end

---@param Comp UPrimitiveComponent
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugComponentCollision(Comp, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end

---@param BodySetup UBodySetup
---@param ParentTransform FTransform
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param Thickness number
function USTExtraGameplayStatics:ClientDrawDebugBodySetup(BodySetup, ParentTransform, Color, bPersistentLines, LifeTime, Thickness) end

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
function USTExtraGameplayStatics:ClientDrawDebugBoxTraceSingle(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---Removes all debug strings.
function USTExtraGameplayStatics:ClientFlushDebugStrings() end

---@return boolean
function USTExtraGameplayStatics:IsShipping() end

---@return boolean
function USTExtraGameplayStatics:IsShippingOrTest() end

---@param Actor AActor
---@param OutWaterHeight number
---@return boolean
function USTExtraGameplayStatics:IsActorInWater(Actor, OutWaterHeight) end

---@param PhysicsVolume APhysicsVolume
---@param CurLocation FVector
---@return number
function USTExtraGameplayStatics:GetWaterSurfaceHeight(PhysicsVolume, CurLocation) end

---@param WorldContextObject UObject
---@param Location FVector
---@return boolean
function USTExtraGameplayStatics:IsLocationUnderWater(WorldContextObject, Location) end

---@param WorldContextObject UObject
---@param Location FVector
---@return boolean
function USTExtraGameplayStatics:IsLocationInDoor(WorldContextObject, Location) end

---@param InActor AActor
---@param StartActorOffset FVector
---@param TraceRay FVector
function USTExtraGameplayStatics:GetPhysicalSurfaceFromRay(InActor, StartActorOffset, TraceRay) end

---@param WorldContextObject UObject
---@param CollisionChannels ULuaArrayHelper<ECollisionChannel>
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param TraceStart FVector
---@param TraceEnd FVector
function USTExtraGameplayStatics:GetPhysicalSurfaceFromRay_Enhanced(WorldContextObject, CollisionChannels, IgnoreActors, TraceStart, TraceEnd) end

---@param Type EPhysicalSurface
---@return string
function USTExtraGameplayStatics:PhysicalSurfaceToName(Type) end

---@param Controller AController
---@param StateName string
---@return boolean
function USTExtraGameplayStatics:IsControllerInState(Controller, StateName) end

---@param ObjectToDump UObject
function USTExtraGameplayStatics:DumpObjectToLog(ObjectToDump) end

---@param ObjectToDump UObject
---@param FileName string
function USTExtraGameplayStatics:DumpObjectToFile(ObjectToDump, FileName) end

function USTExtraGameplayStatics:ClearObjectDumpFiles() end

---@param CopyString string
function USTExtraGameplayStatics:ClipboardCopy(CopyString) end

---@return boolean
function USTExtraGameplayStatics:IsAndroidSimulator() end

---@param HitResult FHitResult
---@return string
function USTExtraGameplayStatics:Conv_HitResultToString(HitResult) end

---@param RelevantTestActor AActor
---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@return boolean
function USTExtraGameplayStatics:IsNetRelevantFor(RelevantTestActor, RealViewer, ViewTarget, SrcLocation) end

---@param WorldContextObject UObject
---@return string
function USTExtraGameplayStatics:GetGameID(WorldContextObject) end

---@param ObjectNeedToBeDump UObject
---@param DirectoryName string
function USTExtraGameplayStatics:DumpEverything(ObjectNeedToBeDump, DirectoryName) end

---@param Object UObject
---@return number
function USTExtraGameplayStatics:GetObjectUniqueID(Object) end

---@param Name string
---@param DefaultValue number
---@param Help string
---@return boolean
function USTExtraGameplayStatics:RegisterFloatConsoleVariable(Name, DefaultValue, Help) end

---@param Name string
---@param DefaultValue number
---@param Help string
---@return boolean
function USTExtraGameplayStatics:RegisterIntConsoleVariable(Name, DefaultValue, Help) end

---@param Name string
---@param DefaultValue string
---@param Help string
---@return boolean
function USTExtraGameplayStatics:RegisterStringConsoleVariable(Name, DefaultValue, Help) end

---@param Name string
---@param bDefaultValue boolean
---@param Help string
---@return boolean
function USTExtraGameplayStatics:RegisterBoolConsoleVariable(Name, bDefaultValue, Help) end

---@param Name string
function USTExtraGameplayStatics:UnregisterConsoleVariable(Name) end

---@param Name string
---@param OutVariableValue number
---@return boolean
function USTExtraGameplayStatics:FindFloatConsoleVariable(Name, OutVariableValue) end

---@param Name string
---@param OutVariableValue number
---@return boolean
function USTExtraGameplayStatics:FindIntConsoleVariable(Name, OutVariableValue) end

---@param Name string
---@param OutVariableValue string
---@return boolean
function USTExtraGameplayStatics:FindStringConsoleVariable(Name, OutVariableValue) end

---@param Name string
---@param OutVariableValue boolean
---@return boolean
function USTExtraGameplayStatics:FindBoolConsoleVariable(Name, OutVariableValue) end

---@param Name string
---@param InVariableValue boolean
function USTExtraGameplayStatics:SetBoolConsoleVariable(Name, InVariableValue) end

---@param Name string
---@param InVariableValue number
function USTExtraGameplayStatics:SetIntConsoleVariable(Name, InVariableValue) end

---@param Name string
---@param InVariableValue number
function USTExtraGameplayStatics:SetFloatConsoleVariable(Name, InVariableValue) end

---@param Name string
---@param InVariableValue string
function USTExtraGameplayStatics:SetStringConsoleVariable(Name, InVariableValue) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsReplayWorld(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsEditorWorld(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsPIEWorld(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsGameWorld(WorldContextObject) end

---@param WorldContextObject UObject
---@return string
function USTExtraGameplayStatics:GetWorldType(WorldContextObject) end

---@return boolean
function USTExtraGameplayStatics:ReplayUseOBUI() end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsUGCGame(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsUGCPIEWithBigWorld(WorldContextObject) end

---@return string
function USTExtraGameplayStatics:GetUGCMountId() end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsUserDefinedMap(WorldContextObject) end

---@param WorldContextObject UObject
---@param TeamID number
function USTExtraGameplayStatics:GetTeammates(WorldContextObject, TeamID) end

---@param InPlayerState1 AUAEPlayerState
---@param InPlayerState2 AUAEPlayerState
---@return boolean
function USTExtraGameplayStatics:IsTeammatesGroupedInLobby(InPlayerState1, InPlayerState2) end

---@param InVictimPlayerController ASTExtraPlayerController
---@return boolean
function USTExtraGameplayStatics:IsPlayerKilledByMatchedTeammate(InVictimPlayerController) end

---@param WorldContextObject UObject
---@param onlyFreeView boolean
function USTExtraGameplayStatics:GetAllGlobalObservers(WorldContextObject, onlyFreeView) end

---@param WorldContextObject UObject
function USTExtraGameplayStatics:StopAllAIBehavior(WorldContextObject) end

---@param WorldContextObject UObject
---@param MessageID number
---@param bIgnoreSpecator boolean
function USTExtraGameplayStatics:BroadcastDisplayGameTipWithMsgID(WorldContextObject, MessageID, bIgnoreSpecator) end

---@param WorldContextObject UObject
---@param MessageID number
---@param Param1 string
---@param Param2 string
---@param bIgnoreSpecator boolean
function USTExtraGameplayStatics:BroadcastDisplayGameTipWithMsgIDAndString(WorldContextObject, MessageID, Param1, Param2, bIgnoreSpecator) end

---@param WorldContextObject UObject
---@param UIName string
---@param bIsShow boolean
---@param bIgnoreSpecator boolean
function USTExtraGameplayStatics:BroadcastShowUIWithName(WorldContextObject, UIName, bIsShow, bIgnoreSpecator) end

---@param Outer UObject
---@param RayStart FVector
---@param RayEnd FVector
---@param JudgeDist number
---@param ForwardOutHit FHitResult
---@param ReverseOutHit FHitResult
---@return boolean
function USTExtraGameplayStatics:IsInSingleFaceWall(Outer, RayStart, RayEnd, JudgeDist, ForwardOutHit, ReverseOutHit) end

---@param Size FVector2D
function USTExtraGameplayStatics:TestLockTexture(Size) end

---@param TestActor AActor
---@param PlaceLocation FVector
---@param PlaceRotation FRotator
---@param OutLocation FVector
---@return boolean
function USTExtraGameplayStatics:FindTeleportSpot(TestActor, PlaceLocation, PlaceRotation, OutLocation) end

---@param TestActor AActor
---@param PlaceLocation FVector
---@param PlaceRotation FRotator
---@param OutLocation FVector
---@return boolean
function USTExtraGameplayStatics:TryMoreTimesToFindTeleportSpot(TestActor, PlaceLocation, PlaceRotation, OutLocation) end

---@param WorldContextObject UObject
function USTExtraGameplayStatics:ClearAllPlayerFollowState(WorldContextObject) end

---@param Ctrl AController
---@return number
function USTExtraGameplayStatics:GetPlayerKeyByController(Ctrl) end

---@return boolean
function USTExtraGameplayStatics:IsCG25RelicationOptEnable() end

---@return boolean
function USTExtraGameplayStatics:IsCG26RelicationOptEnable() end

---@return boolean
function USTExtraGameplayStatics:IsCG27EscapeTLogOptEnable() end

---@return boolean
function USTExtraGameplayStatics:IsCG27EscapeCustomQueryOptEnable() end

---@return boolean
function USTExtraGameplayStatics:IsCG27BattleFieldTLogEnable() end

---@param Actor AActor
function USTExtraGameplayStatics:UpdateActorRegion(Actor) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraGameplayStatics:IsEscapeFeatureSupported(WorldContextObject) end

---@param WorldContextObject UObject
---@param bOnlyMLAI boolean
---@param TeamID number
function USTExtraGameplayStatics:GetFakePlayerAIControllers(WorldContextObject, bOnlyMLAI, TeamID) end

---@param WorldContextObject UObject
function USTExtraGameplayStatics:InitAiModelStatGlobal(WorldContextObject) end

---@param ErrorType number
---@param ErrorInfo string
function USTExtraGameplayStatics:AiModelStatReportError(ErrorType, ErrorInfo) end

---@param InWorldContextconst UObject
---@param InExceptionType string
---@param InStackStr string
---@param InDetailStr string
function USTExtraGameplayStatics:AiModelStatReportCommon(InWorldContextconst, InExceptionType, InStackStr, InDetailStr) end

---@return number
function USTExtraGameplayStatics:GetFrameCounter() end

---@param Character ASTExtraBaseCharacter
---@param IsTPPSpringArm boolean
---@param GetForCalcCameraLoc boolean
---@param bIsGetFromDS boolean
---@return FVector
function USTExtraGameplayStatics:GetSpringArmLocation(Character, IsTPPSpringArm, GetForCalcCameraLoc, bIsGetFromDS) end

---@param WorldContextObject UObject
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param ExpectPos FVector
---@param CapsuleLocation FVector
---@param CapsuleRotation FRotator
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param DetectObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreInWallDetection ULuaArrayHelper<EObjectTypeQuery>
---@param Iterations number
---@param bShouldCheckNormal boolean
---@param bNearestPosition boolean
---@param bDrawDebug boolean
---@return boolean
function USTExtraGameplayStatics:FindPositionToHoldPawn(WorldContextObject, IgnoreActors, ExpectPos, CapsuleLocation, CapsuleRotation, CapsuleRadius, CapsuleHalfHeight, DetectObjectTypes, IgnoreInWallDetection, Iterations, bShouldCheckNormal, bNearestPosition, bDrawDebug) end

---@param ExpectPos FVector
---@param PlayerCharacter ACharacter
---@param ExpectScenes ULuaArrayHelper<USceneComponent>
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param ForceCheckOverlapTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreInWallDetection ULuaArrayHelper<EObjectTypeQuery>
---@param SpareOffsetZ number
---@param Iterations number
---@param bSort boolean
---@param bOpenWallDetection boolean
---@param bDrawDebug boolean
---@param bWallDetectionUseLineTrace boolean
---@return boolean
function USTExtraGameplayStatics:CheckSceneCanHoldCharacter(ExpectPos, PlayerCharacter, ExpectScenes, IgnoreActors, ForceCheckOverlapTypes, IgnoreInWallDetection, SpareOffsetZ, Iterations, bSort, bOpenWallDetection, bDrawDebug, bWallDetectionUseLineTrace) end

---@param ExpectPos FVector
---@param PlayerCharacter ACharacter
---@param ExpectTransforms ULuaArrayHelper<FTransform>
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param ForceCheckOverlapTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreInWallDetection ULuaArrayHelper<EObjectTypeQuery>
---@param SpareOffsetZ number
---@param Iterations number
---@param bSort boolean
---@param bOpenWallDetection boolean
---@param bDrawDebug boolean
---@param bWallDetectionUseLineTrace boolean
---@return boolean
function USTExtraGameplayStatics:CheckTransformCanHoldCharacter(ExpectPos, PlayerCharacter, ExpectTransforms, IgnoreActors, ForceCheckOverlapTypes, IgnoreInWallDetection, SpareOffsetZ, Iterations, bSort, bOpenWallDetection, bDrawDebug, bWallDetectionUseLineTrace) end

---@param ExpectPos FVector
---@param World UWorld
---@param BoxExtent FVector
---@param ExpectTransforms FTransform
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param Detection ULuaArrayHelper<EObjectTypeQuery>
---@param SpareOffsetZ number
---@param Iterations number
---@param bDrawDebug boolean
---@return boolean
function USTExtraGameplayStatics:CheckTransformCanHoldBox(ExpectPos, World, BoxExtent, ExpectTransforms, IgnoreActors, Detection, SpareOffsetZ, Iterations, bDrawDebug) end

---@param CheckBox UBoxComponent
---@param PlayerCharacter ASTExtraBaseCharacter
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param FaceToRotation FRotator
---@param ForceCheckOverlapTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreInWallDetection ULuaArrayHelper<EObjectTypeQuery>
---@param bSetRot boolean
---@param bSort boolean
---@param bOpenWallDetection boolean
---@param bDrawDebug boolean
function USTExtraGameplayStatics:DSTeleportCharacterToBox(CheckBox, PlayerCharacter, IgnoreActors, FaceToRotation, ForceCheckOverlapTypes, IgnoreInWallDetection, bSetRot, bSort, bOpenWallDetection, bDrawDebug) end

---@param CheckBox FTeleportCharacterCheckBoxParam
---@param PlayerCharacter ASTExtraBaseCharacter
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param FaceToRotation FRotator
---@param ForceCheckOverlapTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreInWallDetection ULuaArrayHelper<EObjectTypeQuery>
---@param bSetRot boolean
---@param bSort boolean
---@param bOpenWallDetection boolean
---@param bDrawDebug boolean
function USTExtraGameplayStatics:DSTeleportCharacterWithBoxParam(CheckBox, PlayerCharacter, IgnoreActors, FaceToRotation, ForceCheckOverlapTypes, IgnoreInWallDetection, bSetRot, bSort, bOpenWallDetection, bDrawDebug) end

---@param WorldContextObject UObject
---@return number
function USTExtraGameplayStatics:CreateInputHandler(WorldContextObject) end

---@param WorldContextObject UObject
---@param InputHandler number
function USTExtraGameplayStatics:DestroyInputHandler(WorldContextObject, InputHandler) end

---@param WorldContextObject UObject
---@param InputHandler number
---@param AxisName string
---@param Delegate FInputAxisHandlerDynamicSignature
function USTExtraGameplayStatics:BindAxisInputHandler(WorldContextObject, InputHandler, AxisName, Delegate) end

---@param WorldContextObject UObject
---@param InputHandler number
---@param AxisName string
---@param Delegate FInputAxisHandlerDynamicSignature
function USTExtraGameplayStatics:UnbindAxisInputHandler(WorldContextObject, InputHandler, AxisName, Delegate) end

---@param WorldContextObject UObject
---@param InputHandler number
---@param bBlockInput boolean
function USTExtraGameplayStatics:SetInputHandlerBlockInput(WorldContextObject, InputHandler, bBlockInput) end

---@param WorldContextObject UObject
---@param InputHandler number
---@param Priority number
function USTExtraGameplayStatics:SetInputHandlerPriority(WorldContextObject, InputHandler, Priority) end

---@param WorldContextObject UObject
---@param PredictParams FPredictProjectilePathParams
---@param CollisionShapeBP FCollisionShapeBP
---@param Rotation FRotator
---@param PredictResult FPredictProjectilePathResult
---@return boolean
function USTExtraGameplayStatics:PredictProjectilePathWithCollisionShape(WorldContextObject, PredictParams, CollisionShapeBP, Rotation, PredictResult) end

---@param WorldContextObject UObject
---@param TossVelocity FVector
---@param StartLocation FVector
---@param EndLocation FVector
---@param LaunchSpeed number
---@param CollisionShapeBP FCollisionShapeBP
---@param Rotation FRotator
---@param OverrideGravityZ number
---@param TraceOption ESuggestProjVelocityTraceOption
---@param bFavorHighArc boolean
---@param bDrawDebug boolean
---@return boolean
function USTExtraGameplayStatics:BlueprintSuggestVelocityWithCollisionShape(WorldContextObject, TossVelocity, StartLocation, EndLocation, LaunchSpeed, CollisionShapeBP, Rotation, OverrideGravityZ, TraceOption, bFavorHighArc, bDrawDebug) end

---@param Radius number
---@param InitialRotation FRotator
---@param DeltaMove FVector
---@return FRotator
function USTExtraGameplayStatics:CalculateBallRotator(Radius, InitialRotation, DeltaMove) end

---@param WorldContextObject UObject
---@return EGameModeType
function USTExtraGameplayStatics:GetGameModeType(WorldContextObject) end

---@param Component UActorComponent
---@param bPromoteChildren boolean
function USTExtraGameplayStatics:DestroyComponent(Component, bPromoteChildren) end

---@param TextURL string
function USTExtraGameplayStatics:SetClientTravel(TextURL) end

---设置近裁剪面 注意：仅在必要情况下使用，错误的使用方式可能导致物体渲染闪烁等问题！
---@param WorldContextObject UObject
---@param DataName string
---@param bEnable boolean
---@param NearClip number
---@param DataPriority EConsoleCommandPriority
function USTExtraGameplayStatics:SetNearClipPlaneWithPriority(WorldContextObject, DataName, bEnable, NearClip, DataPriority) end

---Creates a CollisionShapeBP
---@param CollisionShapeType ECollisionShape
---@param InExtent FVector
---@return FCollisionShapeBP
function USTExtraGameplayStatics:MakeCollisionShapeBP(CollisionShapeType, InExtent) end

---@param InExtent FVector
---@return FCollisionShapeBP
function USTExtraGameplayStatics:CollisionShape_MakeBox(InExtent) end

---@param Radius number
---@param HalfHeight number
---@return FCollisionShapeBP
function USTExtraGameplayStatics:CollisionShape_MakeCapsule(Radius, HalfHeight) end

---@param Radius number
---@return FCollisionShapeBP
function USTExtraGameplayStatics:CollisionShape_MakeSphere(Radius) end

---@param CollisionShapeBP FCollisionShapeBP
---@param InExtent FVector
function USTExtraGameplayStatics:CollisionShape_SetBox(CollisionShapeBP, InExtent) end

---@param CollisionShapeBP FCollisionShapeBP
---@param Radius number
---@param HalfHeight number
function USTExtraGameplayStatics:CollisionShape_SetCapsule(CollisionShapeBP, Radius, HalfHeight) end

---@param CollisionShapeBP FCollisionShapeBP
---@param Radius number
function USTExtraGameplayStatics:CollisionShape_SetSphere(CollisionShapeBP, Radius) end

---@param WorldContextObject UObject
---@param NewFactor number
function USTExtraGameplayStatics:SetLevelsLoadRadiusFactor(WorldContextObject, NewFactor) end

---@param PlayerCharacter ACharacter
---@param DurabilityPosition EAvatarDamagePosition
---@param RecoveryType EValueType
---@param RecoveryValue number
---@return number
function USTExtraGameplayStatics:RepairDurability(PlayerCharacter, DurabilityPosition, RecoveryType, RecoveryValue) end

---@param LimitObject UObject
---@param Enable boolean
function USTExtraGameplayStatics:RegisterClientLimitation(LimitObject, Enable) end

---@param ActorComponent UActorComponent
function USTExtraGameplayStatics:NotifyCompDoRep(ActorComponent) end

---@param RequestPlayerController ASTExtraPlayerController
function USTExtraGameplayStatics:RequestChangeTeam(RequestPlayerController) end

---@param RequestPlayerController ASTExtraPlayerController
function USTExtraGameplayStatics:CancelChangeTeam(RequestPlayerController) end

---@param AcceptPlayerController ASTExtraPlayerController
---@param RequestPlayerKey number
function USTExtraGameplayStatics:AcceptChangeTeam(AcceptPlayerController, RequestPlayerKey) end

---@param WorldContextObject UObject
---@return number
function USTExtraGameplayStatics:GetGravityZ(WorldContextObject) end

---@param TargetActor AActor
---@param InputAxisName string
---@return number
function USTExtraGameplayStatics:GetInputAxisValue(TargetActor, InputAxisName) end

---@return boolean
function USTExtraGameplayStatics:AllowGameplayDataReport() end

---@return boolean
function USTExtraGameplayStatics:AllowGameplayDataReportHelper() end

---@param Character ASTExtraBaseCharacter
---@param CurHP number
---@param MaxHP number
---@param PrevHP number
function USTExtraGameplayStatics:BroadcastCharacterHPChangeEvent(Character, CurHP, MaxHP, PrevHP) end

---@param Character ASTExtraCharacter
---@param Causer AActor
function USTExtraGameplayStatics:BroadcastHandleHitByBullet(Character, Causer) end

---@param WorldContextObject UObject
---@param TipID number
---@return boolean
function USTExtraGameplayStatics:IsPhotoUIEnabled(WorldContextObject, TipID) end

---@param PrintDirect boolean
function USTExtraGameplayStatics:DumpBoxComponent(PrintDirect) end

---@param SourceObject UObject
---@param InInstigator AController
---@param InCauser AActor
---@param InTargetActor AActor
---@return FGameMagnitudeContext
function USTExtraGameplayStatics:MakeGameMagnitudeContext(SourceObject, InInstigator, InCauser, InTargetActor) end

---@param SourceObject UObject
---@param InTargetActor AActor
---@param DamageEvent FDamageEvent
---@param DamageParams FTakeDamageParams
---@return FGameMagnitudeContext
function USTExtraGameplayStatics:MakeGameMagnitudeContext_DamageParams(SourceObject, InTargetActor, DamageEvent, DamageParams) end

---@param WorldContext UObject
---@param CalculationCls USTExtraGameMagnitudeCalculation
---@param Context FGameMagnitudeContext
---@param ExtraResult FExtraDamageCalculationResult
---@param DefaultValue number
---@return number
function USTExtraGameplayStatics:GetCalculationResultByClass(WorldContext, CalculationCls, Context, ExtraResult, DefaultValue) end

---@param WorldContext UObject
---@param Wrapper FGameMagnitudeWrapper
---@param Context FGameMagnitudeContext
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function USTExtraGameplayStatics:GetCalculationResultByWrapper(WorldContext, Wrapper, Context, ExtraResult) end

---@param Wrapper FGameMagnitudeWrapper
---@param InObject UObject
function USTExtraGameplayStatics:SetMagnitudeWrapperRuntimeObject(Wrapper, InObject) end

---@param Wrapper FGameMagnitudeWrapper
---@param RuntimeObject UObject
---@param TargetPawn AActor
---@return number
function USTExtraGameplayStatics:CalMagnitudeWrapperValue(Wrapper, RuntimeObject, TargetPawn) end

---@param Context FGameMagnitudeContext
---@return EAvatarDamagePosition
function USTExtraGameplayStatics:GetDamagePositionByContext(Context) end

---@param Context FGameMagnitudeContext
---@return FRestrictedDamageTypeData
function USTExtraGameplayStatics:GetDamageTypeDataByContext(Context) end

---@param Context FGameMagnitudeContext
---@return boolean
function USTExtraGameplayStatics:IsHeadDamageByContext(Context) end

---@param WorldContext UObject
function USTExtraGameplayStatics:GetGameGlobalDamageCalculatorClass(WorldContext) end

---@param AttrOwner AActor
---@param InFormula string
---@param OutAttrEvaluator FAttrExpressionEvaluator
---@param bRepAttrModify boolean
---@return boolean
function USTExtraGameplayStatics:EnableAttrExpression(AttrOwner, InFormula, OutAttrEvaluator, bRepAttrModify) end

---@param OutAttrEvaluator FAttrExpressionEvaluator
---@return boolean
function USTExtraGameplayStatics:DisableAttrExpression(OutAttrEvaluator) end

---@param InFormula string
---@param OutAttrEvaluator FAttrExpressionEvaluator
---@return boolean
function USTExtraGameplayStatics:ParseAttrExpression(InFormula, OutAttrEvaluator) end

---@param Object UObject
---@param SoftPtrPropertyName string
---@return string
function USTExtraGameplayStatics:ConvertSoftPtrToString(Object, SoftPtrPropertyName) end

---@param Object UObject
---@param SoftPtrPropertyName string
---@return FSoftObjectPath
function USTExtraGameplayStatics:ConvertSoftPtrToSoftPath(Object, SoftPtrPropertyName) end

---@param TagName string
---@param ErrorIfNotFound boolean
---@return FGameplayTag
function USTExtraGameplayStatics:RequestGameplayTag(TagName, ErrorIfNotFound) end

---@param MeshComponent UMeshComponent
---@param TextureParameter string
---@param Texture UTexture2D
---@param TexName string
function USTExtraGameplayStatics:ReplaceTextureByParameter(MeshComponent, TextureParameter, Texture, TexName) end

---@param WorldContextObject UObject
---@param ID number
---@param Player ASTExtraPlayerController
---@param ExtraActor AActor
function USTExtraGameplayStatics:QuickTlog(WorldContextObject, ID, Player, ExtraActor) end

---@param BoxCompA UBoxComponent
---@param BoxCompB UBoxComponent
---@return boolean
function USTExtraGameplayStatics:IsBoxesIntersect(BoxCompA, BoxCompB) end

---@param BoxCompA UBoxComponent
---@param LocalToWorldA FTransform
---@param BoxCompB UBoxComponent
---@param LocalToWorldB FTransform
---@return boolean
function USTExtraGameplayStatics:IsBoxesIntersectWithTransform(BoxCompA, LocalToWorldA, BoxCompB, LocalToWorldB) end

---@param Character ASTExtraBaseCharacter
---@param Speed number
---@param DashDir FVector
---@param bShouldStopAtEdge boolean
---@param FallingAcceleration number
---@param DetectDistance number
---@param TraceUpper number
---@param TraceDown number
---@return FVector
function USTExtraGameplayStatics:GroundSprintVelocityForLaunch(Character, Speed, DashDir, bShouldStopAtEdge, FallingAcceleration, DetectDistance, TraceUpper, TraceDown) end

---@param ShieldActor AWeaponShiled
---@param PawnOwner APawn
---@param MaxDistSquared number
---@param MaxAngle number
---@return boolean
function USTExtraGameplayStatics:IsShiedActorInRange(ShieldActor, PawnOwner, MaxDistSquared, MaxAngle) end

---@param Object AActor
---@param bStatic boolean
function USTExtraGameplayStatics:RegisterRegionObject(Object, bStatic) end

---@param Object AActor
function USTExtraGameplayStatics:UnregisterRegionObject(Object) end

---@param SphereCenter FVector
---@param SphereRadius number
---@param ConeOrigin FVector
---@param ConeDirection FVector
---@param ConeLength number
---@param ConeAngle number
---@return boolean
function USTExtraGameplayStatics:SphereConeIntersection(SphereCenter, SphereRadius, ConeOrigin, ConeDirection, ConeLength, ConeAngle) end

---@param SphereCenter FVector
---@param SphereRadius number
---@param CylinderAxisStart FVector
---@param CylinderAxisEnd FVector
---@param CylinderRadius number
---@return boolean
function USTExtraGameplayStatics:SphereCylinderIntersection(SphereCenter, SphereRadius, CylinderAxisStart, CylinderAxisEnd, CylinderRadius) end

---@param SphereCenter FVector
---@param SphereRadius number
---@param LineStart FVector
---@param LineEnd FVector
---@return boolean
function USTExtraGameplayStatics:SphereLineIntersection(SphereCenter, SphereRadius, LineStart, LineEnd) end

---@param DestActor AActor
---@param CompToPush UPrimitiveComponent
---@param PawnRadius number
---@param PawnHalfHeight number
---@return FVector
function USTExtraGameplayStatics:GetPushUpLocation(DestActor, CompToPush, PawnRadius, PawnHalfHeight) end

---@param OutNewPoint FVector
---@param CheckActor AActor
---@param CheckPrimitive UPrimitiveComponent
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@param DragOnGroundCheckEndOffsetDown number
---@param DownFindValidPointSweepMobilityType number
---@param FindType EFindPointOnNavmeshType
---@return boolean
function USTExtraGameplayStatics:DragOnGroundFindValidPoint(OutNewPoint, CheckActor, CheckPrimitive, CapsuleRadius, CapsuleHalfHeight, DragOnGroundCheckEndOffsetDown, DownFindValidPointSweepMobilityType, FindType) end

---@param TheCharacter ACharacter
---@param FindType EFindPointOnNavmeshType
---@return FVector
function USTExtraGameplayStatics:FindValidPointOnNavmesh(TheCharacter, FindType) end

---@param StartLocation FVector
---@param LaunchVelocity FVector
---@param SimFrequency number
---@param MaxSimTime number
---@param GravityScale number
---@param SimLowestZ number
---@param bDrawDebugPoint boolean
---@param DebugDuration number
---@return FVector
function USTExtraGameplayStatics:GetProjectilePredictedLandingPoint(StartLocation, LaunchVelocity, SimFrequency, MaxSimTime, GravityScale, SimLowestZ, bDrawDebugPoint, DebugDuration) end

---@param OutLoc FVector
---@param WorldContextObject UObject
---@param SpawnLocation FVector
---@param FindFloorChannel ECollisionChannel
---@param FindFloorDistance number
---@param AdjustFloorHeight number
---@param OverlapChannel ECollisionChannel
---@param OverlapRadius number
---@param RandomRadius number
---@param MaxRandomTimes number
---@return boolean
function USTExtraGameplayStatics:GetSuitableSpawnActorLocation(OutLoc, WorldContextObject, SpawnLocation, FindFloorChannel, FindFloorDistance, AdjustFloorHeight, OverlapChannel, OverlapRadius, RandomRadius, MaxRandomTimes) end

---@param OwnerCharacter ACharacter
---@param TargetCharacter ACharacter
---@param OwnerOffset FVector
---@param ImpulseRadius number
---@param ImpulseStrength number
---@param ImpulseFallOffSetup number
---@param ImpulsePowerZ number
---@param ImpulseSetVelocity boolean
---@return boolean
function USTExtraGameplayStatics:AddImpulseToTarget(OwnerCharacter, TargetCharacter, OwnerOffset, ImpulseRadius, ImpulseStrength, ImpulseFallOffSetup, ImpulsePowerZ, ImpulseSetVelocity) end

---@param ImpulseOrigin FVector
---@param TargetCharacter ACharacter
---@param OwnerOffset FVector
---@param ImpulseRadius number
---@param ImpulseStrength number
---@param ImpulseFallOffSetup number
---@param ImpulsePowerZ number
---@param ImpulseSetVelocity boolean
---@return boolean
function USTExtraGameplayStatics:AddImpulseToTargetFormImpulseOrigin(ImpulseOrigin, TargetCharacter, OwnerOffset, ImpulseRadius, ImpulseStrength, ImpulseFallOffSetup, ImpulsePowerZ, ImpulseSetVelocity) end

---@param SegStartPoint FVector
---@param SegEndPoint FVector
---@param DistanceFromEnd number
---@param bFromStart boolean
---@return FVector
function USTExtraGameplayStatics:GetPointAtDistanceFromSegmentEnd(SegStartPoint, SegEndPoint, DistanceFromEnd, bFromStart) end

---@param Pawn ASTExtraBaseCharacter
---@param CapsuleRadius number
---@param CapsuleHalfHeight number
---@return boolean
function USTExtraGameplayStatics:ChangeCapsuleSize(Pawn, CapsuleRadius, CapsuleHalfHeight) end

---@param PawnObject UObject
---@param bFilterAI boolean
---@param bFilterMonster boolean
---@return boolean
function USTExtraGameplayStatics:IsExpectedPawn(PawnObject, bFilterAI, bFilterMonster) end

---@param ControllerObject UObject
---@param bFilterAI boolean
---@param bFilterReplay boolean
---@param bFilterSpector boolean
---@param bFilterOB boolean
---@return boolean
function USTExtraGameplayStatics:IsExpectedController(ControllerObject, bFilterAI, bFilterReplay, bFilterSpector, bFilterOB) end

---@param Pawn APawn
---@return string
function USTExtraGameplayStatics:GetPlayerInfoStr(Pawn) end

---@param CarryActor AActor
---@param AdaptComponent USceneComponent
---@param AvergeNormalSampleComps ULuaArrayHelper<USceneComponent>
---@param Character ASTExtraBaseCharacter
---@param DeltaSeconds number
---@param RotationLerpSpeed number
---@param InOutCachedNormals ULuaArrayHelper<FVector>
---@param MinAvergeSampleNormalAngle number
---@param MaxAngleWithUpDir number
---@param ExtraAvergeNormalTraceLength number
---@param InOutCurrentAvergeNormalSampleCompsIndex number
---@param bSkipWhenNotRender boolean
---@param bEnableAvergeNormal boolean
---@param bEnableSweep boolean
---@param bOpenDebug boolean
---@param SweepComponent UBoxComponent
---@param SweepCompOriginLocation FVector
---@param MaxRaiseHeight number
---@param LocationLerpSpeed number
function USTExtraGameplayStatics:CarryThingAdaptTerrain(CarryActor, AdaptComponent, AvergeNormalSampleComps, Character, DeltaSeconds, RotationLerpSpeed, InOutCachedNormals, MinAvergeSampleNormalAngle, MaxAngleWithUpDir, ExtraAvergeNormalTraceLength, InOutCurrentAvergeNormalSampleCompsIndex, bSkipWhenNotRender, bEnableAvergeNormal, bEnableSweep, bOpenDebug, SweepComponent, SweepCompOriginLocation, MaxRaiseHeight, LocationLerpSpeed) end

---@param AdaptComponent USceneComponent
---@param Character ASTExtraBaseCharacter
---@param DeltaSeconds number
---@param bSkipWhenNotRender boolean
---@param MaxAngleWithUpDir number
---@param RotationLerpSpeed number
function USTExtraGameplayStatics:CarryThingAdaptTerrainSimple(AdaptComponent, Character, DeltaSeconds, bSkipWhenNotRender, MaxAngleWithUpDir, RotationLerpSpeed) end

---@param Target UObject
---@param AkAudioEvent UAkAudioEvent
function USTExtraGameplayStatics:AddNotifySoundPerObjectAdditionalData(Target, AkAudioEvent) end

---@param Target UObject
---@param AkAudioEvent UAkAudioEvent
function USTExtraGameplayStatics:RemoveNotifySoundPerObjectAdditionalData(Target, AkAudioEvent) end

---@param Target UObject
---@param AkAudioEvent UAkAudioEvent
function USTExtraGameplayStatics:AddPerObjectOverrideData(Target, AkAudioEvent) end

---@param Target UObject
---@param AkAudioEvent UAkAudioEvent
function USTExtraGameplayStatics:RemovePerObjectOverrideData(Target, AkAudioEvent) end

---@param TargetTombBoxs ULuaArrayHelper<APlayerTombBox>
---@param bDescendOrder boolean
function USTExtraGameplayStatics:SortTombBoxsByDeadTime(TargetTombBoxs, bDescendOrder) end

---@param WorldContext UObject
---@return number
function USTExtraGameplayStatics:GetServerWorldTimeFormContext(WorldContext) end

---给指定位置以及周围随机找一个合法点
---@param TheCharacter ACharacter
---@param OutLocation FVector
---@param TarLocation FVector
---@param Radius number
---@param TryFindNum number
---@return boolean
function USTExtraGameplayStatics:FindValidPointOnTarLocationAndNearBy(TheCharacter, OutLocation, TarLocation, Radius, TryFindNum) end

---给指定位置以及周围随机找一个合法点 支持过滤地面物体与是否查找地面
---@param TheCharacter ACharacter
---@param OtherActor AActor
---@param OtherComponent USceneComponent
---@param OutLocation FVector
---@param TarLocation FVector
---@param bFindGround boolean
---@param Radius number
---@param TryFindNum number
---@param bUseSpecifiedPos boolean
---@param bUseBoxSweep boolean
---@param bDrawDebug boolean
---@return boolean
function USTExtraGameplayStatics:FindValidPointOnTarLocationAndNearByWithFilter(TheCharacter, OtherActor, OtherComponent, OutLocation, TarLocation, bFindGround, Radius, TryFindNum, bUseSpecifiedPos, bUseBoxSweep, bDrawDebug) end

---@param DamageEvent FDamageEvent
---@param HitActor AActor
---@param HitInstigator AActor
---@param OutHitInfo FHitResult
---@param OutImpulseDir FVector
---@param DamageType EDamageType
---@return boolean
function USTExtraGameplayStatics:DamageEventGetBestHitInfo(DamageEvent, HitActor, HitInstigator, OutHitInfo, OutImpulseDir, DamageType) end

---根据目标位置，匹配合适的RootMotion旋转曲线和角度
---@param Actor AActor
---@param TargetLocation FVector
---@param MinAngle number
---@param CurveConfigs ULuaArrayHelper<FCurveRotationAdaptConfig>
---@param OutCurveName string
---@param OutRot FRotator
---@return boolean
function USTExtraGameplayStatics:MatchRootMotionRotationCurveAndAngle(Actor, TargetLocation, MinAngle, CurveConfigs, OutCurveName, OutRot) end

---@param InCharacter ACharacter
---@param RepName string
---@param RepCount number
---@param CheckTimes ULuaArrayHelper<number>
---@param RepType number
---@param RepPunishOn number
---@param RepExtStr string
---@return boolean
function USTExtraGameplayStatics:ReportDSSafePolicyFlow(InCharacter, RepName, RepCount, CheckTimes, RepType, RepPunishOn, RepExtStr) end

---@param InPlayerController ASTExtraPlayerController
---@param RepName string
---@param RepCount number
---@param CheckTimes ULuaArrayHelper<number>
---@param RepType number
---@param RepPunishOn number
---@param RepExtStr string
---@return boolean
function USTExtraGameplayStatics:ReportDSSafePolicyFlowByController(InPlayerController, RepName, RepCount, CheckTimes, RepType, RepPunishOn, RepExtStr) end

---@param DamageType UDamageType
---@param DamageCauser AActor
---@return number
function USTExtraGameplayStatics:GetDamageCauserID(DamageType, DamageCauser) end

---@param WorldContextObject UObject
---@param Actor AActor
function USTExtraGameplayStatics:ForceFlushActorRelevantInConnections(WorldContextObject, Actor) end

---@param Victim AActor
---@param Instigator AController
---@param DamageItem FDamageNumberWrapperItem
---@param bIncludeSpecator boolean
function USTExtraGameplayStatics:PushDamageNumber(Victim, Instigator, DamageItem, bIncludeSpecator) end

---@param InCharacter ASTExtraBaseCharacter
---@param MoveLogFlag EShowMoveLogFlag
---@return boolean
function USTExtraGameplayStatics:IsOpenShowMoveLogFlag(InCharacter, MoveLogFlag) end

---处理投掷物Avatar数据
---@param Owner AActor
---@param OwnerController AController
---@param ItemID number
---@param OutAvatarData FProjectileAvatarData
---@return boolean
function USTExtraGameplayStatics:ProcessThrowAvatarData(Owner, OwnerController, ItemID, OutAvatarData) end

---@param Owner AActor
---@param InAvatarData FProjectileAvatarData
---@return boolean
function USTExtraGameplayStatics:SetThrowProjectileAvatarData(Owner, InAvatarData) end

---使用脚步声更新的逻辑对角色脚步声组件进行SetSwitch和SetRTPC，仅客户端调用生效s 注意，该方法性能开销较大，推荐仅当确定无法触发脚步声原本更新逻辑时才调用
---@param InCharacter ASTExtraBaseCharacter
---@param bCheckMaterial boolean
---@param bCheckType boolean
---@param InCheckState EFootStepState
---@param bCheckIdentity boolean
---@param bSetRTPC boolean
function USTExtraGameplayStatics:CheckAndSetSwitchOnCharacterFootStepSoundComp(InCharacter, bCheckMaterial, bCheckType, InCheckState, bCheckIdentity, bSetRTPC) end
