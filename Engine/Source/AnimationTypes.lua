---@meta

---A named float
---@class FNamedFloat
---@field Value number
---@field Name string
FNamedFloat = {}


---A named float
---@class FNamedVector
---@field Value FVector
---@field Name string
FNamedVector = {}


---A named color
---@class FNamedColor
---@field Value FColor
---@field Name string
FNamedColor = {}


---A named transform
---@class FNamedTransform
---@field Value FTransform
---@field Name string
FNamedTransform = {}


---A pose in local space (i.e. each transform is relative to its parent)
---@class FLocalSpacePose
---@field Transforms ULuaArrayHelper<FTransform>
---@field Names ULuaArrayHelper<string>
FLocalSpacePose = {}


---A pose in component space (i.e. each transform is relative to the component's transform)
---@class FComponentSpacePose
---@field Transforms ULuaArrayHelper<FTransform>
---@field Names ULuaArrayHelper<string>
FComponentSpacePose = {}
