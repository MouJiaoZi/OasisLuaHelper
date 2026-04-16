---@meta

---观战客户端中，裁判的行为 通过EnumHasAnyFlags判断是否处于某个状态
---@class ERefereeClientState
---@field None number
---@field IsInFreeViewMode number
---@field IsInForceTPPMode number
---@field IsInTPPFreeFollowMode number
---@field IsEnableVehicleMode number
---@field OpenningEntireMap number
ERefereeClientState = {}


---@class FRefereeObserveState
---@field CurObserveUID number
---@field RefereeClientState ERefereeClientState
---@field Location FVector
---@field Rotation FRotator
---@field FOV number
---@field TimeSeconds number
---@field TimeStamp number
FRefereeObserveState = {}


---@class ASTExtraOBState: AUAEOBState
---@field RefereeOBState FRefereeObserveState
local ASTExtraOBState = {}

---@param inNewPlayerUID number
function ASTExtraOBState:ServerRPC_SetObserveTarget(inNewPlayerUID) end

---@param inRefereeClientState ERefereeClientState
---@param bGotoState boolean
function ASTExtraOBState:ServerRPC_SetClientOBState(inRefereeClientState, bGotoState) end

---@param InFOV number
function ASTExtraOBState:ServerRPC_SetClientFOV(InFOV) end

---@param BaseInfo FGameBaseInfo
function ASTExtraOBState:ReportGameBaseInfo(BaseInfo) end

function ASTExtraOBState:OnRep_RefereeOBState() end
