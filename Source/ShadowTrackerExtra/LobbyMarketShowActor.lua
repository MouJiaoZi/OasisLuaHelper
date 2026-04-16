---@meta

---@class ALobbyMarketShowActor: AActor
local ALobbyMarketShowActor = {}

---@param seqPath string
---@param needPauseToEnd boolean
function ALobbyMarketShowActor:LobbyMarketShowPlay(seqPath, needPauseToEnd) end

function ALobbyMarketShowActor:LobbyMarketShowStop() end

function ALobbyMarketShowActor:LobbyMarketShowSeqLoad() end

---@param seq ULevelSequence
function ALobbyMarketShowActor:CreateLevelSequencePlayer(seq) end

function ALobbyMarketShowActor:LobbyMarketShowCallback() end

function ALobbyMarketShowActor:MarketShowSeqComplete() end

function ALobbyMarketShowActor:LobbyMarketShowSeqLoadComplete() end

function ALobbyMarketShowActor:LobbyMarketShowSeqPauseToEnd() end

function ALobbyMarketShowActor:LobbyMarketShowJumpToEndAndPause() end

---@return boolean
function ALobbyMarketShowActor:LobbyMarketShowIsLoading() end

---@return boolean
function ALobbyMarketShowActor:LobbyMarketShowIsPlayingOrPause() end

function ALobbyMarketShowActor:LobbyMarketShowReleaseAsyncLoading() end
