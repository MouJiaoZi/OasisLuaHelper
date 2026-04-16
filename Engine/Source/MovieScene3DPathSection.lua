---@meta

---@class MovieScene3DPathSection_Axis
---@field X number @X
---@field Y number @Y
---@field Z number @Z
---@field NEG_X number @-X
---@field NEG_Y number @-Y
---@field NEG_Z number @-Z
MovieScene3DPathSection_Axis = {}


---A 3D Path section
---@class UMovieScene3DPathSection: UMovieScene3DConstraintSection
---@field TimingCurve FRichCurve @Timing Curve
---@field FrontAxisEnum MovieScene3DPathSection_Axis @Front Axis
---@field UpAxisEnum MovieScene3DPathSection_Axis @Up Axis
---@field bFollow number @Follow Curve
---@field bReverse number @Reverse Timing
---@field bForceUpright number @Force Upright
local UMovieScene3DPathSection = {}
