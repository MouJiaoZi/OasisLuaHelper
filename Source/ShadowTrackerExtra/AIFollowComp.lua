---@meta

---@class UAIFollowComp: UActorComponent
---@field FollowPartnerDataConfig FAIFollowDataConfig @跟随配置数据
---@field OwnerPlayerBBName string
---@field FollowPawnBBName string
---@field FollowStatusBBName string
local UAIFollowComp = {}

---初始化
---@param InOwnerAIC AAIController
---@param InOwnerPawn ASTExtraSimpleCharacter
---@param InOwnerPlayer ASTExtraCharacter
---@param InFollowPawn ASTExtraCharacter
function UAIFollowComp:Init(InOwnerAIC, InOwnerPawn, InOwnerPlayer, InFollowPawn) end

---改变跟随玩家
---@param InFollowPawn ASTExtraCharacter
function UAIFollowComp:ChangeFollowPlayer(InFollowPawn) end

---设置是否在跟随中(跟随依然生效)
---@param bInFollowStatus boolean
function UAIFollowComp:SetInFollowStatus(bInFollowStatus) end

---获取跟随点
---@param FollowLocation FVector
---@param RaycastAngle number
---@return number
function UAIFollowComp:GetFollowLocation(FollowLocation, RaycastAngle) end

---获取当前速度类型
---@return EAIFollowSpeedType
function UAIFollowComp:GetCurSpeed() end

---获取当前同步(被跟随者)速度类型
---@return EAIFollowSpeedType
function UAIFollowComp:GetSyncSpeed() end

---获取当前阵型类型
---@return EAIFollowFormationType
function UAIFollowComp:GetCurFormationType() end

---玩家是否在小范围内绕圈
---@return boolean
function UAIFollowComp:IsMoveCircleInSmallRange() end

---锁定速度类型，期间速度值会强制锁定到类型对应的速度值。当军犬离跟随者较远时会强制设置较高速度
---@param InLockedSpeedType EAIFollowSpeedType
---@param bInLockSpeedType boolean
function UAIFollowComp:LockSpeedType(InLockedSpeedType, bInLockSpeedType) end

---锁定当前速度类型和数值。播放RootMotion期间会锁定
---@param InLockedSpeedType EAIFollowSpeedType
---@param bInLockSpeedTypeAndValue boolean
function UAIFollowComp:LockSpeedTypeAndValue(InLockedSpeedType, bInLockSpeedTypeAndValue) end

---@param TargetSpeed EAIFollowSpeedType
function UAIFollowComp:OnSpeedChange(TargetSpeed) end
