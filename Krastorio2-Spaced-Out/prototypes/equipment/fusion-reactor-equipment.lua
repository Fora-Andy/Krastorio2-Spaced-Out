data:extend({
  {
    type = "recipe",
    name = "kr-fusion-reactor-equipment",
    energy_required = 60,
    enabled = false,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 200 },
      { type = "item", name = "low-density-structure", amount = 50 },
    },
    results = { { type = "item", name = "kr-fusion-reactor-equipment", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-fusion-reactor-equipment",
    icons = {
      { icon = "__Krastorio2Assets__/icons/equipment/fusion-reactor-equipment.png" },
      { icon = "__Krastorio2Assets__/icons/equipment/tier-2.png" },
    },
    pictures = {
      layers = {
        {
          filename = "__Krastorio2Assets__/icons/equipment/fusion-reactor-equipment.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/equipment/fusion-reactor-equipment-light.png",
          size = 64,
          scale = 0.5,
          draw_as_light = true,
          flags = { "light" },
        },
      },
    },
    place_as_equipment_result = "kr-fusion-reactor-equipment",
    subgroup = "equipment",
    order = "a2[energy-source]-a5[fusion-reactor-equipment]",
    stack_size = 10,
    weight = 1000*kg,
  },
  {
    type = "generator-equipment",
    name = "kr-fusion-reactor-equipment",
    sprite = {
      filename = "__Krastorio2Assets__/equipment/fusion-reactor-equipment.png",
      width = 256,
      height = 256,
      priority = "medium",
      scale = 0.5,
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    burner = {
      type = "burner",
      fuel_categories = { "kr-fusion-fuel" },
      effectivity = 2,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "3.2MW", -- 50kW * 16 * 3 * 1
    categories = { "armor", "kr-vehicle" },
  },
})
