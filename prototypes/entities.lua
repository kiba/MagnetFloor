data:extend({
  {
    type = "accumulator",
    name = "accelerator_charger",
    icon = "__base__/graphics/entity/accumulator/accumulator.png",
    flags = {},
    indestructible = true,
    max_health = 150,
    order = "a-a-a",
    corpse = "medium-remnants",
    collision_mask = {"water-tile"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{0.0, 0.0}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "terciary",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__MagneticFloor__/graphics/transparent.png",
      priority = "extra-high",
      width = 32,
      height = 32,
      shift = {0.0, 0.0}
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "tree",
    name = "up",
    icon = "__MagneticFloor__/graphics/directives/up.png",
    flags = {},
    max_health = 20,
    collision_box = {{0, 0}, {1, 1}},
    selection_box = {{0, 0}, {1, 1}},
    indestructible = true,
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    pictures =
    {
      {
        filename = "__MagneticFloor__/graphics/directives/up.png",
        width = 32,
        height= 32,
      }
    }
  }
})
