---@meta

---画面质量
---@class ERenderQuality
---@field Default number @//*UGC* 默认
---@field SMOOTH number @//*UGC* 流畅
---@field BALANCE number @//*UGC* 均衡
---@field HIGHDEFINITION number @//*UGC* 高清
---@field HIGHDEFINITIONPLUS number @//*UGC* HDR高清
---@field ULTRAHIGHDEFINITION number @//*UGC* 超高清
---@field VERYSMOOTH number @//*UGC* 超流畅
---@field ULTIMATEHIGH number @//*UGC* 极清
ERenderQuality = {}


---画面风格
---@class ERenderStyle
---@field Default number
---@field CLASSIC number @//*UGC* 默认
---@field COLOURFUL number @//*UGC* 经典
---@field REALISTIC number @//*UGC* 鲜艳
---@field SOFT number @//*UGC* 写实
---@field NightVision number @//*UGC* 柔和
---@field MOVIE number @//*UGC* 夜视（特殊用途，忽略）
---@field DynamicStyle number @//*UGC* 电影
---@field ThermalImaging number @//*UGC* 动态（特殊用途，忽略）
---@field Vibrant number @//*UGC* 热成像
---@field LUT_CLASSIC number
---@field LUT_COLOURFUL number
---@field LUT_REALISTIC number
---@field LUT_SOFT number
---@field LUT_MOVIE number
---@field LUT_Vibrant number
---@field MAX number
ERenderStyle = {}


---@class ERenderDynamicStyle
---@field Default number
---@field GuidedMissile number
---@field SceneToGrayOnDeath number
ERenderDynamicStyle = {}


---@class FSwitchesItem
---@field Key string
---@field Value number
---@field DependKey string
---@field DependValue number
FSwitchesItem = {}


---@class FSwitchesInMaps
---@field MapName string
---@field Switches ULuaArrayHelper<FSwitchesItem>
FSwitchesInMaps = {}


---@class FRenderItem
---@field RenderKey string
---@field RenderValue number
FRenderItem = {}


---@class FRenderStyleCVars
---@field RenderStyle ERenderStyle
---@field Switches ULuaArrayHelper<FRenderItem>
FRenderStyleCVars = {}


---@class FRenderStyleAndPPMaping
FRenderStyleAndPPMaping = {}


---@class FRenderQualitySettings
---@field RenderQualitySetting ERenderQuality
---@field RenderStyleSetting ERenderStyle
---@field RenderMSAASetting boolean
---@field TeamQualityEnhanceSetting number
---@field IsClassicalSetting boolean
FRenderQualitySettings = {}


---@class FRenderQualityCVarsToSync
---@field StaticMeshLodDistanceScale number
---@field ShadowQuality number
FRenderQualityCVarsToSync = {}


---@class FRenderStyleParameterInMaps
---@field DynamicStyleName ERenderDynamicStyle
---@field PostProcessParams ULuaArrayHelper<string>
---@field ACESParams FACESParameter
FRenderStyleParameterInMaps = {}
