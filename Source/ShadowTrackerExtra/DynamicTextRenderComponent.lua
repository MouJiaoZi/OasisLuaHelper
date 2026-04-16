---@meta

---@class FCursorConfigData
---@field UseIt boolean
---@field CursorFlickerStopWithText boolean
---@field TimeShow number
---@field TimeHide number
---@field CursorShowText string
FCursorConfigData = {}


---@class FTextConfigData
---@field StartAwake boolean
---@field TextFinishTime number
---@field TextDelayTime number
---@field OneLineLen number
---@field DynamicShowText string
---@field CurText string
FTextConfigData = {}


---@class UDynamicTextRenderComponent: UTextRenderComponent
---@field CursorConfig FCursorConfigData
---@field TextConfig FTextConfigData
---@field ScalerArg number
---@field ScalerLen number
---@field SimpleCalculcateUV boolean
---@field RunSound UAkAudioEvent
local UDynamicTextRenderComponent = {}
