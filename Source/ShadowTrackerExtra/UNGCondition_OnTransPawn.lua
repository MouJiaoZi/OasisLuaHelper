---@meta

---@class UUNGCondition_OnTransPawn: USTNewbieGuideConditionBase
---@field TargetPawnClassName string
local UUNGCondition_OnTransPawn = {}

function UUNGCondition_OnTransPawn:OnTransPawnShowUIFinish() end

---@param NewPawn APawn
function UUNGCondition_OnTransPawn:OnRepOnePawn(NewPawn) end
