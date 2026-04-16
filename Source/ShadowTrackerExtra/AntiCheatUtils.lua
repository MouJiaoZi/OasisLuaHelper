---@meta

---校验需要的通用的函数
---@class UAntiCheatUtils: UBlueprintFunctionLibrary
local UAntiCheatUtils = {}

---获取OBject的显示名称 UObject::GetNameSafe只作了空指针检查，会有问题
---@param InObj UObject
---@return string
function UAntiCheatUtils:GetSafeName(InObj) end

---对射击时的枪口到玩家作穿墙校验(Sphere) 服务器和客户端都会调用
---@param InShooter ASTExtraBaseCharacter
---@param InTraceEnd FVector
---@param InTraceStatrt FVector
---@param InRadius number
---@return boolean
function UAntiCheatUtils:VerifyShootTimeTraceSphere(InShooter, InTraceEnd, InTraceStatrt, InRadius) end
