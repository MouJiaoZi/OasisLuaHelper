---@meta

---@class FOnSetupHeroLogicModule : ULuaSingleDelegate
FOnSetupHeroLogicModule = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetupHeroLogicModule:Bind(Callback, Obj) end

---执行委托
function FOnSetupHeroLogicModule:Execute() end


---@class UFC_HeroLogicManager: UFeatureCustomModule
---@field OnSetupHeroLogicModule FOnSetupHeroLogicModule
---@field HeroLogicModuleMap ULuaMapHelper<number, UHeroLogicModuleBase>
---@field CachedHeroLogicModules ULuaArrayHelper<UHeroLogicModuleBase>
local UFC_HeroLogicManager = {}

---@param HeroID number
function UFC_HeroLogicManager:SetupHeroLogicModuleByID(HeroID) end

function UFC_HeroLogicManager:ResetHeroLogicModule() end
