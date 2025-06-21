data:extend({
  {
    type = "ammo-category",
    name = "kr-impulse-rifle",
    icon = "__Krastorio2Assets__/icons/ammo-categories/impulse-rifle.png",
    bonus_gui_order = "k",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-heavy-rocket",
    icon = "__Krastorio2Assets__/icons/ammo-categories/heavy-rocket.png",
    bonus_gui_order = "i",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-railgun-shell",
    icon = "__Krastorio2Assets__/icons/ammo-categories/railgun-shell.png",
    bonus_gui_order = "i",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-turret-missile",
    icon = "__Krastorio2Assets__/icons/ammo-categories/turret-missile.png",
    bonus_gui_order = "q",
    subgroup = "ammo-category",
  },
})

if not settings.startup["kr-realistic-weapons"].value then
  return
end

data:extend({
  {
    type = "ammo-category",
    name = "kr-pistol",
    icon = "__Krastorio2Assets__/icons/ammo-categories/pistol.png",
    bonus_gui_order = "r",
    subgroup = "ammo-category",
  },
  {
    type = "ammo-category",
    name = "kr-anti-materiel-rifle-ammo",
    icon = "__Krastorio2Assets__/icons/ammo-categories/anti-materiel-rifle-ammo.png",
    bonus_gui_order = "t",
    subgroup = "ammo-category",
  },
})
