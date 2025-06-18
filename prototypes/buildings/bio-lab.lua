local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-bio-lab",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-biomass", amount = 50 },
      { type = "item", name = "kr-iron-beam", amount = 10 },
      mods["aai-industry"] and { type = "item", name = "glass", amount = 20 } or mods["Moshine"] and { type = "item", name = "glass", amount = 20 } or { type = "item", name = "kr-glass", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 2 },
    },
    results = { { type = "item", name = "kr-bio-lab", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-bio-lab",
    icon = "__Krastorio2Assets__/icons/entities/bio-lab.png",
    subgroup = "production-machine",
    order = "d-g2[bio-lab]",
    place_result = "kr-bio-lab",
    stack_size = 50,
    weight = 100*kg,
  },
  {
    type = "assembling-machine",
    name = "kr-bio-lab",
    icon = "__Krastorio2Assets__/icons/entities/bio-lab.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { hardness = 1, mining_time = 1, result = "kr-bio-lab" },
    max_health = 500,
    heating_energy = "1000kW",
    surface_conditions = {
      { property = "pressure", min = 1000, max = 1000, }
    },
    corpse = "kr-big-random-pipes-remnant",
    dying_explosion = "big-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = {
      { type = "impact", percent = 50 },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = require("prototypes.buildings.pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        height = 2,
        base_level = -1,
        pipe_connections = {
          { flow_direction = "input-output", direction = defines.direction.north, position = { 0, -3 } },
          { flow_direction = "input-output", direction = defines.direction.south, position = { 0, 3 } },
        },
      },
      {
        production_type = "input",
        pipe_picture = require("prototypes.buildings.pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        height = 2,
        base_level = -1,
        pipe_connections = {
          { flow_direction = "input", direction = defines.direction.east, position = { 3, 0 } },
        },
      },
      {
        production_type = "output",
        pipe_picture = require("prototypes.buildings.pipe-picture"),
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        height = 2,
        base_level = -1,
        pipe_connections = {
          { flow_direction = "output", direction = defines.direction.west, position = { -3, 0 } },
        },
      },
    },
    collision_box = { { -3.25, -3.25 }, { 3.25, 3.25 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    fast_replaceable_group = "kr-greenhouse",
    crafting_categories = { "kr-bioprocessing" },
    module_slots = 3,
    crafting_speed = 1,
    ingredient_count = 4,
    return_ingredients_on_change = true,
    allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality", },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 10 },
    },
    energy_usage = "144.8kW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      filename = "__Krastorio2Assets__/sounds/buildings/bio-lab.ogg",
      volume = 0.75,
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      aggregation = {
        max_count = 3,
        remove = false,
        count_already_playing = true,
      },
    },
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__Krastorio2Assets__/buildings/bio-lab/bio-lab.png",
            priority = "high",
            width = 512,
            height = 512,
            frame_count = 1,
            scale = 0.5,
          },
          {
            filename = "__Krastorio2Assets__/buildings/bio-lab/bio-lab-sh.png",
            priority = "high",
            width = 512,
            height = 512,
            shift = { 0.32, 0 },
            frame_count = 1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      working_visualisations = {
        {
          animation = {
            filename = "__Krastorio2Assets__/buildings/bio-lab/bio-lab-working.png",
            width = 387,
            height = 342,
            shift = { 0.05, -0.31 },
            frame_count = 30,
            line_length = 5,
            scale = 0.5,
            animation_speed = 0.35,
          },
        },
      },
    },
    icon_draw_specification = { scale = 2, shift = { 0, -0.3 } },
    icons_positioning = { { inventory_index = defines.inventory.assembling_machine_modules, shift = { 0, 1.25 } } },

    circuit_wire_max_distance = default_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template, 
      {
        { variation = 27, main_offset = util.by_pixel_hr(200, -160), shadow_offset = util.by_pixel_hr(200, -160), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(200, -160), shadow_offset = util.by_pixel_hr(200, -160), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(200, -160), shadow_offset = util.by_pixel_hr(200, -160), show_shadow = false },
        { variation = 27, main_offset = util.by_pixel_hr(200, -160), shadow_offset = util.by_pixel_hr(200, -160), show_shadow = false }
      }
    )
  },
})
