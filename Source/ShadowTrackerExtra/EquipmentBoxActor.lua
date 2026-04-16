---@meta

---@class FEquipmentBoxItemData
---@field ItemSpecificID number
---@field Count number
FEquipmentBoxItemData = {}


---@class FEquipmentBoxItemDataRow
---@field EquipmentBoxItemDataRow ULuaArrayHelper<FEquipmentBoxItemData>
FEquipmentBoxItemDataRow = {}


---@class AEquipmentBoxActor: AActor
---@field EquipConfig ULuaArrayHelper<FEquipmentBoxItemDataRow>
---@field BoxName string
---@field EquipCountMax number
---@field EquipCountCurrent number
---@field IsLoop boolean
---@field FillTime number
---@field TipsImgPath FSoftObjectPath
---@field ShowTipsDistThreshold number
local AEquipmentBoxActor = {}

---@param DataList ULuaArrayHelper<FPickUpItemData>
function AEquipmentBoxActor:MakePickUpItemDatas(DataList) end

---@return boolean
function AEquipmentBoxActor:ModifyPickUpItemDatas() end

function AEquipmentBoxActor:UpdateEquipCountMax() end

function AEquipmentBoxActor:UpdateEquipCountCurrent() end
