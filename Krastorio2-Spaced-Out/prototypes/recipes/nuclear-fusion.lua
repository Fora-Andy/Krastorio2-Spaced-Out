data:extend({
  {
    type = "recipe",
    name = "kr-fusion",
    icon = "__Krastorio2Assets__/icons/recipes/fusion-energy.png",
    subgroup = "intermediate-product",
    order = "z[fusion]",
    hidden = true,
    enabled = true,
    category = "kr-nuclear-fusion",
    energy_required = 5,
    ingredients = {
      { type = "fluid", name = "water", amount = 1000 },
      { type = "item", name = "kr-dt-fuel-cell", amount = 1 },
    },
    results = {
      { type = "fluid", name = "steam", amount = 10000, temperature = 975 },
      { type = "item", name = "kr-empty-dt-fuel-cell", amount = 1 },
    },
    auto_recycle = false,
  },
})
