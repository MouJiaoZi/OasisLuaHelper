---@meta

---@class ADropItemsProducer: AUAERegionActor
local ADropItemsProducer = {}

---@param DeadCharacter AActor
---@param Killer AController
---@param TraceIgnoreActors ULuaArrayHelper<AActor>
---@param ProduceID number
function ADropItemsProducer:StartDrop(DeadCharacter, Killer, TraceIgnoreActors, ProduceID) end

---@param DeadCharacter AActor
---@param Killer AController
---@param ProduceID number
---@param Times number
---@param Gap number
function ADropItemsProducer:StartDropForDebug(DeadCharacter, Killer, ProduceID, Times, Gap) end

---@param DeadCharacter AActor
---@param Killer AController
---@param DropType number
---@param Times number
---@param Gap number
function ADropItemsProducer:StartAirDropForDebug(DeadCharacter, Killer, DropType, Times, Gap) end

---@param DeadCharacter AActor
---@param Killer AController
---@param ProduceID number
function ADropItemsProducer:DropOnceForDebug(DeadCharacter, Killer, ProduceID) end

---@param DeadCharacter AActor
---@param Killer AController
---@param DropType number
function ADropItemsProducer:AirDropOnceForDebug(DeadCharacter, Killer, DropType) end
