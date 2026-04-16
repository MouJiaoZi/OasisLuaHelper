---@meta

---@class ERevivalAirlineType
---@field NextCircle number @下一圈模式
---@field Flight number @航班模式
---@field Private number @即时模式
---@field Scheduled number @固定时间模式
ERevivalAirlineType = {}


---@class FRespawnMachineVariable
---@field RespawnTime number
---@field StandardTime number
---@field bNeedTeamBlueCell boolean
---@field bNeedStanding boolean
---@field bInvalidInCircle boolean
---@field AvailableBefore number
---@field RespawnMode ERevivalAirlineType
---@field WaitingTime number
---@field MaximumUses number
---@field bActiveByCircle boolean
---@field ActiveAfter number
FRespawnMachineVariable = {}


---@class FRespawnMachinePair
---@field ID number
---@field Transform FTransform
FRespawnMachinePair = {}


---@class FRespawnMachinePairList
---@field RespawnMachinePairs ULuaArrayHelper<FRespawnMachinePair>
FRespawnMachinePairList = {}


---@class ARespawnMachineManager: AActor
---@field RespawnMachineVariable FRespawnMachineVariable
---@field RevivalCmpPath string
---@field RevivalTime ULuaArrayHelper<number>
---@field NumPerGroup number
---@field bNotifyAllPlayers boolean
---@field bAlwaysCreateAirline boolean
---@field PlayerRevivalLimitNum number
---@field AlwaysRelevantPlaneClass APawn
---@field RespawnMachinesGroup ULuaMapHelper<number, FRespawnMachinePairList>
---@field NextRevivalPhaseCountDown number
---@field PendingRevivalComponents ULuaMapHelper<USuperPeopleRevivalComponent, ASTExtraPlayerController>
---@field AllRevivalComponents ULuaArrayHelper<USuperPeopleRevivalComponent>
---@field bGlobalForbidden boolean
---@field MetaphaseCreateAirplaneParamBackup FCreateAirplaneParam
---@field PermitAreaMax FVector2D
---@field PermitAreaMin FVector2D
---@field FractionR2ToR1 number
---@field FractionR3ToR1 number
local ARespawnMachineManager = {}

---@param InPlayer APlayerController
function ARespawnMachineManager:OnPlayerPostLogin(InPlayer) end

---@param PlayerController AUAEPlayerController
function ARespawnMachineManager:OnPlayerControllerRespawned(PlayerController) end

---@param BeRevivedController ASTExtraPlayerController
---@param RevivalComp USuperPeopleRevivalComponent
---@param RevivePlayerController ASTExtraPlayerController
---@return boolean
function ARespawnMachineManager:RegisterRevivePlayer(BeRevivedController, RevivalComp, RevivePlayerController) end

function ARespawnMachineManager:FinishRevive() end

---@param RevivalComp USuperPeopleRevivalComponent
---@param RevivalLoc FVector
function ARespawnMachineManager:ModifyRevivalParam(RevivalComp, RevivalLoc) end

---@param RevivalComp USuperPeopleRevivalComponent
function ARespawnMachineManager:UpdateRevivalCmpParam(RevivalComp) end

---@param RevivalCmps ULuaArrayHelper<USuperPeopleRevivalComponent>
function ARespawnMachineManager:UpdateRevivalCmpsParam(RevivalCmps) end

---@param RevivalComp USuperPeopleRevivalComponent
function ARespawnMachineManager:NotifyPendingRevival(RevivalComp) end

---@param PlayerState ASTExtraPlayerState
function ARespawnMachineManager:StaticReviveTeammates(PlayerState) end

---@param RevivePlayerController ASTExtraPlayerController
---@param Teammates ULuaArrayHelper<AUAEPlayerState>
---@return boolean
function ARespawnMachineManager:FindTeammatesWithBlueCells(RevivePlayerController, Teammates) end

---@param Variable FRespawnMachineVariable
---@return boolean
function ARespawnMachineManager:GetRespawnMachineVariable(Variable) end

---@param WaitingTime number
---@return number
function ARespawnMachineManager:FindOrAddNextRevivalTime(WaitingTime) end

---@param PlayerController ASTExtraPlayerController
---@return boolean
function ARespawnMachineManager:CheckPlayerPendingRevival(PlayerController) end

---@param Path string
---@param GroupName string
function ARespawnMachineManager:GetRespawnMachines(Path, GroupName) end

---@param MetaphaseCreateAirplaneParam FCreateAirplaneParam
---@param RevivalLoc FVector
function ARespawnMachineManager:ModifyRevivalParamInternal(MetaphaseCreateAirplaneParam, RevivalLoc) end
