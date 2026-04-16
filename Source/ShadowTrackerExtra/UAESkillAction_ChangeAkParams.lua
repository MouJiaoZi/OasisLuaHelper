---@meta

---@class FChangeAkRT
FChangeAkRT = {}


---@class FAKSwitchParam
---@field SwitchGroup string
---@field SwitchState string
FAKSwitchParam = {}


---@class FAKRTPCParam
---@field RTPC string
---@field Value number
---@field InterpolationTimeMs number
---@field NeedTick boolean
FAKRTPCParam = {}


---@class UUAESkillAction_ChangeAkParams: UUAESkillAction
---@field AKSwitchParams ULuaArrayHelper<FAKSwitchParam>
---@field AKRTPCParams ULuaArrayHelper<FAKRTPCParam>
---@field bUpdateAkPos boolean
---@field bResetClear boolean
---@field bUndoClear boolean
local UUAESkillAction_ChangeAkParams = {}
