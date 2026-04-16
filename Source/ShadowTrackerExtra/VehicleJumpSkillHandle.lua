---@meta

---@class UVehicleJumpSkillHandle: UVehicleSkillBaseHandle
---@field JumpImpulse FVector
---@field JumpCD number
---@field JumpMinVelocity number
---@field JumpCDTimer number
---@field bVehicleCanUse boolean
---@field bCanUseJump boolean
---@field SkillUIPath string
---@field MaxJumpEnableTime number
---@field CurJumpEnableTimeLift number
---@field bEnableJumpAttchment boolean
---@field AttchmentActorPath string
---@field AttachSocket string
---@field AttachTransform FTransform
---@field LeaveVehicleDisuseItem boolean
---@field ChangeSeatDisuseItem boolean
---@field bClampZVelocity boolean
---@field bAddVelocity boolean
---@field CanTickJumpEffect boolean
---@field JumpEffectTimer number
---@field JumpEffectName string
local UVehicleJumpSkillHandle = {}

function UVehicleJumpSkillHandle:OnRep_JumpCDTimer() end

---@param NewValue number
function UVehicleJumpSkillHandle:SetJumpCDTimer(NewValue) end

---@param bEnable boolean
function UVehicleJumpSkillHandle:UpdateCanUseJump(bEnable) end

function UVehicleJumpSkillHandle:UpdateAttachment() end

function UVehicleJumpSkillHandle:TryJump() end

---@return EVehicleSkillErrorCode
function UVehicleJumpSkillHandle:UseVehicleSkill() end

function UVehicleJumpSkillHandle:ReqUseVehicleSkill() end

---@param Code EVehicleSkillErrorCode
function UVehicleJumpSkillHandle:RspUseJump(Code) end

---@param Code EVehicleSkillErrorCode
function UVehicleJumpSkillHandle:DoRspUseJump(Code) end

function UVehicleJumpSkillHandle:BoostJumpInternal() end

---@param Result number
function UVehicleJumpSkillHandle:MulticastUseJump(Result) end

---@param Result number
function UVehicleJumpSkillHandle:MulticastUseVehicleSkill(Result) end

---@return boolean
function UVehicleJumpSkillHandle:CheckCanJump() end

---@return boolean
function UVehicleJumpSkillHandle:CheckCanUseItem() end

function UVehicleJumpSkillHandle:BoostJumpMulticast() end

function UVehicleJumpSkillHandle:OnBoostJump() end

function UVehicleJumpSkillHandle:OnRep_CanUseJump() end

---@param Handle UBattleItemHandleBase
function UVehicleJumpSkillHandle:SetBindHandle(Handle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillHandle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
function UVehicleJumpSkillHandle:OnClientEnterVehicle(Character, SeatType) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillHandle:OnServerExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillHandle:OnClientExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleJumpSkillHandle:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleJumpSkillHandle:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleJumpSkillHandle:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Active boolean
function UVehicleJumpSkillHandle:UpdateAttachmentEffectFunc(Active) end

---@param DeltaTime number
function UVehicleJumpSkillHandle:UpdateJumpEffect(DeltaTime) end
