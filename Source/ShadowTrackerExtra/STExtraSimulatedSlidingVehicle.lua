---@meta

---@class FOnSnowboardServerAutoExitUnderSpeed : ULuaSingleDelegate
FOnSnowboardServerAutoExitUnderSpeed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardServerAutoExitUnderSpeed:Bind(Callback, Obj) end

---执行委托
function FOnSnowboardServerAutoExitUnderSpeed:Execute() end


---@class FOnSnowboardBroadcastClientEnterVehicle : ULuaMulticastDelegate
FOnSnowboardBroadcastClientEnterVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayTakeOut: boolean, InVelocityInhert: boolean, InHertVelocity: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardBroadcastClientEnterVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayTakeOut boolean
---@param InVelocityInhert boolean
---@param InHertVelocity FVector
function FOnSnowboardBroadcastClientEnterVehicle:Broadcast(InPlayTakeOut, InVelocityInhert, InHertVelocity) end


---@class ASTExtraSimulatedSlidingVehicle: ASTExtraWheeledVehicle
---@field SlideSoundSpeedThreshold number
---@field SpecialAttachActorClass ASTExtraWeapon
---@field SpecialAttachActorSocket string
---@field SpecialAttachActorItemDefineID FItemDefineID
---@field bPlayAnimWhenServerExitVehicle boolean
---@field bPreventPenetratingValidTransformValidInAir boolean
---@field bShouldCheckInSimulatedSlidingTrigger boolean
---@field CharacterHasBeenOnVehicle boolean
---@field ServerCheckExitVehicle boolean
---@field PlayerEnterVelocityRate number
---@field PlayerEnterVelocityDelay number
---@field MinAddEnterVelocity number
---@field PlayerEnterVelocity FVector
---@field SnowBoardUseableDelay number
---@field RepUseSyncatClient boolean
---@field SnowBoardUnuseable boolean
---@field UseServerCtr boolean
---@field OnSnowboardBroadcastClientEnterVehicle FOnSnowboardBroadcastClientEnterVehicle
---@field SlideSfxLoop FSTExtraVehicleSfxLoop
---@field BrakeSfxLoop FSTExtraVehicleSfxLoop
---@field bCloseCollisionAfterExitVehicle boolean
---@field bAutoExitVehicleUnderSpeed boolean
---@field AutoExitVehicleSpeed number
---@field OnSnowboardServerAutoExitUnderSpeed FOnSnowboardServerAutoExitUnderSpeed
---@field bUpdateSurfingText boolean
---@field UpdateSurfingInterval number
---@field UpdateSurfingTimer number
local ASTExtraSimulatedSlidingVehicle = {}

---@param Reason string
function ASTExtraSimulatedSlidingVehicle:ServerDetachEveryoneFromSeat(Reason) end

function ASTExtraSimulatedSlidingVehicle:InAnySimulatedSlidingTrigger() end

---@param IsSpawn boolean
function ASTExtraSimulatedSlidingVehicle:SpawnOrDelSpecialAttachActor(IsSpawn) end

---@return boolean
function ASTExtraSimulatedSlidingVehicle:CheckHaveSpecialAttachActor() end

function ASTExtraSimulatedSlidingVehicle:OnRep_SpecialAttachActor() end

function ASTExtraSimulatedSlidingVehicle:ServerEquipSpecialAttachActor() end

---@param InCachedSpecialAttachActor AActor
function ASTExtraSimulatedSlidingVehicle:SetCachedSpecialAttachActor(InCachedSpecialAttachActor) end

function ASTExtraSimulatedSlidingVehicle:BroadcastClientExitVehicle() end

---@param InPlayTakeOut boolean
---@param InVelocityInhert boolean
---@param InHertVelocity FVector
function ASTExtraSimulatedSlidingVehicle:BroadcastClientEnterVehicle(InPlayTakeOut, InVelocityInhert, InHertVelocity) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraSimulatedSlidingVehicle:ClientEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraSimulatedSlidingVehicle:ClientExitVehicle(Character, SeatType, IsSucc) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraSimulatedSlidingVehicle:ClientPlayerAttachedToVehicle(InVehicle) end

function ASTExtraSimulatedSlidingVehicle:ServerCheckPlayEnterAnim() end

---@param InCharacterHasBeenOnVehicle boolean
function ASTExtraSimulatedSlidingVehicle:SetCharacterHasBeenOnVehicle(InCharacterHasBeenOnVehicle) end

---@param bIsHeavy boolean
function ASTExtraSimulatedSlidingVehicle:PlaySfxJumpStart(bIsHeavy) end

---@param bIsHeavy boolean
function ASTExtraSimulatedSlidingVehicle:PlaySfxJumpEnd(bIsHeavy) end

function ASTExtraSimulatedSlidingVehicle:PlaySfxSpeedUp() end

---@param DeltaTime number
---@param bIsBraking boolean
function ASTExtraSimulatedSlidingVehicle:PlaySfxBrake(DeltaTime, bIsBraking) end

---@param DeltaTime number
---@param bIsSliding boolean
function ASTExtraSimulatedSlidingVehicle:PlaySfxSlide(DeltaTime, bIsSliding) end

function ASTExtraSimulatedSlidingVehicle:PlayFXJumpStart() end

---@param InActive boolean
function ASTExtraSimulatedSlidingVehicle:ActiveFXBrake(InActive) end

function ASTExtraSimulatedSlidingVehicle:VehicleJump() end

function ASTExtraSimulatedSlidingVehicle:AfterExitVehicleAnimPlay() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraSimulatedSlidingVehicle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraSimulatedSlidingVehicle:OnServerExitVehicle(InCharacter, SeatType, IsSucc) end

function ASTExtraSimulatedSlidingVehicle:TryDestroyVehicle() end

function ASTExtraSimulatedSlidingVehicle:ClientOnVehicle() end

function ASTExtraSimulatedSlidingVehicle:SetPlayerEnterVelocity() end

---@param SyncatClient boolean
function ASTExtraSimulatedSlidingVehicle:SetSyncatClient(SyncatClient) end

---@param InRepUseSyncatClient boolean
function ASTExtraSimulatedSlidingVehicle:SetRepUseSyncatClient(InRepUseSyncatClient) end

---@param InUnuseable boolean
function ASTExtraSimulatedSlidingVehicle:SetSnowboardUnuseable(InUnuseable) end

function ASTExtraSimulatedSlidingVehicle:OnRep_UseSyncatClient() end

function ASTExtraSimulatedSlidingVehicle:SendToServerClientInitOK() end
