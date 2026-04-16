---@meta

---@class FWeakCharacter
---@field Ptr ASTExtraBaseCharacter
FWeakCharacter = {}


---@class FWeakParticleSystemComp
---@field Ptr UParticleSystemComponent
FWeakParticleSystemComp = {}


---@class FWeakActor
---@field Ptr AActor
FWeakActor = {}


---@class UAvatarBehaviorFeature_ParachuteFollowingParticle: UAvatarBehaviorFeature
---@field ParachuteFollowingParticleParam FParachuteFollowingParticleParam
---@field ParticleSystemComponents ULuaArrayHelper<FWeakParticleSystemComp>
---@field AvatarParticleSystemComponents ULuaMapHelper<string, FWeakParticleSystemComp>
---@field bActiveParticle boolean
---@field bIsConnectParticleManager boolean
---@field AkPlayID number
---@field MaxConnectionNum number
---@field OldSortedConnectionTeam ULuaArrayHelper<FWeakCharacter>
---@field AttachedActors ULuaArrayHelper<FWeakActor>
---@field bNeedCheckTeamLoading boolean
---@field TickCounterTotal number
---@field TickCounter number
---@field MaxRetryCount number
---@field bOverride_HandleParachuteStateChangeParticles boolean
---@field bOverride_RefreshParachuteFollowingTeamParticles boolean
---@field bOverride_DoActiveAvatarParticles boolean
---@field bOverride_DoActiveParticles boolean
---@field bOverride_DestroyDynamicParticles boolean
---@field bOverride_DeactiveAllParticles boolean
---@field bOverride_CreateDynamicAvatarParticle boolean
---@field bOverride_CreateDynamicParticle boolean
---@field bOverride_CreateAkAudioEvent boolean
---@field bOverride_GetAllVaildConnection boolean
---@field bOverride_CheckTeamLoaded boolean
---@field bOverride_DestroyDynamicAvatarParticle boolean
---@field bOverride_DestroyAvatarDynamicParticles boolean
---@field bOverride_DoUpdateAvatarParticles boolean
---@field bOverride_DestroyAkAudioEvents boolean
---@field bOverride_DestroyAkAudioEvent boolean
---@field bOverride_SetParachuteFollowingParticleActorParam boolean
---@field bOverride_FindAttachedActorsWithTag boolean
---@field bOverride_CleanUpParachuteParticleConnectionActor boolean
---@field bOverride_IsPawnStateForParachuteFollowingParticle boolean
---@field bOverride_HasSpecialWingClothes boolean
---@field bOverride_UpdateParticleVisibility boolean
---@field bOverride_GetMeshCompForParachuteFollowingParticle boolean
local UAvatarBehaviorFeature_ParachuteFollowingParticle = {}

function UAvatarBehaviorFeature_ParachuteFollowingParticle:ReleaseBehaviorFeature() end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_ParachuteFollowingParticle:OnParachuteStateChanged(PreState, CurState) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_ParachuteFollowingParticle:HandleParachuteStateChangeParticles(PreState, CurState) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_HandleParachuteStateChangeParticles(PreState, CurState) end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:RefreshParachuteFollowingTeamParticles() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_RefreshParachuteFollowingTeamParticles() end

---@param SortedArray ULuaArrayHelper<ASTExtraBaseCharacter>
---@param bReset boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:DoUpdateAvatarParticles(SortedArray, bReset) end

---@param SortedArray ULuaArrayHelper<ASTExtraBaseCharacter>
---@param bReset boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DoUpdateAvatarParticles(SortedArray, bReset) end

---@param NewFlyTeam ULuaArrayHelper<ASTExtraBaseCharacter>
---@param bReset boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:DoActiveParticles(NewFlyTeam, bReset) end

---@param NewFlyTeam ULuaArrayHelper<ASTExtraBaseCharacter>
---@param bReset boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DoActiveParticles(NewFlyTeam, bReset) end

---@param Char ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:DestroyDynamicAvatarParticle(Char) end

---@param Char ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DestroyDynamicAvatarParticle(Char) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:DestroyAkAudioEvent(Character) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DestroyAkAudioEvent(Character) end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:DestroyAkAudioEvents() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DestroyAkAudioEvents() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:DeactiveAllParticles() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DeactiveAllParticles() end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:Static_DestroyParachuteFollowingParticles(Character) end

---@param AvatarComp UCharacterAvatarComponent
---@param visible boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:Static_ChangeParticleinSpecialWingClothes(AvatarComp, visible) end

---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:HasSpecialWingClothes(AvatarComp) end

---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_HasSpecialWingClothes(AvatarComp) end

---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:ValidateSpecialWingClothes(AvatarComp) end

---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:IsPawnStateForParachuteFollowingParticle(AvatarComp) end

---@param AvatarComp UCharacterAvatarComponent
---@return boolean
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_IsPawnStateForParachuteFollowingParticle(AvatarComp) end

---@param SelfCharacter ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:CreateDynamicAvatarParticle(SelfCharacter) end

---@param SelfCharacter ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_CreateDynamicAvatarParticle(SelfCharacter) end

---@param StartCharacter ASTExtraBaseCharacter
---@param EndCharacter ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:CreateDynamicParticle(StartCharacter, EndCharacter) end

---@param StartCharacter ASTExtraBaseCharacter
---@param EndCharacter ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_CreateDynamicParticle(StartCharacter, EndCharacter) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:CreateAkAudioEvent(Character) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_CreateAkAudioEvent(Character) end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:DestroyAvatarDynamicParticles() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DestroyAvatarDynamicParticles() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:DestroyDynamicParticles() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_DestroyDynamicParticles() end

---@param ParentComponent USceneComponent
---@param TagToFind string
function UAvatarBehaviorFeature_ParachuteFollowingParticle:FindAttachedActorsWithTag(ParentComponent, TagToFind) end

---@param ParentComponent USceneComponent
---@param TagToFind string
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_FindAttachedActorsWithTag(ParentComponent, TagToFind) end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:CleanUpParachuteParticleConnectionActor() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_CleanUpParachuteParticleConnectionActor() end

---@param InputTeam ULuaArrayHelper<ASTExtraBaseCharacter>
function UAvatarBehaviorFeature_ParachuteFollowingParticle:CheckTeamLoaded(InputTeam) end

---@param InputTeam ULuaArrayHelper<ASTExtraBaseCharacter>
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_CheckTeamLoaded(InputTeam) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:GetAllVaildConnection(Character) end

---@param Character ASTExtraBaseCharacter
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_GetAllVaildConnection(Character) end

---@param bCharVisible boolean
---@param PSC UParticleSystemComponent
---@param Character ASTExtraBaseCharacter
---@param bIsStartLocation boolean
---@param ConnectParticleActors ULuaArrayHelper<AActor>
function UAvatarBehaviorFeature_ParachuteFollowingParticle:SetParachuteFollowingParticleActorParam(bCharVisible, PSC, Character, bIsStartLocation, ConnectParticleActors) end

---@param bCharVisible boolean
---@param PSC UParticleSystemComponent
---@param Character ASTExtraBaseCharacter
---@param bIsStartLocation boolean
---@param ConnectParticleActors ULuaArrayHelper<AActor>
function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_SetParachuteFollowingParticleActorParam(bCharVisible, PSC, Character, bIsStartLocation, ConnectParticleActors) end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:UpdateParticleVisibility() end

function UAvatarBehaviorFeature_ParachuteFollowingParticle:BP_UpdateParticleVisibility() end
