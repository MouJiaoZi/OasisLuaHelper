---@meta

---@class FBoneCollisionBinding
---@field BoneName string
---@field ShapeComponentName string
FBoneCollisionBinding = {}


---@class FCurveDrivenPlaybackState
---@field StartTime number
---@field CurrentTime number
---@field PlayRate number
---@field bIsPlaying boolean
---@field bLoop boolean
---@field ServerWorldTimeAtState number
FCurveDrivenPlaybackState = {}


---@class FRuntimeBinding
---@field BoneName string
---@field CurveIndex number
FRuntimeBinding = {}


---@class UCurveDrivenCollisionComponent: UActorComponent
---@field BoneCollisionBindings ULuaArrayHelper<FBoneCollisionBinding>
---@field bLoopPlayback boolean
---@field MontageStopBlendOutTime number
---@field PlaybackState FCurveDrivenPlaybackState
---@field BoneNameToCurveIndex ULuaMapHelper<string, number>
---@field BoneIndexToCurveIndex ULuaMapHelper<number, number>
---@field RuntimeBindings ULuaArrayHelper<FRuntimeBinding>
local UCurveDrivenCollisionComponent = {}

function UCurveDrivenCollisionComponent:InitializeBindings() end

---@param StartTime number
---@param Rate number
---@return boolean
function UCurveDrivenCollisionComponent:Play(StartTime, Rate) end

---@param InPlaybackState FCurveDrivenPlaybackState
function UCurveDrivenCollisionComponent:MulticastStartSimulation(InPlaybackState) end

function UCurveDrivenCollisionComponent:Stop() end

function UCurveDrivenCollisionComponent:Pause() end

function UCurveDrivenCollisionComponent:Resume() end

function UCurveDrivenCollisionComponent:OnRep_PlaybackState() end
