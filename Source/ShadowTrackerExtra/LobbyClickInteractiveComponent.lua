---@meta

---@class ELobbyBoneType
---@field None number
---@field Head number
---@field Pelvis number
---@field Spine number
---@field LeftCalf number
---@field LeftThigh number
---@field LeftFoot number
---@field RightCalf number
---@field RightThigh number
---@field RightFoot number
ELobbyBoneType = {}


---@class FLobbyClickInteractionData
---@field ClickedID string
---@field EmoteID number
---@field DstTag string
FLobbyClickInteractionData = {}


---@class ULobbyClickInteractiveComponent: UActorComponent
---@field MaxClickDistance number
---@field MaxClickDuration number
---@field bEnableFilter boolean
local ULobbyClickInteractiveComponent = {}

---@param TouchIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function ULobbyClickInteractiveComponent:HandleTouchStart(TouchIndex, TouchedComponent) end

---@param TouchIndex ETouchIndex
---@param TouchedComponent UPrimitiveComponent
function ULobbyClickInteractiveComponent:HandleTouchEnd(TouchIndex, TouchedComponent) end

---@param SlotType number
---@param IsEquipped boolean
function ULobbyClickInteractiveComponent:OnAvatarEquipped(SlotType, IsEquipped) end

---@param DataTable UUAEDataTable
function ULobbyClickInteractiveComponent:OnConfigTableLoaded(DataTable) end

---@param EmoteID number
function ULobbyClickInteractiveComponent:PlayEmoteAsync(EmoteID) end
