---@meta

---摄像头管理组件
---@class UMossManagerComponent: UActorComponent, IObjectPoolInterface
---@field bEnableShareDistanceLimit boolean
---@field ShareMossResultDistance number
---@field bObservingMoss boolean
---@field TeammateDistanceFlagMap ULuaMapHelper<number, boolean>
local UMossManagerComponent = {}

---@param bMark boolean
---@param Enemy AActor
function UMossManagerComponent:OnHandleEnemyMark(bMark, Enemy) end

---@param TeammatePS ASTExtraPlayerState
---@param bOutOfDistance boolean
function UMossManagerComponent:ReceiveTeammateDistanceChanged(TeammatePS, bOutOfDistance) end

function UMossManagerComponent:OnReplayFinishLoading() end

function UMossManagerComponent:OnReplayChangeViewTarget() end

function UMossManagerComponent:OnReplayResetViewTarget() end

---@param bFlag boolean
function UMossManagerComponent:SetObservingMoss(bFlag) end
