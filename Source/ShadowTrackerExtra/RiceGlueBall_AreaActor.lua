---@meta

---@class ERiceGlueBallAreaState
---@field ERGBAS_None number
---@field ERGBAS_CoolingDown number
---@field ERGBAS_Waiting number
---@field ERGBAS_Battle number
ERiceGlueBallAreaState = {}


---@class FRiceGlueBallPlayerData
FRiceGlueBallPlayerData = {}


---@class FRiceGlueBallPlayerScoreData
---@field Score number
FRiceGlueBallPlayerScoreData = {}


---@class FPlayerBlockCacheData
---@field LastBlockTime number
FPlayerBlockCacheData = {}


---@class ARiceGlueBall_AreaActor: AActor
---@field OverlappedCharacterDataList ULuaArrayHelper<FRiceGlueBallPlayerData>
---@field CharacterSocreDataList ULuaArrayHelper<FRiceGlueBallPlayerScoreData>
---@field LastBattleWinners ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CapsuleLocationOffset FVector
---@field CapsuleExtern FVector
---@field AvatarItemIDConfigList ULuaArrayHelper<number>
---@field WinnerItemIDList ULuaArrayHelper<number>
---@field AllAttrModifyItems ULuaArrayHelper<FAttrModifyItem>
---@field CapsuleCollisionRadiusModify number
---@field CollisionOverlapTime number
---@field OverlapLocationZOffsetMin number
---@field CurrentState ERiceGlueBallAreaState
---@field CoolDownTime number
---@field BattleDuration number
---@field BlockCacheOverTime number
---@field TreasureBoxOffset FVector
---@field AreaSoundEvent_Wait UAkAudioEvent
---@field AreaSoundEvent_Wait_Stop UAkAudioEvent
---@field AreaSoundEvent_Battle UAkAudioEvent
---@field AreaSoundEvent_Battle_Stop UAkAudioEvent
---@field AreaSoundEvent_Block UAkAudioEvent
---@field BlockParticle UParticleSystem
---@field SwitchAvatarParticle UParticleSystem
---@field ScoreParticle UParticleSystem
---@field AreaSoundEvent_Score UAkAudioEvent
---@field ScoreParticleOffset FVector
---@field WinnerParticle UParticleSystem
---@field WinnerParticleOffset FVector
---@field PlayerBlockCacheMap ULuaMapHelper<ASTExtraBaseCharacter, FPlayerBlockCacheData>
local ARiceGlueBall_AreaActor = {}

function ARiceGlueBall_AreaActor:OnAsyncLoadingFinished() end

---@param OtherActor AActor
function ARiceGlueBall_AreaActor:OnTriggerEnter(OtherActor) end

---@param SelfRef ASTExtraBaseCharacter
function ARiceGlueBall_AreaActor:HandlePlayerPickUp(SelfRef) end

---@param SelfRef AActor
function ARiceGlueBall_AreaActor:HandlePlayerEquipWeapon(SelfRef) end

function ARiceGlueBall_AreaActor:OnRep_CurrentState() end

function ARiceGlueBall_AreaActor:OnRep_PlayerScore() end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ARiceGlueBall_AreaActor:HandlePlayerTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param BlockedCharacter ASTExtraCharacter
---@param HitResult FHitResult
function ARiceGlueBall_AreaActor:HandlePlayerMoveBlock(BlockedCharacter, HitResult) end

---@param SelfRef ASTExtraBaseCharacter
---@param EnteredState EPawnState
function ARiceGlueBall_AreaActor:HandlePlayerEnterState(SelfRef, EnteredState) end

---@param Params FGameModeStateChangedParams
function ARiceGlueBall_AreaActor:HandleGameModeStateChanged(Params) end

function ARiceGlueBall_AreaActor:OnRep_Winner() end
