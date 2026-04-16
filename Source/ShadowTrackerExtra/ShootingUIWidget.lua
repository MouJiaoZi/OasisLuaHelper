---@meta

---@class FOnReloadCountDownChangeDelegate : ULuaMulticastDelegate
FOnReloadCountDownChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CountDownValue: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReloadCountDownChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CountDownValue string
function FOnReloadCountDownChangeDelegate:Broadcast(CountDownValue) end


---@class FOnGunBulletNumChangeDelegate : ULuaMulticastDelegate
FOnGunBulletNumChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GunBulletNum: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGunBulletNumChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param GunBulletNum string
function FOnGunBulletNumChangeDelegate:Broadcast(GunBulletNum) end


---@class FOnBulletLeftNumChangeDelegate : ULuaMulticastDelegate
FOnBulletLeftNumChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BulletLeftNum: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletLeftNumChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BulletLeftNum string
function FOnBulletLeftNumChangeDelegate:Broadcast(BulletLeftNum) end


---@class UShootingUIWidget: UUAEUserWidget
---@field ReloadingCD number
---@field ReloadCountDownText string
---@field GunBulletText string
---@field BulletLeftCount string
---@field OnReloadCountDownChangeDelegate FOnReloadCountDownChangeDelegate
---@field OnGunBulletNumChangeDelegate FOnGunBulletNumChangeDelegate
---@field OnBulletLeftNumChangeDelegate FOnBulletLeftNumChangeDelegate
---@field MeleeNormalIconOverride FSlateBrush
---@field MeleeLightIconOverride FSlateBrush
---@field JumpHighLightIcon FSlateBrush
---@field JumpNormalIcon FSlateBrush
---@field ClimbHighLightIcon FSlateBrush
---@field ClimbNormalIcon FSlateBrush
---@field ChangeJumpIcon boolean
---@field CheckIntervalTime number
---@field RefreshedClimbMode number
---@field UseFormatForReload boolean
---@field CountDownStr string
local UShootingUIWidget = {}

---@param InNormal FSlateBrush
---@param InLight FSlateBrush
function UShootingUIWidget:SetMeleeOverrideBrushes(InNormal, InLight) end

---@param AllCanvasLayer ULuaArrayHelper<UCanvasPanel>
---@param bShow boolean
function UShootingUIWidget:ShowHideAllMultiLayerUINativeEvent(AllCanvasLayer, bShow) end

---@param InObject UObject
function UShootingUIWidget:BindCustomObject(InObject) end

function UShootingUIWidget:UpdateJumpImage() end
