---@meta

---@class FOnOBEffectBulletMoveEndDelegate : ULuaMulticastDelegate
FOnOBEffectBulletMoveEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Bullet: AOBEffectBullet) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOBEffectBulletMoveEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Bullet AOBEffectBullet
function FOnOBEffectBulletMoveEndDelegate:Broadcast(Bullet) end


---@class AOBEffectBullet: AActor
---@field MaxMovingTime number
---@field OnOBEffectBulletMoveEnd FOnOBEffectBulletMoveEndDelegate
---@field bHasApplyedBulletTrackSkin boolean
---@field bIsMoving boolean
---@field MoveSpeed number
---@field MoveDir FVector
---@field EndPos FVector
---@field StartPos FVector
---@field CurMovingTime number
local AOBEffectBullet = {}

---@return FVector
function AOBEffectBullet:GetLaunchStartPos() end

---@param ShootWeapon ASTExtraShootWeapon
function AOBEffectBullet:LaunchBP(ShootWeapon) end
