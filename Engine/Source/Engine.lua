---@meta

---Enumerates types of fully loaded packages.
---@class EFullyLoadPackageType
---@field FULLYLOAD_Map number @Load the packages when the map in Tag is loaded.
---@field FULLYLOAD_Game_PreLoadClass number @Load the packages before the game class in Tag is loaded. The Game name MUST be specified in the URL (game=Package.GameName). Useful for loading packages needed to load the game type (a DLC game type, for instance).
---@field FULLYLOAD_Game_PostLoadClass number @Load the packages after the game class in Tag is loaded. Will work no matter how game is specified in UWorld::SetGameMode. Useful for modifying shipping gametypes by loading more packages (mutators, for instance).
---@field FULLYLOAD_Always number @Fully load the package as long as the DLC is loaded.
---@field FULLYLOAD_Mutator number @Load the package for a mutator that is active.
---@field FULLYLOAD_MAX number
EFullyLoadPackageType = {}


---Enumerates transition types.
---@class ETransitionType
---@field TT_None number
---@field TT_Paused number
---@field TT_Loading number
---@field TT_Saving number
---@field TT_Connecting number
---@field TT_Precaching number
---@field TT_WaitingToConnect number
---@field TT_MAX number
ETransitionType = {}


---@class EConsoleType
---@field CONSOLE_Any number
---@field CONSOLE_Mobile number
---@field CONSOLE_MAX number
EConsoleType = {}


---Struct to help hold information about packages needing to be fully-loaded for DLC, etc.
---@class FFullyLoadedPackagesInfo
---@field FullyLoadType EFullyLoadPackageType @When to load these packages
---@field Tag string @When this map or gametype is loaded, the packages in the following array will be loaded and added to root, then removed from root when map is unloaded
---@field PackagesToLoad ULuaArrayHelper<string> @The list of packages that will be fully loaded when the above Map is loaded
---@field LoadedObjects ULuaArrayHelper<UObject> @List of objects that were loaded, for faster cleanup
FFullyLoadedPackagesInfo = {}


---level streaming updates that should be applied immediately after committing the map change
---@class FLevelStreamingStatus
---@field PackageName string
---@field bShouldBeLoaded number
---@field bShouldBeVisible number
---@field LODIndex number
FLevelStreamingStatus = {}


---Container for describing various types of netdrivers available to the engine The engine will try to construct a netdriver of a given type and, failing that, the fallback version.
---@class FNetDriverDefinition
---@field DefName string @Unique name of this net driver definition
---@field DriverClassName string @Class name of primary net driver
---@field DriverClassNameFallback string @Class name of the fallback net driver if the main net driver class fails to initialize
FNetDriverDefinition = {}


---Active and named net drivers instantiated from an FNetDriverDefinition The net driver will remain instantiated on this struct until it is destroyed
---@class FNamedNetDriver
FNamedNetDriver = {}


---FWorldContext A context for dealing with UWorlds at the engine level. As the engine brings up and destroys world, we need a way to keep straight what world belongs to what. WorldContexts can be thought of as a track. By default we have 1 track that we load and unload levels on. Adding a second context is adding a second track; another track of progression for worlds to live on. For the GameEngine, there will be one WorldContext until we decide to support multiple simultaneous worlds. For the EditorEngine, there may be one WorldContext for the EditorWorld and one for the PIE World. FWorldContext provides both a way to manage 'the current PIE UWorld*' as well as state that goes along with connecting/travelling to new worlds. FWorldContext should remain internal to the UEngine classes. Outside code should not keep pointers or try to manage FWorldContexts directly. Outside code can steal deal with UWorld*, and pass UWorld*s into Engine level functions. The Engine code can look up the relevant context for a given UWorld*. For convenience, FWorldContext can maintain outside pointers to UWorld*s. For example, PIE can tie UWorld* UEditorEngine::PlayWorld to the PIE world context. If the PIE UWorld changes, the UEditorEngine::PlayWorld pointer will be automatically updated. This is done with AddRef() and SetCurrentWorld().
---@class FWorldContext
---@field LastURL any @URL the last time we traveled
---@field LastRemoteURL any @last server we connected to (for "reconnect" command)
---@field PackagesToFullyLoad ULuaArrayHelper<FFullyLoadedPackagesInfo> @A list of tag/array pairs that is used at LoadMap time to fully load packages that may be needed for the map/game with DLC, but we can't use DynamicLoadObject to load from the packages
---@field LoadedLevelsForPendingMapChange ULuaArrayHelper<ULevel> @Array of already loaded levels. The ordering is arbitrary and depends on what is already loaded and such.
---@field ObjectReferencers ULuaArrayHelper<UObjectReferencer> @Handles to object references; used by the engine to e.g. the prevent objects from being garbage collected.
---@field PendingLevelStreamingStatusUpdates ULuaArrayHelper<FLevelStreamingStatus>
---@field ActiveNetDrivers ULuaArrayHelper<FNamedNetDriver> @A list of active net drivers
FWorldContext = {}


---@class FStatColorMapEntry
---@field In number
---@field Out FColor
FStatColorMapEntry = {}


---@class FStatColorMapping
---@field StatName string
---@field ColorMap ULuaArrayHelper<FStatColorMapEntry>
---@field DisableBlend number
FStatColorMapping = {}


---Info about one note dropped in the map during PIE.
---@class FDropNoteInfo
---@field Location FVector @Location to create Note actor in edited level.
---@field Rotation FRotator @Rotation to create Note actor in edited level.
---@field Comment string @Text to assign to Note actor in edited level.
FDropNoteInfo = {}


---Helper struct for tracking on screen messages.
---@class FScreenMessageString
---@field Key number @The 'key' for this message.
---@field ScreenMessage string @The message to display.
---@field DisplayColor FColor @The color to display the message in.
---@field TimeToDisplay number @The number of frames to display it.
---@field CurrentTimeDisplayed number @The number of frames it has been displayed so far.
---@field TextScale FVector2D @Scale of text
---@field IsUGCMsg boolean @Is ugc message
FScreenMessageString = {}


---@class FGameNameRedirect
---@field OldGameName string
---@field NewGameName string
FGameNameRedirect = {}


---@class FClassRedirect
---@field ObjectName string
---@field OldClassName string
---@field NewClassName string
---@field OldSubobjName string
---@field NewSubobjName string
---@field NewClassClass string
---@field NewClassPackage string
---@field InstanceOnly boolean
FClassRedirect = {}


---@class FStructRedirect
---@field OldStructName string
---@field NewStructName string
FStructRedirect = {}


---@class FPluginRedirect
---@field OldPluginName string
---@field NewPluginName string
FPluginRedirect = {}


---@class FBeginStreamingPauseDelegate : ULuaSingleDelegate
FBeginStreamingPauseDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FViewport) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBeginStreamingPauseDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FViewport
function FBeginStreamingPauseDelegate:Execute(Param1) end


---@class FEndStreamingPauseDelegate : ULuaSingleDelegate
FEndStreamingPauseDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEndStreamingPauseDelegate:Bind(Callback, Obj) end

---执行委托
function FEndStreamingPauseDelegate:Execute() end


---@class FEngineHitchDetectedDelegate : ULuaMulticastDelegate
FEngineHitchDetectedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: EFrameHitchType, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEngineHitchDetectedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 EFrameHitchType
---@param Param2 number
function FEngineHitchDetectedDelegate:Broadcast(Param1, Param2) end


---@class FPostRenderDelegate : ULuaMulticastDelegate
FPostRenderDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FRHICommandListImmediate) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostRenderDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FRHICommandListImmediate
function FPostRenderDelegate:Broadcast(Param1) end


---Abstract base class of all Engine classes, responsible for management of systems critical to editor or game systems. Also defines default classes for certain engine systems.
---@class UEngine: UObject, FExec
---@field TinyFontName FSoftObjectPath
---@field SmallFontName FSoftObjectPath
---@field MediumFontName FSoftObjectPath
---@field LargeFontName FSoftObjectPath
---@field SubtitleFontName FSoftObjectPath
---@field AdditionalFonts ULuaArrayHelper<UFont> @Any additional fonts that script may use without hard-referencing the font.
---@field AdditionalFontNames ULuaArrayHelper<string>
---@field ConsoleClass UConsole @The class to use for the game console.
---@field ConsoleClassName FSoftClassPath
---@field GameViewportClientClass UGameViewportClient @The class to use for the game viewport client.
---@field GameViewportClientClassName FSoftClassPath
---@field LocalPlayerClass ULocalPlayer @The class to use for local players.
---@field LocalPlayerClassName FSoftClassPath
---@field WorldSettingsClass AWorldSettings @The class for WorldSettings *
---@field WorldSettingsClassName FSoftClassPath
---@field NavigationSystemClassName FSoftClassPath
---@field NavigationSystemClass UNavigationSystem @The class for NavigationSystem *
---@field AvoidanceManagerClassName FSoftClassPath @Name of behavior tree manager class
---@field AvoidanceManagerClass UAvoidanceManager @The class for behavior tree manager *
---@field PhysicsCollisionHandlerClass UPhysicsCollisionHandler @PhysicsCollisionHandler class we should use by default *
---@field PhysicsCollisionHandlerClassName FSoftClassPath @Name of PhysicsCollisionHandler class we should use by default.
---@field GameUserSettingsClassName FSoftClassPath
---@field GameUserSettingsClass UGameUserSettings
---@field AIControllerClassName FSoftClassPath @name of Controller class to be used as default AIController class for pawns
---@field LevelScriptActorClass ALevelScriptActor
---@field LevelScriptActorClassName FSoftClassPath
---@field DefaultBlueprintBaseClassName FSoftClassPath @Name of the base class to use for new blueprints, configurable on a per-game basis
---@field GameSingletonClassName FSoftClassPath @Name of a singleton class to create at startup time, configurable per game
---@field AssetManagerClassName FSoftClassPath @Name of a singleton class to spawn as the AssetManager, configurable per game. If empty, it will not spawn one
---@field DefaultTextureName FSoftObjectPath
---@field DefaultDiffuseTextureName FSoftObjectPath
---@field DefaultBSPVertexTextureName FSoftObjectPath
---@field HighFrequencyNoiseTextureName FSoftObjectPath
---@field DefaultBokehTextureName FSoftObjectPath
---@field DefaultBloomKernelTextureName FSoftObjectPath
---@field WireframeMaterialName string
---@field DebugMeshMaterialName FSoftObjectPath
---@field LevelColorationLitMaterialName string
---@field LevelColorationUnlitMaterialName string
---@field LightingTexelDensityName string
---@field ShadedLevelColorationLitMaterialName string
---@field ShadedLevelColorationUnlitMaterialName string
---@field NewShadedLevelColorationUnlitMaterialName string
---@field RemoveSurfaceMaterialName FSoftObjectPath
---@field VertexColorMaterialName string
---@field VertexColorViewModeMaterialName_ColorOnly string
---@field VertexColorViewModeMaterialName_AlphaAsColor string
---@field VertexColorViewModeMaterialName_RedOnly string
---@field VertexColorViewModeMaterialName_GreenOnly string
---@field VertexColorViewModeMaterialName_BlueOnly string
---@field DebugEditorMaterialName FSoftObjectPath @A material used to render debug opaque material. Used in various animation editor viewport features.
---@field InvalidLightmapSettingsMaterialName FSoftObjectPath
---@field PreviewShadowsIndicatorMaterialName FSoftObjectPath
---@field ArrowMaterialName FSoftObjectPath
---@field OutlineMaterialName FSoftObjectPath
---@field OutlineMaskedMaterialName FSoftObjectPath
---@field OutlineMaterialNewOpaqueName FSoftObjectPath
---@field OutlineMaterialNewTranslucentName FSoftObjectPath
---@field OutlineMaskedMaterialNewOpaqueName FSoftObjectPath
---@field OutlineMaskedMaterialNewTranslucentName FSoftObjectPath
---@field HighlightMaterialName FSoftObjectPath
---@field SmaaAreaTexName FSoftObjectPath @SMAA AreaTex name
---@field SmaaSearchTexName FSoftObjectPath @SMAA SearchTex name
---@field DyeingColorMaterialName FSoftObjectPath
---@field LightingOnlyBrightness FLinearColor
---@field ShaderComplexityColors ULuaArrayHelper<FLinearColor> @The colors used to render shader complexity.
---@field QuadComplexityColors ULuaArrayHelper<FLinearColor> @The colors used to render quad complexity.
---@field LightComplexityColors ULuaArrayHelper<FLinearColor> @The colors used to render light complexity.
---@field StationaryLightOverlapColors ULuaArrayHelper<FLinearColor> @The colors used to render stationary light overlap.
---@field LODColorationColors ULuaArrayHelper<FLinearColor> @The colors used to render LOD coloration.
---@field HLODColorationColors ULuaArrayHelper<FLinearColor> @The colors used to render LOD coloration.
---@field StreamingAccuracyColors ULuaArrayHelper<FLinearColor> @The colors used for texture streaming accuracy debug view modes.
---@field DesiredTexelDensity number
---@field TexelDensityTextureSuffixList ULuaArrayHelper<string>
---@field TexelDensityAccuracyColors ULuaArrayHelper<FLinearColor>
---@field MaxPixelShaderAdditiveComplexityCount number @Complexity limits for the various complexity view mode combinations. These limits are used to map instruction counts to ShaderComplexityColors.
---@field MaxES2PixelShaderAdditiveComplexityCount number
---@field MinLightMapDensity number @Minimum lightmap density value for coloring.
---@field IdealLightMapDensity number @Ideal lightmap density value for coloring.
---@field MaxLightMapDensity number @Maximum lightmap density value for coloring.
---@field bRenderLightMapDensityGrayscale number @If true, then render gray scale density.
---@field RenderLightMapDensityGrayscaleScale number @The scale factor when rendering gray scale density.
---@field RenderLightMapDensityColorScale number @The scale factor when rendering color density.
---@field LightMapDensityVertexMappedColor FLinearColor @The color to render vertex mapped objects in for LightMap Density view mode.
---@field LightMapDensitySelectedColor FLinearColor @The color to render selected objects in for LightMap Density view mode.
---@field StatColorMappings ULuaArrayHelper<FStatColorMapping>
---@field DefaultPhysMaterialName FSoftObjectPath
---@field ActiveGameNameRedirects ULuaArrayHelper<FGameNameRedirect>
---@field ActiveClassRedirects ULuaArrayHelper<FClassRedirect>
---@field ActivePluginRedirects ULuaArrayHelper<FPluginRedirect>
---@field ActiveStructRedirects ULuaArrayHelper<FStructRedirect>
---@field PreIntegratedSkinBRDFTextureName FSoftObjectPath
---@field MiniFontTextureName FSoftObjectPath
---@field WeightMapPlaceholderTextureName FSoftObjectPath
---@field LightMapDensityTextureName FSoftObjectPath
---@field DeferredCommands ULuaArrayHelper<string> @Array of deferred command strings/ execs that get executed at the end of the frame
---@field TickCycles number
---@field GameCycles number
---@field ClientCycles number
---@field NearClipPlane number @The distance of the camera's near clipping plane.
---@field bHardwareSurveyEnabled_DEPRECATED number @DEPRECATED - Can a runtime game/application report anonymous hardware survey statistics (such as display resolution and GPU model) back to Epic?
---@field bSubtitlesEnabled number @Flag for completely disabling subtitles for localized sounds.
---@field bSubtitlesForcedOff number @Flag for forcibly disabling subtitles even if you try to turn them back on they will be off
---@field MaximumLoopIterationCount number @Script maximum loop iteration count used as a threshold to warn users about script execution runaway
---@field bCanBlueprintsTickByDefault number
---@field bOptimizeAnimBlueprintMemberVariableAccess number @Controls whether anim blueprint nodes that access member variables of their class directly should use the optimized path that avoids a thunk to the Blueprint VM. This will force all anim blueprints to be recompiled.
---@field bAllowMultiThreadedAnimationUpdate number @Controls whether by default we allow anim blueprint graph updates to be performed on non-game threads. This enables some extra checks in the anim blueprint compiler that will warn when unsafe operations are being attempted. This will force all anim blueprints to be recompiled.
---@field bEnableEditorPSysRealtimeLOD number
---@field bSmoothFrameRate number @Whether to enable framerate smoothing.
---@field bUseFixedFrameRate number @Whether to use a fixed framerate.
---@field FixedFrameRate number @The fixed framerate to use.
---@field SmoothedFrameRateRange FFloatRange @Range of framerates in which smoothing will kick in
---@field bCheckForMultiplePawnsSpawnedInAFrame number @Whether we should check for more than N pawns spawning in a single frame. Basically, spawning pawns and all of their attachments can be slow.  And on consoles it can be really slow.  If this bool is true we will display a
---@field NumPawnsAllowedToBeSpawnedInAFrame number @If bCheckForMultiplePawnsSpawnedInAFrame==true, then we will check to see that no more than this number of pawns are spawned in a frame. *
---@field bShouldGenerateLowQualityLightmaps_DEPRECATED number @Whether or not the LQ lightmaps should be generated during lighting rebuilds.  This has been moved to r.SupportLowQualityLightmaps.
---@field C_WorldBox FColor
---@field C_BrushWire FColor
---@field C_AddWire FColor
---@field C_SubtractWire FColor
---@field C_SemiSolidWire FColor
---@field C_NonSolidWire FColor
---@field C_WireBackground FColor
---@field C_ScaleBoxHi FColor
---@field C_VolumeCollision FColor
---@field C_BSPCollision FColor
---@field C_OrthoBackground FColor
---@field C_Volume FColor
---@field C_BrushShape FColor
---@field StreamingDistanceFactor number @Fudge factor for tweaking the distance based miplevel determination
---@field GameScreenshotSaveDirectory FDirectoryPath @The save directory for newly created screenshots
---@field TransitionType ETransitionType @The current transition type.
---@field TransitionDescription string @The current transition description text.
---@field TransitionGameMode string @The gamemode for the destination map
---@field MeshLODRange number @Level of detail range control for meshes
---@field bAllowMatureLanguage number @whether mature language is allowed *
---@field CameraRotationThreshold number @camera rotation (deg) beyond which occlusion queries are ignored from previous frame (because they are likely not valid)
---@field CameraTranslationThreshold number @camera movement beyond which occlusion queries are ignored from previous frame (because they are likely not valid)
---@field PrimitiveProbablyVisibleTime number @The amount of time a primitive is considered to be probably visible after it was last actually visible.
---@field MaxOcclusionPixelsFraction number @Max screen pixel fraction where retesting when unoccluded is worth the GPU time.
---@field bPauseOnLossOfFocus number @Whether to pause the game if focus is lost.
---@field MaxParticleResize number @The maximum allowed size to a ParticleEmitterInstance::Resize call. If larger, the function will return without resizing.
---@field MaxParticleResizeWarn number @If the resize request is larger than this, spew out a warning to the log
---@field PendingDroppedNotes ULuaArrayHelper<FDropNoteInfo>
---@field PhysicErrorCorrection FRigidBodyErrorCorrection @Error correction data for replicating simulated physics (rigid bodies)
---@field NetClientTicksPerSecond number @Number of times to tick each client per second
---@field DisplayGamma number @Current display gamma setting
---@field MinDesiredFrameRate number @Minimum desired framerate setting
---@field ShaderPrecompileProgress number
---@field DefaultSelectedMaterialColor FLinearColor @Default color of selected objects in the level viewport (additive)
---@field SelectedMaterialColor FLinearColor @Color of selected objects in the level viewport (additive)
---@field SelectionOutlineColor FLinearColor @Color of the selection outline color.  Generally the same as selected material color unless the selection material color is being overridden
---@field SubduedSelectionOutlineColor FLinearColor @Subdued version of the selection outline color. Used for indicating sub-selection of components vs actors
---@field SelectedMaterialColorOverride FLinearColor @An override to use in some cases instead of the selected material color
---@field bIsOverridingSelectedColor boolean @Whether or not selection color is being overridden
---@field bEnableOnScreenDebugMessages number @If true, then disable OnScreenDebug messages. Can be toggled in real-time.
---@field bEnableOnScreenDebugMessagesDisplay number @If true, then disable the display of OnScreenDebug messages (used when running)
---@field bSuppressMapWarnings number @If true, then skip drawing map warnings on screen even in non (UE_BUILD_SHIPPING || UE_BUILD_TEST) builds
---@field bDisableAILogging number @determines whether AI logging should be processed or not
---@field bEnableVisualLogRecordingOnStart number
---@field BlueNoiseScalarTextureName FSoftObjectPath @Path of the tiled blue-noise texture
---@field BlueNoiseVec2TextureName FSoftObjectPath @Path of the tiled blue-noise texture
---@field ScreenSaverInhibitorSemaphore number @Semaphore to control screen saver inhibitor thread access.
---@field bLockReadOnlyLevels number @true if the the user cannot modify levels that are read only.
---@field ParticleEventManagerClassPath string @Particle event manager *
---@field SelectionHighlightIntensity number @Used to alter the intensity level of the selection highlight on selected objects
---@field SelectionMeshSectionHighlightIntensity number @Used to alter the intensity level of the selection highlight on selected mesh sections in mesh editors
---@field BSPSelectionHighlightIntensity number @Used to alter the intensity level of the selection highlight on selected BSP surfaces
---@field HoverHighlightIntensity number @Used to alter the intensity level of the selection highlight on hovered objects
---@field SelectionHighlightIntensityBillboards number @Used to alter the intensity level of the selection highlight on selected billboard objects
---@field NetDriverDefinitions ULuaArrayHelper<FNetDriverDefinition> @A list of named UNetDriver definitions
---@field ServerActors ULuaArrayHelper<string> @A configurable list of actors that are automatically spawned upon server startup (just prior to InitGame)
---@field RuntimeServerActors ULuaArrayHelper<string> @Runtime-modified list of server actors, allowing plugins to use serveractors, without permanently adding them to config files
---@field bStartedLoadMapMovie number @true if the loading movie was started during LoadMap().
---@field NextWorldContextHandle number
local UEngine = {}
