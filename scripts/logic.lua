function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
      return count > 0
    else
      return count == amount
    end
  end

  function LU2()
    if has("rockets") and ((has("dash") or has("OPTB_small_mech")) or (has("dash") and has("OPTB_phase_save"))) then
        return 1
    else
        return 0
    end
end

function NH1()
    if has("rockets") and (has("dash") and (has("OPTB_advanced") or has("OPTB_phase_save")) or has("cooler") or has("djump")) then
        return 1
    else
        return 0
    end
end

function NC2()
    if has("rockets") and (has("OPTB_not_beginner") or (has("dash") and has("djump"))) then
        return 1
    else
        return 0
    end
end

function MostOfHeaterCore()
    if has("rocket") and (has("dash") or has("OPTB_small_mech")) then
        return 1
    else
        return 0
    end
end