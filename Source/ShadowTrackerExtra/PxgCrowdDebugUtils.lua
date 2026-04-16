---@meta

---@class FDebugPrimitive_Line
---@field Start FVector
---@field End FVector
---@field Color FColor
---@field Width number
FDebugPrimitive_Line = {}


---@class FDebugPrimitive_Sphere
---@field Center FVector
---@field Radius number
---@field Color FColor
FDebugPrimitive_Sphere = {}


---@class FDebugPrimitive_Box
---@field Center FVector
---@field Size FVector
---@field Rotation FQuat
---@field Color FColor
FDebugPrimitive_Box = {}


---@class FDebugPrimitive_Cylinder
---@field TopPosition FVector
---@field BottomPosition FVector
---@field Radius number
---@field Color FColor
FDebugPrimitive_Cylinder = {}


---@class FFrameDebugPrimitives
---@field Lines ULuaArrayHelper<FDebugPrimitive_Line>
---@field Arrows ULuaArrayHelper<FDebugPrimitive_Line>
---@field Spheres ULuaArrayHelper<FDebugPrimitive_Sphere>
---@field Circles ULuaArrayHelper<FDebugPrimitive_Sphere>
---@field Boxs ULuaArrayHelper<FDebugPrimitive_Box>
---@field Cylinders ULuaArrayHelper<FDebugPrimitive_Cylinder>
FFrameDebugPrimitives = {}


---@class UPxgCrowdDebugUtils: UActorComponent
---@field FramePrimitives FFrameDebugPrimitives
local UPxgCrowdDebugUtils = {}

---@param Timestamp number
---@param Primitives FFrameDebugPrimitives
function UPxgCrowdDebugUtils:RPC_FramePrimitives(Timestamp, Primitives) end
