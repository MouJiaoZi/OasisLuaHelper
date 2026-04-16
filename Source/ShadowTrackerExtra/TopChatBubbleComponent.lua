---@meta

---@class UTopChatBubbleComponent: UActorComponent
---@field BubbleLastTime number
---@field PositionOffest FVector
---@field TemplateID number
---@field InstanceID number
---@field bShowBubble boolean
---@field LastContent string
---@field TopChatLastContentDelegate FOnLastContentDelegate
local UTopChatBubbleComponent = {}

---@param newContent string
function UTopChatBubbleComponent:SetTopChatBubbleLastContent(newContent) end

function UTopChatBubbleComponent:OnRep_LastContent() end

function UTopChatBubbleComponent:InitInstanceID() end

---@param show boolean
function UTopChatBubbleComponent:SetContentSetVisibility(show) end

---@param newContent string
function UTopChatBubbleComponent:ServerSetTopChatContent(newContent) end

---@param newContent string
function UTopChatBubbleComponent:SetTopChatContent(newContent) end
