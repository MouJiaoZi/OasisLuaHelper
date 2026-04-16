---@meta

---用于异步加载新版受击动画资源，以及避免权重曲线被GC问题
---@class USTExtraAnimFMObj_HurtDataLoad: UAnimFunctionModule_ObjInstance
---@field HurtWeightCurveConfig_Soft UHurtAnimWeightDataAsset
---@field LoadedWeightCurve ULuaArrayHelper<UCurveFloat>
---@field OnAsyncLoadedHurtWeightCurve FAsyncLoadHurtWeightCurveDel
local USTExtraAnimFMObj_HurtDataLoad = {}

function USTExtraAnimFMObj_HurtDataLoad:OnAsyncHurtDataAssetLoaded() end

---@param LoadedCurvePath ULuaArrayHelper<FSoftObjectPath>
function USTExtraAnimFMObj_HurtDataLoad:OnAsyncLoadedHurtCurve(LoadedCurvePath) end
