---@meta

---@class EElecMusicState
---@field StartState number
---@field StartToPlay number
---@field Playing number
---@field DropItemAdvanced number
---@field DropItemOrdinary number
---@field GameEnd number
EElecMusicState = {}


---@class FFlyNoteActorList
---@field NoteList ULuaArrayHelper<AActor>
FFlyNoteActorList = {}


---@class FMoveNoteActor
FMoveNoteActor = {}


---@class AElectricMusic: AActivityBaseActor
---@field SplineList ULuaArrayHelper<USplineComponent>
---@field NoteActorClass ULuaArrayHelper<UClass>
---@field NoteMesh ULuaArrayHelper<USkeletalMesh>
---@field FreeActor ULuaMapHelper<AActor, FFlyNoteActorList>
---@field MoveActorList ULuaArrayHelper<FMoveNoteActor>
---@field ElecGameState EElecMusicState
---@field MoveDuration number
---@field SeatList ULuaArrayHelper<AElectricMusicSeat>
---@field PS_Brokens ULuaArrayHelper<UParticleSystem>
---@field IconID number
---@field MusicClientCompClass UMusicClientCompBase
---@field AreaRadius number
---@field SeatHitCount ULuaMapHelper<number, number>
local AElectricMusic = {}

---@return FVector
function AElectricMusic:GetCenterLocation() end

---@param PS UParticleSystem
---@param MoveNoteActor FMoveNoteActor
function AElectricMusic:PlayBrokenEffect(PS, MoveNoteActor) end

function AElectricMusic:OnGameStarted() end

---@param PC AUAEPlayerController
---@param SeatIndex number
function AElectricMusic:OnJoinPlayer(PC, SeatIndex) end

function AElectricMusic:OnRep_ElecGameState() end

function AElectricMusic:OnRep_MoveDuration() end


---@class AElectricMusicSeat: AUAERegionActor
---@field SeatIndex number
---@field Occupatied boolean
---@field LeaveSeatDistance number
local AElectricMusicSeat = {}

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function AElectricMusicSeat:HandlePlayerTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param OP AUAEPlayerController
function AElectricMusicSeat:SetOccupiedPlayer(OP) end

---@param location FVector
function AElectricMusicSeat:SetSeaterLocation(location) end

function AElectricMusicSeat:OnRep_Occupatied() end


---@class UMusicServerElec: UMusicServerCompBase
---@field MapSeatComp ULuaMapHelper<number, UMusicClientElec>
local UMusicServerElec = {}


---@class UMusicClientElec: UMusicClientCompBase
---@field SeatIndex number
---@field simulateSkillID number
---@field AnimMontage ULuaArrayHelper<UAnimMontage>
---@field HitEventName ULuaArrayHelper<string>
---@field BrokenDelayTime number
---@field DiffMontageSpan number
---@field ViewRot FRotator
---@field TargetArmLength number
---@field TargetSocketOffset FVector
local UMusicClientElec = {}

function UMusicClientElec:OnRep_MusicType() end

function UMusicClientElec:OnLoadFinished() end

function UMusicClientElec:OnRep_MusicGamePlayInfo() end

function UMusicClientElec:ServerReconnectRecover() end

function UMusicClientElec:OnRep_SeatIndex() end

function UMusicClientElec:OnRep_MusicCenter() end

function UMusicClientElec:ServerLeaveSeat() end

---@param HitSuccIndex number
function UMusicClientElec:ServerBeatNote(HitSuccIndex) end


---@class UMusicCompUtils: UBlueprintFunctionLibrary
local UMusicCompUtils = {}

---@param Pawn ASTExtraBaseCharacter
---@return number
function UMusicCompUtils:GetMusicClientSeatIndex(Pawn) end
