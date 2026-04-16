---@meta

---@class EEscalatorApplySpeedType
---@field Absolute number
---@field Relative number
EEscalatorApplySpeedType = {}


---@class AEscalatorBase: AActivityBaseActor
---@field bEnabled boolean
---@field bHandleSimulated boolean
---@field OverlapComponentSelector FActorComponentSelector
---@field CVMapping ULuaMapHelper<ASTExtraBaseCharacter, number>
---@field SimulatedCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field SimulatedCacheCharacters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field AdditiveVelocity FVector
---@field EscalatorApplySpeedType EEscalatorApplySpeedType
local AEscalatorBase = {}

function AEscalatorBase:OnRep_Enable() end

function AEscalatorBase:TakeOverlapActor() end

---@param bEnable boolean
---@param bForce boolean
function AEscalatorBase:SetEnableApply(bEnable, bForce) end

---@param Player ASTExtraBaseCharacter
function AEscalatorBase:HandleInOneCharacter(Player) end

---@param Player ASTExtraBaseCharacter
function AEscalatorBase:HandleOutOneCharacter(Player) end

function AEscalatorBase:OnRep_SimulatedCVMapping() end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param OverlapInfo FHitResult
function AEscalatorBase:OnComponentBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, OverlapInfo) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AEscalatorBase:OnComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
