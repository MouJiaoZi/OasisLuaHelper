---@meta

---@class EAIOrderType
---@field InValid number
---@field MoveTo number @向目标地点移动
---@field MoveAttack number @移动攻击
---@field AttackMove number @攻击移动
---@field MoveToTarget number @向目标移动
---@field AttackTarget number @攻击目标
---@field GuardTarget number @保卫目标
---@field GuardArea number @防守范围
---@field CastSkillNoneTarget number @释放无目标技能
---@field CastSkillOnTarget number @对目标释放技能
---@field CastSkillOnLocation number @对坐标释放技能
---@field IdleShow number @Idle表演
---@field RotateTo number @旋转
---@field Stop number @停止行为
EAIOrderType = {}


---@class UAIOrder: UObject
---@field OrderType EAIOrderType
local UAIOrder = {}


---@class UAIOrder_MoveTo: UAIOrder
---@field Position FVector
---@field MaxTime number
local UAIOrder_MoveTo = {}


---@class UAIOrder_MoveAttack: UAIOrder
---@field Position FVector
---@field MaxTime number
local UAIOrder_MoveAttack = {}


---@class UAIOrder_AttackMove: UAIOrder
---@field Position FVector
---@field MaxTime number
local UAIOrder_AttackMove = {}


---@class UAIOrder_MoveToTarget: UAIOrder
---@field RedirectTime number
---@field AcceptDist number
---@field MaxTime number
local UAIOrder_MoveToTarget = {}


---@class UAIOrder_AttackTarget: UAIOrder
---@field MaxTime number
local UAIOrder_AttackTarget = {}


---@class UAIOrder_GuardTarget: UAIOrder
---@field Radius number
---@field Time number
local UAIOrder_GuardTarget = {}


---@class UAIOrder_GuardArea: UAIOrder
---@field Center FVector
---@field Radius number
---@field RandomMoveInterval number
---@field bChase boolean
---@field Time number
local UAIOrder_GuardArea = {}


---@class UAIOrder_CastSkillNoneTarget: UAIOrder
---@field SkillIndex number
local UAIOrder_CastSkillNoneTarget = {}


---@class UAIOrder_CastSkillOnTarget: UAIOrder
---@field SkillIndex number
---@field Radius number
local UAIOrder_CastSkillOnTarget = {}


---@class UAIOrder_CastSkillOnLocation: UAIOrder
---@field SkillIndex number
---@field Location FVector
---@field Radius number
local UAIOrder_CastSkillOnLocation = {}


---@class UAIOrder_IdleShow: UAIOrder
---@field IdleIndex number
---@field IdleTime number
---@field MaxTime number
local UAIOrder_IdleShow = {}


---@class UAIOrder_RotateTo: UAIOrder
---@field RotateTargetPosition FVector
local UAIOrder_RotateTo = {}


---@class UAIOrder_Stop: UAIOrder
---@field MaxTime number
local UAIOrder_Stop = {}


---@class UAIOrderComponent: UActorComponent
---@field OrderQueue ULuaArrayHelper<UAIOrder>
---@field QueueMaxSize number
local UAIOrderComponent = {}

---@return boolean
function UAIOrderComponent:TryExecuteNextOrder() end

---@param bCallOnFinish boolean
function UAIOrderComponent:EndCurrentOrder(bCallOnFinish) end

function UAIOrderComponent:ClearOrderQueue() end

---@return boolean
function UAIOrderComponent:HasAnyOrder() end
