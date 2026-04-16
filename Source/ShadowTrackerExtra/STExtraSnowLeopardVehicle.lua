---@meta

---@class ASTExtraSnowLeopardVehicle: ASTExtraMyriapodVehicle
---@field ModifyCameraLengthSpeedThreshold number
---@field WalkCameraLength number
---@field RunCameraLength number
---@field CameraSwitchTime number
---@field WalkSocketOffset FVector
---@field RunSocketOffset FVector
local ASTExtraSnowLeopardVehicle = {}

function ASTExtraSnowLeopardVehicle:Jump() end

---@return boolean
function ASTExtraSnowLeopardVehicle:Climb() end

---@param SurHit FHitResult
---@return boolean
function ASTExtraSnowLeopardVehicle:TryClimb(SurHit) end

---@param SurHit FHitResult
---@param WallHeightInfo FHitResult
function ASTExtraSnowLeopardVehicle:CalWallHeight(SurHit, WallHeightInfo) end

---@param UpHit FHitResult
---@return boolean
function ASTExtraSnowLeopardVehicle:PhysClimb_ClimbingAndCatchTop(UpHit) end

---@param SurHit FHitResult
---@return boolean
function ASTExtraSnowLeopardVehicle:PhysClimb_TopMove(SurHit) end

---@return boolean
function ASTExtraSnowLeopardVehicle:ClimbEnd_Succeed() end

---@return boolean
function ASTExtraSnowLeopardVehicle:ClimbEnd_Failed() end
