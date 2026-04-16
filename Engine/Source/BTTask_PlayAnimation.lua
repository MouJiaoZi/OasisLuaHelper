---@meta

---Play indicated AnimationAsset on Pawn controlled by BT Note that this node is generic and is handing multiple special cases, If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)
---@class UBTTask_PlayAnimation: UBTTaskNode
---@field bLooping number
---@field bNonBlocking number @if true the task will just trigger the animation and instantly finish. Fire and Forget.
local UBTTask_PlayAnimation = {}
