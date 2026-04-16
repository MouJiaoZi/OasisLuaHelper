---@meta

---@class FCheckAimCheatTLog
---@field ScopeCounter number
---@field ScopeMoveCounter number
---@field ScopeMoveToCharacterCounter number
---@field ScopeTimeTotalTime number
---@field ScopeTimeUnAimTotalTime number
---@field ScopeAimedCounter number
---@field ScopeAimPlayerOutVisionTotalTime number
---@field AimPlayerOutVisionTotalTime number
---@field AimPlayerOutVisionCounter number
---@field StartLocationToTimesMapping ULuaMapHelper<FVector, number>
---@field TopCounterStartLocation number
---@field TotalMoveScreenDirBeforeHit number
---@field SameMoveScreenDirBeforeHit number
---@field TotalMoveScreenDirBeforeHitScope number
---@field SameMoveScreenDirBeforeHitScope number
---@field TotalMoveScreenCounter number
---@field TotalInAimBtnAreaCounter number
---@field TotalInFireBtnAreaCounter number
---@field FireBtnCounterMax number
---@field FireDownCounter number
---@field FireBtnPosRecordRight ULuaArrayHelper<FVector2D>
---@field FireBtnPosRecordLeft ULuaArrayHelper<FVector2D>
---@field AimBtnPosRecord ULuaArrayHelper<FVector2D>
---@field TopCounterAngularVelocity number
---@field TopAVToTimesMapping ULuaMapHelper<number, number>
---@field MaxFastAngularVelocity ULuaArrayHelper<number>
---@field DeviceID number
---@field DeviceName string
---@field DevcieProductID string
---@field bIsRecordVirtualDevice boolean
---@field ReachSreenYMaxCounter number
---@field FingerMoveSudJumpCounter number
---@field MultiBtnsToCounter ULuaMapHelper<string, number>
---@field bIsRecordReplayScreenMoveData boolean
FCheckAimCheatTLog = {}


---@class FDrawDebugMovePosition
FDrawDebugMovePosition = {}


---@class FCheckAimCheatDotRate
---@field MinDot number
---@field MaxDot number
---@field Rate number
FCheckAimCheatDotRate = {}


---@class UCheckAimCheatComponent: UActorComponent
---@field TLogEventID number
---@field Rules ULuaArrayHelper<UCheckAimCheatRule>
---@field DotRates ULuaArrayHelper<FCheckAimCheatDotRate>
---@field bIsIgnoreTeamMatesAndAI boolean
---@field CACTlog FCheckAimCheatTLog
---@field bHasServerUploadData boolean
---@field IsServerUploadOpen boolean
---@field IsClientOpenFile boolean
---@field bLastRepServerOpen boolean
---@field bHasInit boolean
---@field UpdateCharacterCacheTime number
---@field FiltCharacterDotDegree number
---@field CacheAllCharacter ULuaArrayHelper<ACharacter>
---@field Return_GetAllCharacterInClient ULuaArrayHelper<ACharacter>
---@field Return_GetAllCharacterInClient_AI ULuaArrayHelper<ACharacter>
---@field Return_GetAllCharacterScreenInfoInClient ULuaArrayHelper<FCharacterScreenInfo>
---@field LastDrawDebug boolean
---@field DrawDebug boolean
---@field DrawDebugLineTime number
---@field DrawDebugLineLengthScale number
---@field Rules_ForEveryTick ULuaArrayHelper<UCheckAimCheatRule>
local UCheckAimCheatComponent = {}

---@param DeltaTime number
---@return boolean
function UCheckAimCheatComponent:TickConditionCheck(DeltaTime) end

---@param PlayerKey number
---@param Reason string
function UCheckAimCheatComponent:OnPlayerSendBattleResult(PlayerKey, Reason) end

---@param OpenUpload boolean
function UCheckAimCheatComponent:ServerOpenUploadData(OpenUpload) end

---@param Loc FVector2D
---@param MoveDir FVector2D
function UCheckAimCheatComponent:OnTouchMoveEvent(Loc, MoveDir) end

---@param bCollectAi boolean
function UCheckAimCheatComponent:GetAllCharacterInClient(bCollectAi) end

---@param bCollectAi boolean
function UCheckAimCheatComponent:GetAllCharacterScreenInfoInClient(bCollectAi) end

---@param MoveDir FVector2D
---@param LineA FVector2D
---@param LineB FVector2D
---@return boolean
function UCheckAimCheatComponent:JudgeMoveDirCrossLine(MoveDir, LineA, LineB) end

---@param MoveDir FVector2D
---@return boolean
function UCheckAimCheatComponent:JudgeMoveDirCrossCharacter(MoveDir) end

---@return boolean
function UCheckAimCheatComponent:JudgeAimCharacter() end
