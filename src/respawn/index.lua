local utils = require("respawn.utils")

local m = {}

local config = {}

function respawn()
  local dayingUnit = GetDyingUnit()
  if (GetOwningPlayer(dayingUnit) ~= Player(PLAYER_NEUTRAL_AGGRESSIVE)) then
    return
  end

  print("Neutarl aggressive unit was dead")

  TriggerSleepAction(config["delay"])

  CreateUnit(GetOwningPlayer(dayingUnit), GetUnitTypeId(dayingUnit), GetUnitX(dayingUnit), GetUnitY(dayingUnit), GetUnitFacing(dayingUnit))
end

function m.init(delay)
  print("Respawn script")

  config["delay"] = delay

  local t = CreateTrigger()
  TriggerAddAction(t, respawn)
  TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
end

return m
