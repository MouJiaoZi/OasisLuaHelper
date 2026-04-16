---@meta

---Visualizer component class The visualizer is a very handy visual debugger actor component that can be added to any ArcadeVSVehicle class. It will draw the actual forces applied to the vehicle as well as its center of mass and suspension ray casts.
---@class UArcadeVSVisualizer: UActorComponent
---@field _enabled boolean
---@field _useDebugMaterial boolean
---@field _lifeTime number
---@field _forceScalingFactor number
---@field _arrowLength number
---@field _arrowThickness number
---@field _suspensionLineWidth number
---@field _drawCenterOfMass boolean
---@field _drawTractionOffset boolean
---@field _drawSuspensionRayCasts boolean
---@field _drawAcceleration boolean
---@field _drawLinearVelocity boolean
---@field _drawAdherence boolean
local UArcadeVSVisualizer = {}
