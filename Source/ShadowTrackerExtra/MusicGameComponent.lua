---@meta

---@class EMusicGameType
---@field NoneMusic number
---@field DrumMusic number
---@field ElectricMusic number
EMusicGameType = {}


---@class FMusicNote
FMusicNote = {}


---@class FMusicConfig
---@field SongIDList ULuaArrayHelper<number>
---@field uisock FChildPendingActiveObject
FMusicConfig = {}


---@class FMusicDelayEffect
FMusicDelayEffect = {}


---@class FDelayAddGas
FDelayAddGas = {}


---@class FMusicGamePlayInfo
---@field WorldTimeStarted number
---@field SongPlayIndex number
FMusicGamePlayInfo = {}


---@class UMusicServerCompBase: UActorComponent
---@field SeatList ULuaArrayHelper<UMusicClientCompBase>
---@field StartServerTime number
local UMusicServerCompBase = {}


---@class UMusicServerDrum: UMusicServerCompBase
local UMusicServerDrum = {}


---@class UMusicClientCompBase: UActorComponent
---@field MusicType EMusicGameType
---@field MusicGamePlayInfo FMusicGamePlayInfo
---@field musicConfig ULuaMapHelper<EMusicGameType, FMusicConfig>
---@field BaseKind number
---@field HitBiasTime number
---@field ShowBiasTime number
---@field AnimBiasTime number
---@field BeatEffectDelayTime number
---@field AwardTime number
---@field SimulateComponent boolean
---@field SongBankName string
---@field SongStartEventName string
local UMusicClientCompBase = {}

---@param PC ASTExtraPlayerController
function UMusicClientCompBase:ReconnectRecoverSkill(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function UMusicClientCompBase:IsInMusicGame(PC) end

function UMusicClientCompBase:ClientStopPlayMusic() end

function UMusicClientCompBase:ServerStartMusic() end

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function UMusicClientCompBase:OnPlayerHealthStatusChangedDelegate(PrevStatus, NewStatus) end

function UMusicClientCompBase:OnRep_MusicGamePlayInfo() end

---@return boolean
function UMusicClientCompBase:SwitchGodPlay() end

---@param trackBit number
---@param byPlayer boolean
function UMusicClientCompBase:BeatNote(trackBit, byPlayer) end


---@class UMusicClientDrum: UMusicClientCompBase
---@field isMusicPlayer boolean
---@field VehicleHasPlayer boolean
---@field isOnVehicle boolean
---@field PS_HitTips UParticleSystem
---@field PS_Beats ULuaArrayHelper<UParticleSystem>
---@field DrumSocket ULuaArrayHelper<string>
---@field DrumBeatSocket ULuaArrayHelper<string>
---@field simulateSkillID number
---@field AnimMontage ULuaArrayHelper<UAnimMontage>
---@field HitEventName ULuaArrayHelper<string>
---@field DelaySendGasTime number
local UMusicClientDrum = {}

---@return boolean
function UMusicClientDrum:CanStartMusic() end

---@param toMusicPlayer boolean
function UMusicClientDrum:ServerChangeSeat(toMusicPlayer) end

---@param HitSuccIndex number
function UMusicClientDrum:ServerHitSucc(HitSuccIndex) end

function UMusicClientDrum:ServerStartDBoost() end

function UMusicClientDrum:ClientTriggerSkillEvent() end

---@param isDrum boolean
function UMusicClientDrum:SwitchSeat(isDrum) end

function UMusicClientDrum:OnRep_MusicType() end

function UMusicClientDrum:OnRep_isMusicPlayer() end

function UMusicClientDrum:OnRep_VehicleHasPlayer() end

function UMusicClientDrum:OnRep_isOnVehicle() end

function UMusicClientDrum:OnRep_MusicGamePlayInfo() end

---@param PS UParticleSystem
---@param socketName string
function UMusicClientDrum:PlayDrumEffect(PS, socketName) end

function UMusicClientDrum:RefreshBoostGasValue() end

function UMusicClientDrum:SetDrumEffectGuidePositionBP() end

function UMusicClientDrum:OnLoadFinished() end

---@param _perfectTime number
---@param _bestTime number
---@param _goodTime number
---@param _missTime number
function UMusicClientDrum:ServerOnFinishMusicGame(_perfectTime, _bestTime, _goodTime, _missTime) end


---@class UMusicMatchComp: UActorComponent
---@field uisock FChildPendingActiveObject
local UMusicMatchComp = {}

function UMusicMatchComp:UpdateMatch() end
