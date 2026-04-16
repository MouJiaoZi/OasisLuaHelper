---@meta

---@class FOBTransformAnimParam
---@field DEFAULT_TURN_RESET_TIME number
---@field bCanShowOff boolean
---@field bShowOffInterupt boolean
---@field ShowOffID number
---@field bIsFalling boolean
---@field bIsTurning boolean
---@field bIsTurnLeft boolean
---@field MoveVelocity FVector
FOBTransformAnimParam = {}


---@class AOBTransformCharacter: ACharacter, ISTExtraInputInterface, IActorHiddenInterface, IUAESkillInterface
---@field AnimParam FOBTransformAnimParam
---@field bOnJumpState boolean
---@field bLocalOnJumpState boolean
---@field bStopSyncWhileLostConnect boolean
---@field bIgnoreOutofWorld boolean
---@field TurnInPlaceAngel number
---@field SmoothRotateMeshYawSpeed number
---@field DoorAndWindowsQueryType ULuaArrayHelper<EObjectTypeQuery>
---@field BuffFastShapeParam FAvatarFastShapeParam
---@field TickCounter number
---@field TickInt number
local AOBTransformCharacter = {}

function AOBTransformCharacter:SetPlayerDiedLiveState() end

---@return FRotator
function AOBTransformCharacter:GetViewRotation() end

function AOBTransformCharacter:ClientReqJump() end

---@return FVector
function AOBTransformCharacter:GetVelocitySafety() end

---@param SearchRadius number
function AOBTransformCharacter:SearchDoorAndWindows(SearchRadius) end

---@return boolean
function AOBTransformCharacter:GetJumpState() end

---@param EventType EUAESkillEvent
function AOBTransformCharacter:TriggerCustomEvent_Implementation(EventType) end

---@param EntryEvent EUTSkillEntry
---@return boolean
function AOBTransformCharacter:TriggerEntryEvent_Implementation(EntryEvent) end

---@param SkillClass AUTSkill
---@param SkillEventType UTSkillEventType
---@return boolean
function AOBTransformCharacter:TriggerSkillEvent(SkillClass, SkillEventType) end

---@param SkillIndex number
---@param EventType EUAESkillEvent
---@return boolean
function AOBTransformCharacter:TriggerSkillCustomEvent(SkillIndex, EventType) end

---@param SkillID number
---@param EventTypeStr string
---@return boolean
function AOBTransformCharacter:TriggerStringEvent(SkillID, EventTypeStr) end

function AOBTransformCharacter:MatchStateMat() end

function AOBTransformCharacter:MatchNormalMat() end

function AOBTransformCharacter:ReMatchMat() end

---@return boolean
function AOBTransformCharacter:IsInConcernObj() end
