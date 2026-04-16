---@meta

---@class USettingDualStateButton: UUAEUserWidget
---@field modesUnsupport ULuaArrayHelper<EGameModeType> @the widget can not be seen in some modes
---@field textStatusON string
---@field textStatusOFF string
---@field statusONDelegate FGetWidget
---@field statusOFFDelegate FGetWidget
---@field relatedSettingKey string @key is from settingconfig which saved in local setting
---@field relatedMsgId string
---@field currentSwitch boolean
---@field currentSwitchDelegate FGetBool
---@field parentNodeDelegate FGetWidget
local USettingDualStateButton = {}
