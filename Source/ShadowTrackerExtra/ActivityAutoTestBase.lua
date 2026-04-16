---@meta

---@class AActivityAutoTestManager: AActor
local AActivityAutoTestManager = {}

---@param ExampleID number
---@param SponsorPC APlayerController
function AActivityAutoTestManager:RequestTest(ExampleID, SponsorPC) end

---@param ExampleClassPath string
---@param SponsorPC APlayerController
function AActivityAutoTestManager:RequestTestByClassPath(ExampleClassPath, SponsorPC) end
