---@meta

---Enumeration specifying how to handle state when this section is no longer evaluated
---@class EMovieSceneCompletionMode
---@field KeepState number
---@field RestoreState number
EMovieSceneCompletionMode = {}


---@class FMovieSceneSectionEvalOptions
---@field bCanEditCompletionMode boolean
---@field CompletionMode EMovieSceneCompletionMode @When set to "RestoreState", this section will restore any animation back to its previous state
FMovieSceneSectionEvalOptions = {}


---@class FMovieSceneEasingSettings
---@field AutoEaseInTime number @Automatically applied ease in time
---@field AutoEaseOutTime number @Automatically applied ease out time
---@field EaseIn IMovieSceneEasingFunction
---@field bManualEaseIn boolean @Whether to manually override this section's ease in time
---@field ManualEaseInTime number @Manually override this section's ease in time
---@field EaseOut IMovieSceneEasingFunction
---@field bManualEaseOut boolean @Whether to manually override this section's ease out time
---@field ManualEaseOutTime number @Manually override this section's ease-out time
FMovieSceneEasingSettings = {}


---Base class for movie scene sections
---@class UMovieSceneSection: UMovieSceneSignedObject
---@field EvalOptions FMovieSceneSectionEvalOptions
---@field Easing FMovieSceneEasingSettings
---@field StartTime number @The start time of the section
---@field EndTime number @The end time of the section
---@field RowIndex number @The row index that this section sits on
---@field OverlapPriority number @This section's priority over overlapping sections
---@field bIsActive number @Toggle whether this section is active/inactive
---@field bIsLocked number @Toggle whether this section is locked/unlocked
---@field bIsInfinite number @Toggle to set this section to be infinite
---@field PreRollTime number @The amount of time to prepare this section for evaluation before it actually starts.
---@field PostRollTime number @The amount of time to continue 'postrolling' this section for after evaluation has ended.
---@field BlendType FOptionalMovieSceneBlendType
local UMovieSceneSection = {}
