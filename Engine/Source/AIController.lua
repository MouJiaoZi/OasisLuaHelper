---@meta

---@class FAIMoveCompletedSignature : ULuaMulticastDelegate
FAIMoveCompletedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RequestID: FAIRequestID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIMoveCompletedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param RequestID FAIRequestID
function FAIMoveCompletedSignature:Broadcast(RequestID) end


---AIController is the base class of controllers for AI-controlled Pawns. Controllers are non-physical actors that can be attached to a pawn to control its actions. AIControllers manage the artificial intelligence for the pawns they control. In networked games, they only exist on the server.
---@class AAIController: AController, IAIPerceptionListenerInterface, IGameplayTaskOwnerInterface, IGenericTeamAgentInterface, IVisualLoggerDebugSnapshotInterface
---@field bStopAILogicOnUnposses number @By default AI's logic gets stopped when controlled Pawn is unpossesed. Setting this flag to false will make AI logic persist past loosing controll over a pawn
---@field bLOSflag number @used for alternating LineOfSight traces
---@field bSkipExtraLOSChecks number @Skip extra line of sight traces to extremities of target being checked.
---@field bAllowStrafe number @Is strafing allowed during movement?
---@field bWantsPlayerState number @Specifies if this AI wants its own PlayerState.
---@field bSetControlRotationFromPawnOrientation number @Copy Pawn rotation to ControlRotation, if there is no focus point.
---@field DefaultNavigationFilterClass UNavigationQueryFilter
---@field ReceiveMoveCompleted FAIMoveCompletedSignature @Blueprint notification that we've completed the current movement request
local AAIController = {}

---Event called when PossessedPawn is possessed by this controller.
---@param PossessedPawn APawn
function AAIController:OnPossess(PossessedPawn) end

---Gets triggered after given pawn has been unpossesed
---@param UnpossessedPawn APawn
function AAIController:OnUnpossess(UnpossessedPawn) end

---Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following
---@param Goal AActor
---@param AcceptanceRadius number
---@param bStopOnOverlap boolean
---@param bUsePathfinding boolean
---@param bCanStrafe boolean
---@param FilterClass UNavigationQueryFilter
---@param bAllowPartialPath boolean
---@return EPathFollowingRequestResult
function AAIController:MoveToActor(Goal, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bCanStrafe, FilterClass, bAllowPartialPath) end

---Makes AI go toward specified Dest location, aborts any active path following
---@param Dest FVector
---@param AcceptanceRadius number
---@param bStopOnOverlap boolean
---@param bUsePathfinding boolean
---@param bProjectDestinationToNavigation boolean
---@param bCanStrafe boolean
---@param FilterClass UNavigationQueryFilter
---@param bAllowPartialPath boolean
---@param bUseNavLink boolean
---@return EPathFollowingRequestResult
function AAIController:MoveToLocation(Dest, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bProjectDestinationToNavigation, bCanStrafe, FilterClass, bAllowPartialPath, bUseNavLink) end

---Returns status of path following
---@return EPathFollowingStatus
function AAIController:GetMoveStatus() end

---Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).
---@return boolean
function AAIController:HasPartialPath() end

---Returns position of current path segment's end.
---@return FVector
function AAIController:GetImmediateMoveDestination() end

---Updates state of movement block detection.
---@param bEnable boolean
function AAIController:SetMoveBlockDetection(bEnable) end

---Starts executing behavior tree.
---@param BTAsset UBehaviorTree
---@return boolean
function AAIController:RunBehaviorTree(BTAsset) end

---Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist.
---@param BlackboardAsset UBlackboardData
---@param BlackboardComponent UBlackboardComponent
---@return boolean
function AAIController:UseBlackboard(BlackboardAsset, BlackboardComponent) end

---@param ResourceClass UGameplayTaskResource
function AAIController:ClaimTaskResource(ResourceClass) end

---@param ResourceClass UGameplayTaskResource
function AAIController:UnclaimTaskResource(ResourceClass) end

---@param BlackboardComp UBlackboardComponent
---@param BlackboardAsset UBlackboardData
function AAIController:OnUsingBlackBoard(BlackboardComp, BlackboardAsset) end

---Retrieve the final position that controller should be looking at.
---@return FVector
function AAIController:GetFocalPoint() end

---Retrieve the focal point this controller should focus to on given actor.
---@param Actor AActor
---@return FVector
function AAIController:GetFocalPointOnActor(Actor) end

---Set the position that controller should be looking at.
---@param FP FVector
function AAIController:K2_SetFocalPoint(FP) end

---Set Focus for actor, will set FocalPoint as a result.
---@param NewFocus AActor
function AAIController:K2_SetFocus(NewFocus) end

---Clears Focus, will also clear FocalPoint as a result
function AAIController:K2_ClearFocus() end

---@param NewlyClaimed FGameplayResourceSet
---@param FreshlyReleased FGameplayResourceSet
function AAIController:OnGameplayTaskResourcesClaimed(NewlyClaimed, FreshlyReleased) end
