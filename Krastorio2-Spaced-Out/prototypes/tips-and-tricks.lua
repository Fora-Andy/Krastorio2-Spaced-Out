data:extend({
  {
    type = "tips-and-tricks-item-category",
    name = "kr-about-k2",
    order = "a",
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-about-k2",
    category = "kr-about-k2",
    order = "a",
    starting_status = "unlocked",
    is_title = true,
    image = "__Krastorio2Assets__/tips-and-tricks/about-k2.png",
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-new-gun-play",
    order = "b",
    trigger = {
      type = "or",
      triggers = {
        {
          type = "group-attack",
        },
        {
          type = "time-elapsed",
          ticks = 135 * minute,
        },
      },
    },
    category = "kr-about-k2",
    indent = 1,
    image = "__Krastorio2Assets__/tips-and-tricks/new-gun-play.png",
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-roboports-hotkey",
    order = "h",
    trigger = {
      type = "or",
      triggers = {
        {
          type = "build-entity",
          entity = "roboport",
          count = 1,
        },
        {
          type = "build-entity",
          entity = "kr-small-roboport",
          count = 1,
        },
        {
          type = "build-entity",
          entity = "kr-big-roboport",
          count = 1,
        },
      },
    },
    category = "kr-about-k2",
    indent = 1,
    image = "__Krastorio2Assets__/tips-and-tricks/roboports-hotkey.png",
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-intergalactic-transceiver",
    order = "k",
    trigger = {
      type = "research",
      technology = "kr-intergalactic-transceiver",
    },
    category = "kr-about-k2",
    indent = 1,
    image = "__Krastorio2Assets__/tips-and-tricks/intergalactic-transceiver.png",
  },
  -- TODO: Add a `damage` tip trigger and/or a `script` tip trigger to make this smarter
  {
    type = "tips-and-tricks-item",
    name = "kr-radiation",
    order = "l",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1,
  },
})
