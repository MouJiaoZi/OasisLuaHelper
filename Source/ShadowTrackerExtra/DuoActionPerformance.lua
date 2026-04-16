---@meta

---@class FDuoActionPerformanceBattleConfigCopy
---@field bMM boolean
---@field bMF boolean
---@field bFF boolean
---@field bFM boolean
---@field DuoActionPerformanceLocation number
---@field bIgnoreHandCollision boolean
---@field bIgnoreFootCollision boolean
---@field CheckRadius number
---@field CheckHeight number
---@field CheckPoints number
---@field CircleCount number
---@field TerrainRoughnessThreshold number
---@field MaxInviteDistance number
FDuoActionPerformanceBattleConfigCopy = {}


---@class FDuoActionPerformanceRepData
---@field InviterPlayer ASTExtraBaseCharacter
---@field InviteePlayer ASTExtraBaseCharacter
---@field WhereShowICON ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CustomReplicatedTransform FTransform
---@field EmoteID number
---@field bSetHeadLogo boolean
FDuoActionPerformanceRepData = {}


---@class FDuoActionPerformanceClearHeadLogoRepData
---@field WhoBeCleared ASTExtraBaseCharacter
---@field WhereClear ASTExtraBaseCharacter
---@field HeadLogoID number
FDuoActionPerformanceClearHeadLogoRepData = {}


---@class FDuoActionPerformanceRestorTransformRepData
---@field RestoreInviterTransform FTransform
---@field RestoreInviteeTransform FTransform
FDuoActionPerformanceRestorTransformRepData = {}


---@class FDuoActionPerformanceParticleRepData
---@field bDetectCollision boolean
---@field bDetectTerrain boolean
---@field Size number
---@field PlayerKey number
---@field Count number
FDuoActionPerformanceParticleRepData = {}


---@class ADuoActionPerformance: AActivityBaseActor
---@field bActiveDuoActionPerformance boolean
---@field bPreActiveDuoActionPerformance boolean
---@field bCanShowInvitingAndHoldingButton boolean
---@field ActiveID number
---@field InviterPlayerKey number
---@field InviteePlayerKey number
---@field InviterPlayer ASTExtraBaseCharacter
---@field InviteePlayer ASTExtraBaseCharacter
---@field EmoteID number
---@field DuoActionPerformanceRepData FDuoActionPerformanceRepData
---@field CustomReplicatedRotator FRotator
---@field DuoActionPerformanceClearHeadLogoRepData FDuoActionPerformanceClearHeadLogoRepData
---@field DuoActionPerformanceRestorTransformRepData FDuoActionPerformanceRestorTransformRepData
---@field bRecoverTeamAssemble boolean
---@field bLeavingNormal boolean
---@field CheckCount number
---@field DuoActionPerformanceBattleConfigCopy FDuoActionPerformanceBattleConfigCopy
local ADuoActionPerformance = {}

function ADuoActionPerformance:ClearData() end

function ADuoActionPerformance:OnRep_DuoActionPerformanceRepData() end

function ADuoActionPerformance:OnRep_CustomReplicatedRotator() end

function ADuoActionPerformance:BP_OnRep_DuoActionPerformanceRepData() end

function ADuoActionPerformance:BP_ClearData() end

function ADuoActionPerformance:ActiveDuoActionPerformance() end

function ADuoActionPerformance:BP_ActiveDuoActionPerformance() end

function ADuoActionPerformance:PreActiveDuoActionPerformance() end

function ADuoActionPerformance:OnRep_DuoActionPerformanceClearHeadLogoRepData() end

function ADuoActionPerformance:BP_OnRep_DuoActionPerformanceClearHeadLogoRepData() end

function ADuoActionPerformance:OnRep_DuoActionPerformanceRestorTransformRepData() end

function ADuoActionPerformance:BP_OnRep_DuoActionPerformanceRestorTransformRepData() end

function ADuoActionPerformance:OnRep_ActiveDuoActionPerformance() end

function ADuoActionPerformance:BP_OnRep_ActiveDuoActionPerformance() end

function ADuoActionPerformance:OnRep_PreActiveDuoActionPerformance() end

function ADuoActionPerformance:BP_OnRep_PreActiveDuoActionPerformance() end

function ADuoActionPerformance:OnRep_CanShowInvitingAndHoldingButton() end

function ADuoActionPerformance:BP_OnRep_CanShowInvitingAndHoldingButton() end

function ADuoActionPerformance:OnRep_RecoverTeamAssemble() end

function ADuoActionPerformance:BP_OnRep_RecoverTeamAssemble() end

---@return boolean
function ADuoActionPerformance:IsActiveDuoActionPerformance() end

---@param bDetectCollision boolean
---@param bDetectTerrain boolean
---@param Size number
---@param PlayerKey number
function ADuoActionPerformance:SetDuoActionPerformanceClientParticleState(bDetectCollision, bDetectTerrain, Size, PlayerKey) end

function ADuoActionPerformance:BP_ClearCustomData() end

---@return string
function ADuoActionPerformance:PrintDuoActionPerformanceRepData() end

---@return string
function ADuoActionPerformance:PrintDuoActionPerformanceClearHeadLogoRepData() end

---@return string
function ADuoActionPerformance:PrintDuoActionPerformanceRestorTransformRepData() end

function ADuoActionPerformance:InterruptDuoActionPerformance() end

function ADuoActionPerformance:BP_InterruptDuoActionPerformance() end

---@return boolean
function ADuoActionPerformance:CanDirectPlayEmoteWhenInterruptDuoActionPerformance() end

---@param InPlayerKey number
---@param bFromUI boolean
function ADuoActionPerformance:BP_ServerCloseDuoActionPerformancePhotoUI(InPlayerKey, bFromUI) end
