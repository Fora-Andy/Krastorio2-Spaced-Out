data:extend({
  {
    type = "recipe",
    name = "kr-charged-antimatter-fuel-cell",
    enabled = false,
    category = "kr-matter-deconversion",
    energy_required = 5,
    ingredients = {
      { type = "fluid", name = "kr-matter", amount = 1000 },
      { type = "item", name = "kr-empty-antimatter-fuel-cell", amount = 1 },
    },
    results = { { type = "item", name = "kr-charged-antimatter-fuel-cell", amount = 1 } },
    allow_as_intermediate = false,
  },
})
