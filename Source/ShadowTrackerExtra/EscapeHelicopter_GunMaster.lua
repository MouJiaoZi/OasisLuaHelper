---@meta

---@class AEscapeHelicopter_GunMaster: AEscapeHelicopterBase
---@field bAnimShowOnly boolean
---@field AnimHelicopterClassTag string
---@field bUseExtraHelicopterPlayAnim boolean
---@field AnimHelicopterActor AActor
---@field HelicopterApproachMsgID number
---@field HelicopterReadyMsgID number
---@field HelicopterEvacuateMsgID number
---@field TeammateEvacuateMsgID number
---@field MaxCarryingPlayerNum number
---@field MaxCarryingPlayerNumExceedMsgID number
---@field bReadyNotifySend boolean
---@field EvacuatePlayerNum number
local AEscapeHelicopter_GunMaster = {}

function AEscapeHelicopter_GunMaster:OnRep_HelicopterState() end

function AEscapeHelicopter_GunMaster:StopAnim() end

function AEscapeHelicopter_GunMaster:OnEnterSpectating() end

---@param InTargetChar ASTExtraBaseCharacter
function AEscapeHelicopter_GunMaster:NetMulticastBoardingPlayer(InTargetChar) end

---@param Player ASTExtraBaseCharacter
function AEscapeHelicopter_GunMaster:BP_BoardPlayer(Player) end

function AEscapeHelicopter_GunMaster:BP_SpawnAnimHelicopter() end

function AEscapeHelicopter_GunMaster:LuaBeginPlay() end

---@param DeltaTime number
function AEscapeHelicopter_GunMaster:LuaTick(DeltaTime) end

function AEscapeHelicopter_GunMaster:BP_EvacuatePlayerListChange() end

function AEscapeHelicopter_GunMaster:NotifySeatsStateChange() end

function AEscapeHelicopter_GunMaster:NotifyHelicopterApproach() end

function AEscapeHelicopter_GunMaster:NotifyHelicopterReady() end

function AEscapeHelicopter_GunMaster:NotifyHelicopterEvacuate() end

function AEscapeHelicopter_GunMaster:NotifyMaxCarryingPlayerNumExceed() end

---@param InBoardingChar ASTExtraBaseCharacter
function AEscapeHelicopter_GunMaster:NotifyBoardingPlayerTeammate(InBoardingChar) end

function AEscapeHelicopter_GunMaster:OnRep_EvacuatePlayerNum() end
