---@meta

---这个文件一直没有被用到 废弃文件之前用来做简单跳跃的功能
---@class UVehicleJumpSkillComponent: UVehicleSkillBaseComponent
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
local UVehicleJumpSkillComponent = {}

---@param NewValue number
function UVehicleJumpSkillComponent:SetJumpCDTimer(NewValue) end

---@param bEnable boolean
function UVehicleJumpSkillComponent:UpdateCanUseJump(bEnable) end

function UVehicleJumpSkillComponent:UpdateAttachment() end

function UVehicleJumpSkillComponent:TryJump() end

---@param ClientSyncData FVehicleClientSyncData
function UVehicleJumpSkillComponent:ReqUseJump(ClientSyncData) end

---@param Code EVehicleSkillErrorCode
function UVehicleJumpSkillComponent:RspUseJump(Code) end

---@param Code EVehicleSkillErrorCode
function UVehicleJumpSkillComponent:DoRspUseJump(Code) end

function UVehicleJumpSkillComponent:BoostJumpInternal() end

---@return boolean
function UVehicleJumpSkillComponent:CheckCanJump() end

---@return boolean
function UVehicleJumpSkillComponent:CheckCanUseItem() end

function UVehicleJumpSkillComponent:BoostJumpMulticast() end

function UVehicleJumpSkillComponent:OnBoostJump() end

function UVehicleJumpSkillComponent:OnRep_CanUseJump() end

---@param Handle UBattleItemHandleBase
function UVehicleJumpSkillComponent:SetBindHandle(Handle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillComponent:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillComponent:OnClientEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillComponent:OnServerExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleJumpSkillComponent:OnClientExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleJumpSkillComponent:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleJumpSkillComponent:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleJumpSkillComponent:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Active boolean
function UVehicleJumpSkillComponent:UpdateAttachmentEffectFunc(Active) end

---@param DeltaTime number
function UVehicleJumpSkillComponent:UpdateJumpEffect(DeltaTime) end
