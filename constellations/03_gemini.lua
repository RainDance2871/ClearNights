SMODS.Consumable {
  key = 'gemini',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('gemini'),
  unlocked = true, 
  in_pool = function(self, args) --only appears if player has another constellation card used
    return (G.GAME.CN_last_constellation and G.GAME.CN_last_constellation ~= 'c_ClearNights_gemini')
  end,  
  
  loc_vars = function(self, info_queue, card)
    if G.GAME.CN_last_constellation and G.GAME.CN_last_constellation ~= 'c_ClearNights_gemini' then
      info_queue[#info_queue + 1] = G.P_CENTERS[G.GAME.CN_last_constellation]
    end

    local last_constellation = G.GAME.CN_last_constellation and localize{ type = 'name_text', set = 'CN_Constellation', key = G.GAME.CN_last_constellation } or localize('k_none')
    local colour = (G.GAME.CN_last_constellation and G.GAME.CN_last_constellation ~= 'c_ClearNights_gemini') and G.C.GREEN or G.C.RED
    
    return { main_end = ClearNights.generate_main_end_color_box(last_constellation, colour) }
  end,
  
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
      trigger = 'after',
      delay = 0.4,
      func = function()
        if G.consumeables.config.card_limit > #G.consumeables.cards then
          play_sound('timpani')
          SMODS.add_card({ key = G.GAME.CN_last_constellation })
          G.GAME.CN_last_constellation = 'c_ClearNights_gemini'
          card:juice_up(0.3, 0.5)
        end
        return true
      end
    }))

    delay(0.6)
  end,
    
  can_use = function(self, card)
    if not G.GAME.CN_last_constellation or G.GAME.CN_last_constellation == 'c_ClearNights_gemini' then 
      return false
    end
    
    for i = 1, #G.consumeables.cards do
      if G.consumeables.cards[i] == card then
        return true
      end
    end
    return G.consumeables.config.card_limit > #G.consumeables.cards
  end
}

local old_set_consumeable_usage = set_consumeable_usage
function set_consumeable_usage(card)
  local ret = old_set_consumeable_usage(card)
  if card.config.center.set == 'CN_Constellation' and card.config.center_key ~= 'c_ClearNights_gemini' then
    G.GAME.CN_last_constellation = card.config.center_key
  end
  return ret
end