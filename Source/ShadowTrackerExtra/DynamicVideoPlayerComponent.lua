---@meta

---@class EDVPCActivateType
---@field DVPCAT_BY_RANGE number
---@field DVPCAT_MANUAL number
EDVPCActivateType = {}


---@class FDYPCInitData
---@field VidepPath string
---@field Duration number
---@field StaticImageMaterials ULuaArrayHelper<UMaterialInterface>
---@field bUseMaterialIfMediaNotAvailable boolean
FDYPCInitData = {}


---@class FDYPCOriginalMatData
---@field OverrideMaterials ULuaArrayHelper<UMaterialInterface>
FDYPCOriginalMatData = {}


---@class USTExtraMediaPlayer: UMediaPlayer
local USTExtraMediaPlayer = {}


---@class UDynamicVideoPlayerComponent: UActorComponent
---@field StandByMaterials ULuaArrayHelper<UMaterialInterface>
---@field ActivateType EDVPCActivateType
---@field ActivateDistance number
---@field MoviePath string
---@field LoopMedia boolean
---@field AutoPlayback boolean
---@field MeshComponentTag string
---@field MIDTexName string
---@field MovieDuration number
---@field StaticImageMaterials ULuaArrayHelper<UMaterialInterface>
---@field bUseVideoSoundPlayback boolean
---@field CanPlayVideoForOverride boolean
---@field CachedMeshComponents ULuaArrayHelper<UActorComponent>
---@field OriginalOverrideMaterials ULuaMapHelper<UMeshComponent, FDYPCOriginalMatData>
local UDynamicVideoPlayerComponent = {}

---@return boolean
function UDynamicVideoPlayerComponent:CanPlayVideo() end

function UDynamicVideoPlayerComponent:RunPlaybackLogics() end

function UDynamicVideoPlayerComponent:InitPlayback() end

---@param InPath string
---@param IsPathValid boolean
function UDynamicVideoPlayerComponent:OnPathArrived(InPath, IsPathValid) end

function UDynamicVideoPlayerComponent:StopPlayBack() end

function UDynamicVideoPlayerComponent:StartPlayBack() end

function UDynamicVideoPlayerComponent:RequestPath() end

---@param InTime FTimespan
---@return boolean
function UDynamicVideoPlayerComponent:Seek(InTime) end

---@param OpenedUrl string
function UDynamicVideoPlayerComponent:OnMediaHasLoaded(OpenedUrl) end

function UDynamicVideoPlayerComponent:OnEndReached() end

---@param OpenedUrl string
function UDynamicVideoPlayerComponent:OnEventMediaLoaded(OpenedUrl) end

---@param OpenedUrl string
function UDynamicVideoPlayerComponent:OnEventMediaLoadedEnd(OpenedUrl) end

function UDynamicVideoPlayerComponent:OnEventEndReached() end

---@param InData FDYPCInitData
function UDynamicVideoPlayerComponent:InitPlaybackWithParam(InData) end
