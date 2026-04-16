---@meta

---@class FTrainingHeadWidgetInfo
FTrainingHeadWidgetInfo = {}


---@class UTrainingGroundWidget: UUAEUserWidget
---@field PlayerHeadWidgetMap ULuaMapHelper<string, FTrainingHeadWidgetInfo>
---@field PlayerInfosMap ULuaMapHelper<string, FPlayerOBInfo>
local UTrainingGroundWidget = {}

function UTrainingGroundWidget:OnWidgetInitialized() end

---@param inUIDStr string
function UTrainingGroundWidget:SendRequestPlayerInfo(inUIDStr) end

---@param inUIDStr string
---@param CurPlayerInfo FPlayerOBInfo
---@return boolean
function UTrainingGroundWidget:GetPlayerInfoByUID(inUIDStr, CurPlayerInfo) end

---@param CurPlayerInfo FPlayerOBInfo
function UTrainingGroundWidget:OnOpenPlayerInfoDetailUI(CurPlayerInfo) end

---@param ChooseInfos ULuaArrayHelper<FChooserActorInfo>
function UTrainingGroundWidget:OnRefreshPlayersHeadWidget(ChooseInfos) end
