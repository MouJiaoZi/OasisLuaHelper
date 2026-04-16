---@meta

---This is an EditableTextBox asking user to check the text before use it It's only a wrapper of DragDropTextBox, not a real DragDropTextBox
---@class UUGCDragDropTextBox: UUserWidget
local UUGCDragDropTextBox = {}

---@return string
function UUGCDragDropTextBox:GetUGCDragDropTextBoxText() end

---@param InText string
function UUGCDragDropTextBox:SetText(InText) end

---@param InText string
function UUGCDragDropTextBox:SetHintText(InText) end

---@param InError string
function UUGCDragDropTextBox:SetError(InError) end

---@param bReadOnly boolean
function UUGCDragDropTextBox:SetIsReadOnly(bReadOnly) end

function UUGCDragDropTextBox:ClearError() end

---@return boolean
function UUGCDragDropTextBox:HasError() end
