---@meta

---@class UTagLogLuaBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UTagLogLuaBlueprintFunctionLibrary = {}

---@param bEnable boolean
function UTagLogLuaBlueprintFunctionLibrary:SetEnableTagLogOutput(bEnable) end

---@return boolean
function UTagLogLuaBlueprintFunctionLibrary:IsEnableTagLogOutput() end

---@param CategoryName string
---@param Verbosity number
---@param InString string
function UTagLogLuaBlueprintFunctionLibrary:PrintRawTagLog(CategoryName, Verbosity, InString) end

---@param CategoryName string
---@param Verbosity number
---@param InString string
function UTagLogLuaBlueprintFunctionLibrary:PrintRawTagLogToWidget(CategoryName, Verbosity, InString) end
