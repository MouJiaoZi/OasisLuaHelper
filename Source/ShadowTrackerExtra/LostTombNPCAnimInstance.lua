---@meta

---@class ULostTombNPCAnimInstance: UAnimInstance
---@field C_ShakeIdleAnim_List ULuaArrayHelper<UAnimSequence>
---@field EntryList ULuaArrayHelper<FRandomPlayerSequenceEntry>
---@field CanTransferToShakeIdle boolean
local ULostTombNPCAnimInstance = {}

function ULostTombNPCAnimInstance:OnShakeIdleListSettled() end
