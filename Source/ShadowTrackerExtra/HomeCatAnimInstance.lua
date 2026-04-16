---@meta

---@class EHomeCatAnimState
---@field EHomeCatAnimState_Idle number @Idle
---@field EHomeCatAnimState_RandomAction number @RandomAction
---@field EHomeCatAnimState_PoseSwitch number @PoseSwitch
---@field EHomeCatAnimState_DoAnim number @DoAnim
EHomeCatAnimState = {}


---@class UHomeCatAnimInstance: UAnimInstance
---@field LoadComplete boolean
---@field SetActionSeqComplete boolean
---@field DataTableLoadComplete boolean
---@field DataTablePath string
---@field PoseSwitchTime number
---@field ActionSwitchTime number
---@field CurPoseIndex number
---@field CurActionTime number
---@field CurPoseTime number
---@field AsyncLoadIndex number
---@field ActionAnimSeqMap ULuaMapHelper<number, UAnimSequence>
---@field SwitchPoseAnimSeqMap ULuaMapHelper<number, UAnimSequence>
---@field PoseWeightsMap ULuaMapHelper<number, number>
---@field ActionWeightsMap ULuaMapHelper<number, number>
local UHomeCatAnimInstance = {}

function UHomeCatAnimInstance:AsycLoadDataTable() end

function UHomeCatAnimInstance:AsycLoadDataTableCB() end

function UHomeCatAnimInstance:GetAllPoseWeights() end

---@param PoseIndex number
function UHomeCatAnimInstance:LoadAnimResByPoseIndex(PoseIndex) end

---@param AsyncIndex number
function UHomeCatAnimInstance:LoadAnimResFinishCallBack(AsyncIndex) end

function UHomeCatAnimInstance:SetPoseSwitchRandomTime() end

function UHomeCatAnimInstance:SetActionSwitchRandomTime() end

function UHomeCatAnimInstance:GetCurDoAnimSeq() end

---@return number
function UHomeCatAnimInstance:GetCurSwitchAnimSeq() end
