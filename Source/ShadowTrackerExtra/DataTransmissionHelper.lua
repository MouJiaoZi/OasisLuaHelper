---@meta

---@class UDataTransmissionHelper: UObject
local UDataTransmissionHelper = {}

function UDataTransmissionHelper:ReleaseDataTransmission() end

---@param Key string
---@param Value string
---@param ExtraObj UObject
function UDataTransmissionHelper:TransmitString(Key, Value, ExtraObj) end

---@param Key string
---@param Value number
---@param ExtraObj UObject
function UDataTransmissionHelper:TransmitNum(Key, Value, ExtraObj) end

function UDataTransmissionHelper:Init() end

function UDataTransmissionHelper:Uninit() end

---@param Key string
---@param Value string
---@param ExtraObj UObject
function UDataTransmissionHelper:TransmitStringInternal(Key, Value, ExtraObj) end

---@param Key string
---@param Value number
---@param ExtraObj UObject
function UDataTransmissionHelper:TransmitNumInternal(Key, Value, ExtraObj) end
