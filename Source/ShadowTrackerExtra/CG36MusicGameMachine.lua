---@meta

---@class ECG36MusicGameHitLevel
---@field Miss number
---@field Good number
---@field Great number
---@field Perfect number
ECG36MusicGameHitLevel = {}


---@class FCG36MusicGameNoteInfo
---@field NoteIndex number
---@field TrackIndex number
---@field ExpectedHitTime number
---@field StartTime number
---@field EndTime number
---@field Extra string
FCG36MusicGameNoteInfo = {}


---@class FCG36MusicGameSortedNoteList
---@field SortedNoteList ULuaArrayHelper<FCG36MusicGameNoteInfo>
FCG36MusicGameSortedNoteList = {}


---@class FCG36MusicGameMoveNoteData
---@field NoteIndex number
---@field TrackIndex number
---@field ExpectedHitTime number
---@field StartTime number
---@field EndTime number
---@field Extra string
FCG36MusicGameMoveNoteData = {}


---@class FCG36MusicGameNetData
---@field CurrentScore number
---@field Extra string
FCG36MusicGameNetData = {}


---@class ACG36MusicGameNoteActor: AActor, IObjectPoolInterface
---@field bCanHitEffectsActive boolean
---@field NoteBeginColor FLinearColor
---@field NoteEndColor FLinearColor
---@field NotePerfectHitColor FLinearColor
---@field NoteColorParameterName string
---@field DefaultObjectPoolCleanupTime number
---@field DefaultObjectPoolSize number
local ACG36MusicGameNoteActor = {}

---@param bNewActive boolean
function ACG36MusicGameNoteActor:SetCanHitEffectsActive(bNewActive) end

---@return boolean
function ACG36MusicGameNoteActor:IsCanHitEffectsActive() end

function ACG36MusicGameNoteActor:OnActorSpawned() end

function ACG36MusicGameNoteActor:OnActorDestroyed() end

---@param HitLevel number
function ACG36MusicGameNoteActor:PlayHitEffects(HitLevel) end

function ACG36MusicGameNoteActor:PlayMissEffects() end

---@param MoveProgress number
---@param bInCanHitRange boolean
---@param bInPerfectHitRange boolean
function ACG36MusicGameNoteActor:UpdateNoteEffects(MoveProgress, bInCanHitRange, bInPerfectHitRange) end


---@class ACG36MusicGameBulletActor: AActor, IObjectPoolInterface
---@field BulletSpeed number
---@field ConsiderHitDistance number
---@field TargetOffset FVector
---@field bIsMoving boolean
---@field LastTransform FTransform
---@field DefaultObjectPoolCleanupTime number
---@field DefaultObjectPoolSize number
local ACG36MusicGameBulletActor = {}

---@param DeltaSeconds number
function ACG36MusicGameBulletActor:TickMovement(DeltaSeconds) end

---@param DeltaSeconds number
function ACG36MusicGameBulletActor:UpdateEffects(DeltaSeconds) end

---@return FVector
function ACG36MusicGameBulletActor:GetTargetShootLocation() end

---@param NoteActor AActor
function ACG36MusicGameBulletActor:OnHitTargetActor(NoteActor) end

function ACG36MusicGameBulletActor:OnMovementEnd() end


---@class UCG36MusicGameSkill: UPersistEffectWithState
---@field bSimulateLerpCharacterRotation boolean
---@field CharacterRotationLerpTime number
---@field SendCharacterRotationInterval number
---@field CharacterRotationLerpThreshold FRotator
---@field PlayerIndex number
---@field ServerCharacterRotation FRotator
---@field HitNoteIndexes ULuaSetHelper<number>
---@field SendCharacterRotationTimer FTimerHandle
---@field LastServerCharacterRotation FRotator
---@field ReceiveServerCharacterRotationTime number
local UCG36MusicGameSkill = {}

---@param DeltaTime number
function UCG36MusicGameSkill:SimulateLerpCharacterRotation(DeltaTime) end

function UCG36MusicGameSkill:SetSendCharacterRotationTimer() end

---@param Timestamp number
---@param NoteIndex number
---@param ImpactPoint FVector
---@param HitLevel number
---@param Score number
---@param Extra string
function UCG36MusicGameSkill:ServerShootTarget(Timestamp, NoteIndex, ImpactPoint, HitLevel, Score, Extra) end

---@param Timestamp number
---@param NoteIndex number
---@param ImpactPoint FVector
---@param HitLevel number
---@param Score number
---@param Extra string
function UCG36MusicGameSkill:ServerShootTargetReliable(Timestamp, NoteIndex, ImpactPoint, HitLevel, Score, Extra) end

---@param Timestamp number
---@param NoteIndex number
---@param ImpactPoint FVector
---@param HitLevel number
---@param Extra string
function UCG36MusicGameSkill:MulticastShootTarget(Timestamp, NoteIndex, ImpactPoint, HitLevel, Extra) end

---@param ClientRotation FRotator
function UCG36MusicGameSkill:ServerUpdateCharacterRotation(ClientRotation) end

---@param Timestamp number
---@param NoteIndex number
---@param ImpactPoint FVector
---@param HitLevel number
---@param Extra string
function UCG36MusicGameSkill:ReceiveMulticastShootTarget(Timestamp, NoteIndex, ImpactPoint, HitLevel, Extra) end

function UCG36MusicGameSkill:OnRep_MusicGameMachine() end

function UCG36MusicGameSkill:OnRep_MusicGamePosition() end

function UCG36MusicGameSkill:OnRep_PlayerIndex() end

---@param LastRotation FRotator
function UCG36MusicGameSkill:OnRep_ServerCharacterRotation(LastRotation) end


---@class ACG36MusicGameMachine: AActivityBaseActor
---@field PerformanceStateList ULuaArrayHelper<string>
---@field MusicSeekToleranceMS number
---@field NoteActorClass ACG36MusicGameNoteActor
---@field ExpectedHitDuration number
---@field MoveDuration number
---@field GoodHitTolerance FVector2D
---@field GreatHitTolerance FVector2D
---@field PerfectHitTolerance FVector2D
---@field GoodHitScoreScale number
---@field GreatHitScoreScale number
---@field CheckMusicProgressInterval number
---@field UpdateMusicVolumeInterval number
---@field OtherMaxMusicVolume number
---@field MusicVolumeSlideWindowSize number
---@field UpdateMusicVolumeLeastNotes number
---@field GameNetData FCG36MusicGameNetData
---@field MusicVolumes ULuaArrayHelper<number>
---@field MusicEventID number
---@field ActiveTrackCount number
---@field NoteInfoMap ULuaMapHelper<number, FCG36MusicGameNoteInfo>
---@field TrackIndexSortedNoteMap ULuaMapHelper<number, FCG36MusicGameSortedNoteList>
---@field MoveNoteActorMap ULuaMapHelper<number, FCG36MusicGameMoveNoteData>
---@field SplineList ULuaArrayHelper<USplineComponent>
---@field TrackNoteCountMap ULuaMapHelper<number, number>
---@field PlayerScoreMap ULuaMapHelper<number, number>
---@field NoteIndexHitLevelMap ULuaMapHelper<number, number>
---@field UpdateMusicVolumesTimer FTimerHandle
local ACG36MusicGameMachine = {}

---@param DeltaSeconds number
function ACG36MusicGameMachine:TickMusicProgress(DeltaSeconds) end

---@param DeltaSeconds number
function ACG36MusicGameMachine:TickNoteMove(DeltaSeconds) end

---@return boolean
function ACG36MusicGameMachine:IsInPerformanceState() end

---@return number
function ACG36MusicGameMachine:GetCurrentPlayedTime() end

---@param NoteIndex number
---@param TrackIndex number
---@param ExpectedHitTime number
---@param StartTime number
---@param EndTime number
---@param Extra string
function ACG36MusicGameMachine:AddNoteActor(NoteIndex, TrackIndex, ExpectedHitTime, StartTime, EndTime, Extra) end

---@param NoteActor ACG36MusicGameNoteActor
function ACG36MusicGameMachine:FreeNoteActor(NoteActor) end

function ACG36MusicGameMachine:ClearNoteActors() end

---@param NoteIndex number
---@param NoteActor ACG36MusicGameNoteActor
function ACG36MusicGameMachine:OnNoteActorSpawned(NoteIndex, NoteActor) end

---@param NoteIndex number
---@param NoteActor ACG36MusicGameNoteActor
function ACG36MusicGameMachine:OnNoteActorDestroyed(NoteIndex, NoteActor) end

---@param NoteActor ACG36MusicGameNoteActor
---@return number
function ACG36MusicGameMachine:GetMoveNoteActorIndex(NoteActor) end

---@param NoteIndex number
---@param PlayedTime number
---@return boolean
function ACG36MusicGameMachine:IsNoteInCanHitRange(NoteIndex, PlayedTime) end

---@param NoteIndex number
---@param PlayedTime number
---@return boolean
function ACG36MusicGameMachine:IsNoteInGreatHitRange(NoteIndex, PlayedTime) end

---@param NoteIndex number
---@param PlayedTime number
---@return boolean
function ACG36MusicGameMachine:IsNoteInPerfectHitRange(NoteIndex, PlayedTime) end

---@param PlayerIndex number
---@param Score number
function ACG36MusicGameMachine:AddPlayerScore(PlayerIndex, Score) end

function ACG36MusicGameMachine:InitTrackIndexSortedNoteMap() end

function ACG36MusicGameMachine:UpdateMusicVolumes() end

function ACG36MusicGameMachine:SetUpdateMusicVolumesTimer() end

function ACG36MusicGameMachine:ClearUpdateMusicVolumesTimer() end

function ACG36MusicGameMachine:OnRep_GameNetData() end

function ACG36MusicGameMachine:OnRep_MusicVolumes() end
