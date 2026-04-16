---@meta

---@class EBeam2Method
---@field PEB2M_Distance number @Distance
---@field PEB2M_Target number @Target
---@field PEB2M_Branch number @Branch
---@field PEB2M_MAX number
EBeam2Method = {}


---@class EBeamTaperMethod
---@field PEBTM_None number @None
---@field PEBTM_Full number @Full
---@field PEBTM_Partial number @Partial
---@field PEBTM_MAX number
EBeamTaperMethod = {}


---@class FBeamTargetData
---@field TargetName string @Name of the target.
---@field TargetPercentage number @Percentage chance the target will be selected (100 = always).
FBeamTargetData = {}


---@class UParticleModuleTypeDataBeam2: UParticleModuleTypeDataBase
---@field BeamMethod EBeam2Method @The method with which to form the beam(s). Must be one of the following: PEB2M_Distance	- Use the distance property to emit a beam along the X-axis of the emitter. PEB2M_Target	- Emit a beam from the source to the supplied target. PEB2M_Branch	- Currently unimplemented.
---@field TextureTile number @The number of times to tile the texture along each beam. Overridden by TextureTilingDistance if it is > 0.0. 1st UV set only. 2nd UV set does not Tile.
---@field TextureTileDistance number @The distance per texture tile. 1st UV set only. 2nd UV set does not Tile.
---@field Sheets number @The number of sheets to render
---@field MaxBeamCount number @The number of live beams
---@field Speed number @The speed at which the beam should move from source to target when firing up. '0' indicates instantaneous
---@field InterpolationPoints number @Indicates whether the beam should be interpolated. <= 0 --> no >  0 --> yes (and is equal to the number of interpolation steps that should be taken.
---@field bAlwaysOn number @If true, there will ALWAYS be a beam...
---@field UpVectorStepSize number @The approach to use for determining the Up vector(s) for the beam. 0 indicates that the Up FVector should be calculated at EVERY point in the beam. 1 indicates a single Up FVector should be determined at the start of the beam and used at every point. N indicates an Up FVector should be calculated every N points of the beam and interpolated between them. [NOTE: This mode is currently unsupported.]
---@field BranchParentName string @The name of the emitter to branch from (if mode is PEB2M_Branch) MUST BE IN THE SAME PARTICLE SYSTEM!
---@field Distance any @The distance along the X-axis to stretch the beam Distance is only used if BeamMethod is PEB2M_Distance
---@field TaperMethod EBeamTaperMethod @Tapering mode - one of the following: PEBTM_None		- No tapering is applied PEBTM_Full		- Taper the beam relative to source-->target, regardless of current beam length PEBTM_Partial	- Taper the beam relative to source-->location, 0=source,1=endpoint
---@field TaperFactor any @Tapering factor, 0 = source of beam, 1 = target
---@field TaperScale any @Tapering scaling This is intended to be either a constant, uniform or a ParticleParam. If a curve is used, 0/1 mapping of source/target... which could be integrated into the taper factor itself, and therefore makes no sense.
---@field RenderGeometry number
---@field RenderDirectLine number
---@field RenderLines number
---@field RenderTessellation number
local UParticleModuleTypeDataBeam2 = {}
