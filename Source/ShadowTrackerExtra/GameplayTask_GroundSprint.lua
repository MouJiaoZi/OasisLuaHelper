---@meta

---@class EGroundSprintMode
---@field ViewDirection number @//*UGC* 往视角方向转向
---@field JoystickDirection number @//*UGC* 摇杆方向转向
---@field CustomDirection number @//*UGC* 自定义方向转向,取CustomDirectionFunction返回Vector
EGroundSprintMode = {}


---冲刺过程中的角色朝向
---@class EFacingDirectionMode
---@field DashDirection number @//*UGC* 朝向速度方向
---@field ViewDirection number @//*UGC* 朝向视角方向
EFacingDirectionMode = {}


---@class FGameplayTask_CollisionCamp
---@field IgnoreSame boolean
---@field IgnoreEnemy boolean
---@field IgnoreNeutral boolean
FGameplayTask_CollisionCamp = {}


---@class FGameplayTask_GroundSprint_Data
---@field FacingDirectionMode EFacingDirectionMode
---@field TurnSpeed number
---@field bGravityEnabled boolean
---@field GravityScale number
---@field CollisionCamp FGameplayTask_CollisionCamp
---@field DisableFallingTime number
---@field MaxSprintSpeedLimit number
---@field CustomMode ECustomMovmentMode
---@field ClearVelocityOnExit boolean
FGameplayTask_GroundSprint_Data = {}


---@class FGoundSprintMoveBlockDelegate : ULuaMulticastDelegate
FGoundSprintMoveBlockDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ACharacter, HitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGoundSprintMoveBlockDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ACharacter
---@param HitResult FHitResult
function FGoundSprintMoveBlockDelegate:Broadcast(SelfRef, HitResult) end


---@class UGameplayTask_GroundSprint: UUAEGameplayTask
---@field GroundSprint_Data FGameplayTask_GroundSprint_Data
---@field GroundSprintMode EGroundSprintMode
---@field CustomDashDirection FVector
---@field OriginMovementMode EMovementMode
---@field OriginJoystickInputState FVector
---@field OnMoveBlockDelegate FGoundSprintMoveBlockDelegate
local UGameplayTask_GroundSprint = {}

---@param SelfRef ACharacter
---@param HitResult FHitResult
function UGameplayTask_GroundSprint:MoveBlockHitResultInner(SelfRef, HitResult) end

---@param SelfRef ASTExtraCharacter
---@param HitResult FHitResult
function UGameplayTask_GroundSprint:MoveBlockCharacter(SelfRef, HitResult) end

---@param SelfRef AGenericCharacter
---@param HitResult FHitResult
function UGameplayTask_GroundSprint:MoveBlockGenericCharacter(SelfRef, HitResult) end

---@param Input FVector
function UGameplayTask_GroundSprint:OriginJoystickInputChange(Input) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return FVector
function UGameplayTask_GroundSprint:CalXYCustomVelocity(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
---@return number
function UGameplayTask_GroundSprint:CalZCustomVelocity(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end

---@param CustomDashDir FVector
function UGameplayTask_GroundSprint:SetCustomDashDirection(CustomDashDir) end

---@return FVector
function UGameplayTask_GroundSprint:GetCustomDashDirection() end
