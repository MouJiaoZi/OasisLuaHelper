---@meta

---Class responsible for capturing scene data
---@class UGameGuardFrameCapture: UObject, ICaptureProtocolHost
---@field FetchFrameDelay number
local UGameGuardFrameCapture = {}

function UGameGuardFrameCapture:Initialize() end

function UGameGuardFrameCapture:Tick() end

---Initialize the capture so that it is able to start capturing frames
function UGameGuardFrameCapture:StartCapture() end
