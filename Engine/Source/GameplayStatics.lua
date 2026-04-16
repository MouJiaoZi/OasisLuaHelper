---@meta

---@class FPreOrPostLoadGameFromSlot : ULuaSingleDelegate
FPreOrPostLoadGameFromSlot = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: number, Param3: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPreOrPostLoadGameFromSlot:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 number
---@param Param3 number
function FPreOrPostLoadGameFromSlot:Execute(Param1, Param2, Param3) end


---@class UGameplayStatics: UBlueprintFunctionLibrary
local UGameplayStatics = {}

---Find the average location (centroid) of an array of Actors
---@param Actors ULuaArrayHelper<AActor>
---@return FVector
function UGameplayStatics:GetActorArrayAverageLocation(Actors) end

---Bind the bounds of an array of Actors
---@param Actors ULuaArrayHelper<AActor>
---@param bOnlyCollidingComponents boolean
---@param Center FVector
---@param BoxExtent FVector
function UGameplayStatics:GetActorArrayBounds(Actors, bOnlyCollidingComponents, Center, BoxExtent) end

---Find all Actors in the world of the specified class. This is a slow operation, use with caution e.g. do not use every frame.
---@param WorldContextObject UObject
---@param ActorClass AActor
---@param OutActors ULuaArrayHelper<AActor>
function UGameplayStatics:GetAllActorsOfClass(WorldContextObject, ActorClass, OutActors) end

---Find all Actors in the world with the specified interface. This is a slow operation, use with caution e.g. do not use every frame.
---@param WorldContextObject UObject
---@param Interface UInterface
---@param OutActors ULuaArrayHelper<AActor>
function UGameplayStatics:GetAllActorsWithInterface(WorldContextObject, Interface, OutActors) end

---Find all Actors in the world with the specified tag. This is a slow operation, use with caution e.g. do not use every frame.
---@param WorldContextObject UObject
---@param Tag string
---@param OutActors ULuaArrayHelper<AActor>
function UGameplayStatics:GetAllActorsWithTag(WorldContextObject, Tag, OutActors) end

---Removes a player from this game.
---@param Player APlayerController
---@param bDestroyPawn boolean
function UGameplayStatics:RemovePlayer(Player, bDestroyPawn) end

---Gets what controller ID a Player is using
---@param Player APlayerController
---@return number
function UGameplayStatics:GetPlayerControllerID(Player) end

---Sets what controller ID a Player should be using
---@param Player APlayerController
---@param ControllerId number
function UGameplayStatics:SetPlayerControllerID(Player, ControllerId) end

---Stream the level with the LevelName ; Calling again before it finishes has no effect
---@param WorldContextObject UObject
---@param LevelName string
---@param bMakeVisibleAfterLoad boolean
---@param bShouldBlockOnLoad boolean
---@param LatentInfo FLatentActionInfo
function UGameplayStatics:LoadStreamLevel(WorldContextObject, LevelName, bMakeVisibleAfterLoad, bShouldBlockOnLoad, LatentInfo) end

---Unload a streamed in level
---@param WorldContextObject UObject
---@param LevelName string
---@param LatentInfo FLatentActionInfo
function UGameplayStatics:UnloadStreamLevel(WorldContextObject, LevelName, LatentInfo) end

---Flushes level streaming in blocking fashion and returns when all sub-levels are loaded / visible / hidden
---@param WorldContextObject UObject
function UGameplayStatics:FlushLevelStreaming(WorldContextObject) end

---@param WorldContextObject UObject
---@param CharacterLocation FVector
function UGameplayStatics:FlushLevelStreamingBasedOnCharacterLocation(WorldContextObject, CharacterLocation) end

---@param WorldContextObject UObject
function UGameplayStatics:FlushAllStreamingResource(WorldContextObject) end

---Cancels all currently queued streaming packages
function UGameplayStatics:CancelAsyncLoading() end

---Travel to another level
---@param WorldContextObject UObject
---@param LevelName string
---@param bAbsolute boolean
---@param Options string
function UGameplayStatics:OpenLevel(WorldContextObject, LevelName, bAbsolute, Options) end

---@param Name string
---@param VersionNum string
function UGameplayStatics:OpenShaderLibrary(Name, VersionNum) end

---@param Name string
function UGameplayStatics:CloseShaderLibrary(Name) end

---Enable a new ShaderGroup for all opened ShaderCodeLibrary
---@param GroupName string
---@param ShaderPlatform number
function UGameplayStatics:EnableShaderGroup(GroupName, ShaderPlatform) end

---@param ShaderLevelName string
function UGameplayStatics:EnableShaderLevel(ShaderLevelName) end

---@param ShaderPakName string
function UGameplayStatics:EnableShaderPak(ShaderPakName) end

---@param ShaderLevelName string
function UGameplayStatics:DisableShaderLevel(ShaderLevelName) end

---@param ShaderPakName string
function UGameplayStatics:DisableShaderPak(ShaderPakName) end

function UGameplayStatics:RestartShaderPrecompile() end

---OpenShaderCodeLibrary in Saved Folder
---@param Version string
function UGameplayStatics:OpenShaderCodeLibrary(Version) end

---Get the name of the currently-open level.
---@param WorldContextObject UObject
---@param bRemovePrefixString boolean
---@return string
function UGameplayStatics:GetCurrentLevelName(WorldContextObject, bRemovePrefixString) end

---Gets the current global time dilation.
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetGlobalTimeDilation(WorldContextObject) end

---Sets the global time dilation.
---@param WorldContextObject UObject
---@param TimeDilation number
function UGameplayStatics:SetGlobalTimeDilation(WorldContextObject, TimeDilation) end

---Sets the game's paused state
---@param WorldContextObject UObject
---@param bPaused boolean
---@return boolean
function UGameplayStatics:SetGamePaused(WorldContextObject, bPaused) end

---Returns the game's paused state
---@param WorldContextObject UObject
---@return boolean
function UGameplayStatics:IsGamePaused(WorldContextObject) end

---Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.
---@param WorldContextObject UObject
---@param BaseDamage number
---@param Origin FVector
---@param DamageRadius number
---@param DamageTypeClass UDamageType
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param DamageCauser AActor
---@param InstigatedByController AController
---@param bDoFullDamage boolean
---@param DamagePreventionChannel ECollisionChannel
---@param DamageTag number
---@return boolean
function UGameplayStatics:ApplyRadialDamage(WorldContextObject, BaseDamage, Origin, DamageRadius, DamageTypeClass, IgnoreActors, DamageCauser, InstigatedByController, bDoFullDamage, DamagePreventionChannel, DamageTag) end

---Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel.
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
---@param DamagePreventionChannel ECollisionChannel
---@param DamageTag number
---@return boolean
function UGameplayStatics:ApplyRadialDamageWithFalloff(WorldContextObject, BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeClass, IgnoreActors, DamageCauser, InstigatedByController, DamagePreventionChannel, DamageTag) end

---Hurts the specified actor with the specified impact.
---@param DamagedActor AActor
---@param BaseDamage number
---@param HitFromDirection FVector
---@param HitInfo FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@param DamageTag number
---@return number
function UGameplayStatics:ApplyPointDamage(DamagedActor, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, DamageTypeClass, DamageTag) end

---Hurts the specified actor with generic damage.
---@param DamagedActor AActor
---@param BaseDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageTypeClass UDamageType
---@param DamageTag number
---@return number
function UGameplayStatics:ApplyDamage(DamagedActor, BaseDamage, EventInstigator, DamageCauser, DamageTypeClass, DamageTag) end

---Plays an in-world camera shake that affects all nearby local players, with distance-based attenuation. Does not replicate.
---@param WorldContextObject UObject
---@param Shake UCameraShake
---@param Epicenter FVector
---@param InnerRadius number
---@param OuterRadius number
---@param Falloff number
---@param bOrientShakeTowardsEpicenter boolean
function UGameplayStatics:PlayWorldCameraShake(WorldContextObject, Shake, Epicenter, InnerRadius, OuterRadius, Falloff, bOrientShakeTowardsEpicenter) end

---Determines if any audio listeners are within range of the specified location
---@param WorldContextObject UObject
---@param Location FVector
---@param MaximumRange number
---@return boolean
function UGameplayStatics:AreAnyListenersWithinRange(WorldContextObject, Location, MaximumRange) end

---Sets a global pitch modulation scalar that will apply to all non-UI sounds * Fire and Forget. * Not Replicated.
---@param WorldContextObject UObject
---@param PitchModulation number
---@param TimeSec number
function UGameplayStatics:SetGlobalPitchModulation(WorldContextObject, PitchModulation, TimeSec) end

---Sets the global listener focus parameters which will scale focus behavior of sounds based on their focus azimuth settings in their attenuation settings. * Fire and Forget. * Not Replicated.
---@param WorldContextObject UObject
---@param FocusAzimuthScale number
---@param NonFocusAzimuthScale number
---@param FocusDistanceScale number
---@param NonFocusDistanceScale number
---@param FocusVolumeScale number
---@param NonFocusVolumeScale number
---@param FocusPriorityScale number
---@param NonFocusPriorityScale number
function UGameplayStatics:SetGlobalListenerFocusParameters(WorldContextObject, FocusAzimuthScale, NonFocusAzimuthScale, FocusDistanceScale, NonFocusDistanceScale, FocusVolumeScale, NonFocusVolumeScale, FocusPriorityScale, NonFocusPriorityScale) end

---Plays a sound directly with no attenuation, perfect for UI sounds. * Fire and Forget. * Not Replicated.
---@param WorldContextObject UObject
---@param Sound USoundBase
---@param VolumeMultiplier number
---@param PitchMultiplier number
---@param StartTime number
---@param ConcurrencySettings USoundConcurrency
---@param OwningActor AActor
function UGameplayStatics:PlaySound2D(WorldContextObject, Sound, VolumeMultiplier, PitchMultiplier, StartTime, ConcurrencySettings, OwningActor) end

---Plays a sound at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point.
---@param WorldContextObject UObject
---@param Sound USoundBase
---@param Location FVector
---@param Rotation FRotator
---@param VolumeMultiplier number
---@param PitchMultiplier number
---@param StartTime number
---@param AttenuationSettings USoundAttenuation
---@param ConcurrencySettings USoundConcurrency
---@param OwningActor AActor
function UGameplayStatics:PlaySoundAtLocation(WorldContextObject, Sound, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings, ConcurrencySettings, OwningActor) end

---Plays a dialogue directly with no attenuation, perfect for UI. * Fire and Forget. * Not Replicated.
---@param WorldContextObject UObject
---@param Dialogue UDialogueWave
---@param Context FDialogueContext
---@param VolumeMultiplier number
---@param PitchMultiplier number
---@param StartTime number
function UGameplayStatics:PlayDialogue2D(WorldContextObject, Dialogue, Context, VolumeMultiplier, PitchMultiplier, StartTime) end

---Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point.
---@param WorldContextObject UObject
---@param Dialogue UDialogueWave
---@param Context FDialogueContext
---@param Location FVector
---@param Rotation FRotator
---@param VolumeMultiplier number
---@param PitchMultiplier number
---@param StartTime number
---@param AttenuationSettings USoundAttenuation
function UGameplayStatics:PlayDialogueAtLocation(WorldContextObject, Dialogue, Context, Location, Rotation, VolumeMultiplier, PitchMultiplier, StartTime, AttenuationSettings) end

---Will set subtitles to be enabled or disabled.
---@param bEnabled boolean
function UGameplayStatics:SetSubtitlesEnabled(bEnabled) end

---Returns whether or not subtitles are currently enabled.
---@return boolean
function UGameplayStatics:AreSubtitlesEnabled() end

---Set the sound mix of the audio system for special EQing *
---@param WorldContextObject UObject
---@param InSoundMix USoundMix
function UGameplayStatics:SetBaseSoundMix(WorldContextObject, InSoundMix) end

---Overrides the sound class adjuster in the given sound mix. If the sound class does not exist in the input sound mix, the sound class adjustment will be added to the sound mix.
---@param WorldContextObject UObject
---@param InSoundMixModifier USoundMix
---@param InSoundClass USoundClass
---@param Volume number
---@param Pitch number
---@param FadeInTime number
---@param bApplyToChildren boolean
function UGameplayStatics:SetSoundMixClassOverride(WorldContextObject, InSoundMixModifier, InSoundClass, Volume, Pitch, FadeInTime, bApplyToChildren) end

---Clears the override of the sound class adjuster in the given sound mix. If the override did not exist in the sound mix, this will do nothing.
---@param WorldContextObject UObject
---@param InSoundMixModifier USoundMix
---@param InSoundClass USoundClass
---@param FadeOutTime number
function UGameplayStatics:ClearSoundMixClassOverride(WorldContextObject, InSoundMixModifier, InSoundClass, FadeOutTime) end

---Push a sound mix modifier onto the audio system *
---@param WorldContextObject UObject
---@param InSoundMixModifier USoundMix
function UGameplayStatics:PushSoundMixModifier(WorldContextObject, InSoundMixModifier) end

---Pop a sound mix modifier from the audio system *
---@param WorldContextObject UObject
---@param InSoundMixModifier USoundMix
function UGameplayStatics:PopSoundMixModifier(WorldContextObject, InSoundMixModifier) end

---Clear all sound mix modifiers from the audio system *
---@param WorldContextObject UObject
function UGameplayStatics:ClearSoundMixModifiers(WorldContextObject) end

---Activates a Reverb Effect without the need for a volume
---@param WorldContextObject UObject
---@param ReverbEffect UReverbEffect
---@param TagName string
---@param Priority number
---@param Volume number
---@param FadeTime number
function UGameplayStatics:ActivateReverbEffect(WorldContextObject, ReverbEffect, TagName, Priority, Volume, FadeTime) end

---Deactivates a Reverb Effect not applied by a volume
---@param WorldContextObject UObject
---@param TagName string
function UGameplayStatics:DeactivateReverbEffect(WorldContextObject, TagName) end

---Extracts data from a HitResult.
---@param Hit FHitResult
---@param bBlockingHit boolean
---@param bInitialOverlap boolean
---@param Time number
---@param Distance number
---@param Location FVector
---@param ImpactPoint FVector
---@param Normal FVector
---@param ImpactNormal FVector
---@param PhysMat UPhysicalMaterial
---@param HitActor AActor
---@param HitComponent UPrimitiveComponent
---@param HitBoneName string
---@param HitItem number
---@param FaceIndex number
---@param TraceStart FVector
---@param TraceEnd FVector
function UGameplayStatics:BreakHitResult(Hit, bBlockingHit, bInitialOverlap, Time, Distance, Location, ImpactPoint, Normal, ImpactNormal, PhysMat, HitActor, HitComponent, HitBoneName, HitItem, FaceIndex, TraceStart, TraceEnd) end

---Create a HitResult struct
---@param bBlockingHit boolean
---@param bInitialOverlap boolean
---@param Time number
---@param Distance number
---@param Location FVector
---@param ImpactPoint FVector
---@param Normal FVector
---@param ImpactNormal FVector
---@param PhysMat UPhysicalMaterial
---@param HitActor AActor
---@param HitComponent UPrimitiveComponent
---@param HitBoneName string
---@param HitItem number
---@param FaceIndex number
---@param TraceStart FVector
---@param TraceEnd FVector
---@return FHitResult
function UGameplayStatics:MakeHitResult(bBlockingHit, bInitialOverlap, Time, Distance, Location, ImpactPoint, Normal, ImpactNormal, PhysMat, HitActor, HitComponent, HitBoneName, HitItem, FaceIndex, TraceStart, TraceEnd) end

---Returns the EPhysicalSurface type of the given Hit. To edit surface type for your project, use ProjectSettings/Physics/PhysicalSurface section
---@param Hit FHitResult
---@return EPhysicalSurface
function UGameplayStatics:GetSurfaceType(Hit) end

---Try and find the UV for a collision impact. Note this ONLY works if 'Support UV From Hit Results' is enabled in Physics Settings.
---@param Hit FHitResult
---@param UVChannel number
---@param UV FVector2D
---@return boolean
function UGameplayStatics:FindCollisionUV(Hit, UVChannel, UV) end

---Save the contents of the SaveGameObject to a slot.
---@param SaveGameObject USaveGame
---@param SlotName string
---@param UserIndex number
---@return boolean
function UGameplayStatics:SaveGameToSlot(SaveGameObject, SlotName, UserIndex) end

---See if a save game exists with the specified name.
---@param SlotName string
---@param UserIndex number
---@return boolean
function UGameplayStatics:DoesSaveGameExist(SlotName, UserIndex) end

---@param Obj UObject
---@param FuncName string
function UGameplayStatics:BindLoadGameGuardEntranceCheckDelegate(Obj, FuncName) end

---@param Obj UObject
---@param FuncName string
function UGameplayStatics:BindLoadGameGuardExitCheckDelegate(Obj, FuncName) end

---Delete a save game in a particular slot.
---@param SlotName string
---@param UserIndex number
---@return boolean
function UGameplayStatics:DeleteGameInSlot(SlotName, UserIndex) end

---Returns the frame delta time in seconds, adjusted by time dilation.
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetWorldDeltaSeconds(WorldContextObject) end

---Returns time in seconds since world was brought up for play, adjusted by time dilation and IS stopped when game pauses
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetTimeSeconds(WorldContextObject) end

---Returns time in seconds since world was brought up for play, adjusted by time dilation and IS NOT stopped when game pauses
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetUnpausedTimeSeconds(WorldContextObject) end

---Returns time in seconds since world was brought up for play, does NOT stop when game pauses, NOT dilated/clamped
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetRealTimeSeconds(WorldContextObject) end

---Returns time in seconds since world was brought up for play, IS stopped when game pauses, NOT dilated/clamped.
---@param WorldContextObject UObject
---@return number
function UGameplayStatics:GetAudioTimeSeconds(WorldContextObject) end

---@param WorldContextObject UObject
---@param Seconds number
---@param PartialSeconds number
function UGameplayStatics:GetAccurateRealTime(WorldContextObject, Seconds, PartialSeconds) end

---Toggle live DVR streaming.
---@param Enable boolean
function UGameplayStatics:EnableLiveStreaming(Enable) end

---Returns the string name of the current platform, to perform different behavior based on platform. (Platform names include Windows, Mac, IOS, Android, PS4, XboxOne, HTML5, Linux)
---@return string
function UGameplayStatics:GetPlatformName() end

---Calculates an launch velocity for a projectile to hit a specified point.
---@param WorldContextObject UObject
---@param TossVelocity FVector
---@param StartLocation FVector
---@param EndLocation FVector
---@param LaunchSpeed number
---@param OverrideGravityZ number
---@param TraceOption ESuggestProjVelocityTraceOption
---@param CollisionRadius number
---@param bFavorHighArc boolean
---@param bDrawDebug boolean
---@return boolean
function UGameplayStatics:BlueprintSuggestProjectileVelocity(WorldContextObject, TossVelocity, StartLocation, EndLocation, LaunchSpeed, OverrideGravityZ, TraceOption, CollisionRadius, bFavorHighArc, bDrawDebug) end

---Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation. Returns true if it hit something.
---@param WorldContextObject UObject
---@param OutHit FHitResult
---@param OutPathPositions ULuaArrayHelper<FVector>
---@param OutLastTraceDestination FVector
---@param StartPos FVector
---@param LaunchVelocity FVector
---@param bTracePath boolean
---@param ProjectileRadius number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param DrawDebugType EDrawDebugTrace
---@param DrawDebugTime number
---@param SimFrequency number
---@param MaxSimTime number
---@param OverrideGravityZ number
---@return boolean
function UGameplayStatics:Blueprint_PredictProjectilePath_ByObjectType(WorldContextObject, OutHit, OutPathPositions, OutLastTraceDestination, StartPos, LaunchVelocity, bTracePath, ProjectileRadius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, DrawDebugTime, SimFrequency, MaxSimTime, OverrideGravityZ) end

---Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation. Returns true if it hit something (if tracing with collision).
---@param WorldContextObject UObject
---@param OutHit FHitResult
---@param OutPathPositions ULuaArrayHelper<FVector>
---@param OutLastTraceDestination FVector
---@param StartPos FVector
---@param LaunchVelocity FVector
---@param bTracePath boolean
---@param ProjectileRadius number
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param ActorsToIgnore ULuaArrayHelper<AActor>
---@param DrawDebugType EDrawDebugTrace
---@param DrawDebugTime number
---@param SimFrequency number
---@param MaxSimTime number
---@param OverrideGravityZ number
---@return boolean
function UGameplayStatics:Blueprint_PredictProjectilePath_ByTraceChannel(WorldContextObject, OutHit, OutPathPositions, OutLastTraceDestination, StartPos, LaunchVelocity, bTracePath, ProjectileRadius, TraceChannel, bTraceComplex, ActorsToIgnore, DrawDebugType, DrawDebugTime, SimFrequency, MaxSimTime, OverrideGravityZ) end

---Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns true if it hit something.
---@param WorldContextObject UObject
---@param PredictParams FPredictProjectilePathParams
---@param PredictResult FPredictProjectilePathResult
---@return boolean
function UGameplayStatics:Blueprint_PredictProjectilePath_Advanced(WorldContextObject, PredictParams, PredictResult) end

---Returns the launch velocity needed for a projectile at rest at StartPos to land on EndPos. Assumes a medium arc (e.g. 45 deg on level ground). Projectile velocity is variable and unconstrained. Does no tracing.
---@param WorldContextObject UObject
---@param OutLaunchVelocity FVector
---@param StartPos FVector
---@param EndPos FVector
---@param OverrideGravityZ number
---@param ArcParam number
---@return boolean
function UGameplayStatics:SuggestProjectileVelocity_CustomArc(WorldContextObject, OutLaunchVelocity, StartPos, EndPos, OverrideGravityZ, ArcParam) end

---Returns world origin current location.
---@param WorldContextObject UObject
---@return FIntVector
function UGameplayStatics:GetWorldOriginLocation(WorldContextObject) end

---Requests a new location for a world origin.
---@param WorldContextObject UObject
---@param NewLocation FIntVector
function UGameplayStatics:SetWorldOriginLocation(WorldContextObject, NewLocation) end

---Requests a new location for a world origin.
---@param WorldContextObject UObject
---@param X number
---@param Y number
---@param Z number
function UGameplayStatics:SetWorldOriginLocationByLua(WorldContextObject, X, Y, Z) end

---Requests a new location for a world origin.
---@param WorldContextObject UObject
---@param X number
---@param Y number
---@param Z number
function UGameplayStatics:SyncSetNewWorldOrigin(WorldContextObject, X, Y, Z) end

---Returns origin based position for local world location.
---@param WorldContextObject UObject
---@param WorldLocation FVector
---@return FVector
function UGameplayStatics:RebaseLocalOriginOntoZero(WorldContextObject, WorldLocation) end

---Returns local location for origin based position.
---@param WorldContextObject UObject
---@param WorldLocation FVector
---@return FVector
function UGameplayStatics:RebaseZeroOriginOntoLocal(WorldContextObject, WorldLocation) end

---Counts how many grass foliage instances overlap a given sphere.
---@param WorldContextObject UObject
---@param StaticMesh UStaticMesh
---@param CenterPosition FVector
---@param Radius number
---@return number
function UGameplayStatics:GrassOverlappingSphereCount(WorldContextObject, StaticMesh, CenterPosition, Radius) end

---Transforms the given 2D screen space coordinate into a 3D world-space point and direction.
---@param Player APlayerController
---@param ScreenPosition FVector2D
---@param WorldPosition FVector
---@param WorldDirection FVector
---@return boolean
function UGameplayStatics:DeprojectScreenToWorld(Player, ScreenPosition, WorldPosition, WorldDirection) end

---Transforms the given 3D world-space point into a its 2D screen space coordinate.
---@param Player APlayerController
---@param WorldPosition FVector
---@param ScreenPosition FVector2D
---@param bPlayerViewportRelative boolean
---@return boolean
function UGameplayStatics:ProjectWorldToScreen(Player, WorldPosition, ScreenPosition, bPlayerViewportRelative) end

---Mark a particular net property of an UObject as dirty (for networking), thus it will be take into consideration in next replication
---@param Object UObject
---@param PropertyName string
---@param LifetimeCondition ELifetimeCondition
---@return boolean
function UGameplayStatics:MarkNetPropertyDirtyFromName(Object, PropertyName, LifetimeCondition) end

---Break up a key=value pair into its key and value.
---@param Pair string
---@param Key string
---@param Value string
function UGameplayStatics:GetKeyValue(Pair, Key, Value) end

---Find an option in the options string and return it.
---@param Options string
---@param Key string
---@return string
function UGameplayStatics:ParseOption(Options, Key) end

---Returns whether a key exists in an options string.
---@param Options string
---@param InKey string
---@return boolean
function UGameplayStatics:HasOption(Options, InKey) end

---Find an option in the options string and return it as an integer.
---@param Options string
---@param Key string
---@param DefaultValue number
---@return number
function UGameplayStatics:GetIntOption(Options, Key, DefaultValue) end

---Checks the commandline to see if the desired option was specified on the commandline (e.g. -demobuild)
---@param OptionToCheck string
---@return boolean
function UGameplayStatics:HasLaunchOption(OptionToCheck) end

---@return number
function UGameplayStatics:GetDeviceQualityLevel() end

---@return number
function UGameplayStatics:GetDeviceTCQualityGrade() end

---@return number
function UGameplayStatics:GetDeviceMemoryLevel() end

---@return number
function UGameplayStatics:GetDeviceMemorySize() end

---@param bEnabled boolean
function UGameplayStatics:EnableObjArrayAutoResize(bEnabled) end

---@param Name string
---@param Value number
---@return boolean
function UGameplayStatics:SetConsoleIntVariable(Name, Value) end

---@param ActorComponent UActorComponent
function UGameplayStatics:UpdateComponentToWorld(ActorComponent) end

---@param WorldContextObject UObject
---@return boolean
function UGameplayStatics:IsLongScreen(WorldContextObject) end

---@return boolean
function UGameplayStatics:IsWinReleaseBuild() end

---record ds launch state, collect for ds shutdown error report, add by czcheng
---@param state number
function UGameplayStatics:RecordDSLaunchState(state) end

---record ds shutdown error info, collect for ds shutdown error report, add by czcheng
---@param ErrorCode number
---@param ErrMsg string
function UGameplayStatics:RecordDSShutdownErrorInfo(ErrorCode, ErrMsg) end
