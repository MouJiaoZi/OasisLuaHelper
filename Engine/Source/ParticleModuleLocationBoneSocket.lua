---@meta

---@class ELocationBoneSocketSource
---@field BONESOCKETSOURCE_Bones number
---@field BONESOCKETSOURCE_Sockets number
---@field BONESOCKETSOURCE_MAX number
ELocationBoneSocketSource = {}


---@class ELocationBoneSocketSelectionMethod
---@field BONESOCKETSEL_Sequential number
---@field BONESOCKETSEL_Random number
---@field BONESOCKETSEL_MAX number
ELocationBoneSocketSelectionMethod = {}


---@class FLocationBoneSocketInfo
---@field BoneSocketName string @The name of the bone/socket on the skeletal mesh
---@field Offset FVector @The offset from the bone/socket to use
FLocationBoneSocketInfo = {}


---@class UParticleModuleLocationBoneSocket: UParticleModuleLocationBase
---@field SourceType ELocationBoneSocketSource @Whether the module uses Bones or Sockets for locations. BONESOCKETSOURCE_Bones		- Use Bones as the source locations. BONESOCKETSOURCE_Sockets	- Use Sockets as the source locations.
---@field UniversalOffset FVector @An offset to apply to each bone/socket
---@field SourceLocations ULuaArrayHelper<FLocationBoneSocketInfo> @The name(s) of the bone/socket(s) to position at. If this is empty, the module will attempt to spawn from all bones or sockets.
---@field SelectionMethod ELocationBoneSocketSelectionMethod @The method by which to select the bone/socket to spawn at. SEL_Sequential			- loop through the bone/socket array in order SEL_Random				- randomly select a bone/socket from the array
---@field bUpdatePositionEachFrame number @If true, update the particle locations each frame with that of the bone/socket
---@field bOrientMeshEmitters number @If true, rotate mesh emitter meshes to orient w/ the socket
---@field bInheritBoneVelocity number @If true, particles inherit the associated bone velocity when spawned
---@field InheritVelocityScale number @A scale on how much of the bone's velocity a particle will inherit.
---@field SkelMeshActorParamName string @The parameter name of the skeletal mesh actor that supplies the SkelMeshComponent for in-game.
---@field NumPreSelectedIndices number @When we have no source locations and we need to track bone velocities due to bInheritBoneVelocity, we pre select a set of bones to use each frame. This property determines how big the list is. Too low and the randomness of selection may suffer, too high and memory will be wasted.
local UParticleModuleLocationBoneSocket = {}
