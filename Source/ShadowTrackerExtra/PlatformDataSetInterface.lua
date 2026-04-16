---@meta

---@class IPlatformDataSetInterface: IInterface
IPlatformDataSetInterface = {}

---@param TargetPlatform EPropReplacePlatform
function IPlatformDataSetInterface:GetTargetPlatformDataSetSoftClass(TargetPlatform) end

---@return boolean
function IPlatformDataSetInterface:PreReplacePropsByDataSet() end

---@param PropName string
---@param PropComp string
---@return boolean
function IPlatformDataSetInterface:PreReplaceSingleProp(PropName, PropComp) end

---@param PropName string
---@param PropComp string
---@param SrcPropValue number
---@return boolean
function IPlatformDataSetInterface:DoSkipReplaceSingleProp(PropName, PropComp, SrcPropValue) end

---@param PropName string
---@param PropComp string
---@return boolean
function IPlatformDataSetInterface:PostReplaceSingleProp(PropName, PropComp) end

---@return boolean
function IPlatformDataSetInterface:PostReplacePropsByDataSet() end
