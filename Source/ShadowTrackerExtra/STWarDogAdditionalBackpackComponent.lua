---@meta

---@class USTWarDogAdditionalBackpackComponent: UAdditionalBackpackComponent
---@field bAlreadyPickupFromBox boolean
local USTWarDogAdditionalBackpackComponent = {}

---@param NewWarDog ASTQuadrupedCharacter
function USTWarDogAdditionalBackpackComponent:SetWarDog(NewWarDog) end

function USTWarDogAdditionalBackpackComponent:OnRep_WarDog() end

---@return boolean
function USTWarDogAdditionalBackpackComponent:HaveWarDog() end

function USTWarDogAdditionalBackpackComponent:OnRep_bAlreadyPickupFromBox() end
