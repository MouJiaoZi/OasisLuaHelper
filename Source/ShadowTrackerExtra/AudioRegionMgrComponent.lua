---@meta

---全局音频区域管理器
---@class AudioRegionProcessorType
---@field AudioRegion number
---@field AudioRegionEnemy number
---@field RiverAmbient number
---@field MagmaAmbient number
AudioRegionProcessorType = {}


---@class UAudioRegionMgrComponent: UActorComponent
local UAudioRegionMgrComponent = {}

---@param InAkComponent UAkComponent
function UAudioRegionMgrComponent:SetAkComponent(InAkComponent) end

---@param RegionId number
function UAudioRegionMgrComponent:OnEnterAudioRegion(RegionId) end

---@param RegionId number
function UAudioRegionMgrComponent:OnExitAudioRegion(RegionId) end
