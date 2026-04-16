---@meta

---@class URabbitGlidingAnimInstance: USubExtraAnimInstanceBase
---@field TransformedVelocityC FVector
---@field LastScreenLookLocC FVector2D
---@field LastVelocityDegreesC number
---@field CurVelocityDegreesC number
local URabbitGlidingAnimInstance = {}

---@param DeltaTime number
function URabbitGlidingAnimInstance:CalculateGlidingAnimParamC(DeltaTime) end
