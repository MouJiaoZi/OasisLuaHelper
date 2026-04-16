---@meta

---@class FHuntedTeammateInfo
---@field PlayerName string
---@field DangerDistance number
---@field bIsNewHuntedTeamate boolean
FHuntedTeammateInfo = {}


---@class FHuntTargetInfo
---@field TargetState ASTExtraPlayerState
---@field MarkCircleCenter FVector
---@field MarkCircleRadius number
---@field bValid boolean
FHuntTargetInfo = {}


---@class FHuntTargetRepInfo
---@field TargetState ASTExtraPlayerState
---@field MarkInstID number
---@field MarkCircleCenter FVector
---@field MarkCircleRadius number
---@field RotationAngle number
---@field PlayerKey string
FHuntTargetRepInfo = {}


---@class FHuntTaskPickerInfo
---@field PickerLocation FVector
---@field ScanRadius number
---@field HuntTaskTimeLeft number
FHuntTaskPickerInfo = {}


---赏金逃猎任务系统，小队数据管理
---@class AHunterTaskTeamMgr: AActor
---@field MapMarkItemID number
---@field MapScanerItemID number
---@field HuntTaskTimeOut number
---@field HuntTaskID number
---@field HuntTaskScanInterval number
---@field bConsiderSpectator boolean
---@field BeingHuntedPlayersInTeam ULuaArrayHelper<FHuntedTeammateInfo>
---@field TargetHuntedPlayer FHuntTargetInfo
---@field HuntTargetRepInfoList ULuaArrayHelper<FHuntTargetRepInfo>
---@field HuntPickerInfo FHuntTaskPickerInfo
---@field LocalMapMarkIDList ULuaArrayHelper<number>
---@field LocalMarkInstID number
---@field VisitedHunterStores ULuaArrayHelper<AActor>
---@field CurrentTeamID number
---@field LocalMarkData FMarkSyncData
---@field MapMarkIDSet ULuaSetHelper<number>
local AHunterTaskTeamMgr = {}

---@param PlayerState ASTExtraPlayerState
---@param Dist number
function AHunterTaskTeamMgr:UpdateHuntedPlayerInfoInTeam(PlayerState, Dist) end

---@param PlayerState ASTExtraPlayerState
---@param Dist number
function AHunterTaskTeamMgr:AddHuntedPlayerInTeam(PlayerState, Dist) end

---@param PlayerState ASTExtraPlayerState
function AHunterTaskTeamMgr:RemoveHuntedPlayerInTeam(PlayerState) end

---@param TargetInfo FHuntTargetInfo
function AHunterTaskTeamMgr:SetHuntedTargetInfo(TargetInfo) end

---@param RepInfo FHuntTargetRepInfo
function AHunterTaskTeamMgr:AddOrUpdateHuntTargetPlayer(RepInfo) end

---@param PlayerState ASTExtraPlayerState
function AHunterTaskTeamMgr:RemoveHuntTargetPlayer(PlayerState) end

---@param TaskID number
---@param Picker UObject
---@return boolean
function AHunterTaskTeamMgr:HandleUseTaskItem(TaskID, Picker) end

---@param OutList ULuaArrayHelper<AActor>
function AHunterTaskTeamMgr:GetVisitedHunterStores(OutList) end

---@param TaskID number
---@return boolean
function AHunterTaskTeamMgr:IsTaskExist(TaskID) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function AHunterTaskTeamMgr:HasPlayerBeingHunted(PlayerState) end

---@param TaskID number
---@return number
function AHunterTaskTeamMgr:GetTaskCompletedTimes(TaskID) end

function AHunterTaskTeamMgr:OnUpdateBeingHuntedTeammate() end

---@param TaskID number
function AHunterTaskTeamMgr:OnTaskCompleted(TaskID) end

function AHunterTaskTeamMgr:OnRep_BeingHuntedPlayersInTeam() end

function AHunterTaskTeamMgr:OnRep_TargetHuntedPlayer() end

function AHunterTaskTeamMgr:OnRep_HuntTargetRepInfoList() end

function AHunterTaskTeamMgr:OnNotifyHuntTargetRepInfoList() end

---@param Picker UObject
---@return boolean
function AHunterTaskTeamMgr:PickHuntTask(Picker) end

function AHunterTaskTeamMgr:OnRep_HuntTaskPickerInfo() end
