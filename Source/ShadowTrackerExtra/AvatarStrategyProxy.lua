---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategyProxy: UObject
---@field bOverride_InitStrategyProxy boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseStrategyProxy boolean
---@field bOverride_GetAvatarStrategy boolean
---@field ConfigStrategyMap ULuaMapHelper<EAvatarStrategyType, UAvatarStrategy> @HOT_UPDATE_PROTECT *****************************************
---@field RuntimeStrategyMap ULuaMapHelper<EAvatarStrategyType, UAvatarStrategy>
local UAvatarStrategyProxy = {}

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy:InitStrategyProxy() end

function UAvatarStrategyProxy:ReleaseStrategyProxy() end

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy:BP_InitStrategyProxy() end

function UAvatarStrategyProxy:BP_ReleaseStrategyProxy() end
