---@meta

---@class URenderWidgetBase: UUAEUserWidget
local URenderWidgetBase = {}

function URenderWidgetBase:OnWidgetCreated() end

function URenderWidgetBase:OnWidgetDestroyed() end

---@param IsVisible boolean
function URenderWidgetBase:OnSwitchWidgetVisibility(IsVisible) end

---@param NewResource UObject
function URenderWidgetBase:OnRefreshRtImageResource(NewResource) end

---@param CountDownValue number
---@param TotalCountDownValue number
function URenderWidgetBase:OnRefreshCountDownValue(CountDownValue, TotalCountDownValue) end

---@param SeasonId number
function URenderWidgetBase:OnRefreshSeasonId(SeasonId) end

---@param PlayerInfo FPlayerDetailInfo
function URenderWidgetBase:OnRefreshCharmPlayerInfo(PlayerInfo) end
