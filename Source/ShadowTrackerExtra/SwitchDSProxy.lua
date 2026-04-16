---@meta

---@class USwitchDSChannel: UObject
---@field ChannelName string
---@field RequestTimeout number
---@field MaxNumRetransmission number
---@field MaxNumOutRequests number
---@field NumBytesPerChunk number
local USwitchDSChannel = {}


---@class UPlayerSwitchDSChannel: USwitchDSChannel
local UPlayerSwitchDSChannel = {}


---@class UMultiDSPlayerSwitchDSChannel: UPlayerSwitchDSChannel
local UMultiDSPlayerSwitchDSChannel = {}


---Proxy used to switch out old ds and switch in new ds
---@class USwitchDSProxy: UGameModeBaseComponent
---@field OpenChannels ULuaArrayHelper<USwitchDSChannel>
local USwitchDSProxy = {}

---Set up switch out channel for specified player
---@param UID number
function USwitchDSProxy:SwitchOutPlayer(UID) end

---Set up switch in channel for specified player
---@param UID number
---@param InMaxSequence number
function USwitchDSProxy:SwitchInPlayer(UID, InMaxSequence) end

---Called when a player is about to exit ds
---@param PC AUAEPlayerController
function USwitchDSProxy:OnPlayerRealExit(PC) end

---@param UID number
function USwitchDSProxy:switch_ds_req(UID) end

---@param UID number
---@param Sequence number
---@param Result string
function USwitchDSProxy:save_ds_data_rsp(UID, Sequence, Result) end

---@param UID number
---@param Sequence number
---@param Result string
---@param DSData string
function USwitchDSProxy:get_ds_data_rsp(UID, Sequence, Result, DSData) end

---Called when one channel finished its switch out procedure
---@param Channel USwitchDSChannel
function USwitchDSProxy:OnChannelFinishSwitchOut(Channel) end

---Called when one channel finished its switch in procedure
---@param Channel USwitchDSChannel
function USwitchDSProxy:OnChannelFinishSwitchIn(Channel) end

---Called when one channel encountered an error
---@param Channel USwitchDSChannel
---@param ErrMsg string
function USwitchDSProxy:OnChannelError(Channel, ErrMsg) end

---@param ConnectionID number
---@param UID number
---@param Sequence number
function USwitchDSProxy:LuaReceiveGetMultiDSDataReq(ConnectionID, UID, Sequence) end

---@param ConnectionID number
---@param UID number
function USwitchDSProxy:MultiDSSwitchOutPlayer(ConnectionID, UID) end

---@param ConnectionID number
---@param UID number
---@param InMaxSequence number
function USwitchDSProxy:MultiDSSwitchInPlayer(ConnectionID, UID, InMaxSequence) end

---@param ConnectionID number
---@param UID number
---@param Sequence number
---@param Result string
---@param DSData string
function USwitchDSProxy:LuaReceiveGetMultiDSDataRsp(ConnectionID, UID, Sequence, Result, DSData) end

---@param ConnectionID number
---@param InstanceID number
---@param UID number
---@param PlayerKey number
---@param GuidMapping string
function USwitchDSProxy:LuaReceiveMultiDSSwitchPlayerRsp(ConnectionID, InstanceID, UID, PlayerKey, GuidMapping) end
