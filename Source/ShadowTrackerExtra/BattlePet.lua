---@meta

---@class ABattlePet: ASTAnimalCharacter
---@field bTakeCirclePoisonDamage boolean
---@field CirclePoisonDamage number
---@field CirclePoisonDamageInterval number
---@field SpawnOffsetFromOwner FVector
---@field AvaliableTeammateDamageType ULuaArrayHelper<EDamageType>
---@field bOwnerMoveIgnorePet boolean
---@field IsCalledOut boolean
---@field DisappearDuration number
---@field TeleportToMasterDelayTimeDefault number
local ABattlePet = {}

function ABattlePet:BP_OnRespawned() end

function ABattlePet:BP_OnRecycled() end

---@param InMaster APawn
function ABattlePet:CallOut(InMaster) end

function ABattlePet:BP_OnCallOut() end

function ABattlePet:BP_PostCallback() end

function ABattlePet:CallBack() end

function ABattlePet:OnDelayCallBackInternal() end

function ABattlePet:BP_OnCallStateChange() end

---@param DestLocation FVector
---@param DestRotation FRotator
---@param DelayTime number
---@return boolean
function ABattlePet:TeleportToDest(DestLocation, DestRotation, DelayTime) end

---@param DelayTime number
---@return boolean
function ABattlePet:TeleportToMaster(DelayTime) end

---@param DestLocation FVector
---@param DestRotation FRotator
function ABattlePet:DelayDoRealTeleport(DestLocation, DestRotation) end

---@param DestLocation FVector
---@param DestRotation FRotator
---@return boolean
function ABattlePet:DoRealTeleport(DestLocation, DestRotation) end

---@param DestLocation FVector
---@param DestRotation FRotator
---@return boolean
function ABattlePet:BP_PreTeleport(DestLocation, DestRotation) end

---@param bTeleSucc boolean
function ABattlePet:BP_PostTeleport(bTeleSucc) end

---@param Reason string
function ABattlePet:PauseBTLogic(Reason) end

---@param Reason string
function ABattlePet:ResumeBTLogic(Reason) end

function ABattlePet:OnRep_IsCalledOut() end

function ABattlePet:OnRep_Owner() end
