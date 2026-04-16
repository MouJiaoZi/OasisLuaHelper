---@meta

---@class ELogicImageIDType
---@field ItemSmallImage number @物品小图
---@field ItemBigImage number @物品大图
---@field ItemWhiteImage number @物品剪影
ELogicImageIDType = {}


---@class UCustomImage: UImage
local UCustomImage = {}

---@param LogicImageIDType ELogicImageIDType
---@param ID number
function UCustomImage:SetImageByID(LogicImageIDType, ID) end

---@param LogicImageIDType ELogicImageIDType
---@param ID number
---@param Color FLinearColor
function UCustomImage:SetImageByIDWithColor(LogicImageIDType, ID, Color) end

---@param TableName string
---@param ColName string
---@param Key number
---@param Color FLinearColor
function UCustomImage:SetTableImageWithInt(TableName, ColName, Key, Color) end

---@param _TableName string
---@param _ColName string
---@param _Key string
---@param _Color FLinearColor
function UCustomImage:SetTableImageWithString(_TableName, _ColName, _Key, _Color) end

---@param Table UUAEDataTable
function UCustomImage:OnTableLoaded(Table) end
