---@meta

---Tick function that calls URelativeMoveMgrComponent::PostPhysicsTickComponent
---@class FRelativeMoveMgrPostPhysicsTickFunction
FRelativeMoveMgrPostPhysicsTickFunction = {}


---@class URelativeMoveMgrComponent: UActorComponent, IObjectPoolInterface
---@field PostPhysicsTickFunction any @Post-physics tick function for this character
---@field MovementBaseBoxes ULuaArrayHelper<FBox>
---@field bKeepBaseEnable boolean
---@field TestRelativeMoveIndex number
---@field bIsOpenTickDependency boolean
local URelativeMoveMgrComponent = {}

---@param bFromPersistentPool boolean
function URelativeMoveMgrComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function URelativeMoveMgrComponent:OnRecycled(bToPersistentPool) end

---@param Character ACharacter
function URelativeMoveMgrComponent:RegisterCharacter(Character) end

---@param Character ACharacter
function URelativeMoveMgrComponent:UnregisterCharacter(Character) end

---@param RelativeMoveActor UObject
function URelativeMoveMgrComponent:RegisterRelativeMoveActor(RelativeMoveActor) end

---@param RelativeMoveActor UObject
function URelativeMoveMgrComponent:UnregisterRelativeMoveActor(RelativeMoveActor) end

function URelativeMoveMgrComponent:CheckIsOpenComponentTickEnabled() end

---@param bEnabled boolean
---@return boolean
function URelativeMoveMgrComponent:SetPostPhysicsTickEnabled(bEnabled) end

---@param bEnabled boolean
function URelativeMoveMgrComponent:SetPostPhysicsComponentTickEnabled(bEnabled) end

---@param DeltaTime number
function URelativeMoveMgrComponent:UpdateCharacterBasedMovement(DeltaTime) end

function URelativeMoveMgrComponent:UpdateBaseTickDependency() end

function URelativeMoveMgrComponent:GetRelativeMoveCharacters() end

function URelativeMoveMgrComponent:GetRelativeMoveActors() end

---@return boolean
function URelativeMoveMgrComponent:ShouldKeepBase() end

---@return boolean
function URelativeMoveMgrComponent:KeepBaseEnabled() end
