---@meta

---@class ESortitionState
---@field None number @None
---@field Idle number @Idle
---@field Shaking number @Shaking
---@field End number @End
ESortitionState = {}


---@class ULostTombSortitionAnimInstance: ULostTombNPCAnimInstance
---@field ShakeMontages ULuaArrayHelper<UAnimMontage>
---@field OnStateCompleted FOnStateCompleted
---@field OnStickShouldFlyOut FOnStickShouldFlyOut
local ULostTombSortitionAnimInstance = {}

---@param NewState ESortitionState
function ULostTombSortitionAnimInstance:SetSortitionState(NewState) end

function ULostTombSortitionAnimInstance:StickFlyOut() end

---@param Montage UAnimMontage
---@param bInterrupted boolean
function ULostTombSortitionAnimInstance:OnMontageEnded(Montage, bInterrupted) end
