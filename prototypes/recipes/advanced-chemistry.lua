data:extend({
  {
    type = "recipe",
    name = "kr-electronic-components-with-lithium",
    icon = "__Krastorio2Assets__/icons/recipes/electronic-components-with-lithium.png",
    category = "kr-advanced-chemistry",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "kr-silicon", amount = 3 },
      { type = "item", name = "plastic-bar", amount = 3 },
      { type = "item", name = "kr-glass", amount = 3 },
      { type = "item", name = "kr-lithium", amount = 3 },
      { type = "fluid", name = "kr-nitric-acid", amount = 20 },
    },
    results = { { type = "item", name = "kr-electronic-components", amount = 10 } },
    allow_productivity = true,
  },
})
