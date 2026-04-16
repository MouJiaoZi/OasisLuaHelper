---@meta

---@class EEffectSpreadState
---@field ESS_InitialTrace number
---@field ESS_InitialProcess number
---@field ESS_Spreading number
---@field ESS_SpreadDone number
---@field ESS_Ending number
EEffectSpreadState = {}


---@class ATslDamageField: AActor
---@field TeamID number
---@field DelayStart number
local ATslDamageField = {}

function ATslDamageField:Start() end

---@param bDamage boolean
function ATslDamageField:SetDamageTeammate(bDamage) end


---@class ASTBuffApplifierSpreading: AActor
---@field InitialTraceArray ULuaArrayHelper<FVector>
---@field StepsPerTick number
---@field SpreadDirectionCount number
---@field MaxInstanceCount number
---@field AbsoluteMaxInstanceCount number
---@field MaxMaterialAdditiveInstanceCount number
---@field MaxCenteredInstanceCount number
---@field InitialTraceHorizontalScale number
---@field BlockingTag string
---@field NormalLimitZ number
---@field GroundTraceNormalScale_Start number
---@field InitialGroundTraceHeightZ number
---@field ConcurrentGroundTraceHeightZ number
---@field ProcessedHitLenClamp number
---@field SphereRadius number
---@field SpreadXY number
---@field SpreadZ number
---@field DamageFieldClass ATslDamageField
---@field bModifyEffectLifetime boolean
---@field InitialEffectLifetime number
---@field MinEffectLifetimeForStart number
---@field EffectLifetimeVariation number
---@field OriginOffsetScale number
---@field DamageTickInterval number
---@field DamagePerTick number
---@field DamageType UDamageType
---@field bSupportWaterSurface boolean
---@field EnemyJudgementRadius number
---@field TeammateJudgementRadius number
---@field OwnerTeamID number
---@field InitialHitArray ULuaArrayHelper<FHitResult>
---@field BlockerArray ULuaArrayHelper<USphereComponent>
---@field MaterialBlockerArray ULuaArrayHelper<USphereComponent>
---@field ActiveSpreadBlockerArray ULuaArrayHelper<USphereComponent>
---@field DamageFieldArray ULuaArrayHelper<ATslDamageField>
---@field SpawnHit FHitResult
local ASTBuffApplifierSpreading = {}

---@param InitialHit FHitResult
function ASTBuffApplifierSpreading:StartSpread(InitialHit) end

---@param InDamageField ATslDamageField
function ASTBuffApplifierSpreading:InitializeNewDamageField(InDamageField) end

---@param InStart FVector
---@param InEnd FVector
---@param InColor FColor
---@param InTime number
function ASTBuffApplifierSpreading:Client_ShowDebugLine(InStart, InEnd, InColor, InTime) end

---@param InLocation FVector
---@param InRadius number
---@param InColor FColor
---@param InTime number
function ASTBuffApplifierSpreading:Client_ShowDebugSphere(InLocation, InRadius, InColor, InTime) end

---@param InLocation FVector
---@param InText string
---@param InActor AActor
---@param InColor FColor
---@param InTime number
function ASTBuffApplifierSpreading:Client_ShowDebugString(InLocation, InText, InActor, InColor, InTime) end

---@param InStart FVector
---@param InQuat FQuat
---@param InTime number
---@param InSize number
function ASTBuffApplifierSpreading:Client_ShowDebugCoordinateSystem(InStart, InQuat, InTime, InSize) end

function ASTBuffApplifierSpreading:TickDamageFields() end

---@param InOwnerSpawnLocation FVector
function ASTBuffApplifierSpreading:SetOwnerSpawnLocation(InOwnerSpawnLocation) end

function ASTBuffApplifierSpreading:GetDamageFields() end
