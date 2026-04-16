---@meta

---@class UVehicleConnectComponent: UVehicleComponent
---@field ConnectedVehicle ASTExtraVehicleBase
---@field CurrentLevel number
---@field SeparatedVehicleA ASTExtraVehicleBase
---@field RelativeLocationA FVector
---@field SeparatedVehicleB ASTExtraVehicleBase
---@field RelativeLocationB FVector
---@field bCanSeparateConnect boolean
---@field mapRecordVehicleItemHandle ULuaMapHelper<ASTExtraPlayerCharacter, UBattleItemHandleBase>
local UVehicleConnectComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleConnectComponent:OnHitAtServer(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleConnectComponent:OnPlayerExitAtServer(Character, SeatType, IsSucc) end
