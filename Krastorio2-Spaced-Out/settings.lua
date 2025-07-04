data:extend({
  {
    type = "bool-setting",
    name = "kr-realistic-weapons",
    setting_type = "startup",
    default_value = true,
    order = "a1",
  },
  {
    type = "bool-setting",
    name = "kr-realistic-weapons-auto-aim",
    setting_type = "startup",
    default_value = false,
    order = "a2",
  },
  {
    type = "bool-setting",
    name = "kr-loaders",
    setting_type = "startup",
    default_value = true,
    order = "a3",
  },
  {
    type = "bool-setting",
    name = "kr-containers",
    setting_type = "startup",
    default_value = true,
    order = "a4",
  },
  {
    type = "bool-setting",
    name = "kr-finite-oil",
    setting_type = "startup",
    default_value = true,
    order = "a5",
  },
  {
    type = "string-setting",
    name = "kr-main-menu-background",
    setting_type = "startup",
    default_value = "Krastorio 2",
    allowed_values = {
      "Factorio",
      "Krastorio Legacy",
      "Krastorio 2",
      "Krastorio CyberSkull",
      "Krastorio Chan",
      "Krastorio THE FACTORY MUST GROW",
      "Krastorio Explorer",
      "Factorio Alternative 1",
      "Factorio Alternative 2",
      "Factorio Alternative 3",
      "Factorio Alternative 4",
    },
    order = "b2",
  },
  {
    type = "bool-setting",
    name = "kr-main-menu-song",
    setting_type = "startup",
    default_value = true,
    order = "b3",
  },
  {
    type = "bool-setting",
    name = "kr-enable-radioactivity",
    setting_type = "runtime-global",
    default_value = true,
  },
})
