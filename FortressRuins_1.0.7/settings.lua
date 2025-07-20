table.insert(data.raw["string-setting"]["AbandonedRuins-set"].allowed_values, "FortressRuins") -- allow this mod's own set to be selected
data.raw["string-setting"]["AbandonedRuins-set"].default_value = "FortressRuins" -- and select it by default
data:extend(
  {
    {
      type = "string-setting",
      name = "power-multiplier",
      setting_type = "startup",
      default_value = "M",
      allowed_values = {"K", "k", "M", "G", "T", "P", "E", "Z", "Y"}       
    },
  
    {
      type = "int-setting",
      name = "power-value",
      setting_type = "startup",
      default_value = 8,
      minimum_value = 1,
      maximum_value = 999
    },

    {
      type = "int-setting",
      name = "enemy-robot-duration",
      setting_type = "startup",
      default_value = 10,
      minimum_value = 1,
      maximum_value = 60
    }
  }
)