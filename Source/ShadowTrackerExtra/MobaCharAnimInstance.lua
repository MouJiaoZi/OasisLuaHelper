---@meta

---@class FFireLoopForceUpdatePlayRate : ULuaSingleDelegate
FFireLoopForceUpdatePlayRate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFireLoopForceUpdatePlayRate:Bind(Callback, Obj) end

---执行委托
function FFireLoopForceUpdatePlayRate:Execute() end


---DeadLock Moba 玩法角色动画蓝图基类
---@class UMobaCharAnimInstance: UAnimInstanceBase
---@field CharAnimListCompTagName string
---@field bNotMobaHeroAvatar boolean
---@field OnFireLoopForceUpdatePlayRate FFireLoopForceUpdatePlayRate
local UMobaCharAnimInstance = {}

---@param MontageToPlay UAnimMontage
---@param bWantsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function UMobaCharAnimInstance:HandlePlayerAnimMontagePlayDelegate(MontageToPlay, bWantsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UMobaCharAnimInstance:OnPawnDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

function UMobaCharAnimInstance:TriggerForceUpdateFireLoopPlayRate() end
