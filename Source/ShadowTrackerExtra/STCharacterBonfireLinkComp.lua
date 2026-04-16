---@meta

---@class FBonfireFanPickerData
---@field Radius number @Radius *
---@field HightDiff number @高度差 *
---@field Angle number @Angle : (0 - 180) *
---@field IsShowDebugFan boolean
---@field bEnableTrace boolean
---@field LowerTraceRatio number
FBonfireFanPickerData = {}


---@class USTCharacterBonfireLinkComp: UActorComponent
---@field FanData FBonfireFanPickerData
---@field ReturnToFindNewTimer number
---@field PawnOwner ASTExtraBaseCharacter
---@field bonFireCandidates ULuaArrayHelper<ABonfireActor>
local USTCharacterBonfireLinkComp = {}

---@param _TempPawn APawn
function USTCharacterBonfireLinkComp:InitializeOwner(_TempPawn) end

---@param newbonfire ABonfireActor
function USTCharacterBonfireLinkComp:AddBonfireCandidate(newbonfire) end

---@param newbonfire ABonfireActor
function USTCharacterBonfireLinkComp:RemoveBonfireCandidate(newbonfire) end
