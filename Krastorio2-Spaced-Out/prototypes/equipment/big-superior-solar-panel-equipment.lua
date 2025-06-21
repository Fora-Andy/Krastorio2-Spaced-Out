data:extend({
  {
    type = "recipe",
    name = "kr-big-superior-solar-panel-equipment",
    energy_required = 20,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-superior-solar-panel-equipment", amount = 4 },
      { type = "item", name = "kr-electronic-components", amount = 40 },
    },
    results = { { type = "item", name = "kr-big-superior-solar-panel-equipment", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-big-superior-solar-panel-equipment",
    icons = {
      { icon = "__Krastorio2Assets__/icons/equipment/big-superior-solar-panel-equipment.png" },
      { icon = "__Krastorio2Assets__/icons/equipment/tier-2.png" },
    },
    place_as_equipment_result = "kr-big-superior-solar-panel-equipment",
    subgroup = "equipment",
    order = "a[energy-source]-a5[superior-solar-panel-equipment]",
    stack_size = 50,
    weight = 100*kg,
  },
  {
    type = "solar-panel-equipment",
    name = "kr-big-superior-solar-panel-equipment",
    sprite = {
      filename = "__Krastorio2Assets__/equipment/big-superior-solar-panel-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5,
    },
    shape = {
      type = "full",
      width = 2,
      height = 2,
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "384kW", -- 40kW * 4 * 2 * 1.2
    categories = { "armor", "kr-vehicle" },
  },
})
