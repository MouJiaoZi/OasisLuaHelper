---@meta

---@class ACLSequence: AActor
---@field CLightPrefix string
---@field MaxCLightNum number
---@field DefaultStartFrameIndex number
---@field CLSAmbientLightIndex number
local ACLSequence = {}

---@param CLSName string
---@return boolean
function ACLSequence:LoadCLSequence(CLSName) end

function ACLSequence:UnloadCLSequence() end

---@param bPlayFromStart boolean
function ACLSequence:PlayCLSequence(bPlayFromStart) end

---@param ElapsedTime number
function ACLSequence:JumpCLSequenceTo(ElapsedTime) end

---@param TargetFrame number
function ACLSequence:JumpCLSequenceToFrame(TargetFrame) end

function ACLSequence:StopPlayingCLSequence() end

---@return boolean
function ACLSequence:IsCLSequenceLoaded() end

---@return boolean
function ACLSequence:IsCLSequencePlaying() end
