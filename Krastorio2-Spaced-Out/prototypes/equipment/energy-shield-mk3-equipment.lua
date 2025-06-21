data:extend({
  {
    type = "recipe",
    name = "kr-energy-shield-mk3-equipment",
    energy_required = 40,
    enabled = false,
    ingredients = {
      { type = "item", name = "energy-shield-mk2-equipment", amount = 5 },
      { type = "item", name = "superconductor", amount = 10 },
      { type = "item", name = "kr-lithium-sulfur-battery", amount = 10 },
    },
    results = { { type = "item", name = "kr-energy-shield-mk3-equipment", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-energy-shield-mk3-equipment",
    icons = {
      { icon = "__Krastorio2Assets__/icons/equipment/energy-shield-mk3-equipment.png" },
      { icon = "__Krastorio2Assets__/icons/equipment/tier-3.png" },
    },
    place_as_equipment_result = "kr-energy-shield-mk3-equipment",
    subgroup = "equipment",
    order = "b[shield]-c[energy-shield-equipment-mk3]",
    stack_size = 50,
    weight = 100*kg,
  },
  {
    type = "energy-shield-equipment",
    name = "kr-energy-shield-mk3-equipment",
    sprite = {
      filename = "__Krastorio2Assets__/equipment/energy-shield-mk3-equipment.png",
      width = 128,
      height = 128,
      scale = 0.5,
      priority = "medium",
    },
    shape = {
      type = "full",
      width = 2,
      height = 2,
    },
    max_shield_value = 200,
    energy_per_shield = "40kJ",
    energy_source = {
      type = "electric",
      usage_priority = "primary-input",
      buffer_capacity = "270kJ",
      input_flow_limit = "540kW",
    },
    categories = { "armor", "kr-vehicle" },
  },
})
