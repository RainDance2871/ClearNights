SMODS.Consumable {
  key = 'virgo',
  set = 'CN_Constellation',
  atlas = 'Constellations',
  pos = ClearNights.GetConstellationAtlasTable('virgo'),
  unlocked = true,
  config = {
    level_amount = 3
  },
  
  loc_vars = function(self, info_queue, card)
    local hand_lowest_level = ClearNights.lowest_level_poker_hand() 
    local hand_lowest_level_text = hand_lowest_level and localize(hand_lowest_level, 'poker_hands') or localize('k_none')
    local colour = hand_lowest_level and G.C.GREEN or G.C.RED
  
    return {
      vars = { card.ability.level_amount },
      main_end = ClearNights.generate_main_end_color_box(hand_lowest_level_text, colour)
    }
  end,
  
  use = function(self, card, area, copier)    
    ClearNights.level_up_table_tailends(card, { ClearNights.lowest_level_poker_hand() }, nil, false, card.ability.level_amount)
  end,

  can_use = function(self, card)
    return ClearNights.lowest_level_poker_hand()
  end
}

function ClearNights.lowest_level_poker_hand()
  local hand_lowest_level = nil
  if G.GAME then
    for _, value in ipairs(G.handlist) do
      if SMODS.is_poker_hand_visible(value) then
        if not hand_lowest_level or G.GAME.hands[value].level < G.GAME.hands[hand_lowest_level].level then
          hand_lowest_level = value
        end
      end
    end
  end
  return hand_lowest_level
end