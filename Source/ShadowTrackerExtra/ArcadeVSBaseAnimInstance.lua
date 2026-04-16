---@meta

---This is a base class for ArcadeVSVehicle's animation blueprints to inherit from. If assigned to the vehicle's skeletal mesh, the ArcadeVSVehicle will compute the wheel rotation and wheel direction values based on it's settings. - Wheel rotation will use the actual vehicle speed and specified wheel radius setting. - Wheel direction will use the turning axis scale and the min/max angles specified - Drift is only used by ArcadeVS_Drift_VehicleAnim for BP_ArcadeVS_Kart to simulate old school racing game drifting animations. Please check ArcadeVS_Basic_VehicleAnim and ArcadeVS_Drift_VehicleAnim for the actual blueprint code applying those values.
---@class UArcadeVSBaseAnimInstance: UAnimInstance
---@field wheelRotation number @Rotation of the wheel, computed in ArcadeVSVehicle using the vehicle speed and specified wheel radius setting
---@field wheelDirection number @Direction of the front wheels, computed in ArcadeVSVehicle using the turning axis scale and the min/max angles specified
---@field wheelsOffsets ULuaArrayHelper<FVector> @Offsets to be applied to the wheel bones to simulate the movement of the suspension
---@field driftDirection number @Drift direction computed in ArcadeVSVehicle when starting a drift
---@field tiltAngle number @Drift direction computed in ArcadeVSVehicle when starting a drift
---@field rollAngle number @Drift direction computed in ArcadeVSVehicle when starting a drift
local UArcadeVSBaseAnimInstance = {}
