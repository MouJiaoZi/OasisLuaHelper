---@meta

---@class UMobaFunctionLibrary: UBlueprintFunctionLibrary
local UMobaFunctionLibrary = {}

---通用累积乘法公式计算（示例：总韧性 = 1 - 所有 （1 - 每个韧性%）相乘）
---@param AttrComp UAttrModifyComponent
---@param AttrName string
---@return number
function UMobaFunctionLibrary:GetAttrFactorWithMultiplyFormula(AttrComp, AttrName) end

---获取当前角色在服务器上准星对应的世界坐标，使用服务器SpringArm位置和ControlRotation
---@param Character ASTExtraBaseCharacter
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param MaxTraceDis number
---@param bAI boolean
---@return FVector
function UMobaFunctionLibrary:GetAimLocationOnServer(Character, ObjectTypes, IgnoreActors, MaxTraceDis, bAI) end

---均匀地随机在球内获取一个点
---@param SphereCenter FVector
---@param SphereRadius number
---@return FVector
function UMobaFunctionLibrary:RandomGetLocationInSphere(SphereCenter, SphereRadius) end

---近似判断其他角色是否在视野范围内
---@param OwnerChar ACharacter
---@param OtherChar ACharacter
---@param DistanceSquared number
---@param Angle number
---@param LineTraceHeadOffset number
---@return boolean
function UMobaFunctionLibrary:IsCharacterInRange(OwnerChar, OtherChar, DistanceSquared, Angle, LineTraceHeadOffset) end

---@param OwnerChar ACharacter
---@param OptionalMaxSpeed2D number
---@param bForceSetMaxSpeed2D boolean
---@return FVector
function UMobaFunctionLibrary:GetClampedJumpVelocity(OwnerChar, OptionalMaxSpeed2D, bForceSetMaxSpeed2D) end
