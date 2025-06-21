local compatibility = {}

function compatibility.aai_industry()
  -- Disable AAI industry crash site
  if script.active_mods["aai-industry"] then
    remote.add_interface("kr-to-aai-industry", {
      allow_aai_crash_sequence = function(_)
        return { allow = false, weight = 1 }
      end,
    })
  end
end

function compatibility.nuclear_fuel()
  if game.active_mods["Nuclear Fuel"] then
    remote.call("kr-radioactivity", "add_item", "breeder-fuel-cell")
    remote.call("kr-radioactivity", "add_item", "plutonium")
    remote.call("kr-radioactivity", "add_item", "used-up-breeder-fuel-cell")
  end
end

function compatibility.schall_uranium()
  if script.active_mods["SchallUraniumProcessing"] then
    remote.call("kr-radioactivity", "add_item", "uranium-concentrate")
    remote.call("kr-radioactivity", "add_item", "uranium-low-enriched")
  end
end

function compatibility.should_build_pump()
  if prototypes.entity["kr-electric-offshore-pump"] then
    return true
  end
  return false
end

return compatibility
