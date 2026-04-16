---@meta

---@class EAttenuationDistanceModel
---@field Linear number
---@field Logarithmic number
---@field Inverse number
---@field LogReverse number
---@field NaturalSound number
---@field Custom number
EAttenuationDistanceModel = {}


---@class EAttenuationShape
---@field Sphere number
---@field Capsule number
---@field Box number
---@field Cone number
EAttenuationShape = {}


---@class FBaseAttenuationSettings
---@field DistanceAlgorithm EAttenuationDistanceModel
---@field CustomAttenuationCurve FRuntimeFloatCurve
---@field AttenuationShape EAttenuationShape
---@field dBAttenuationAtMax number
---@field AttenuationShapeExtents FVector
---@field ConeOffset number
---@field FalloffDistance number
FBaseAttenuationSettings = {}
