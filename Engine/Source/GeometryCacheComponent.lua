---@meta

---Stores the RenderData for each individual track
---@class FTrackRenderData
FTrackRenderData = {}


---GeometryCacheComponent, encapsulates a GeometryCache asset instance and implements functionality for rendering/and playback of GeometryCaches
---@class UGeometryCacheComponent: UMeshComponent
---@field bRunning boolean
---@field bLooping boolean
---@field StartTimeOffset number
---@field PlaybackSpeed number
---@field NumTracks number
---@field ElapsedTime number
local UGeometryCacheComponent = {}

---Start playback of GeometryCache
function UGeometryCacheComponent:Play() end

---Start playback of GeometryCache from the start
function UGeometryCacheComponent:PlayFromStart() end

---Start playback of GeometryCache in reverse
function UGeometryCacheComponent:PlayReversed() end

---Start playback of GeometryCache from the end and play in reverse
function UGeometryCacheComponent:PlayReversedFromEnd() end

---Pause playback of GeometryCache
function UGeometryCacheComponent:Pause() end

---Stop playback of GeometryCache
function UGeometryCacheComponent:Stop() end

---Get whether this GeometryCache is playing or not.
---@return boolean
function UGeometryCacheComponent:IsPlaying() end

---Get whether this GeometryCache is playing in reverse or not.
---@return boolean
function UGeometryCacheComponent:IsPlayingReversed() end

---Get whether this GeometryCache is looping or not.
---@return boolean
function UGeometryCacheComponent:IsLooping() end

---Set whether this GeometryCache is looping or not.
---@param bNewLooping boolean
function UGeometryCacheComponent:SetLooping(bNewLooping) end

---Get current playback speed for GeometryCache.
---@return number
function UGeometryCacheComponent:GetPlaybackSpeed() end

---Set new playback speed for GeometryCache.
---@param NewPlaybackSpeed number
function UGeometryCacheComponent:SetPlaybackSpeed(NewPlaybackSpeed) end

---Change the Geometry Cache used by this instance.
---@param NewGeomCache UGeometryCache
---@return boolean
function UGeometryCacheComponent:SetGeometryCache(NewGeomCache) end

---Get current start time offset for GeometryCache.
---@return number
function UGeometryCacheComponent:GetStartTimeOffset() end

---Set current start time offset for GeometryCache.
---@param NewStartTimeOffset number
function UGeometryCacheComponent:SetStartTimeOffset(NewStartTimeOffset) end
