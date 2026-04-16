---@meta

---复制玩家角色Avatar的Actor
---@class UGCCharAvatarShowcaseActor
local UGCCharAvatarShowcaseActor = {}

---显示PlayerUID的Avatar
---生效范围：客户端
---@param PlayerUID number @玩家的 PlayerUID
function UGCCharAvatarShowcaseActor:ClientShowAvatar(PlayerUID) end

---显示PlayerUID的Avatar
---生效范围：服务端
---@param PlayerUID number @玩家的 PlayerUID
function UGCCharAvatarShowcaseActor:ServerShowAvatar(PlayerUID) end

---播放动画
---生效范围：客户端
---@param NewAnimToPlay UAnimationAsset @动画资源
---@param bLooping boolean @是否循环播放
function UGCCharAvatarShowcaseActor:PlayAnim(NewAnimToPlay, bLooping) end