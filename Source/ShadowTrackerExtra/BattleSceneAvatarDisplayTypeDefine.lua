---@meta

---@class EBattleAvatarDisplayActionType
---@field None number
---@field SwitchViewToDisplayAvatar number @切换视角到摆拍Avatar
---@field PlayAudio number @播放一段音频
---@field SwitchViewToBattlePawn number @切换视角到战斗Avatar
---@field CameraFade number @Camera淡入/出到一个颜色
---@field SwitchUI_BattleToStartDisplay number @切换战斗UI到开局摆拍UI(旧的UI控制方式，请使用CastMsgToUI)
---@field SwitchUI_StartDisplayToBattle number @切换开局摆拍UI到战斗UI(旧的UI控制方式，请使用CastMsgToUI)
---@field SwitchUI_BattleToEndDisplay number @切换战斗UI到结算摆拍UI(旧的UI控制方式，请使用CastMsgToUI)
---@field SwitchUI_EndDisplayToResult number @切换结算摆拍UI到结算UI(旧的UI控制方式，请使用CastMsgToUI)
---@field PlayCameraAnim number @播放一个CameraAnim
---@field CastMsgToUI number @触发一个UIMsg
---@field TerminateDisplay number @清除摆拍Avatar
EBattleAvatarDisplayActionType = {}


---@class FCameraFadeParam
---@field FromAlpha number
---@field ToAlpha number
---@field Duration number
---@field Color FLinearColor
---@field bShouldFadeAudio boolean
---@field bHoldWhenFinished boolean
FCameraFadeParam = {}


---@class FCameraAnimParam
---@field bStopOtherAnimWhenPlay boolean
---@field bStopOtherAnimImmediately boolean
---@field bKeepLocAndRotWhenFinished boolean
---@field bIgnoreAnimTrackStartTime boolean
---@field KeepLocAndRotReverseToFinishTime number
---@field Rate number
---@field Scale number
---@field BlendInTime number
---@field BlendOutTime number
---@field bLoop boolean
---@field bRandomStartTime boolean
---@field Duration number
---@field PlaySpace ECameraAnimPlaySpace
---@field UserPlaySpaceRot FRotator
FCameraAnimParam = {}


---@class FUIMsgParam
---@field UIMsg string
---@field UIModule string
FUIMsgParam = {}


---@class FAvatarDisplayLightSettings
---@field LightTag string
---@field ApplyDirectionLight boolean
---@field ApplyPointLight boolean
---@field ApplySkyLight boolean
FAvatarDisplayLightSettings = {}
