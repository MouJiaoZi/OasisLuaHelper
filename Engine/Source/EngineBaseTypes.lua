---@meta

---@class EInputEvent
---@field IE_Pressed number
---@field IE_Released number
---@field IE_Repeat number
---@field IE_DoubleClick number
---@field IE_Axis number
---@field IE_MAX number
EInputEvent = {}


---@class EMouseCaptureMode
---@field NoCapture number @Do not capture the mouse at all
---@field CapturePermanently number @Capture the mouse permanently when the viewport is clicked, and consume the initial mouse down that caused the capture so it isn't processed by player input
---@field CapturePermanently_IncludingInitialMouseDown number @Capture the mouse permanently when the viewport is clicked, and allow player input to process the mouse down that caused the capture
---@field CaptureDuringMouseDown number @Capture the mouse during a mouse down, releases on mouse up
---@field CaptureDuringRightMouseDown number @Capture only when the right mouse button is down, not any of the other mouse buttons
EMouseCaptureMode = {}


---@class EMouseLockMode
---@field DoNotLock number @Do not lock the mouse cursor to the viewport
---@field LockOnCapture number @Only lock the mouse cursor to the viewport when the mouse is captured
---@field LockAlways number @Always lock the mouse cursor to the viewport
EMouseLockMode = {}


---Determines which ticking group a tick function belongs to.
---@class ETickingGroup
---@field TG_PrePhysics number @Any item that needs to be executed before physics simulation starts.
---@field TG_StartPhysics number @Special tick group that starts physics simulation.
---@field TG_DuringPhysics number @Any item that can be run in parallel with our physics simulation work.
---@field TG_EndPhysics number @Special tick group that ends physics simulation.
---@field TG_PostPhysics number @Any item that needs rigid body and cloth simulation to be complete before being executed.
---@field TG_PostUpdateWork number @Any item that needs the update work to be done before being ticked.
---@field TG_LastDemotable number @Catchall for anything demoted to the end.
---@field TG_NewlySpawned number @Special tick group that is not actually a tick group. After every tick group this is repeatedly re-run until there are no more newly spawned items to run.
---@field TG_MAX number
ETickingGroup = {}


---Types of network failures broadcast from the engine
---@class ENetworkFailure
---@field NetDriverAlreadyExists number @A relevant net driver has already been created for this service
---@field NetDriverCreateFailure number @The net driver creation failed
---@field NetDriverListenFailure number @The net driver failed its Listen() call
---@field ConnectionLost number @A connection to the net driver has been lost
---@field ConnectionTimeout number @A connection to the net driver has timed out
---@field FailureReceived number @The net driver received an NMT_Failure message
---@field OutdatedClient number @The client needs to upgrade their game
---@field OutdatedServer number @The server needs to upgrade their game
---@field PendingConnectionFailure number @There was an error during connection to the game
---@field NetGuidMismatch number @NetGuid mismatch
---@field NetChecksumMismatch number @Network checksum mismatch
---@field MDNetDriverAlreadyExists number @A relevant md net driver has already been created for this service
---@field MDNetDriverCreateFailure number @The md net driver creation failed
---@field MDNetDriverListenFailure number @The md net driver failed its Listen() call
ENetworkFailure = {}


---@class ENetworkLagState
---@field NotLagging number @The net driver is operating normally or it is not possible to tell if it is lagging
---@field Lagging number @The net driver is in the process of timing out all of the client connections
ENetworkLagState = {}


---Types of server travel failures broadcast by the engine
---@class ETravelFailure
---@field NoLevel number @No level found in the loaded package
---@field LoadMapFailure number @LoadMap failed on travel (about to Browse to default map)
---@field InvalidURL number @Invalid URL specified
---@field PackageMissing number @A package is missing on the client
---@field PackageVersion number @A package version mismatch has occurred between client and server
---@field NoDownload number @A package is missing and the client is unable to download the file
---@field TravelFailure number @General travel failure
---@field CheatCommands number @Cheat commands have been used disabling travel
---@field PendingNetGameCreateFailure number @Failed to create the pending net game for travel
---@field CloudSaveFailure number @Failed to save before travel
---@field ServerTravelFailure number @There was an error during a server travel to a new map
---@field ClientTravelFailure number @There was an error during a client travel to a new map
ETravelFailure = {}


---@class ETravelType
---@field TRAVEL_Absolute number @Absolute URL.
---@field TRAVEL_Partial number @Partial (carry name, reset server).
---@field TRAVEL_Relative number @Relative URL.
---@field TRAVEL_MAX number
ETravelType = {}


---Types of demo play failures broadcast from the engine
---@class EDemoPlayFailure
---@field Generic number @A Generic failure.
---@field DemoNotFound number @Demo was not found.
---@field Corrupt number @Demo is corrupt.
---@field InvalidVersion number @Invalid version.
EDemoPlayFailure = {}


---Define view modes to get specific show flag settings (some on, some off and some are not altered) Don't change the order, the ID is serialized with the editor
---@class EViewModeIndex
---@field VMI_BrushWireframe number @Wireframe w/ brushes.
---@field VMI_Wireframe number @Wireframe w/ BSP.
---@field VMI_Unlit number @Unlit.
---@field VMI_Lit number @Lit.
---@field VMI_Lit_DetailLighting number
---@field VMI_LightingOnly number @Lit wo/ materials.
---@field VMI_LightComplexity number @Colored according to light count.
---@field VMI_ShaderComplexity number @Colored according to shader complexity.
---@field VMI_LightmapDensity number @Colored according to world-space LightMap texture density.
---@field VMI_LitLightmapDensity number @Colored according to light count - showing lightmap texel density on texture mapped objects.
---@field VMI_ReflectionOverride number
---@field VMI_VisualizeBuffer number
---@field VMI_StationaryLightOverlap number @Colored according to stationary light overlap.
---@field VMI_CollisionPawn number
---@field VMI_CollisionVisibility number
---@field VMI_LODColoration number @Colored according to the current LOD index.
---@field VMI_QuadOverdraw number @Colored according to the quad coverage.
---@field VMI_PrimitiveDistanceAccuracy number @Visualize the accuracy of the primitive distance computed for texture streaming.
---@field VMI_MeshUVDensityAccuracy number @Visualize the accuracy of the mesh UV densities computed for texture streaming.
---@field VMI_ShaderComplexityWithQuadOverdraw number @Colored according to shader complexity, including quad overdraw.
---@field VMI_HLODColoration number @Colored according to the current HLOD index.
---@field VMI_GroupLODColoration number @Group item for LOD and HLOD coloration
---@field VMI_MaterialTextureScaleAccuracy number @Visualize the accuracy of the material texture scales used for texture streaming.
---@field VMI_RequiredTextureResolution number @Compare the required texture resolution to the actual resolution.
---@field VMI_TexelDensity number @Texel Density
---@field VMI_FSOCOccluderVisualization number @FSOC Occluder Visualization
---@field VMI_Max number
---@field VMI_Unknown number
EViewModeIndex = {}


---This is small structure to hold prerequisite tick functions
---@class FTickPrerequisite
FTickPrerequisite = {}


---Abstract Base class for all tick functions.
---@class FTickFunction
---@field TickGroup ETickingGroup @Defines the minimum tick group for this tick function. These groups determine the relative order of when objects tick during a frame update. Given prerequisites, the tick may be delayed.
---@field EndTickGroup ETickingGroup @Defines the tick group that this tick function must finish in. These groups determine the relative order of when objects tick during a frame update.
---@field bTickEvenWhenPaused number @Bool indicating that this function should execute even if the game is paused. Pause ticks are very limited in capabilities. *
---@field bCanEverTick number @If false, this tick function will never be registered and will never tick. Only settable in defaults.
---@field bStartWithTickEnabled number @If true, this tick function will start enabled, but can be disabled later on.
---@field bAllowTickOnDedicatedServer number @If we allow this tick to run on a dedicated server
---@field bPureLogicTick number @Pure logic tick group that is actually tick in game thread,  don't need to queue tick and task graph system
---@field bAllowDynamicSchedule number @Whether dynamic scheduling is allowed for this tick function
---@field TickInterval number @The frequency in seconds at which this tick function will be executed.  If less than or equal to 0 then it will tick every frame
---@field TickIntervalStartTime number @TickInterval Start Time Offset*
FTickFunction = {}


---Tick function that calls AActor::TickActor
---@class FActorTickFunction
FActorTickFunction = {}


---Tick function that calls UActorComponent::ConditionalTick
---@class FActorComponentTickFunction
FActorComponentTickFunction = {}


---Tick function that calls UPrimitiveComponent::PostPhysicsTick
---@class FPrimitiveComponentPostPhysicsTickFunction
FPrimitiveComponentPostPhysicsTickFunction = {}


---@class FURL
---@field Protocol string
---@field Host string
---@field Port number
---@field Map string
---@field RedirectURL string
---@field Op ULuaArrayHelper<string>
---@field Portal string
---@field Valid number
FURL = {}


---Settings to allow designers to override the automatic expose
---@class FExposureSettings
---@field LogOffset number
---@field bFixed boolean
FExposureSettings = {}


---@class UEngineBaseTypes: UObject
local UEngineBaseTypes = {}
