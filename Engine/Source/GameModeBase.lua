---@meta

---简单的pawn对象池 add by czcheng 2025.10.15 1.gamemode初始创建一定数量的pawn对象 2.创建的pawn对象不执行beginplay逻辑，分配后才执行 (开关控制，默认关闭) 3.只分配，不回收 4.定期补充pawn对象
---@class FGameModePawnPool
---@field PawnPool ULuaMapHelper<APlayerController, APawn>
FGameModePawnPool = {}


---Default delegate that provides an implementation for those that don't have special needs other than a toggle
---@class FCanUnpause : ULuaSingleDelegate
FCanUnpause = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCanUnpause:Bind(Callback, Obj) end

---执行委托
function FCanUnpause:Execute() end


---The GameModeBase defines the game being played. It governs the game rules, scoring, what actors are allowed to exist in this game type, and who may enter the game. It is only instanced on the server and will never exist on the client. A GameModeBase actor is instantiated when the level is initialized for gameplay in C++ UGameEngine::LoadMap(). The class of this GameMode actor is determined by (in order) either the URL ?game=xxx, the GameMode Override value set in the World Settings, or the DefaultGameMode entry set in the game's Project Settings.
---@class AGameModeBase: AInfo, IVirtualParallelWorld
---@field OptionsString string @Save options string and parse it when needed
---@field GameSessionClass AGameSession @Class of GameSession, which handles login approval and online game interface
---@field GameStateClass AGameStateBase @Class of GameState associated with this GameMode.
---@field PlayerControllerClass APlayerController @The class of PlayerController to spawn for players logging in.
---@field PlayerStateClass APlayerState @A PlayerState of this class will be associated with every player to replicate relevant player information to all clients.
---@field HUDClass AHUD @HUD class this game uses.
---@field DefaultPawnClass APawn @The default pawn class used by players.
---@field SpectatorClass ASpectatorPawn @The pawn class used by the PlayerController for players when spectating.
---@field ReplaySpectatorPlayerControllerClass APlayerController @The PlayerController class used when spectating a network replay.
---@field DefaultPlayerName string @The default player name assigned to players that join with no name specified.
---@field bUseSeamlessTravel number @Whether the game perform map travels using SeamlessTravel() which loads in the background and doesn't disconnect clients
---@field bUnlimitedRegionZ number
---@field bStartPlayersAsSpectators number @Whether players should immediately spawn when logging in, or stay as spectators until they manually spawn
---@field bPauseable number @Whether the game is pauseable.
local AGameModeBase = {}

---Returns number of active human players, excluding spectators
---@return number
function AGameModeBase:GetNumPlayers() end

---Returns number of human players currently spectating
---@return number
function AGameModeBase:GetNumSpectators() end

---Transitions to calls BeginPlay on actors.
function AGameModeBase:StartPlay() end

---Returns true if the match start callbacks have been called
---@return boolean
function AGameModeBase:HasMatchStarted() end

---Overridable function to determine whether an Actor should have Reset called when the game has Reset called on it. Default implementation returns true false if the GameMode will manually reset it or if the actor does not need to be reset
---@param ActorToReset AActor
---@return boolean
function AGameModeBase:ShouldReset(ActorToReset) end

---Overridable function called when resetting level. This is used to reset the game state while staying in the same map Default implementation calls Reset() on all actors except GameMode and Controllers
function AGameModeBase:ResetLevel() end

---Return to main menu, and disconnect any players
function AGameModeBase:ReturnToMainMenuHost() end

---Notification that a player has successfully logged in, and has been given a player controller
---@param NewPlayer APlayerController
function AGameModeBase:K2_PostLogin(NewPlayer) end

---Implementable event when a Controller with a PlayerState leaves the game.
---@param ExitingController AController
function AGameModeBase:K2_OnLogout(ExitingController) end

---Signals that a player is ready to enter the game, which may start it up
---@param NewPlayer APlayerController
function AGameModeBase:HandleStartingNewPlayer(NewPlayer) end

---Returns true if NewPlayerController may only join the server as a spectator.
---@param NewPlayerController APlayerController
---@return boolean
function AGameModeBase:MustSpectate(NewPlayerController) end

---Return whether Viewer is allowed to spectate from the point of view of ViewTarget.
---@param Viewer APlayerController
---@param ViewTarget APlayerState
---@return boolean
function AGameModeBase:CanSpectate(Viewer, ViewTarget) end

---Sets the name for a controller
---@param Controller AController
---@param NewName string
---@param bNameChange boolean
function AGameModeBase:ChangeName(Controller, NewName, bNameChange) end

---Overridable event for GameMode blueprint to respond to a change name call
---@param Other AController
---@param NewName string
---@param bNameChange boolean
function AGameModeBase:K2_OnChangeName(Other, NewName, bNameChange) end

---Returns true if it's valid to call RestartPlayer. By default will call Player->CanRestartPlayer
---@param Player APlayerController
---@return boolean
function AGameModeBase:PlayerCanRestart(Player) end

---Tries to spawn the player's pawn, at the location returned by FindPlayerStart
---@param NewPlayer AController
function AGameModeBase:RestartPlayer(NewPlayer) end

---Tries to spawn the player's pawn at the specified actor's location
---@param NewPlayer AController
---@param StartSpot AActor
function AGameModeBase:RestartPlayerAtPlayerStart(NewPlayer, StartSpot) end

---Tries to spawn the player's pawn at a specific location
---@param NewPlayer AController
---@param SpawnTransform FTransform
function AGameModeBase:RestartPlayerAtTransform(NewPlayer, SpawnTransform) end

---Called from RestartPlayerAtPlayerStart, can be used to initialize the start spawn actor
---@param StartSpot AActor
---@param NewPlayer AController
function AGameModeBase:InitStartSpot(StartSpot, NewPlayer) end

---Implementable event called at the end of RestartPlayer
---@param NewPlayer AController
function AGameModeBase:K2_OnRestartPlayer(NewPlayer) end

---Initialize the AHUD object for a player. Games can override this to do something different
---@param NewPlayer APlayerController
function AGameModeBase:InitializeHUDForPlayer(NewPlayer) end

---Called when a PlayerController is swapped to a new one during seamless travel
---@param OldPC APlayerController
---@param NewPC APlayerController
function AGameModeBase:K2_OnSwapPlayerControllers(OldPC, NewPC) end
