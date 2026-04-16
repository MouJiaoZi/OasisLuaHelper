---@meta

---@class FTeslaModelStatusType
---@field DropItemUnDo number
---@field DropItemDoing number
---@field DropItemDone number
FTeslaModelStatusType = {}


---@class FTeslaModelFxStatusType
---@field UnFinished number
---@field Finished number
FTeslaModelFxStatusType = {}


---@class UTeslaModelPlayFxComponent: UActorComponent
---@field bProduceDropItem boolean
---@field bAutoProduceDropItem boolean
---@field bAutoPlay boolean
---@field bPlayLoop boolean
---@field AutoPlayDelayTime number
---@field DropItemTotalTime number
---@field DropItemIntervalTime number
---@field DropItemIDArray ULuaArrayHelper<number>
---@field DropTreasureBoxCount number
---@field DropTreasureBoxInternalTime number
---@field DropFirstTreasureBoxDelayTime number
---@field DropItemStatus FTeslaModelStatusType
---@field PlayFxStatus FTeslaModelFxStatusType
---@field DropItemElapseTime number
---@field LastDropItemElapseTime number
---@field DropItemTotalCount number
---@field DropItemCurrentCount number
---@field PlayFxElapseTime number
---@field AutoPlayDelayTimeCompleted boolean
---@field AutoPlayFxElapseTime number
local UTeslaModelPlayFxComponent = {}

function UTeslaModelPlayFxComponent:CreateLevelSequencePlayer() end

---@return boolean
function UTeslaModelPlayFxComponent:StartDropItem() end

function UTeslaModelPlayFxComponent:StartPlayFx() end

function UTeslaModelPlayFxComponent:ProduceDropItem() end

function UTeslaModelPlayFxComponent:ProduceTreasureBox() end

function UTeslaModelPlayFxComponent:ProduceTreasureBoxBlueprint() end

---@return boolean
function UTeslaModelPlayFxComponent:IsLastDropItem() end

function UTeslaModelPlayFxComponent:OnRep_PlayFxElapseTime() end

function UTeslaModelPlayFxComponent:OnRep_PlayFxStatus() end

function UTeslaModelPlayFxComponent:UpdatePlayFxElapseTime() end

---@param DeltaTime number
function UTeslaModelPlayFxComponent:TickDropItem(DeltaTime) end

---@param DeltaTime number
function UTeslaModelPlayFxComponent:TickPlayFxElapseTime(DeltaTime) end

function UTeslaModelPlayFxComponent:OnTeslaPlayFx() end

function UTeslaModelPlayFxComponent:OnTeslaPlayFxBlueprint() end

---@return boolean
function UTeslaModelPlayFxComponent:IsDropItemUndo() end

function UTeslaModelPlayFxComponent:OnClientReconnected() end

function UTeslaModelPlayFxComponent:OnClientReconnectedBlueprint() end

function UTeslaModelPlayFxComponent:SetEventReceivers() end
