---@meta

---@class ULobbyModelCarplateShowEntity: ULobbyModelCommonItemShowEntity
---@field SoftCarPlateUI UUAEUserWidget
---@field NamTBColor FSlateColor
---@field NamTBFontInfo FSlateFontInfo
local ULobbyModelCarplateShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function ULobbyModelCarplateShowEntity:ApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end

---@param SocketTrans FTransform
function ULobbyModelCarplateShowEntity:SetFrontCarPlateOffset(SocketTrans) end

---@param SocketTrans FTransform
function ULobbyModelCarplateShowEntity:SetBackCarPlateOffset(SocketTrans) end

function ULobbyModelCarplateShowEntity:ClearEntity() end

---@param battleItemHandleBase UBackpackLobbyItemCarplateHandle
---@return number
function ULobbyModelCarplateShowEntity:GetFrontSlotID(battleItemHandleBase) end

---@param battleItemHandleBase UBackpackLobbyItemCarplateHandle
---@return number
function ULobbyModelCarplateShowEntity:GetBackSlotID(battleItemHandleBase) end
