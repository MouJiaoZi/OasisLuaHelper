---@meta

---显示CD提示UI的Action
---@class UActionEffect_ShowCDPrompt: UActionEffect
---@field TotalShowTime number
---@field bShowWhenSpectating boolean
---@field ShowMsgTip string
---@field CancelCDBarEffectConfig FLogicEffectSequenceWrapper
local UActionEffect_ShowCDPrompt = {}

---@param TargetCharacter ASTExtraBaseCharacter
function UActionEffect_ShowCDPrompt:HandleCancelCDBar(TargetCharacter) end
