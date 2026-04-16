---@meta

---@class FAirplaneData
---@field PlaneHeight number @飞机高度
---@field CanOpenParachuteHeight number @可以开伞高度
---@field ForceOpenParachuteHeight number @强制开伞高度
---@field CloseParachuteHeight number @收伞高度
---@field DestinationCenter FVector
---@field PlaneVelocity FVector
---@field PlaneStartLoc FVector
---@field PlaneEndLoc FVector
---@field CanJumpLoc FVector2D
---@field ForceJumpLoc FVector2D
---@field TotalPlayerNum number
---@field TotalAINum number
---@field TotalPlayers ULuaArrayHelper<APlayerController>
---@field CurPlayers ULuaArrayHelper<APlayerController>
---@field TotalAIs ULuaArrayHelper<AFakePlayerAIController>
---@field CurAIs ULuaArrayHelper<AFakePlayerAIController>
---@field bForceShowAirline boolean
---@field PlaneType EPlaneTypeForTlog @飞机类型
---@field ReplayFlightGUID string @航线GUID replay用
FAirplaneData = {}


---@class FOnReachForceJumpRatioDelegate : ULuaSingleDelegate
FOnReachForceJumpRatioDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReachForceJumpRatioDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReachForceJumpRatioDelegate:Execute() end


---@class AAirplaneCharacter: APlaneBase, IPlayerLogicInterface
---@field MyFlyingData FAirplaneData
---@field FlyingPlayerStates ULuaArrayHelper<ASTExtraPlayerState>
---@field OnReachForceJumpRatioDelegate FOnReachForceJumpRatioDelegate
---@field bReloadParachutingUI boolean
---@field InitControlRotationDisplacement FRotator
---@field bStopAllowed boolean
---@field bForceControllerRelevant boolean
---@field bAllowShowCanJump boolean
---@field bIsFlyingDataSetted boolean
---@field bOnlyRelevantToPlayerOnPlane boolean
local AAirplaneCharacter = {}

---@return FAirLineMarkData
function AAirplaneCharacter:GetMapMarkData() end

function AAirplaneCharacter:OnSetOwnFlyingData() end

---@param InController APlayerController
function AAirplaneCharacter:OnExtendOwnFlyingData(InController) end

---@param DeltaTime number
function AAirplaneCharacter:CheckAirplanePos(DeltaTime) end

---@param InStop boolean
function AAirplaneCharacter:SetStopAllowed(InStop) end

---@return boolean
function AAirplaneCharacter:IsStopAllowed() end

---@param bAllow boolean
function AAirplaneCharacter:SetAlloweShowCanJump(bAllow) end

---@param SaviorPC ASTExtraPlayerController
function AAirplaneCharacter:OnPlayerRevivedLeavePlane(SaviorPC) end

---@param InController APlayerController
function AAirplaneCharacter:TriggerBindLeaveDelegate(InController) end

---@param JumpLoc FVector
---@return FVector
function AAirplaneCharacter:GetPlayerJumpLocation(JumpLoc) end
