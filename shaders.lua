SMODS.Shader {
  key = 'indicator',
  path = 'indicator.fs',
  
  send_vars = function(sprite, card)
    local sphere = function(i) --satellite
      return G.GAME.consumeable_usage[ClearNights.balatro_planets[i]] and 1 or 0
    end
  
    return {
      sphere_visible1 = { sphere(1), sphere(2), sphere(3), sphere(4) },
      sphere_visible2 = { sphere(5), sphere(6), sphere(7), sphere(8) },
      sphere_visible3 = { sphere(9), sphere(10), sphere(11), sphere(12) },
      grid_origin = { 6, 71 },
      grid_dims = { 6, 2 },
      sphere_size = { 10, 10 }
    }
  end
}