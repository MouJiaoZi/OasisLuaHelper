---@meta

---@class UMobaFakeDieComponent: UActorComponent
---@field RespawnTransform FTransform
---@field RespawnHP number
---@field ChangeViewTargetLocOffset FVector
---@field ChangeViewTargetRotation FRotator
local UMobaFakeDieComponent = {}

function UMobaFakeDieComponent:RespawnCharacter() end

function UMobaFakeDieComponent:BindDelegates() end

function UMobaFakeDieComponent:UnbindDelegates() end

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function UMobaFakeDieComponent:OnPlayerHealthStatusChanged(PrevStatus, NewStatus) end

function UMobaFakeDieComponent:CharacterFakeBeginPlay() end

function UMobaFakeDieComponent:CharacterFakeEndPlay() end

---@param Character ASTExtraBaseCharacter
function UMobaFakeDieComponent:ResetCharacterMovementComponent(Character) end

---@param InRespawnTransform FTransform
function UMobaFakeDieComponent:SetCharacterRespawnTransform(InRespawnTransform) end

---@param Character ASTExtraBaseCharacter
function UMobaFakeDieComponent:SetCharacterToStartSpot(Character) end

---@param InRespawnHP number
function UMobaFakeDieComponent:SetCharacterRespawnHP(InRespawnHP) end

---@param InCharacter ASTExtraBaseCharacter
function UMobaFakeDieComponent:CharacterRecoverHP(InCharacter) end

---@param InPlayerKey number
function UMobaFakeDieComponent:GoSpectating(InPlayerKey) end

function UMobaFakeDieComponent:QuitSpectating() end
