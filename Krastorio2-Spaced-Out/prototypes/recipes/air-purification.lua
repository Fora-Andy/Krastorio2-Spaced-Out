data:extend({
  {
    type = "recipe",
    name = "kr-air-cleaning",
    icon = "__Krastorio2Assets__/icons/recipes/filtering.png",
    subgroup = "raw-material",
    order = "zz[air-cleaning]",
    enabled = false,
    hidden = false,
    hide_from_player_crafting = true,
    category = "kr-air-purification",
    energy_required = 480,
    ingredients = {
      { type = "item", name = "kr-pollution-filter", amount = 1 },
    },
    results = {
      { type = "item", name = "kr-used-pollution-filter", probability = 0.9, amount = 1 },
    },
  },
})
