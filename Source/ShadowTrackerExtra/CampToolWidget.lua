---@meta

---@class UCampToolWidget: UUAEUserWidget
local UCampToolWidget = {}

function UCampToolWidget:NotifyWidgetBeginPlay() end

function UCampToolWidget:NotifyAirLineDisappear() end

function UCampToolWidget:NotifyChangeVertLineCheckBox() end

---@return boolean
function UCampToolWidget:NotifyExtendToolsOpenUI() end

function UCampToolWidget:NotifyExtendToolsCloseUI() end

function UCampToolWidget:NotifyRefreshTeamInfo() end

function UCampToolWidget:NotifyRefreshUI() end
