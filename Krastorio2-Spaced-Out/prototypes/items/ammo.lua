data:extend({
  {
    type = "ammo",
    name = "kr-imersite-rounds-magazine",
    icon = "__Krastorio2Assets__/icons/ammo/imersite-rounds-magazine.png",
    subgroup = "ammo",
    order = "a[basic-clips]-d[imersite-rounds-magazine]",
    stack_size = 200,
    weight = 5*kg,
    magazine_size = 10,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-hit",
            },
            {
              type = "damage",
              damage = { amount = 28, type = "physical" },
            },
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          filename = "__Krastorio2Assets__/icons/ammo/imersite-rounds-magazine.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/ammo/imersite-rounds-magazine-light.png",
          size = 64,
          scale = 0.5,
          flags = { "light" },
          draw_as_light = true,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-antimatter-artillery-shell",
    icon = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell.png",
    subgroup = "ammo",
    order = "d[explosive-cannon-shell]-e[antimatter-artillery-shell]",
    stack_size = 25,
    weight = 1000*kg,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "kr-antimatter-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-artillery-shell-light.png",
          size = 64,
          scale = 0.5,
          flags = { "light" },
          draw_as_light = true,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-impulse-rifle-ammo",
    icon = "__Krastorio2Assets__/icons/ammo/impulse-rifle-ammo.png",
    subgroup = "ammo",
    order = "c[impulse-rifle-ammo]",
    stack_size = 200,
    weight = 10*kg,
    magazine_size = 3,
    ammo_category = "kr-impulse-rifle",
    ammo_type = {
      target_type = "direction",
      clamp_position = true,
      action = {
        type = "line",
        range = 50,
        width = 2,
        range_effects = {
          type = "create-explosion",
          entity_name = "kr-impulse-rifle-beam",
        },
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "damage",
            damage = { amount = 500, type = "laser" },
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          filename = "__Krastorio2Assets__/icons/ammo/impulse-rifle-ammo.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/ammo/impulse-rifle-ammo-light.png",
          size = 64,
          scale = 0.5,
          flags = { "light" },
          draw_as_light = true,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-heavy-rocket",
    icon = "__Krastorio2Assets__/icons/ammo/heavy-rocket.png",
    subgroup = "ammo",
    order = "d[rocket-launcher]-b[explosive]",
    stack_size = 50,
    weight = 40*kg,
    ammo_category = "kr-heavy-rocket",
    ammo_type = {
      cooldown_modifier = 0.75,
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-heavy-explosive-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-antimatter-rocket",
    icon = "__Krastorio2Assets__/icons/ammo/antimatter-rocket.png",
    subgroup = "ammo",
    order = "d[rocket-launcher]-d[antimatter-rocket]",
    stack_size = 10,
    weight = 1000*kg,
    ammo_category = "kr-heavy-rocket",
    ammo_type = {
      range_modifier = 3,
      cooldown_modifier = 3,
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-antimatter-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          --max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-rocket.png",
          size = 64,
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-rocket-light.png",
          size = 64,
          scale = 0.5,
          flags = { "light" },
          draw_as_light = true,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-basic-railgun-shell",
    icon = "__Krastorio2Assets__/icons/ammo/basic-railgun-shell.png",
    subgroup = "kr-railgun-turret",
    order = "b01[basic-railgun-shell]",
    stack_size = 100,
    weight = 40*kg,
    magazine_size = 1,
    ammo_category = "kr-railgun-shell",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-basic-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-explosive-railgun-shell",
    icon = "__Krastorio2Assets__/icons/ammo/explosive-railgun-shell.png",
    subgroup = "kr-railgun-turret",
    order = "b02[explosion-railgun-shell]",
    stack_size = 100,
    weight = 40*kg,
    magazine_size = 1,
    ammo_category = "kr-railgun-shell",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-explosion-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-antimatter-railgun-shell",
    icon = "__Krastorio2Assets__/icons/ammo/antimatter-railgun-shell.png",
    subgroup = "kr-railgun-turret",
    order = "b03[antimatter-railgun-shell]",
    stack_size = 100,
    weight = 80*kg,
    magazine_size = 1,
    ammo_category = "kr-railgun-shell",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-matter-railgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-railgun-shell.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-railgun-shell-light.png",
          scale = 0.5,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-explosive-turret-rocket",
    icon = "__Krastorio2Assets__/icons/ammo/explosion-rocket-for-turret.png",
    subgroup = "kr-rocket-turret",
    order = "b01[explosion-rocket-for-turret]",
    stack_size = 25,
    weight = 40*kg,
    magazine_size = 1,
    ammo_category = "kr-turret-missile",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-explosion-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-nuclear-turret-rocket",
    icon = "__Krastorio2Assets__/icons/ammo/nuclear-turret-rocket.png",
    subgroup = "kr-rocket-turret",
    order = "b02[kr-nuclear-turret-rocket]",
    stack_size = 25,
    weight = 1000*kg,
    magazine_size = 1,
    ammo_category = "kr-turret-missile",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-nuclear-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/nuclear-turret-rocket.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/nuclear-turret-rocket-light.png",
          scale = 0.5,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-antimatter-turret-rocket",
    icon = "__Krastorio2Assets__/icons/ammo/antimatter-rocket-for-turret.png",
    subgroup = "kr-rocket-turret",
    order = "b03[antimatter-rocket-for-turret]",
    stack_size = 25,
    weight = 1000*kg,
    magazine_size = 1,
    ammo_category = "kr-turret-missile",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "kr-matter-turret-rocket-projectile",
          starting_speed = 0,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 100,
          source_effects = {
            type = "create-explosion",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-rocket-for-turret.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/antimatter-rocket-for-turret-light.png",
          scale = 0.5,
        },
      },
    },
  },
  {
    type = "ammo",
    name = "kr-nuclear-artillery-shell",
    icon = "__Krastorio2Assets__/icons/ammo/nuclear-artillery-shell.png",
    subgroup = "ammo",
    order = "d[explosive-cannon-shell]-d[artillery]-a2[nuclear-artillery]",
    stack_size = 25,
    weight = 1000*kg,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "kr-atomic-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-entity",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    pictures = {
      layers = {
        {
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/nuclear-artillery-shell.png",
          scale = 0.5,
        },
        {
          draw_as_light = true,
          flags = { "light" },
          size = 64,
          filename = "__Krastorio2Assets__/icons/ammo/nuclear-artillery-shell-light.png",
          scale = 0.5,
        },
      },
    },
  },
})
