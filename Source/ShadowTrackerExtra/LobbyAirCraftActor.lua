---@meta

---@class ALobbyAirCraftActor: AActor
---@field CurId number
---@field GenderType ELobbyCharacterAnimType
---@field FakeCharacters ULuaArrayHelper<AActor>
---@field AirCraftParticles ULuaArrayHelper<UParticleSystemComponent>
local ALobbyAirCraftActor = {}

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
---@param AirCraftId number
---@return boolean
function ALobbyAirCraftActor:FillAirCraftPath(softPathList, AirCraftId) end

---@param AirCraftId number
---@param Character ASTExtraLobbyCharacter
function ALobbyAirCraftActor:Init(AirCraftId, Character) end

---@param Location FVector
---@param Rotation FRotator
function ALobbyAirCraftActor:SetAirCraftTrans(Location, Rotation) end

function ALobbyAirCraftActor:SetSkeletalMeshComp() end

function ALobbyAirCraftActor:DestroyFakeMan() end

function ALobbyAirCraftActor:ShowManAndParticle() end

function ALobbyAirCraftActor:HideManAndParticle() end

function ALobbyAirCraftActor:ApplyAnimInstance() end

---@return boolean
function ALobbyAirCraftActor:CheckLod00ShouldApply() end

---@param emoteHandle UBackpackEmoteHandle
function ALobbyAirCraftActor:PlayAirCraftAnim(emoteHandle) end

---@param emoteHandle UBackpackEmoteHandle
function ALobbyAirCraftActor:PlayFakeManAnim(emoteHandle) end

function ALobbyAirCraftActor:SetParticle() end

function ALobbyAirCraftActor:ApplyTranslucentConfig() end

function ALobbyAirCraftActor:ApplyPlayerMaterial() end
