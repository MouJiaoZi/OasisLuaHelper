---@meta

---为 BP_Sky_Sphere 指定一个C++基类方便调用其内部的蓝图逻辑 没有用Interface，因为有个 bImplementedByK2 的坑，导致 Cast interface 失败
---@class ASkySphereBase: AActor
---@field bNameStable boolean
local ASkySphereBase = {}

---@param NewSkyMaterialInst UMaterialInterface
function ASkySphereBase:SetSkyMaterialInstance(NewSkyMaterialInst) end
