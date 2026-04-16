---@meta

---@class FOnSmokeGrenadeAssist : ULuaMulticastDelegate
FOnSmokeGrenadeAssist = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Killer: ASTExtraPlayerState, Victim: ASTExtraPlayerState, Assist: ASTExtraPlayerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSmokeGrenadeAssist:Add(Callback, Obj) end

---触发 Lua 广播
---@param Killer ASTExtraPlayerState
---@param Victim ASTExtraPlayerState
---@param Assist ASTExtraPlayerState
function FOnSmokeGrenadeAssist:Broadcast(Killer, Victim, Assist) end


---@class USmokeGrenadeAssistComponent: UActorComponent
---@field ConeAngle number
---@field ConeLength number
---@field CylinderRadius number
---@field CylinderDistance number
---@field SmokeGrenadeAssistDelegate FOnSmokeGrenadeAssist
---@field bShouldAddAssistCount boolean
---@field bShowDebugDraw boolean
---@field bSphereCylinderIntersection boolean
---@field bSphereConeIntersection boolean
local USmokeGrenadeAssistComponent = {}

---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param _finalDamage number
---@param _hitImpulseDir FVector
---@param _hitInfo FHitResult
---@param bIsHeadShot boolean
---@param killer ASTExtraPlayerState
function USmokeGrenadeAssistComponent:OnGotoDieHandleAssists(EventInstigator, DamageCauser, DamageEvent, _finalDamage, _hitImpulseDir, _hitInfo, bIsHeadShot, killer) end
