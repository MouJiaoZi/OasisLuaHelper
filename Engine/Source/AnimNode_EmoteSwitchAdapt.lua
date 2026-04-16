---@meta

---@class FEmoteBoneAdaptConfig
---@field EmoteBoneToAdapt FBoneReference
---@field EmoteBoneToAdaptOffset FTransform
FEmoteBoneAdaptConfig = {}


---面部表情骨骼吸附节点 功能： - 自动检测当前帧下哪个表情骨骼最接近RefPose位置 - 将该骨骼吸附到RefPose位置，确保至少有一个完整表情显示 - 用于解决Linear插值模式下表情切换时的"半表情"问题
---@class FAnimNode_EmoteSwitchAdapt
---@field EmoteShowBoneRef FBoneReference
---@field EmoteAdaptBones ULuaArrayHelper<FEmoteBoneAdaptConfig>
FAnimNode_EmoteSwitchAdapt = {}
