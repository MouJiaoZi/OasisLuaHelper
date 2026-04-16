---@meta

---@class FCurWeaponEmoteRes
---@field CurEmoteId number
---@field CurMainRoleAnimSoftPath FSoftObjectPath
---@field CurMainRoleAnim UAnimationAsset
---@field CurSeqPath FSoftObjectPath
---@field CurSeq ULevelSequence
FCurWeaponEmoteRes = {}


---@class ULobbyPlayEmoteWeaponComponent: ULobbyPlayEmoteBaseComponent
---@field CurEmoteRes FCurWeaponEmoteRes
---@field EmoteAnimLastTime number
---@field DefaultBoundScale number
local ULobbyPlayEmoteWeaponComponent = {}

function ULobbyPlayEmoteWeaponComponent:OnReceiveBeginPlay() end

function ULobbyPlayEmoteWeaponComponent:OnReceiveEndPlay() end

---@param EmoteId number
---@param isLoop boolean
---@return boolean
function ULobbyPlayEmoteWeaponComponent:OnPlayEmote(EmoteId, isLoop) end

---@param EmoteId number
---@param handle UBackpackLobbyEmoteWeaponHandle
function ULobbyPlayEmoteWeaponComponent:LoadCurHandleRes(EmoteId, handle) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteWeaponComponent:FillMainAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteWeaponComponent:ReceiveFillMainAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteWeaponComponent:FillSeqAnimPath(softPathList) end

---@param softPathList ULuaArrayHelper<FSoftObjectPath>
function ULobbyPlayEmoteWeaponComponent:ReceiveFillSeqAnimPath(softPathList) end

---@param index number
function ULobbyPlayEmoteWeaponComponent:OnAsyncLoadAllAnimRes(index) end

---@param index number
function ULobbyPlayEmoteWeaponComponent:ReceiveOnAsyncLoadAllAnimRes(index) end

function ULobbyPlayEmoteWeaponComponent:GetSeqAsset() end

function ULobbyPlayEmoteWeaponComponent:StartPlayEmote() end

function ULobbyPlayEmoteWeaponComponent:ReceiveStartPlayEmote() end

function ULobbyPlayEmoteWeaponComponent:DoPlayMainRoleAnim() end

function ULobbyPlayEmoteWeaponComponent:DoPlaySeq() end

function ULobbyPlayEmoteWeaponComponent:ShowOwner() end

function ULobbyPlayEmoteWeaponComponent:OnLevelSequencePlayFinish() end

function ULobbyPlayEmoteWeaponComponent:StopPlayEmote() end

function ULobbyPlayEmoteWeaponComponent:ReceiveStopPlayEmote() end

function ULobbyPlayEmoteWeaponComponent:StopPlaySeq() end

function ULobbyPlayEmoteWeaponComponent:ForceStopAnimMontage() end

---@param DeltaTime number
function ULobbyPlayEmoteWeaponComponent:CheckAnimStatus(DeltaTime) end

---@return boolean
function ULobbyPlayEmoteWeaponComponent:DoesEmoteStop() end

---@return boolean
function ULobbyPlayEmoteWeaponComponent:EmoteAnimFinishedSuccessfully() end

function ULobbyPlayEmoteWeaponComponent:ReceiveEmoteAnimFinishedSuccessfully() end
