---@meta

---@class FPlayerUpgradeData
---@field Level number
---@field HealthGrowth number
---@field SpeedGrowth number
---@field MeleeDamageGrowth number
FPlayerUpgradeData = {}


---@class FOnPlayerLevelUp : ULuaMulticastDelegate
FOnPlayerLevelUp = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerUID: number, Level: number, bRealTime: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerLevelUp:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerUID number
---@param Level number
---@param bRealTime boolean
function FOnPlayerLevelUp:Broadcast(PlayerUID, Level, bRealTime) end


---@class UPlayerUpgradeComponent: UActorComponent, IObjectPoolInterface
---@field DataTableName FSoftObjectPath
---@field LevelUpParticle UParticleSystem
---@field LevelUpParticleSocketName string
---@field MaxLevel number
---@field CurrentLevel number
---@field bFullHealthWhenLevelUp boolean
---@field HealthAddedWhenLevelUp ULuaMapHelper<number, number>
---@field bEvolutionWhenMaxLevel boolean
---@field DelayInitialLevelTime number
---@field PlayerUpgradeData ULuaMapHelper<number, FPlayerUpgradeData>
---@field OnPlayerLevelUp FOnPlayerLevelUp
local UPlayerUpgradeComponent = {}

---@param bRestoreLevel boolean
---@return boolean
function UPlayerUpgradeComponent:LevelUp(bRestoreLevel) end

function UPlayerUpgradeComponent:OnRep_CurrentLevel() end

---@param CurLevel number
---@param bRestoreLevel boolean
function UPlayerUpgradeComponent:NotifyLevelUp(CurLevel, bRestoreLevel) end

function UPlayerUpgradeComponent:OnOwnerIsPossessed() end
