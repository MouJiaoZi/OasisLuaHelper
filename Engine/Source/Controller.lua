---@meta

---@class FInstigatedAnyDamageSignature : ULuaMulticastDelegate
FInstigatedAnyDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number, DamageType: UDamageType, DamagedActor: AActor, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FInstigatedAnyDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
---@param DamageType UDamageType
---@param DamagedActor AActor
---@param DamageCauser AActor
function FInstigatedAnyDamageSignature:Broadcast(Damage, DamageType, DamagedActor, DamageCauser) end


---Controllers are non-physical actors that can possess a Pawn to control its actions.  PlayerControllers are used by human players to control pawns, while AIControllers implement the artificial intelligence for the pawns they control. Controllers take control of a pawn using their Possess() method, and relinquish control of the pawn by calling UnPossess(). Controllers receive notifications for many of the events occurring for the Pawn they are controlling.  This gives the controller the opportunity to implement the behavior in response to this event, intercepting the event and superseding the Pawn's default behavior. ControlRotation (accessed via GetControlRotation()), determines the viewing/aiming direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.
---@class AController: AActor, INavAgentInterface
---@field ControlRotation FRotator @The control rotation of the Controller. See GetControlRotation.
---@field bAttachToPawn number @If true, the controller location will match the possessed Pawn's location. If false, it will not be updated. Rotation will match ControlRotation in either case. Since a Controller's location is normally inaccessible, this is intended mainly for purposes of being able to attach an Actor that follows the possessed Pawn location, but that still has the full aim rotation (since a Pawn might update only some components of the rotation).
---@field bIsPlayerController number @Whether this controller is a PlayerController.
---@field IgnoreMoveInput number @Ignores movement input. Stacked state storage, Use accessor function IgnoreMoveInput()
---@field IgnoreLookInput number @Ignores look input. Stacked state storage, use accessor function IgnoreLookInput().
---@field StateName string
---@field OnInstigatedAnyDamage FInstigatedAnyDamageSignature @Called when the controller has instigated damage in any way
local AController = {}

---Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view), and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example).
---@return FRotator
function AController:GetControlRotation() end

---Set the control rotation. The RootComponent's rotation will also be updated to match it if RootComponent->bAbsoluteRotation is true.
---@param NewRotation FRotator
function AController:SetControlRotation(NewRotation) end

---Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created.
---@param NewLocation FVector
---@param NewRotation FRotator
function AController:SetInitialLocationAndRotation(NewLocation, NewRotation) end

---Checks line to center and top of other actor
---@param Other AActor
---@param ViewPoint FVector
---@param bAlternateChecks boolean
---@return boolean
function AController:LineOfSightTo(Other, ViewPoint, bAlternateChecks) end

---Replication Notification Callbacks
function AController:OnRep_Pawn() end

function AController:OnRep_PlayerState() end

---Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports).
---@param NewLocation FVector
---@param NewRotation FRotator
function AController:ClientSetLocation(NewLocation, NewRotation) end

---Replicated function to set the pawn rotation, allowing the server to force.
---@param NewRotation FRotator
---@param bResetCamera boolean
function AController:ClientSetRotation(NewRotation, bResetCamera) end

---Get the desired pawn target rotation
---@return FRotator
function AController:GetDesiredRotation() end

---Returns whether this Controller is a PlayerController.
---@return boolean
function AController:IsPlayerController() end

---Returns whether this Controller is a locally controlled PlayerController.
---@return boolean
function AController:IsLocalPlayerController() end

---Returns whether this Controller is a local controller.
---@return boolean
function AController:IsLocalController() end

---Handles attaching this controller to the specified pawn. Only runs on the network authority (where HasAuthority() returns true).
---@param InPawn APawn
function AController:Possess(InPawn) end

---Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()).
function AController:UnPossess() end

---Aborts the move the controller is currently performing
function AController:StopMovement() end

---Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput.
---@param bNewMoveInput boolean
function AController:SetIgnoreMoveInput(bNewMoveInput) end

---Stops ignoring move input by resetting the ignore move input state.
function AController:ResetIgnoreMoveInput() end

---Returns true if movement input is ignored.
---@return boolean
function AController:IsMoveInputIgnored() end

---Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput.
---@param bNewLookInput boolean
function AController:SetIgnoreLookInput(bNewLookInput) end

---Stops ignoring look input by resetting the ignore look input state.
function AController:ResetIgnoreLookInput() end

---Returns true if look input is ignored.
---@return boolean
function AController:IsLookInputIgnored() end

---Reset move and look input ignore flags.
function AController:ResetIgnoreInputFlags() end

---Event when this controller instigates ANY damage
---@param Damage number
---@param DamageType UDamageType
---@param DamagedActor AActor
---@param DamageCauser AActor
function AController:ReceiveInstigatedAnyDamage(Damage, DamageType, DamagedActor, DamageCauser) end
