---@meta

---@class EPlatformBoardActorType
---@field EPGAT_Normal number @默认
---@field EPGAT_DynamicNormal number @动态
---@field EPGAT_DynamicStartTween number @动态带动画
EPlatformBoardActorType = {}


---@class APlatformBoardBaseActor: AUAERegionActor
---@field BoardType EPlatformBoardActorType
---@field CurBoardType number
---@field SoundEvent_Moving UAkAudioEvent
---@field SoundEvent_Moving_Stop UAkAudioEvent
local APlatformBoardBaseActor = {}

function APlatformBoardBaseActor:MulticastClientShowBoard() end

function APlatformBoardBaseActor:OnRep_InitBoardType() end
