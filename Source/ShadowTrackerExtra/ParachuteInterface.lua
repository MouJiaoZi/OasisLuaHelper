---@meta

---@class IParachuteInterface: IInterface
IParachuteInterface = {}

---@return ASTExtraPlayerCharacter
function IParachuteInterface:GetOwnerCharacter() end

---@return ASTExtraPlayerController
function IParachuteInterface:GetOwnerController() end

---@return UBaseParachuteComponent
function IParachuteInterface:GetParachuteComp() end

---@return USpringArmComponent
function IParachuteInterface:GetSpringArmComp() end

---@return UPawnMovementComponent
function IParachuteInterface:GetMovementComp() end

---@return FVector
function IParachuteInterface:GetMovementDir() end
