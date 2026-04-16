---@meta

---@class UCustomAlignTimeComponent: UActorComponent
---@field KeepTickTime number
---@field AutoTick number
---@field EndTickTime number
local UCustomAlignTimeComponent = {}

---@param Enable boolean
function UCustomAlignTimeComponent:EnableAutoTick(Enable) end

---获取DS时间 建议只在客户端调用 DS调用直接返回 GetWorld()->GetTimeSeconds() 需要等待对时成功后才能返回有效值 未对时成功之前返回0
---@return number
function UCustomAlignTimeComponent:GetServerWorldTime() end

---@param WorldContextObject UObject
---@return number
function UCustomAlignTimeComponent:ServerWorldTime(WorldContextObject) end

function UCustomAlignTimeComponent:Reset() end

---@param Req_ClientPlatformTime number
function UCustomAlignTimeComponent:RequestAlignTime(Req_ClientPlatformTime) end

---DS 回复对时请求
---@param Req_ClientPlatformTime number
---@param Res_ServerPlatformTime1 number
---@param Res_ServerPlatformTime2 number
---@param ServerWorldTimeDelta number
function UCustomAlignTimeComponent:ResponseAlignTime(Req_ClientPlatformTime, Res_ServerPlatformTime1, Res_ServerPlatformTime2, ServerWorldTimeDelta) end
