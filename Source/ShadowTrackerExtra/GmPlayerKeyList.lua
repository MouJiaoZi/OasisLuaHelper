---@meta

---@class UAiGmPlayerInfo: UUserWidget
local UAiGmPlayerInfo = {}

function UAiGmPlayerInfo:OnPlayerKeyClicked() end


---@class UAiGmPlayerPanel: UUserWidget
---@field PawnInfoClass UAiGmPlayerInfo @每个人物信息的UI蓝图类
---@field InfoWidgets ULuaMapHelper<number, UAiGmPlayerInfo> @PlayerKey对应的信息挂件
local UAiGmPlayerPanel = {}

---关闭按钮
function UAiGmPlayerPanel:OnCloseClick() end
