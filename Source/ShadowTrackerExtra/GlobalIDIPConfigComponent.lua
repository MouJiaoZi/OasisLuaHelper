---@meta

---@class UGlobalIDIPConfigComponent: UGameModeBaseComponent
---@field IDIPConfig string
local UGlobalIDIPConfigComponent = {}

function UGlobalIDIPConfigComponent:OnRep_IDIPConfig() end

---@param Conf string
function UGlobalIDIPConfigComponent:CallGetIDIPConfigByParam(Conf) end

---@param param string
function UGlobalIDIPConfigComponent:GetIDIPConfigByParam(param) end
