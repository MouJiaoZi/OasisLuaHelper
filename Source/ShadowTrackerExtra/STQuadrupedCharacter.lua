---@meta

---@class FSTQuadrupedCharacterStartJumpVault : ULuaSingleDelegate
FSTQuadrupedCharacterStartJumpVault = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTQuadrupedCharacterStartJumpVault:Bind(Callback, Obj) end

---执行委托
function FSTQuadrupedCharacterStartJumpVault:Execute() end


---四足AI对象，比如军犬
---@class ASTQuadrupedCharacter: ASTExtraZombieCharacter
---@field bApplyDamageAsAI boolean
---@field bOtherMonsterCanHurtSelf boolean
---@field isInWater boolean
---@field SwimUpRate number
---@field MaterialCheckInterval number
---@field MinimumSpeedWhenEnableCheck number
---@field LegBoneNames ULuaArrayHelper<string>
---@field NotifySurfaceMap ULuaMapHelper<EPhysicalSurface, string>
---@field MaterialSwitchGroup string
---@field NotifyAkEventMap ULuaMapHelper<string, UAkAudioEvent>
---@field bNeedTestVaultEndPoint boolean
---@field bWalkDownPlatform boolean
---@field bVaultEndLocationReachedPathDestination boolean
---@field OnStartJumpVault FSTQuadrupedCharacterStartJumpVault
---@field bPassCharacter boolean
---@field PassCharacterClasses ULuaArrayHelper<ACharacter>
---@field PushCharacterSpeed number
---@field bPushCharacterJump boolean
---@field bCheckOverlapWithBox boolean
---@field CheckOverlapWithDistanceExtraValue number
---@field bNeedPassWhenFallToCharacter boolean
---@field PassedCharacters ULuaArrayHelper<ACharacter>
---@field PushedCharacters ULuaArrayHelper<ACharacter>
---@field UpdateBodyBoxCollisionTime number
---@field RecordMoveStateInfoMinMoveDisSquared number
---@field RecordMoveStateInfoMaxMoveDisSquared number
---@field PushBodyTime number
---@field bShowInVehicle boolean
---@field bLeanOut boolean
---@field VehicleSeatIndex number
---@field BackpackItems ULuaArrayHelper<FPickUpItemData>
---@field BackpackWeight number
---@field OwnerPlayerKey number
---@field DeliveryPlayerKey number
---@field ProtectedPlayerKey number
---@field VehicleState number
---@field bAutoAttack boolean
---@field AutoAttackTickInterval number
---@field AutoAttackDistanceLimit number
---@field AutoAttackCheckCount number
---@field AutoAttackFilterClass UNavigationQueryFilter
---@field bLimitAutoAttackPathLength boolean
---@field AutoAttackPathMaxLength number
---@field bAutoAttackAllowPartialPath boolean
---@field AutoAttackEnemyReachableTolerance number
---@field EnemyForbidAttackStates ULuaArrayHelper<EPawnState>
---@field EnemyForbidAttackDynamicStates FGameplayTagContainer
---@field EnemyRescueSuccessProtectTime number
---@field AutoAttackEnemies ULuaArrayHelper<AActor>
---@field bStrongInteraction boolean
local ASTQuadrupedCharacter = {}

---直接设置最大移动速度
---@param InMaxWalkSpeed number
function ASTQuadrupedCharacter:SetWalkSpeedDirectly(InMaxWalkSpeed) end

---@param HitResult FHitResult
function ASTQuadrupedCharacter:HandleOwnerBulletOverlap(HitResult) end

---@param WaterObject AWaterSwimActor
---@param bForce boolean
function ASTQuadrupedCharacter:EnterWater(WaterObject, bForce) end

---@param WaterObject AWaterSwimActor
function ASTQuadrupedCharacter:LeaveWater(WaterObject) end

function ASTQuadrupedCharacter:OnRep_WaterObj() end

---@return boolean
function ASTQuadrupedCharacter:IsInNoWaterVolume() end

---通知从平台上往下跳
function ASTQuadrupedCharacter:StartJumpVault() end

---@return boolean
function ASTQuadrupedCharacter:ShouldIgnoreBodyBoxCollision() end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTQuadrupedCharacter:OnCapsuleComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTQuadrupedCharacter:OnBodyBoxComponentHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param InVehicle ASTExtraVehicleBase
---@param InSeatIndex number
function ASTQuadrupedCharacter:SetVehicleSeatIndex(InVehicle, InSeatIndex) end

---@param InbShow boolean
function ASTQuadrupedCharacter:SetShowInVehicle(InbShow) end

---@param InbLeanOut boolean
function ASTQuadrupedCharacter:SetLeanOut(InbLeanOut) end

---@param NewItems ULuaArrayHelper<FPickUpItemData>
function ASTQuadrupedCharacter:SetBackpackItems(NewItems) end

---@param NewWeight number
function ASTQuadrupedCharacter:SetBackpackWeight(NewWeight) end

function ASTQuadrupedCharacter:OnRep_BackpackItems() end

function ASTQuadrupedCharacter:OnRep_BackpackWeight() end

function ASTQuadrupedCharacter:OnRep_OwnerPlayerKey() end

function ASTQuadrupedCharacter:OnRep_DeliveryPlayerKey() end

function ASTQuadrupedCharacter:OnRep_ProtectedPlayerKey() end

function ASTQuadrupedCharacter:OnRep_OwnerPlayerState() end

function ASTQuadrupedCharacter:OnRep_VehicleState() end

---设置当前敌人
---@param InNewEnemy ASTExtraCharacter
function ASTQuadrupedCharacter:SetAutoAttackEnemy(InNewEnemy) end

function ASTQuadrupedCharacter:TriggerAutoRecycle() end
