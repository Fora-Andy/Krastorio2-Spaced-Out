local tile_sounds = require("__base__.prototypes.tile.tile-sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-white-reinforced-plate",
    enabled = false,
    energy_required = 5,
    ingredients = {
      { type = "item", name = "refined-concrete", amount = 20 },
      { type = "item", name = "kr-steel-beam", amount = 5 },
    },
    results = { { type = "item", name = "kr-white-reinforced-plate", amount = 10 } },
  },
  {
    type = "item",
    name = "kr-white-reinforced-plate",
    icon = "__Krastorio2Assets__/icons/items/white-reinforced-plate.png",
    subgroup = "terrain",
    order = "z[white-reinforced-plate]-a2[white-reinforced-plate]",
    stack_size = 200,
    weight = 5*kg,
    place_as_tile = {
      result = "kr-white-reinforced-plate",
      condition_size = 1,
      condition = { layers = { water_tile = true } },
    },
  },
  {
    type = "tile",
    name = "kr-white-reinforced-plate",
    needs_correction = false,
    minable = { mining_time = 0.1, result = "kr-white-reinforced-plate" } or nil,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = { layers = { ground_tile = true } },
    walking_speed_modifier = 1.75,
    layer = 90,
    layer_group = "ground-artificial",
    transition_overlay_layer_offset = 2, -- need to render border overlay on top of hazard-concrete
    decorative_removal_probability = 0.95,
    variants = {
      transition = {
        overlay_layout = {
          inner_corner = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
            count = 16,
            scale = 0.5,
          },
          outer_corner = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
            count = 8,
            scale = 0.5,
          },
          side = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-side.png",
            count = 16,
            scale = 0.5,
          },
          u_transition = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-u.png",
            count = 8,
            scale = 0.5,
          },
          o_transition = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-o.png",
            count = 4,
            scale = 0.5,
          },
        },
        mask_layout = {
          inner_corner = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
            count = 16,
            scale = 0.5,
          },
          outer_corner = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
            count = 8,
            scale = 0.5,
          },
          side = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
            count = 16,
            scale = 0.5,
          },
          u_transition = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
            count = 8,
            scale = 0.5,
          },
          o_transition = {
            spritesheet = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
            count = 4,
            scale = 0.5,
          },
        },
      },
      material_background = {
        picture = "__Krastorio2Assets__/tiles/reinforced-plates/white-reinforced-plate.png",
        count = 16,
        scale = 0.5,
      },
    },

    transitions = data.raw.tile.concrete.transitions,
    transitions_between_transitions = data.raw.tile.concrete.transitions_between_transitions,

    walking_sound = tile_sounds.walking.refined_concrete,

    map_color = { r = 110, g = 110, b = 110 },
    absorptions_per_second = { pollution = 0 },
    vehicle_friction_modifier = 0.75,
  },
})
