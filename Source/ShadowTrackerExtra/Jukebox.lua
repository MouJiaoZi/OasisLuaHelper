---@meta

---@class EJukeboxStatus
---@field Close number
---@field Open number
---@field BrokenClose number
---@field BrokenOpen number
EJukeboxStatus = {}


---@class EJukeboxOperateType
---@field Play number
---@field Stop number
EJukeboxOperateType = {}


---@class FButtonCfg
---@field MountTargetName string
---@field PlayStylePath string
---@field StopStylePath string
---@field PlayText string
---@field StopText string
---@field AnchorsData FAnchors
---@field MarginData FMargin
---@field Position FVector2D
---@field ZOrder number
FButtonCfg = {}


---@class FAkAudioEventInfo
---@field TotalPlayTime number
FAkAudioEventInfo = {}


---@class FAkAudioCfg
---@field UseRandomChannel boolean
---@field AutoRepeatPlay boolean
---@field AkAudioEventInfoList ULuaArrayHelper<FAkAudioEventInfo>
FAkAudioCfg = {}


---@class FOpAngleCfg
---@field FacePitchMin number
---@field FacePitchMax number
---@field BackAngleMin number
---@field BackAngleMax number
---@field BackPitchMin number
---@field BackPitchMax number
FOpAngleCfg = {}


---@class AJukebox: AUAERegionActor, ITreasureBoxInterface, IDamageableInterface
---@field BoxId number
---@field Status EJukeboxStatus
---@field TotalDamage number
---@field TotalHealth number
---@field BrokenHealthPercentMin number
---@field OperateBoxDistanceMin number
---@field ButtonCfg FButtonCfg
---@field AkAudioCfg FAkAudioCfg
---@field AngleCfg FOpAngleCfg
---@field BoxCoverRollMax number
---@field TickCoverRelativeLocRotRatio number
---@field UseOperateAngleControl boolean
---@field OperateAngleMin number
---@field OperateAngleMax number
---@field TickFrequenceTime number
---@field BoxCoverOriginalRoll number
local AJukebox = {}

function AJukebox:OnClick() end

function AJukebox:OnRep_JukeboxStatus() end

function AJukebox:OnRep_CurrentHealth() end

---@param Idx number
---@param bPlayAnimation boolean
---@param PlayerKey string
function AJukebox:ClientPlayAkAudioEvent(Idx, bPlayAnimation, PlayerKey) end

---@param bPlayAnimation boolean
---@param PlayerKey string
function AJukebox:ClientStopAkAudioEvent(bPlayAnimation, PlayerKey) end

---@param AkAudioEvent UAkAudioEvent
---@param bPlayAnimation boolean
function AJukebox:BPPlayAkAudioEvent(AkAudioEvent, bPlayAnimation) end

---@param bPlayAnimation boolean
function AJukebox:BPStopAkAudioEvent(bPlayAnimation) end

function AJukebox:BPCloseAnimation() end

function AJukebox:BPOpenAnimation() end

function AJukebox:BPSetBrokenCloseMesh() end

function AJukebox:BPSetBrokenOpenMesh() end

---@param Character ASTExtraBaseCharacter
function AJukebox:BPPlayPlayerAnimation(Character) end
