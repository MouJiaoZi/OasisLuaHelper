---@meta

---Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules. To turn it on, please press Alt+C or both (left and right) analogs on XBox pad, or use the "ToggleDebugCamera" console command. Check the debug camera bindings in DefaultPawn.cpp for the camera controls.
---@class ADebugCameraController: APlayerController
---@field bShowSelectedInfo number @Whether to show information about the selected actor on the debug camera HUD.
---@field bIsFrozenRendering number
---@field SpeedScale number @Allows control over the speed of the spectator pawn. This scales the speed based on the InitialMaxSpeed. Use Set Pawn Movement Speed Scale during runtime
---@field InitialMaxSpeed number @Initial max speed of the spectator pawn when we start possession.
---@field InitialAccel number @Initial acceleration of the spectator pawn when we start possession.
---@field InitialDecel number @Initial deceleration of the spectator pawn when we start possession.
local ADebugCameraController = {}

function ADebugCameraController:ShowDebugSelectedInfo() end

---Toggles the display of debug info and input commands for the Debug Camera.
function ADebugCameraController:ToggleDisplay() end

---Sets the pawn movement speed scale.
---@param NewSpeedScale number
function ADebugCameraController:SetPawnMovementSpeedScale(NewSpeedScale) end

---Function called on activation of debug camera controller.
---@param OriginalPC APlayerController
function ADebugCameraController:ReceiveOnActivate(OriginalPC) end

---Function called on deactivation of debug camera controller.
---@param RestoredPC APlayerController
function ADebugCameraController:ReceiveOnDeactivate(RestoredPC) end

---Called when an actor has been selected with the primary key (e.g. left mouse button). The selection trace starts from the center of the debug camera's view.
---@param NewSelectedActor AActor
---@param SelectHitLocation FVector
---@param SelectHitNormal FVector
---@param Hit FHitResult
function ADebugCameraController:ReceiveOnActorSelected(NewSelectedActor, SelectHitLocation, SelectHitNormal, Hit) end
