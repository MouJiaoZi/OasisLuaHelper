---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy: UObject
---@field bOverride_InitStrategy boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseStrategy boolean
local UAvatarStrategy = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy:InitStrategy(InTriggerProxy) end

function UAvatarStrategy:ReleaseStrategy() end

---HOT_UPDATE_PROTECT *****************************************
---@param InTargetPtr UObject
function UAvatarStrategy:ModifyPtr(InTargetPtr) end

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy:BP_InitStrategy(InTriggerProxy) end

function UAvatarStrategy:BP_ReleaseStrategy() end
