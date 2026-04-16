---@meta

---@class FPhysicsConstraintProfileHandle
---@field ProfileProperties FConstraintProfileProperties
---@field ProfileName string
FPhysicsConstraintProfileHandle = {}


---@class UPhysicsConstraintTemplate: UObject
---@field DefaultInstance FConstraintInstance
---@field ProfileHandles ULuaArrayHelper<FPhysicsConstraintProfileHandle> @Handles to the constraint profiles applicable to this constraint
---@field DefaultProfile FConstraintProfileProperties @When no profile is selected, use these settings. Only needed in editor as we serialize it into DefaultInstance on save
local UPhysicsConstraintTemplate = {}
