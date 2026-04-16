---@meta

---击退结束原因
---@class EOnHitBackEndReason
---@field EOnHitBackEndReason_Normal number @正常结束
---@field EOnHitBackEndReason_Collision number @碰撞打断
---@field EOnHitBackEndReason_ReplaceByPrior number @高优先级击退打断
---@field EOnHitBackEndReason_Unknown number @Unknown
EOnHitBackEndReason = {}


---@class EFresnelPlayState
---@field EFresnelPlayState_None number @无效果
---@field EFresnelPlayState_WaitForStart number @等待开始
---@field EFresnelPlayState_Play number @播放效果
EFresnelPlayState = {}


---Hit 逻辑信息
---@class FOnHurtHitInfo
---@field HitAvatarPosition EAvatarDamagePosition
---@field HitBone string
---@field HitPosition FVector
---@field AttackDirection FVector_NetQuantizeNormal
FOnHurtHitInfo = {}


---声音
---@class FOnHurtEffect_Base
FOnHurtEffect_Base = {}


---声音
---@class FOnHurtEffect_Sound
FOnHurtEffect_Sound = {}


---特效
---@class FOnHurtEffect_Particle
---@field Scale number
FOnHurtEffect_Particle = {}


---震屏
---@class FOnHurtEffect_CameraShake
---@field ShakeClass UCameraShake
---@field Scale number
FOnHurtEffect_CameraShake = {}


---菲涅尔效果
---@class FOnHurtEffect_Fresnel
---@field Color FLinearColor
---@field Duration number
FOnHurtEffect_Fresnel = {}


---击退
---@class FOnHurtEffect_HitBack
---@field HorizontalSpeed number
---@field VerticalSpeed number
---@field HorizontalFriction number
---@field Duration number
---@field Priority number
FOnHurtEffect_HitBack = {}


---Hit 逻辑信息以及效果资产，用于CS通讯
---@class FOnHurtHitInfoWrapper
---@field OnHurtID number
---@field TimeSeconds number
---@field Info FOnHurtHitInfo
FOnHurtHitInfoWrapper = {}


---HitBack 信息，用于CS通讯
---@class FHitBackParam
---@field TimeSeconds number
---@field CurrentPriority number @当前击退优先级
---@field LastSessionID number @上次击退SessionID
---@field CurrentSessionID number @当前击退SessionID
---@field HitBackDir FVector
---@field HitBackCfg FOnHurtEffect_HitBack
FHitBackParam = {}


---击退开始 Delegate 生效范围: 服务器 && 客户端
---@class FOnHitBackStart : ULuaMulticastDelegate
FOnHitBackStart = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HitBackDir: FVector, HitBackCfg: FOnHurtEffect_HitBack) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHitBackStart:Add(Callback, Obj) end

---触发 Lua 广播
---@param HitBackDir FVector
---@param HitBackCfg FOnHurtEffect_HitBack
function FOnHitBackStart:Broadcast(HitBackDir, HitBackCfg) end


---击退结束 Delegate 生效范围: 服务器 && 客户端
---@class FOnHitBackEnd : ULuaMulticastDelegate
FOnHitBackEnd = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Reason: EOnHitBackEndReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHitBackEnd:Add(Callback, Obj) end

---触发 Lua 广播
---@param Reason EOnHitBackEndReason
function FOnHitBackEnd:Broadcast(Reason) end


---受击效果资产
---@class UOnHurtEffectsDataAsset: UDataAsset
---@field Particle FOnHurtEffect_Particle
---@field Sound FOnHurtEffect_Sound
---@field CameraShake FOnHurtEffect_CameraShake
---@field Fresnel FOnHurtEffect_Fresnel
---@field HitBack FOnHurtEffect_HitBack
---@field OnHurtEffectHandlerClass UOnHurtEffectHandler
local UOnHurtEffectsDataAsset = {}


---@class UOnHurtComponent: UActorComponent
---@field HitInfoWrapper FOnHurtHitInfoWrapper
---@field CacheHitBackParam FHitBackParam
---@field OnHurtEffectHandlers ULuaArrayHelper<UOnHurtEffectHandler>
---@field bVelocityXYUseEnter boolean
---@field OnHitBackStart FOnHitBackStart @击退开始 Delegate (由于丢包或者信息同步不及时等情况，客户端Delegate可能不准确) 生效范围: 服务器 && 客户端
---@field OnHitBackEnd FOnHitBackEnd @击退结束 Delegate (由于丢包或者信息同步不及时等情况，客户端Delegate可能不准确) 生效范围: 服务器 && 客户端
---@field CurrentFrenel FOnHurtEffect_Fresnel
local UOnHurtComponent = {}

---@param InDefaultHitBackMontage UAnimMontage
---@param InDefaultEffect UOnHurtEffectsDataAsset
function UOnHurtComponent:InitParams(InDefaultHitBackMontage, InDefaultEffect) end

---@param Info FOnHurtHitInfo
---@param EffectAsset UOnHurtEffectsDataAsset
function UOnHurtComponent:SetOnHurtHitInfo(Info, EffectAsset) end

---@param NewDuration number
function UOnHurtComponent:SetHitBackTimer(NewDuration) end

---生效范围: 服务器
---@param Direction FVector
---@param HitBackParam FOnHurtEffect_HitBack
---@param Causer AActor
function UOnHurtComponent:StartHitBack(Direction, HitBackParam, Causer) end

---生效范围: 服务器
---@param Reason EOnHitBackEndReason
function UOnHurtComponent:EndHitBack(Reason) end

function UOnHurtComponent:OnRep_HitInfo() end

function UOnHurtComponent:OnRep_HitBackParam() end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return FVector
function UOnHurtComponent:GetEnterVelocity(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return FVector
function UOnHurtComponent:GetVelocity_XY(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return number
function UOnHurtComponent:GetVelocity_Z(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param OnHurtEffectHandler UOnHurtEffectHandler
function UOnHurtComponent:OnHurtEffectHandlerDestroy(OnHurtEffectHandler) end

---开始菲涅尔效果 生效范围: 客户端
---@param Color FLinearColor
---@param Duration number
function UOnHurtComponent:AddFresnelEffect(Color, Duration) end

---停止菲涅尔效果 生效范围: 客户端
function UOnHurtComponent:EndFresnel() end

function UOnHurtComponent:StartFresnel() end

function UOnHurtComponent:StartFresnelOneFrameDelay() end
