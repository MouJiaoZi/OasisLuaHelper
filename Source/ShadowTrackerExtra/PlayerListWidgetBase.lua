---@meta

---收集客户端本地视野内的玩家列表的UI
---@class UPlayerListWidgetBase: UUAEUserWidget
---@field Players ULuaArrayHelper<ASTExtraBaseCharacter>
---@field MaxRecentPlayers number
local UPlayerListWidgetBase = {}

function UPlayerListWidgetBase:RefreshUI() end

---@param playerName string
---@param TeamID number
---@param PlayerUID string
---@param isCome boolean
function UPlayerListWidgetBase:RefreshOne(playerName, TeamID, PlayerUID, isCome) end

function UPlayerListWidgetBase:LuaSortPlayers() end

---@param PlayerUID string
---@param PlayerName string
---@param TeamID number
function UPlayerListWidgetBase:OnClickedPlayerItem(PlayerUID, PlayerName, TeamID) end

function UPlayerListWidgetBase:BindPlayerDelegates() end

function UPlayerListWidgetBase:UnbindPlayerDelegates() end

---@param InPlayer AActor
function UPlayerListWidgetBase:HandlePlayerIn(InPlayer) end

---@param InPlayer AActor
function UPlayerListWidgetBase:HandlePlayerOut(InPlayer) end
