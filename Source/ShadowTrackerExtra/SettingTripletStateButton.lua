---@meta

---@class USettingTripletStateButton: UUAEUserWidget
---@field state1Name string
---@field state2Name string
---@field state3Name string
---@field relatedSettingKey string @key is from settingconfig which saved in local setting
---@field stateOn1Delegate FGetWidget
---@field stateOff1Delegate FGetWidget
---@field stateOn2Delegate FGetWidget
---@field stateOff2Delegate FGetWidget
---@field stateOn3Delegate FGetWidget
---@field stateOff3Delegate FGetWidget
local USettingTripletStateButton = {}
