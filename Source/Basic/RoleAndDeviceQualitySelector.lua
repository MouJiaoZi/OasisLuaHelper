---@meta

---@class ESelectorConditionLobbyRole
---@field NotInLobby number @非大厅
---@field LobbyMainRole number @大厅主端
---@field Lod00 number @Lod00
ESelectorConditionLobbyRole = {}


---@class ERoleAndQualityLobbyCondition
---@field Lod00 number @Lod00 Quality
---@field LobbyMainRole_Low number @LobbyMainRole Low Device Quality
---@field LobbyMainRole_Middle number @LobbyMainRole Middle Device Quality
---@field LobbyMainRole_High number @LobbyMainRole High Device Quality
---@field LobbyMainRole_UltraHigh number @LobbyMainRole Ultra High Device Quality
---@field LobbyMainRole_Higher_High number
---@field AllVisible number
ERoleAndQualityLobbyCondition = {}


---@class ESelectorConditionRole
---@field Self number @自己
---@field Teammate number @队友
---@field Enemy number @敌人
ESelectorConditionRole = {}


---@class ERoleAndQualityCondition
---@field Self_Low number @Self Low Device Quality
---@field Self_Middle number @Self Middle Device Quality
---@field Self_High number @Self High Device Quality
---@field Team_Low number @Teammate Low Device Quality
---@field Team_Middle number @Teammate Middle Device Quality
---@field Team_High number @Teammate High Device Quality
---@field Enemy_Low number @Enemy Low Device Quality
---@field Enemy_Middle number @Enemy Middle Device Quality
---@field Enemy_High number @Enemy High Device Quality
---@field Self_UltraHigh number @Self Ultra High Device Quality
---@field Team_UltraHigh number @Teammate Ultra High Device Quality
---@field Enemy_UltraHigh number @Enemy Ultra High Device Quality
---@field Self_Higher_High number
---@field Team_Higher_High number
---@field Enemy_Higher_High number
---@field AllVisible_SetValue_Low number
---@field AllVisible_SetValue_Middle number
---@field AllVisible_SetValue_High number
---@field AllVisible_SetValue_UltraHigh number
---@field AllVisible_SetValue_Simulate_Low number
---@field AllVisible_SetValue_Simulate_Middle number
---@field AllVisible_SetValue_Simulate_High number
---@field AllVisible_SetValue_Simulate_UltraHigh number
---@field AllVisible_SetValue_Self number
---@field AllVisible_SetValue_Team number
---@field AllVisible_SetValue_Enemy number
---@field AllVisible_SetValue_Simulate number
---@field AllVisible_SetValue number
---@field AllVisible number
ERoleAndQualityCondition = {}


---@class ESelectorConditionNetRole
---@field Autonomous number @主端
---@field Simulated number @模拟端
ESelectorConditionNetRole = {}


---@class ENetRoleAndQualityCondition
---@field Autonomous_Low number @Autonomous Low Device Quality
---@field Autonomous_Middle number @Autonomous Middle Device Quality
---@field Autonomous_High number @Autonomous High Device Quality
---@field Simulated_Low number @Simulated Low Device Quality
---@field Simulated_Middle number @Simulated Middle Device Quality
---@field Simulated_High number @Simulated High Device Quality
---@field Autonomous_UltraHigh number @Autonomous Ultra High Device Quality
---@field Simulated_UltraHigh number @Simulated Ultra High Device Quality
---@field Autonomous_Higher_High number
---@field Simulated_Higher_High number
---@field AllVisible number
ENetRoleAndQualityCondition = {}


---@class FRoleAndQualityLobbySelector
---@field RoleAndQualityConfig number
---@field bUltraHighSuitHighQuality boolean
---@field EnableLod00MinTCQuality number
FRoleAndQualityLobbySelector = {}


---@class FRoleAndQualitySelector
---@field RoleAndQualityConfig number
FRoleAndQualitySelector = {}


---@class FNetRoleAndQualitySelector
---@field RoleAndQualityConfig number
FNetRoleAndQualitySelector = {}


---@class ULobbyRoleAndQualitySelectorFuncLib: UBlueprintFunctionLibrary
local ULobbyRoleAndQualitySelectorFuncLib = {}

---@param InRoleAndQualitySelector FRoleAndQualityLobbySelector
---@param InRole ESelectorConditionLobbyRole
---@return boolean
function ULobbyRoleAndQualitySelectorFuncLib:IsSelectedByRoleAndQualityInLobby(InRoleAndQualitySelector, InRole) end


---@class URoleAndQualitySelectorFuncLib: UBlueprintFunctionLibrary
local URoleAndQualitySelectorFuncLib = {}

---@param InIsAutonomous boolean
---@param InIsTeammate boolean
---@return ESelectorConditionRole
function URoleAndQualitySelectorFuncLib:GetConditionRole(InIsAutonomous, InIsTeammate) end

---@param InRoleAndQualitySelector FRoleAndQualitySelector
---@param InRole ESelectorConditionRole
---@param InQuality number
---@return boolean
function URoleAndQualitySelectorFuncLib:IsSelectedByRoleAndQuality(InRoleAndQualitySelector, InRole, InQuality) end

---@param InRoleAndQualitySelector FRoleAndQualitySelector
---@param InRole ESelectorConditionRole
---@return boolean
function URoleAndQualitySelectorFuncLib:IsSelectedByRoleAndTCQuality(InRoleAndQualitySelector, InRole) end

---@param InRoleAndQualitySelector FRoleAndQualitySelector
---@param InRole ESelectorConditionRole
---@return boolean
function URoleAndQualitySelectorFuncLib:IsSelectedByRole(InRoleAndQualitySelector, InRole) end

---@param InRoleAndQualitySelector FRoleAndQualitySelector
---@param InIsAutonomouse boolean
---@param InIsTeammate boolean
---@return boolean
function URoleAndQualitySelectorFuncLib:IsSelectedByNet(InRoleAndQualitySelector, InIsAutonomouse, InIsTeammate) end


---@class UNetRoleAndQualitySelectorFuncLib: UBlueprintFunctionLibrary
local UNetRoleAndQualitySelectorFuncLib = {}

---@param bInIsAutonomous boolean
---@return ESelectorConditionNetRole
function UNetRoleAndQualitySelectorFuncLib:GetConditionRole(bInIsAutonomous) end

---@param InRoleAndQualitySelector FNetRoleAndQualitySelector
---@param InRole ESelectorConditionNetRole
---@param InQuality number
---@return boolean
function UNetRoleAndQualitySelectorFuncLib:IsSelectedByRoleAndQuality(InRoleAndQualitySelector, InRole, InQuality) end

---@param InRoleAndQualitySelector FNetRoleAndQualitySelector
---@param InRole ESelectorConditionNetRole
---@return boolean
function UNetRoleAndQualitySelectorFuncLib:IsSelectedByRoleAndTCQuality(InRoleAndQualitySelector, InRole) end

---@param InRoleAndQualitySelector FNetRoleAndQualitySelector
---@param InRole ESelectorConditionNetRole
---@return boolean
function UNetRoleAndQualitySelectorFuncLib:IsSelectedByRole(InRoleAndQualitySelector, InRole) end

---@param InRoleAndQualitySelector FNetRoleAndQualitySelector
---@param bInIsAutonomous boolean
---@return boolean
function UNetRoleAndQualitySelectorFuncLib:IsSelectedByNet(InRoleAndQualitySelector, bInIsAutonomous) end
