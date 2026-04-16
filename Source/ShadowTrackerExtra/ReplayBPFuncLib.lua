---@meta

---@class UReplayBPFuncLib: UBlueprintFunctionLibrary
local UReplayBPFuncLib = {}

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsPlayingReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsRecordingReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsFastForwarding(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsReplayWaitFinishLoading(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInRecording_Complete(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInRecording_Death(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInRecording_ClientCompleteReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInPlaying_Complete(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInPlaying_Death(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInPlaying_ClientCompleteReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsInPlaying_ClientReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return number
function UReplayBPFuncLib:GetRemainingPlayTimeLength(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsResetingViewTarget(WorldContextObject) end

---@param WorldContextObject UObject
---@param bShowMilliseconds boolean
---@return string
function UReplayBPFuncLib:GetDemoCurrentTime(WorldContextObject, bShowMilliseconds) end

---@param WorldContextObject UObject
---@return number
function UReplayBPFuncLib:CurPlayBackTimeInAnyReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsCurRpcOrOnrepInAnyReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsUsingAssumedName(WorldContextObject) end

---@param WorldContextObject UObject
---@param _inName string
---@param outName string
---@return boolean
function UReplayBPFuncLib:GetPlayerAssumedName(WorldContextObject, _inName, outName) end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsUsingMapPlayerItem(WorldContextObject) end

---@return boolean
function UReplayBPFuncLib:IsRunningForWechatLive() end

---@return boolean
function UReplayBPFuncLib:IsRunningForWeishi() end

---@return boolean
function UReplayBPFuncLib:IsRunningForAnticheat() end

---@return boolean
function UReplayBPFuncLib:IsRunningSpecialClient() end

---@param WorldContextObject UObject
---@return boolean
function UReplayBPFuncLib:IsOpenLiveReplay(WorldContextObject) end

---@return boolean
function UReplayBPFuncLib:ShouldDisplayIDInfo() end

---@return boolean
function UReplayBPFuncLib:ShouldShowPing() end

---@return boolean
function UReplayBPFuncLib:ShouldShowFpsAndPacketLost() end

---@return boolean
function UReplayBPFuncLib:NeedUseOBUIInReplay() end

---@param inWeaponRecord FWeaponRecord
---@return boolean
function UReplayBPFuncLib:IsGunTypeByWeaponID(inWeaponRecord) end

---@param WorldContextObject UObject
---@param PlayerUID string
---@return string
function UReplayBPFuncLib:GetVersionAndUIDStrEncryptedReplay(WorldContextObject, PlayerUID) end

---@param WorldContextObject UObject
---@return string
function UReplayBPFuncLib:GetGameIDStrEncryptedReplay(WorldContextObject) end

---@param WorldContextObject UObject
---@param PlayerUID string
---@param Result string
function UReplayBPFuncLib:GetTimestampStrEncrytedReplay(WorldContextObject, PlayerUID, Result) end

---@param PlayerStateInReplay ASTExtraPlayerState
---@return EPlayerMoveState
function UReplayBPFuncLib:GetPlayerMoveState(PlayerStateInReplay) end
