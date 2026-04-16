---@meta

---@class ADrawFacePreviwTool: AActor
---@field texMap ULuaMapHelper<string, string>
local ADrawFacePreviwTool = {}

---@param saveMat UMaterialInstance
---@param previewMat UMaterialInstanceDynamic
---@param previewRoughmat UMaterialInstanceDynamic
---@param makeupName ULuaArrayHelper<string>
---@param cmds ULuaArrayHelper<string>
---@param configPath string
---@param saveMatKey string
function ADrawFacePreviwTool:SaveToConfig(saveMat, previewMat, previewRoughmat, makeupName, cmds, configPath, saveMatKey) end

---@param saveMat UMaterialInstance
---@param previewMat UMaterialInstanceDynamic
---@param cmds ULuaArrayHelper<string>
---@param configPath string
---@param saveMatKey string
---@param saveKey string
function ADrawFacePreviwTool:SaveToConfigSingle(saveMat, previewMat, cmds, configPath, saveMatKey, saveKey) end

function ADrawFacePreviwTool:ReadTexTable() end

---@param path string
function ADrawFacePreviwTool:GetTextureID(path) end

---@param config ULuaArrayHelper<FGalaxyFaceMakeupParamDefaultValue>
---@param cmd string
---@param mat UMaterialInstance
---@param texId string
function ADrawFacePreviwTool:AddAdditionCmdToConfig(config, cmd, mat, texId) end

function ADrawFacePreviwTool:SaveTwopassHairMat() end
