---@meta

---@class FSwimFlipperNetSyncData
---@field bIsWearingFlipper boolean
---@field bIsInJumpCD boolean
---@field JumpCDTotalTime number
---@field JumpCDFinishedTime number
---@field bIsInDashCD boolean
---@field DashCDTotalTime number
---@field DashCDFinishedTime number
FSwimFlipperNetSyncData = {}


---@class USwimFlipperSkill: UPersistEffectWithState
---@field NetSyncData FSwimFlipperNetSyncData
---@field bIsDashing boolean
---@field bLastIsUpWater boolean
---@field bLastCanJump boolean
---@field bLastIsAlmostOnWaterSurface boolean
---@field ConsiderCanJumpHeight number
---@field ConsiderAlmostOnWaterSurfaceHeight number
---@field bLerpSwimJumpControlRotation boolean
---@field bLerpSwimToWaterSurfaceCamera boolean
---@field bTickStopDash boolean
---@field bDebugDrawLocAndRot boolean
---@field bZeroMoveInputDontUpdateSwimUpRate boolean
---@field bLerpJumpEndCameraDontUpdateSwimUpRate boolean
---@field DashTotalTime number
---@field CurrentDashTime number
---@field CurrentDashVelocity number
---@field SwimJumpBeginPitch number
---@field SwimJumpEndPitch number
---@field SwimJumpLerpControlRotationBeginTime number
---@field SwimJumpLerpControlRotationTotalTime number
---@field SwimJumpBeginLerpControlRotation FRotator
---@field SwimJumpTargetLerpControlRotation FRotator
---@field ConsiderFloatUpPitch number
---@field ConsiderDiveDownPitch number
---@field EquipPossessConfig FRegistPossessValue
---@field BeginSpawnBubbleParticleDepth number
---@field SwimFlipperAddYawInputSpeed number
---@field SwimFlipperAddYawInputDegreeThreshold number
---@field bMoveRightAddForwardInput boolean
---@field PlayerDataClass UPlayerNetAlienationData
---@field SwimFlipperJumpCustomMovementMode ECustomMovmentMode
---@field bShouldUpdateSwimDepthRTPC boolean
---@field SwimDepthRTPCName string
---@field SwimAkComponentAttachSocket string
---@field SwimDepthRTPCValueMin number
---@field UpdateSwimDepthRTPCInterval number
---@field SwimDepthRTPCInterpTime number
---@field bAutonomousUpdateSwimDepthRTPC boolean
local USwimFlipperSkill = {}

---@param DeltaTime number
function USwimFlipperSkill:UpdateSwimUpRate(DeltaTime) end

---@param DeltaTime number
function USwimFlipperSkill:UpdateCurrentDashVelocity(DeltaTime) end

function USwimFlipperSkill:TickCharacterUnderWaterState() end

---@param bNewUpWater boolean
---@param bNewCanJump boolean
---@param bNewIsAlmostOnWaterSurface boolean
function USwimFlipperSkill:OnCharacterUnderWaterStateChanged(bNewUpWater, bNewCanJump, bNewIsAlmostOnWaterSurface) end

---@return boolean
function USwimFlipperSkill:ShouldEquipFlipper() end

---@return boolean
function USwimFlipperSkill:CanEquipSwimFlipper() end

function USwimFlipperSkill:PutOnSwimFlipper() end

function USwimFlipperSkill:PutOffSwimFlipper() end

function USwimFlipperSkill:StartDash() end

function USwimFlipperSkill:StopDash() end

function USwimFlipperSkill:AfterJumpIntoWaterForceFloatUp() end

function USwimFlipperSkill:DebugDrawCharacterLocationAndRotation() end

function USwimFlipperSkill:OnRep_NetSyncData() end

function USwimFlipperSkill:CheckEquipSwimFlipper() end

---@param DeltaTime number
function USwimFlipperSkill:LerpSwimToWaterSurfaceCamera(DeltaTime) end

function USwimFlipperSkill:UpdateBubbleParticleQuantity() end

---@param DeltaTime number
function USwimFlipperSkill:LerpSwimJumpEndControlRotation(DeltaTime) end

---@param DeltaTime number
function USwimFlipperSkill:UpdateSwimFlipperYawInput(DeltaTime) end

---@param bIsDisable boolean
---@param Reason string
function USwimFlipperSkill:SetUpdateSwimFlipperYawInputDisabled(bIsDisable, Reason) end

---@param bIsDisable boolean
---@param Reason string
function USwimFlipperSkill:SetUpdateSwimUpRateDisabled(bIsDisable, Reason) end

---@param DeltaTime number
function USwimFlipperSkill:TickSwimFlipperJump(DeltaTime) end

---@param DeltaTime number
function USwimFlipperSkill:UpdateSwimDepthRTPC(DeltaTime) end


---@class USwimFlipperPlayerData: UPlayerNetAlienationData
---@field bPlayerAgreeEquipSwimFlipper boolean
local USwimFlipperPlayerData = {}
