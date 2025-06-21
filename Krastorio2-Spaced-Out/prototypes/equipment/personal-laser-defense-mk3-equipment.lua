data:extend({
  {
    type = "recipe",
    name = "kr-personal-laser-defense-mk3-equipment",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-personal-laser-defense-mk2-equipment", amount = 1 },
      { type = "item", name = "superconductor", amount = 10 },
      { type = "item", name = "kr-lithium-sulfur-battery", amount = 10 },
      { type = "item", name = "kr-imersium-plate", amount = 5 },
    },
    results = { { type = "item", name = "kr-personal-laser-defense-mk3-equipment", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-personal-laser-defense-mk3-equipment",
    icons = {
      { icon = "__Krastorio2Assets__/icons/equipment/personal-laser-defense-mk3-equipment.png" },
      { icon = "__Krastorio2Assets__/icons/equipment/tier-3.png" },
    },
    subgroup = "equipment",
    order = "d[active-defense]-b3[personal-laser-defense-mk3-equipment]",
    place_as_equipment_result = "kr-personal-laser-defense-mk3-equipment",
    stack_size = 20,
    weight = 200*kg,
  },
  {
    type = "active-defense-equipment",
    name = "kr-personal-laser-defense-mk3-equipment",
    shape = {
      type = "full",
      width = 2,
      height = 2,
    },
    sprite = {
      filename = "__Krastorio2Assets__/equipment/personal-laser-defense-mk3-equipment.png",
      width = 128,
      height = 128,
      scale = 0.5,
      priority = "medium",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "60MJ",
      input_flow_limit = "6MW",
    },
    automatic = true,
    categories = { "armor", "kr-vehicle" },
    attack_parameters = {
      type = "beam",
      cooldown = 6,
      damage_modifier = 3,
      range = 20,
      range_mode = "center-to-bounding-box",
      ammo_category = "laser",
      ammo_type = {
        energy_consumption = "0.5MJ",
        action = {
          type = "direct",
          action_delivery = {
            {
              type = "instant",
              target_effects = {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit",
                },
              },
            },
            {
              type = "beam",
              beam = "laser-beam",
              max_length = 21,
              duration = 3,
              source_offset = { 0, -1.31439 },
            },
          },
        },
      },
    },
  },
})
