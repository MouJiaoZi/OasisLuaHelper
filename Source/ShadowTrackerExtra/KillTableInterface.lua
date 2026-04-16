---@meta

---@class IKillTableInterface
IKillTableInterface = {}

---@param ResID number
---@param Found boolean
---@return string
function IKillTableInterface:GetAnchorPlatPath(ResID, Found) end

---@param BoxID number
---@param Found boolean
---@return FDeadlistAndBox_Data
function IKillTableInterface:GetDeadBox(BoxID, Found) end

---@param ItemID number
---@param Found boolean
---@return string
function IKillTableInterface:GetKillWhiteIcon(ItemID, Found) end
