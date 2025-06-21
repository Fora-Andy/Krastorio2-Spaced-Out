if not settings.startup["kr-loaders"].value then
  return
end

local graphics = require("prototypes.buildings.loader-graphics")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-advanced-loader",
    category = "metallurgy",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { type = "item", name = "turbo-transport-belt", amount = 1 },
      { type = "item", name = "kr-express-loader", amount = 2 },
      { type = "item", name = "tungsten-plate", amount = 20 },
      { type = "fluid", name = "lubricant", amount = 40 },
    },
    results = { { type = "item", name = "kr-advanced-loader", amount = 1 } },
    surface_conditions = { { property = "pressure", min = 4000, max = 4000 } },
  },
  {
    type = "item",
    name = "kr-advanced-loader",
    icon = "__Krastorio2Assets__/icons/entities/advanced-loader.png",
    subgroup = "belt",
    order = "d[loader]-a4[kr-advanced-loader]",
    place_result = "kr-advanced-loader",
    stack_size = 50,
    weight = 40*kg,
  },
  {
    type = "loader-1x1",
    name = "kr-advanced-loader",
    icon = "__Krastorio2Assets__/icons/entities/advanced-loader.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.25, result = "kr-advanced-loader" },
    placeable_by = { item = "kr-advanced-loader", count = 1 },
    fast_replaceable_group = "transport-belt",
    next_upgrade = "kr-superior-loader",
    collision_box = { { -0.4, -0.45 }, { 0.4, 0.45 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    speed = 0.125,
    max_belt_stack_size = 4,
    adjustable_belt_stack_size = true,
    container_distance = 0.75,
    filter_count = 5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW",
    },
    energy_per_item = "9kJ",
    max_health = 300,
    heating_energy = "50kW",
    corpse = "small-remnants",
    resistances = { { type = "fire", percent = 90 } },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    belt_animation_set = require("prototypes.buildings.advanced-belt-animation-set"),
    animation_speed_coefficient = 32,
    icon_draw_specification = {scale = 0.7},
    structure = graphics.structure({ 76, 232, 48 }),
    structure_render_layer = graphics.structure_render_layer,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
