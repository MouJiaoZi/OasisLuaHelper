---@meta

---@class ASTExtraReconDrone: ASTExtraUAVVehicle
---@field GlobalTargetList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ReconTargetList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ReplicatedTargetList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ReconTargetTimer number
---@field ReconTargetKeepTimer number
---@field IsKeepingReconTarget boolean
---@field ReconTargetInterval number @更新侦察目标时间间隔
---@field ReconDistance number @侦察距离
---@field ReconTargetKeepTime number @待机后标记保留时间
---@field ShowRedDotMsg string
---@field HideRedDotMsg string
---@field HighLightColor FLinearColor
---@field HighLightThickness number
---@field bEnableReconMarkActorTarget boolean
---@field ReconMarkActorTargetTimer number
---@field ReconMarkActorTargetInterval number @更新侦察目标时间间隔
---@field ReconMarkActorDistance number @侦察距离
---@field CheckActorZOffset number
---@field ReconMarkActorTargetKeepTime number @待机后标记保留时间
---@field ActorCanMarkTag string @待机后标记保留时间
---@field ReplicatedMarkActorTargetList ULuaArrayHelper<AActor>
---@field ReconMarkActorTargetList ULuaArrayHelper<AActor>
---@field AllActorReconCanMark ULuaArrayHelper<AActor>
local ASTExtraReconDrone = {}

---@param HealthState ESTExtraVehicleHealthState
function ASTExtraReconDrone:ClientOnVehicleHealthStateChangedNativeEvent(HealthState) end

---判断锁定目标是否被可见
---@param Target AActor
---@param ZOffset number
---@return boolean
function ASTExtraReconDrone:CheckTargetIsVisible(Target, ZOffset) end

---@param Target ASTExtraBaseCharacter
function ASTExtraReconDrone:AddCharacterTarget(Target) end

---@param Target ASTExtraBaseCharacter
---@return boolean
function ASTExtraReconDrone:IsTargetInRecon(Target) end

---@param Target ASTExtraBaseCharacter
---@return boolean
function ASTExtraReconDrone:IsTargetShouldRemove(Target) end

---@param NewTargetList ULuaArrayHelper<ASTExtraBaseCharacter>
function ASTExtraReconDrone:UpdateServerTargetList(NewTargetList) end

function ASTExtraReconDrone:OnRep_ReplicatedTargetList() end

---@param SelfCharacter ASTExtraBaseCharacter
---@param Target ASTExtraBaseCharacter
---@param IsHighLight boolean
function ASTExtraReconDrone:HighLightTarget(SelfCharacter, Target, IsHighLight) end

function ASTExtraReconDrone:OnRep_ReplicatedMarkActorTargetList() end

---@param NewTargetList ULuaArrayHelper<AActor>
function ASTExtraReconDrone:UpdateServerMarkActorTargetList(NewTargetList) end

function ASTExtraReconDrone:InitAllAllActorCanMark() end

---@param DeltaTime number
function ASTExtraReconDrone:UpdateSeekActor(DeltaTime) end

---@param SelfCharacter ASTExtraBaseCharacter
---@param Target AActor
---@param IsHighLight boolean
function ASTExtraReconDrone:HighLightMarkActorTarget(SelfCharacter, Target, IsHighLight) end

---@param Target AActor
---@return boolean
function ASTExtraReconDrone:IsTargetMarActorInRecon(Target) end
