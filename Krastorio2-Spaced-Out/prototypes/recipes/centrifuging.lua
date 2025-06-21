data:extend({
  {
    type = "recipe",
    name = "kr-tritium",
    category = "centrifuging",
    enabled = false,
    allow_productivity = true,
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      { type = "item", name = "kr-lithium", amount = 30 },
      { type = "item", name = "kr-rare-metals", amount = 5 },
      { type = "item", name = "uranium-235", amount = 1 },
    },
    results = { { type = "item", name = "kr-tritium", amount = 5 } },
  },
})
