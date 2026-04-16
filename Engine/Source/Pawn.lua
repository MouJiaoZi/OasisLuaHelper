---@meta

---@class FOnControllerArrived : ULuaSingleDelegate
FOnControllerArrived = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnControllerArrived:Bind(Callback, Obj) end

---执行委托
function FOnControllerArrived:Execute() end


---@class FOnClientRestart : ULuaSingleDelegate
FOnClientRestart = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientRestart:Bind(Callback, Obj) end

---执行委托
function FOnClientRestart:Execute() end


---Pawn is the base class of all actors that can be possessed by players or AI. They are the physical representations of players and creatures in a level.
---@class APawn: AActor, INavAgentInterface
---@field bUseControllerRotationPitch boolean @If true, this Pawn's pitch will be updated to match the Controller's ControlRotation pitch, if controlled by a PlayerController.
---@field bUseControllerRotationYaw boolean @If true, this Pawn's yaw will be updated to match the Controller's ControlRotation yaw, if controlled by a PlayerController.
---@field bUseControllerRotationRoll boolean @If true, this Pawn's roll will be updated to match the Controller's ControlRotation roll, if controlled by a PlayerController.
---@field bCanAffectNavigationGeneration number @If set to false (default) given pawn instance will never affect navigation generation. Setting it to true will result in using regular AActor's navigation relevancy calculation to check if this pawn instance should affect navigation generation Use SetCanAffectNavigationGeneration to change this value at runtime. Note that modifying this value at runtime will result in any navigation change only if runtime navigation generation is enabled.
---@field bUseViewTranslatedTransform number
---@field BaseEyeHeight number @Base eye height above collision center.
---@field AutoPossessPlayer EAutoReceiveInput @Determines which PlayerController, if any, should automatically possess the pawn when the level starts or when the pawn is spawned.
---@field AutoPossessAI EAutoPossessAI @Determines when the Pawn creates and is possessed by an AI Controller (on level start, when spawned, etc). Only possible if AIControllerClass is set, and ignored if AutoPossessPlayer is enabled.
---@field AIControllerClass AController @Default class to use when pawn is controlled by AI.
---@field RemoteViewPitch number @Replicated so we can see where remote clients are looking.
---@field OnControllerArrived FOnControllerArrived
---@field OnPawnClientRestart FOnClientRestart
---@field ControlInputVector FVector @Accumulated control input vector, stored in world space. This is the pending input, which is cleared (zeroed) once consumed.
---@field LastControlInputVector FVector @The last control input vector that was processed by ConsumeMovementInputVector().
local APawn = {}

---@param bNewUseViewTranslatedTransform boolean
function APawn:SetUseViewTranslatedTransform(bNewUseViewTranslatedTransform) end

---Inform AIControllers that you've made a noise they might hear (they are sent a HearNoise message if they have bHearNoises==true) The instigator of this sound is the pawn which is used to call MakeNoise.
---@param Loudness number
---@param NoiseLocation FVector
---@param bUseNoiseMakerLocation boolean
---@param NoiseMaker AActor
function APawn:PawnMakeNoise(Loudness, NoiseLocation, bUseNoiseMakerLocation, NoiseMaker) end

---See if this actor is currently being controlled
---@return boolean
function APawn:IsControlled() end

---Get the rotation of the Controller, often the 'view' rotation of this Pawn.
---@return FRotator
function APawn:GetControlRotation() end

---Called when Controller is replicated
function APawn:OnRep_Controller() end

---PlayerState Replication Notification Callback
function APawn:OnRep_PlayerState() end

---Use SetCanAffectNavigationGeneration to change this value at runtime. Note that calling this function at runtime will result in any navigation change only if runtime navigation generation is enabled.
---@param bNewValue boolean
---@param bForceUpdate boolean
function APawn:SetCanAffectNavigationGeneration(bNewValue, bForceUpdate) end

---Event called when the Pawn is possessed by a Controller (normally only occurs on the server/standalone).
---@param NewController AController
function APawn:ReceivePossessed(NewController) end

---Event called when the Pawn is no longer possessed by a Controller.
---@param OldController AController
function APawn:ReceiveUnpossessed(OldController) end

---@return boolean
function APawn:IsLocallyControlled() end

---@return boolean
function APawn:IsPlayerControlled() end

---Return the aim rotation for the Pawn. If we have a controller, by default we aim at the player's 'eyes' direction that is by default the Pawn rotation for AI, and camera (crosshair) rotation for human players.
---@return FRotator
function APawn:GetBaseAimRotation() end

---Call this function to detach safely pawn from its controller, knowing that we will be destroyed soon.
function APawn:DetachFromControllerPendingDestroy() end

---Spawn default controller for this Pawn, and get possessed by it.
function APawn:SpawnDefaultController() end

---Add movement input along the given world direction vector (usually normalized) scaled by 'ScaleValue'. If ScaleValue < 0, movement will be in the opposite direction. Base Pawn classes won't automatically apply movement, it's up to the user to do so in a Tick event. Subclasses such as Character and DefaultPawn automatically handle this input and move.
---@param WorldDirection FVector
---@param ScaleValue number
---@param bForce boolean
function APawn:AddMovementInput(WorldDirection, ScaleValue, bForce) end

---Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it, Usually only a PawnMovementComponent will want to read this value, or the Pawn itself if it is responsible for movement.
---@return FVector
function APawn:GetPendingMovementInputVector() end

---Return the last input vector in world space that was processed by ConsumeMovementInputVector(), which is usually done by the Pawn or PawnMovementComponent. Any user that needs to know about the input that last affected movement should use this function. For example an animation update would want to use this, since by default the order of updates in a frame is: PlayerController (device input) -> MovementComponent -> Pawn -> Mesh (animations)
---@return FVector
function APawn:GetLastMovementInputVector() end

---Returns the pending input vector and resets it to zero. This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames. Copies the pending input vector to the saved input vector (GetLastMovementInputVector()).
---@return FVector
function APawn:ConsumeMovementInputVector() end

---Add input (affecting Pitch) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputPitchScale value.
---@param Val number
function APawn:AddControllerPitchInput(Val) end

---Add input (affecting Yaw) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputYawScale value.
---@param Val number
function APawn:AddControllerYawInput(Val) end

---Add input (affecting Roll) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputRollScale value.
---@param Val number
function APawn:AddControllerRollInput(Val) end

---Helper to see if move input is ignored. If our controller is a PlayerController, checks Controller->IsMoveInputIgnored().
---@return boolean
function APawn:IsMoveInputIgnored() end

---(Deprecated) Launch Character with LaunchVelocity
---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function APawn:LaunchPawn(LaunchVelocity, bXYOverride, bZOverride) end

---(Deprecated) Return the input vector in world space.
---@return FVector
function APawn:K2_GetMovementInputVector() end
