---@meta

---@class FScoreState
---@field HitNum number
---@field ShowStamp number
---@field HitMatchNum number
FScoreState = {}


---@class ALaunchPad: AActivityBaseActor, ITreasureBoxInterface
---@field bHaveBeTrigger boolean
---@field Characters ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ScoreHitState ULuaArrayHelper<FScoreState>
---@field UIParam FImmediateUIParam
---@field MountTarget string
---@field ButtonIcon FSoftObjectPath
---@field ButtonText string
---@field MapIcon number
---@field PlayingLastTime number
---@field FreeShootLastTime number
---@field RandomTime number
---@field ScoreLastTime number
---@field MaxCmpNum number
---@field ScoreTop number
---@field DropIDTop number
---@field DropIDNormal number
---@field EventID number
---@field CheckGunID number
---@field bDebug boolean
---@field EnterPlayTimeStamp number
---@field EnterFreeShootTimeStamp number
---@field CurrentScore number
---@field LastRandomScore number
local ALaunchPad = {}

function ALaunchPad:OnRep_AearCharacter() end

function ALaunchPad:RefreshCanShowButton() end

---@param Cmp UPrimitiveComponent
---@return number
function ALaunchPad:GetScoreIndexByPrimitCmp(Cmp) end

---@param Cmp UPrimitiveComponent
---@return number
function ALaunchPad:GetHitMatchIndexByPrimitCmp(Cmp) end

function ALaunchPad:OnRep_CurrentHitInfo() end

function ALaunchPad:OnRep_CurrentScore() end

---@param Index number
---@param PreState FScoreState
---@param CurrentState FScoreState
function ALaunchPad:OnScoreStateChange(Index, PreState, CurrentState) end

function ALaunchPad:OnCurrentScoreChange() end

---@return boolean
function ALaunchPad:CanBeStart() end

---@return boolean
function ALaunchPad:CanBeEndTop() end

---@return boolean
function ALaunchPad:CanBeEndNormal() end

---@return boolean
function ALaunchPad:PlayingTimesUp() end

---@return boolean
function ALaunchPad:FreeShootTimesUp() end

function ALaunchPad:OnClickButton() end

---@param ActivatedComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ALaunchPad:OnBoxBeginOverlap(ActivatedComp, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param ActivatedComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function ALaunchPad:OnBoxEndOverlap(ActivatedComp, OtherActor, OtherComp, OtherBodyIndex) end
