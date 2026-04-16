---@meta

---虚幻网络库
---@class UnrealNetwork
UnrealNetwork = {}

---对声明为复制的Lazy属性执行复制
---@param TargetObject AActor | UActorComponent @属性所在的Actor或Component
---@param PropertyName string @属性名或路径
function UnrealNetwork.RepLazyProperty(TargetObject, PropertyName) end

---发送可靠单播RPC
---@param TargetPlayerController APlayerController @目标玩家
---@param TargetObject AActor | UActorComponent @目标Actor或Component
---@param FunctionName string @RPC函数名
function UnrealNetwork.CallUnrealRPC(TargetPlayerController, TargetObject, FunctionName, ...) end

---发送不可靠单播RPC
---@param TargetPlayerController APlayerController @目标玩家
---@param TargetObject AActor | UActorComponent @目标Actor或Component
---@param FunctionName string @RPC函数名
function UnrealNetwork.CallUnrealRPC_Unreliable(TargetPlayerController, TargetObject, FunctionName, ...) end

---发送可靠广播RPC
---@param TargetObject AActor | UActorComponent @目标Actor或Component
---@param FunctionName string @RPC函数名
function UnrealNetwork.CallUnrealRPC_Multicast(TargetObject, FunctionName, ...) end

---发送不可靠广播RPC
---@param TargetObject AActor | UActorComponent @目标Actor或Component
---@param FunctionName string @RPC函数名
function UnrealNetwork.CallUnrealRPC_Multicast_Unreliable(TargetObject, FunctionName, ...) end