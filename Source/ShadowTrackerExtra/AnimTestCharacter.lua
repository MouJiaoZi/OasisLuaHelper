---@meta

---@class AAnimTestCharacter: ACharacter
local AAnimTestCharacter = {}

---@param time number
function AAnimTestCharacter:SetCurAnimSeqTime(time) end

---@return string
function AAnimTestCharacter:GetFileSavePath() end

---@param FilePath string
function AAnimTestCharacter:LoadAnimPathFile(FilePath) end

---@param FilePath string
---@param AnimPath string
function AAnimTestCharacter:RecordAnimPathToFile(FilePath, AnimPath) end
