---@meta

---@class USecuryInfoComponent: UActorComponent, IObjectPoolInterface
local USecuryInfoComponent = {}

---@param BaseInfo FGameBaseInfo
function USecuryInfoComponent:ReportGameBaseInfo(BaseInfo) end

---@param GameStartFlow FClientGameStartFlow
function USecuryInfoComponent:ReportGameStartFlow(GameStartFlow) end

---@param JumpFlow FClientJumpFlow
function USecuryInfoComponent:ReportJumpFlow(JumpFlow) end

---@param CircleFlow FClientCircleFlow
function USecuryInfoComponent:ReportCircleFlow(CircleFlow) end

---@param GameEndFlow FClientGameEndFlow
function USecuryInfoComponent:ReportGameEndFlow(GameEndFlow) end

---@param AimFlow FAimFlow
function USecuryInfoComponent:ReportAimFlow(AimFlow) end

---@param AttackFlow FAttackFlow
function USecuryInfoComponent:ReportAttackFlow(AttackFlow) end

---@param AsianAttackFlow FAsianAttackFlow
function USecuryInfoComponent:ReportAsianAttackFlow(AsianAttackFlow) end

---@param HurtFlow FHurtFlow
function USecuryInfoComponent:ReportHurtFlow(HurtFlow) end

---@param PlayerKillFlow FClientSecPlayerKillFlow
function USecuryInfoComponent:ReportPlayerKillFlow(PlayerKillFlow) end

---@param GameSetting FGameSetting
function USecuryInfoComponent:ReportGameSetting(GameSetting) end

---@param teamCreate FGvoiceTeamCreate
function USecuryInfoComponent:ReportGvoiceTeamCreate(teamCreate) end

---@param teamQuit FGvoiceTeamQuit
function USecuryInfoComponent:ReportGvoiceTeamQuit(teamQuit) end

function USecuryInfoComponent:ReportVerifyInfoFlow() end

---@param MrpcsFlow FClientSecMrpcsFlow
function USecuryInfoComponent:ReportMrpcsFlow(MrpcsFlow) end
