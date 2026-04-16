---@meta

---@class AArtAutomationTestPlayerController: ASTExtraPlayerController
---@field RenderFrameNeedToWait number
local AArtAutomationTestPlayerController = {}

---@param World UWorld
---@param PointMap ULuaMapHelper<string, FVector>
---@param RotMap ULuaMapHelper<string, FRotator>
---@param NameArray ULuaArrayHelper<string>
function AArtAutomationTestPlayerController:TriggerArtAutomationTest(World, PointMap, RotMap, NameArray) end

---@param World UWorld
function AArtAutomationTestPlayerController:OnCaptureCurrentViewAsNewPoint(World) end

---@param RegionID string
---@param RegionPosition FVector
---@param Rotator FRotator
function AArtAutomationTestPlayerController:OnCollectArtAutomationTrigger(RegionID, RegionPosition, Rotator) end

---@param RegionPosition FVector
---@param Rotator FRotator
function AArtAutomationTestPlayerController:OnSnapPawnToTargetTransform(RegionPosition, Rotator) end

---@param RegionID string
---@param RegionPosition FVector
---@param Rotator FRotator
function AArtAutomationTestPlayerController:CollectArtAutomationStats(RegionID, RegionPosition, Rotator) end

function AArtAutomationTestPlayerController:FinishAllCollectArtAutomationStats() end

---@param rate number
function AArtAutomationTestPlayerController:NewMoveForward(rate) end

---@param rate number
function AArtAutomationTestPlayerController:NewMoveRight(rate) end

---@param rate number
function AArtAutomationTestPlayerController:NewMoveUp(rate) end
