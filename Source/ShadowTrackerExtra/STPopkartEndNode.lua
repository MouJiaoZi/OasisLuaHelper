---@meta

---@class FPopRaceAwardConfig
---@field PassDoor number
---@field CharacterNum number
---@field ItemIDList ULuaArrayHelper<number>
---@field DropBoxIDList ULuaArrayHelper<number>
---@field DropItemCurrentCount number
---@field DropItemElapse number @当前掉落的时间
FPopRaceAwardConfig = {}


---@class ASTPopkartEndNode: ASTPopkartAreaTrigger
---@field BeginPlayProcessDropBox boolean
---@field DropItemDelayTime number
---@field HideDropBoxTime number
---@field HideDropBoxElapse number
---@field AwardInterval number
---@field MinPassDoorNodeNum number
---@field RaceAwardConfig ULuaArrayHelper<FPopRaceAwardConfig>
---@field CurDropAwardList ULuaArrayHelper<FPopRaceAwardConfig> @当前正在发放物资的队列
---@field EndRaceShowTipsID number
---@field NoAwardShowTipsID number
local ASTPopkartEndNode = {}

function ASTPopkartEndNode:ProcessWinEffect() end

---负责具体掉落逻辑
---@param ItemIDList ULuaArrayHelper<number>
---@param CurrentDrop number
function ASTPopkartEndNode:ProduceDropItem(ItemIDList, CurrentDrop) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartEndNode:PassDoorEffect(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartEndNode:JustPassDoorEffect(Vehicle) end

---@param Vehicle ASTExtraWheeledVehicle
function ASTPopkartEndNode:AlreadyPassDoorEffect(Vehicle) end
