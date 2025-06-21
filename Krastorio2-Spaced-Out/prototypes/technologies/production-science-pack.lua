data:extend({
  {
    type = "technology",
    name = "kr-advanced-fuel",
    icon = "__Krastorio2Assets__/technologies/advanced-fuel.png",
    icon_size = 256,
    unit = {
      time = 30,
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    prerequisites = { "kr-quarry-minerals-extraction", "kr-fuel" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-fuel" },
    },
  },
  {
    type = "technology",
    name = "kr-advanced-solar-panel",
    icon = "__Krastorio2Assets__/technologies/advanced-solar-panel.png",
    icon_size = 256,
    unit = {
      time = 45,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    prerequisites = { "solar-energy", "kr-quarry-minerals-extraction" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-advanced-solar-panel" },
    },
  },
  {
    type = "technology",
    name = "kr-nuclear-locomotive",
    icon = "__Krastorio2Assets__/technologies/nuclear-locomotive.png",
    icon_size = 256,
    unit = {
      time = 60,
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    prerequisites = { "nuclear-power", "production-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-nuclear-locomotive" },
    },
  },
  {
    type = "technology",
    name = "kr-quarry-minerals-extraction",
    icon = "__Krastorio2Assets__/technologies/quarry-drill.png",
    icon_size = 256,
    order = "g-e-d",
    unit = {
      time = 60,
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    prerequisites = { "electric-engine", "kr-advanced-chemistry", "processing-unit", "production-science-pack" },
    effects = {
      { type = "unlock-recipe", recipe = "kr-quarry-drill" },
      { type = "unlock-recipe", recipe = "kr-imersite-powder" },
      { type = "unlock-recipe", recipe = "kr-imersite-crystal" },
    },
  },
})
