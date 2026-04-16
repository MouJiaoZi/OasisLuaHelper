---@meta

---@class EMusicGirlSearchRange
---@field Size0 number
---@field Size40 number
---@field Size120 number
---@field Size200 number
---@field Size280 number
---@field Size360 number
EMusicGirlSearchRange = {}


---@class ITreasureBoxActorInterface
ITreasureBoxActorInterface = {}

---@return boolean
function ITreasureBoxActorInterface:GetActorOpenState() end


---@class UMusicGirlComponent: UActorComponent
---@field ConfigMaxMusicEnergyPower number
---@field ConfigMusicEnergyPowerLevels ULuaArrayHelper<number>
---@field ConfigInternalTimeFresh number
---@field ConfigDelayTime number
---@field ConfigMusicNoteTag string
---@field ConfigSearchRange_Far EMusicGirlSearchRange
---@field ConfigSearchRange_Near EMusicGirlSearchRange
---@field ConfigMusicEnergyPowerStageForSearch number
---@field ConfigSearchRange_Far_1 EMusicGirlSearchRange
---@field ConfigSearchRange_Near_1 EMusicGirlSearchRange
---@field ConfigSearchRange_Max EMusicGirlSearchRange
---@field ExtentRadius number
---@field MaxAISearchTime number
---@field DelayPawnStates ULuaArrayHelper<EPawnState>
---@field ValidGameModeStageNames ULuaArrayHelper<string>
---@field InvalidPawnStates ULuaArrayHelper<EPawnState>
---@field ConfigInternalTimeCheckTeammates number
---@field ConfigMaxDistToHear number
---@field Cur_SearchRange_Far EMusicGirlSearchRange
---@field Cur_SearchRange_Near EMusicGirlSearchRange
---@field MusicEnergyPower number
---@field CurInternalDuration number
---@field CurWaitingForFreshDuration number
---@field bSearching boolean
---@field ExtraCachedLocation FVector
---@field CurInternalDurationCheckTeammates number
---@field DistanceScale number
---@field bIgnoreDistance boolean
---@field InRangeTeammates ULuaArrayHelper<ASTExtraBaseCharacter>
local UMusicGirlComponent = {}

function UMusicGirlComponent:OnRep_MusicEnergyPower() end

function UMusicGirlComponent:OnRep_DistanceScale() end

function UMusicGirlComponent:OnRep_IgnoreDistance() end

---@return boolean
function UMusicGirlComponent:IsSelectedActorValid() end

---@param NewActor AActor
---@param bReset boolean
function UMusicGirlComponent:ChangeSelectedActor(NewActor, bReset) end

---@return boolean
function UMusicGirlComponent:IsExtraSelectedActorValid() end

---@param NewActor AActor
---@param bReset boolean
function UMusicGirlComponent:ChangeExtraSelectedActor(NewActor, bReset) end

---@return number
function UMusicGirlComponent:GetDistToHear() end

---@return number
function UMusicGirlComponent:GetMusicEnergyPowerLevel() end

---@param bTimeOut boolean
function UMusicGirlComponent:TryStartFreshMusicalNotes(bTimeOut) end

---@return boolean
function UMusicGirlComponent:CheckFreshMusicalNotesCondition() end

---@return boolean
function UMusicGirlComponent:CheckDelayFreshMusicalNotesCondition() end

function UMusicGirlComponent:CleanMusicalNotes() end

function UMusicGirlComponent:FreshMusicalNotesInternal() end

function UMusicGirlComponent:FreshSearchRange() end

---@param OwnerPawn AActor
---@param OwnerWorld UWorld
function UMusicGirlComponent:SearchStrategyNewBox(OwnerPawn, OwnerWorld) end

---@param OwnerPawn AActor
---@param OwnerWorld UWorld
function UMusicGirlComponent:SearchStrategyOpenedBox(OwnerPawn, OwnerWorld) end

---@param OwnerPawn AActor
---@param OwnerWorld UWorld
function UMusicGirlComponent:SearchStrategyFarAwayBox(OwnerPawn, OwnerWorld) end

---@param OwnerPawn AActor
---@param OwnerWorld UWorld
function UMusicGirlComponent:SearchStrategyStableLocation(OwnerPawn, OwnerWorld) end

---@param SrcLoc FVector
---@param OutLoc FVector
---@return boolean
function UMusicGirlComponent:GetRandomPointInRadius(SrcLoc, OutLoc) end

---@param OwnerPawn AActor
---@param OwnerWorld UWorld
function UMusicGirlComponent:MakeNewMusicalNotesEffect(OwnerPawn, OwnerWorld) end

function UMusicGirlComponent:FreshTeammatesDist() end

function UMusicGirlComponent:CleanMusicalNotesEffectBP() end

---@param GMAddEnergy number
function UMusicGirlComponent:AddMusicEnergyForGM(GMAddEnergy) end
