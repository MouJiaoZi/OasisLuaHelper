---@meta

---@class AUGCTreasureBox: AUGCSpawnItemBaseActor
---@field WrapperBoxName string
---@field TlogID number
---@field bRecordAllPlayerPickUpData boolean
---@field DeadInventoryBoxTemplate APlayerTombBox
local AUGCTreasureBox = {}

---@param BoxLoc FVector
function AUGCTreasureBox:GenerateWrappersBox(BoxLoc) end

---@param SelfRef AActor
function AUGCTreasureBox:OnPickUpDataEmptyOnServer(SelfRef) end
