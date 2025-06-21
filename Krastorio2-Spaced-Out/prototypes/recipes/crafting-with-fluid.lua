data:extend({
  {
    type = "recipe",
    name = "kr-ai-core",
    enabled = false,
    category = "electronics-with-fluid",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 2 },
      { type = "item", name = "kr-imersite-crystal", amount = 2 },
      { type = "fluid", name = "kr-nitric-acid", amount = 10 },
    },
    results = { { type = "item", name = "kr-ai-core", amount = 2 } },
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-empty-antimatter-fuel-cell",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "fluid", name = "kr-nitric-acid", amount = 50 },
      { type = "item", name = "kr-energy-control-unit", amount = 10 },
      { type = "item", name = "kr-imersium-plate", amount = 8 },
      { type = "item", name = "kr-matter-stabilizer", amount = 2 },
    },
    results = { { type = "item", name = "kr-empty-antimatter-fuel-cell", amount = 1 } },
    allow_as_intermediate = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "kr-landfill-with-sand",
    icons = {
      { icon = "__base__/graphics/icons/landfill.png" },
      {
        icon = "__Krastorio2Assets__/icons/items/sand.png",
        scale = 0.26,
        shift = { 8, -8 },
      },
    },
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 0.5,
    ingredients = {
      { type = "item", name = "kr-sand", amount = 50 },
      { type = "fluid", name = "water", amount = 50 },
    },
    results = { { type = "item", name = "landfill", amount = 1 } },
    allow_as_intermediate = false,
  },
})
