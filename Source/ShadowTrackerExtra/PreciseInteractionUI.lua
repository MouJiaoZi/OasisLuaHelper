---@meta

---@class UPreciseInteractionUI: UUAEUserWidget
---@field InteractorWeakObjectPtr UObject
---@field InteractorPrimitiveWeakObjectPtr UPrimitiveComponent
---@field Behaviors ULuaArrayHelper<FInteractBehavior>
---@field BehaviorData FInteractBehaviorList
---@field ShowOffset FVector2D
local UPreciseInteractionUI = {}

function UPreciseInteractionUI:OnCreated() end

function UPreciseInteractionUI:OnUpdated() end

function UPreciseInteractionUI:OnRecycled() end

function UPreciseInteractionUI:OnReUsed() end

---@param Data FInteractBehaviorList
function UPreciseInteractionUI:SetData(Data) end

---@return number
function UPreciseInteractionUI:GetIdentityID() end

---@return string
function UPreciseInteractionUI:GetOwnerClassPath() end

---@return string
function UPreciseInteractionUI:GetOwnerNativeClassPath() end

---@return number
function UPreciseInteractionUI:GetUISlot() end

---@param PlayerController APlayerController
---@param BehaviorKey string
---@return boolean
function UPreciseInteractionUI:ExecuteInteractBehavior(PlayerController, BehaviorKey) end

---@param PlayerController APlayerController
---@param BehaviorKey string
---@return boolean
function UPreciseInteractionUI:CanExecuteInteractBehavior(PlayerController, BehaviorKey) end

---@return boolean
function UPreciseInteractionUI:IsInteractorValid() end

---@return boolean
function UPreciseInteractionUI:IsInteractorPrimitiveValid() end

function UPreciseInteractionUI:GetRealInteractors() end

function UPreciseInteractionUI:GetRealInteractorPrimitives() end

---交互UI Interactor/InteractorPrimitive说明 end
function UPreciseInteractionUI:GetBehaviorInfo() end
