---@meta

---@class FDuoActionPerformanceLinkListNode
---@field ID number
---@field WhoInviteMe ASTExtraPlayerCharacter
---@field InviteWho ASTExtraPlayerCharacter
---@field WhoDuoActionPerformanceActorInviteMe ADuoActionPerformance
---@field WhoOverlapMe ASTExtraPlayerCharacter
---@field WhoDuoActionPerformanceActorOverlapMe ADuoActionPerformance
---@field DuoActionPerformanceActorActiveID number
FDuoActionPerformanceLinkListNode = {}


---@class UDuoActionPerformanceAvatarSubSystem: UAvatarSubSystem
---@field SpawnActorPawnRotator FRotator
---@field InvitePlayerTime number
---@field SuccessfulPerformanceTime number
---@field ActivateDuoActionPerformanceTime number
---@field WhoInviteMe ASTExtraPlayerCharacter
---@field InviteWho ASTExtraPlayerCharacter
---@field WhoDuoActionPerformanceActorInviteMe ADuoActionPerformance
---@field WhoOverlapMe ASTExtraPlayerCharacter
---@field WhoDuoActionPerformanceActorOverlapMe ADuoActionPerformance
---@field PlayingDuoActionPerformanceActor ADuoActionPerformance
---@field bForceSwitchWeapon boolean
---@field NodeMap ULuaMapHelper<number, FDuoActionPerformanceLinkListNode>
local UDuoActionPerformanceAvatarSubSystem = {}

---@param InOwnerAvatarComp UAvatarComponent
function UDuoActionPerformanceAvatarSubSystem:InitSubSystem(InOwnerAvatarComp) end

function UDuoActionPerformanceAvatarSubSystem:ReleaseSubSystem() end

---@param DeltaTime number
function UDuoActionPerformanceAvatarSubSystem:TickSubSystem(DeltaTime) end

---@param InEnteredState EPawnState
function UDuoActionPerformanceAvatarSubSystem:HandleEnterState(InEnteredState) end

---@return string
function UDuoActionPerformanceAvatarSubSystem:PrintInfo() end

function UDuoActionPerformanceAvatarSubSystem:OnPlayerEnterFlyingFunc() end

---@param Character ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UDuoActionPerformanceAvatarSubSystem:OnPostTakeDamage(Character, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param InDuoActionPerformanceLinkListNode FDuoActionPerformanceLinkListNode
function UDuoActionPerformanceAvatarSubSystem:AddNodeMap(InDuoActionPerformanceLinkListNode) end

---@param InID number
function UDuoActionPerformanceAvatarSubSystem:RemoveNodeMap(InID) end

function UDuoActionPerformanceAvatarSubSystem:ClearNodeMap() end

---@return FDuoActionPerformanceLinkListNode
function UDuoActionPerformanceAvatarSubSystem:GetTailNode() end

---@param InterruptPlayer ASTExtraPlayerCharacter
---@return FDuoActionPerformanceLinkListNode
function UDuoActionPerformanceAvatarSubSystem:GetValidTailNode(InterruptPlayer) end

function UDuoActionPerformanceAvatarSubSystem:PrintNodeMapInfo() end
