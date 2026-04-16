if ClearNights.config.constellations then SMODS.Joker:take_ownership('j_satellite', {
  atlas = 'Jokers',
  pos = { x = 0, y = 0 },
  soul_pos = { x = 1, y = 0 },
  CN_soul_draw_as_highlight = true,
  CN_soul_draw_as_highlight_shader = 'ClearNights_indicator',
  
  config = {
    extra = 0,
    money_start = 2,
    money_bonus = 1
  },
  
  loc_vars = function(self, info_queue, card)
    local planets_used = 0
    for _, value in pairs(G.GAME.consumeable_usage) do
      if value.set == 'Planet' then 
        planets_used = planets_used + 1
      end
    end
    
    return {
      vars = { 
        card.ability.money_start, 
        card.ability.money_bonus,
        card.ability.money_start + card.ability.money_bonus * planets_used
      }
    }
  end,
  
  calc_dollar_bonus = function(self, card)
    local planets_used = 0
    for _, value in pairs(G.GAME.consumeable_usage) do
      if value.set == 'Planet' then 
        planets_used = planets_used + 1 
      end
    end
    
    return card.ability.money_start + card.ability.money_bonus * planets_used
  end
}, true) end