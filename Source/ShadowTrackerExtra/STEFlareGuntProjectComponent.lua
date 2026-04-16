---@meta

---@class FOnCallFlareGunSummonVoice : ULuaMulticastDelegate
FOnCallFlareGunSummonVoice = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InTeamID: number, InAbilityID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCallFlareGunSummonVoice:Add(Callback, Obj) end

---触发 Lua 广播
---@param InTeamID number
---@param InAbilityID number
function FOnCallFlareGunSummonVoice:Broadcast(InTeamID, InAbilityID) end


---@class FOnAssetAsyncFinished : ULuaMulticastDelegate
FOnAssetAsyncFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InObject: UObject) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAssetAsyncFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param InObject UObject
function FOnAssetAsyncFinished:Broadcast(InObject) end


---@class USTEFlareGuntProjectComponent: USTEShootWeaponProjectComponent
---@field bUseMuzzleDirection boolean
---@field UseCameraRotThs number
---@field OnCallFlareGunSummonVoiceDelegate FOnCallFlareGunSummonVoice
---@field OnAssetAsyncFinishedDelegate FOnAssetAsyncFinished
local USTEFlareGuntProjectComponent = {}

---@param InTeamID number
---@param InAbilityID number
function USTEFlareGuntProjectComponent:TryCallFlareGunSummonVoice(InTeamID, InAbilityID) end

---@param InSourcePath FSoftObjectPath
function USTEFlareGuntProjectComponent:TryLoadFireGunAbilityVoiceAsync(InSourcePath) end

---@param ResPath FSoftObjectPath
function USTEFlareGuntProjectComponent:OnAsyncLoadingFlareGunAbilityAssetFinished(ResPath) end
