---@meta

---进入/退出服务时修改黑板变量的值
---@class UBTService_ModifyBlackboardValue: UBTService
---@field bEnterModifyBlackboardKey boolean @进入服务时需要修改黑板变量
---@field EnterModifyBlackboardKey any @进入服务时修改的黑板变量
---@field EnterSetValue string @进入服务时修改黑板变量的值
---@field bExitModifyBlackboardKey boolean @退出服务时需要修改黑板变量
---@field ExitModifyBlackboardKey any @退出服务时修改的黑板变量
---@field ExitSetValue string @退出服务时修改黑板变量的值
---@field bTimeoutModifyBlackboardKey boolean @超时需要修改黑板变量
---@field TimeoutSetValueTime number @超时修改黑板变量的时间
---@field TimeoutModifyBlackboardKey any @超时修改的黑板变量
---@field TimeoutSetValue string @超时修改黑板变量的值
local UBTService_ModifyBlackboardValue = {}
