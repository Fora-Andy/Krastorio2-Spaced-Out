data:extend({
  {
    type = "recipe",
    name = "kr-personal-laser-defense-mk4-equipment",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-personal-laser-defense-mk3-equipment", amount = 1 },
      { type = "item", name = "kr-ai-core", amount = 10 },
      { type = "item", name = "kr-lithium-sulfur-battery", amount = 20 },
      { type = "item", name = "quantum-processor", amount = 10 },
    },
    results = { { type = "item", name = "kr-personal-laser-defense-mk4-equipment", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-personal-laser-defense-mk4-equipment",
    icons = {
      { icon = "__Krastorio2Assets__/icons/equipment/personal-laser-defense-mk4-equipment.png" },
      { icon = "__Krastorio2Assets__/icons/equipment/tier-4.png" },
    },
    subgroup = "equipment",
    order = "d[active-defense]-b4[personal-laser-defense-mk4-equipment]",
    place_as_equipment_result = "kr-personal-laser-defense-mk4-equipment",
    stack_size = 20,
    weight = 200*kg,
  },
  {
    type = "active-defense-equipment",
    name = "kr-personal-laser-defense-mk4-equipment",
    shape = {
      type = "full",
      width = 2,
      height = 2,
    },
    sprite = {
      filename = "__Krastorio2Assets__/equipment/personal-laser-defense-mk4-equipment.png",
      width = 128,
      height = 128,
      scale = 0.5,
      priority = "medium",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "75MJ",
      input_flow_limit = "7.5MW",
    },
    automatic = true,
    categories = { "armor", "kr-vehicle" },
    attack_parameters = {
      type = "beam",
      damage_modifier = 6,
      cooldown = 6,
      range = 22,
      range_mode = "center-to-bounding-box",
      ammo_category = "laser",
      ammo_type = {
        energy_consumption = "0.75MJ",
        action = {
          type = "direct",
          action_delivery = {
            {
              type = "beam",
              beam = "laser-beam",
              max_length = 23,
              duration = 3,
              source_offset = { 0, -1.31439 },
            },
          },
        },
      },
    },
  },
})
