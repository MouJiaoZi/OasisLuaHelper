---@meta

---@class FCheckInfo
---@field TotalCounts number
---@field TotalTimes number
---@field LastTimeForCheck number
---@field ContinueTimes number
---@field bNeedCheck boolean
---@field LastCheckCount number
---@field bHasIllegal boolean
FCheckInfo = {}


---@class FIlleaglPairs
---@field PlayerKeys ULuaArrayHelper<number>
FIlleaglPairs = {}


---@class FPlayerIllegalInfo
---@field IllegalInfo ULuaArrayHelper<FCheckInfo>
FPlayerIllegalInfo = {}


---@class FPlayerSortInfo
---@field DistXFromLast number
FPlayerSortInfo = {}


---@class UEagleWatchComponent: UGameModeBaseComponent
---@field PlayerKey2Index ULuaMapHelper<number, number>
---@field Infos ULuaArrayHelper<FPlayerIllegalInfo>
---@field CheckInfos ULuaArrayHelper<FPlayerIllegalInfo>
---@field ReportIllegal ULuaMapHelper<number, FIlleaglPairs>
---@field ReportCheck ULuaMapHelper<number, FIlleaglPairs>
---@field LandedPlayers ULuaMapHelper<number, number>
---@field CheckNum number
---@field CheckCounts number
---@field PlayerKey2PlayerUID ULuaMapHelper<number, number>
---@field HasReportToLobby ULuaArrayHelper<number>
local UEagleWatchComponent = {}

---@param PlayerKey number
function UEagleWatchComponent:OnPlayerLanded(PlayerKey) end

function UEagleWatchComponent:BeginTick() end

---@param Pawn1 ASTExtraBaseCharacter
---@param Pawn2 ASTExtraBaseCharacter
---@return boolean
function UEagleWatchComponent:CheckPairPlayerInView(Pawn1, Pawn2) end

function UEagleWatchComponent:SendTlog() end

---@param ReportPlayerKey number
---@param IllegalPlayerUID number
function UEagleWatchComponent:AddPlayerReport(ReportPlayerKey, IllegalPlayerUID) end

---@param PlayerKey number
function UEagleWatchComponent:CheckPlayerIllegal(PlayerKey) end

function UEagleWatchComponent:CheckIllegalParty() end

---@param PC ASTExtraPlayerController
---@return boolean
function UEagleWatchComponent:ControllerIsAvailable(PC) end

---@param PC1 ASTExtraPlayerController
---@param PC2 ASTExtraPlayerController
---@param CheckInfo FCheckInfo
---@param IllegalInfo FCheckInfo
function UEagleWatchComponent:CheckPlayersForInfo(PC1, PC2, CheckInfo, IllegalInfo) end

---@param PC ASTExtraPlayerController
---@param InPoint FVector
---@return boolean
function UEagleWatchComponent:CheckPointInView(PC, InPoint) end

---@param Playerkey1 number
---@param Playerkey2 number
function UEagleWatchComponent:AddIllegalReport(Playerkey1, Playerkey2) end

---@param Playerkey1 number
---@param Playerkey2 number
function UEagleWatchComponent:AddCheckReport(Playerkey1, Playerkey2) end
