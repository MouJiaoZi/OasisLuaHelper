---@meta

---@class FInfPlayerUpgradeData
---@field Level number
---@field HealthGrowth number
---@field SpeedGrowth number
---@field MeleeDamageGrowth number
---@field WeaponDMGGrowth number
FInfPlayerUpgradeData = {}


---@class FOnInfPlayerLevelUp : ULuaMulticastDelegate
FOnInfPlayerLevelUp = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerUID: number, Level: number, bRealTime: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnInfPlayerLevelUp:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerUID number
---@param Level number
---@param bRealTime boolean
function FOnInfPlayerLevelUp:Broadcast(PlayerUID, Level, bRealTime) end


---@class UPlayerUpgradeComponent2: UActorComponent, IObjectPoolInterface
---@field DataTableName FSoftObjectPath
---@field LevelUpParticle UParticleSystem
---@field LevelUpParticleSocketName string
---@field MaxLevel number
---@field CurrentLevel number
---@field bFullHealthWhenLevelUp boolean
---@field HealthAddedWhenLevelUp ULuaMapHelper<number, number>
---@field DelayInitialLevelTime number
---@field PlayerUpgradeData ULuaMapHelper<number, FInfPlayerUpgradeData>
---@field OnInfPlayerLevelUp FOnInfPlayerLevelUp
---@field bModifiedHealthMax boolean
local UPlayerUpgradeComponent2 = {}

---@param bRestoreLevel boolean
---@return boolean
function UPlayerUpgradeComponent2:LevelUp(bRestoreLevel) end

---@param Level number
---@param bRestoreLevel boolean
---@return boolean
function UPlayerUpgradeComponent2:LevelUpTo(Level, bRestoreLevel) end

function UPlayerUpgradeComponent2:InitPlayerUpgradeDataFromTable() end

function UPlayerUpgradeComponent2:InitPlayerAttrs() end

function UPlayerUpgradeComponent2:OnRep_CurrentLevel() end

---@param Level number
function UPlayerUpgradeComponent2:UpdatePlayerAttrs(Level) end

function UPlayerUpgradeComponent2:UpdateCurrentLevel() end

---@param CurLevel number
---@param bRestoreLevel boolean
function UPlayerUpgradeComponent2:NotifyLevelUp(CurLevel, bRestoreLevel) end

function UPlayerUpgradeComponent2:OnOwnerIsPossessed() end

function UPlayerUpgradeComponent2:GetCurrentAttr() end
